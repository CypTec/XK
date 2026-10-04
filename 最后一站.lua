if not game:IsLoaded() then game.Loaded:Wait() end

local Players          = game:GetService("Players")
local RunService       = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage= game:GetService("ReplicatedStorage")
local CoreGui          = game:GetService("CoreGui")
local LocalPlayer      = Players.LocalPlayer
local Camera           = workspace.CurrentCamera

local Config = {
    Rage = {
        Enabled      = false,
        Keybind      = Enum.KeyCode.J,
        Range        = 500,
        FireDelay    = 0.08,
        AimPart      = "Head",
        AutoWarp     = false,
        WarpOffset   = 3,
        LockCamera   = true,
    },
    Melee = {
        Enabled           = false,
        Keybind           = Enum.KeyCode.K,
        Range             = 30,
        AttackDelay       = 0.08,
        MaxTargets        = 5,
        PerTargetCooldown = 0.1,
        AutoTP            = true,
        TPThreshold       = 15,
        TPOffset          = 3,
        TPMinDist         = 0.7,
        TPCooldown        = 0.15,
        TPForwardDelay    = 0.02,
        TPReturn          = true,
        TPReturnDelay     = 0.03,
    },
    Signal = {
        Event       = nil,
        Template    = { Fire = nil, Attack = nil, Hit = nil },
        MsgId       = nil,
        WeaponType  = nil,
        Action      = nil,
        Count       = 0,
        IdForce     = nil,
        TypeForce   = nil,
        ActionForce = nil,
    },
    Health = {
        Enabled       = true,
        IndicatorName = "HumanoidRootPart",
    },
    Perf = {
        EntityTTL = 0.25,
    },
}

local function locateSignal()
    local cs = ReplicatedStorage:FindFirstChild("ClientSource")
    if not cs then return nil end
    local rre = cs:FindFirstChild("ReplicaRemoteEvents")
    if not rre then return nil end
    return rre:FindFirstChild("Replica_ReplicaSignal")
end

Config.Signal.Event = locateSignal()
task.spawn(function()
    for _ = 1, 120 do
        if Config.Signal.Event then break end
        Config.Signal.Event = locateSignal()
        if Config.Signal.Event then break end
        task.wait(0.1)
    end
end)

local function templateHasHits(tmpl)
    if not tmpl or not tmpl.n then return false end
    for i = 1, tmpl.n do
        local v = tmpl[i]
        if type(v) == "table" then
            local first = v[1]
            if type(first) == "table" and typeof(first[1]) == "Instance" then
                return true
            end
        end
    end
    return false
end

local hookEnabled = true

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    if not hookEnabled then
        return oldNamecall(...)
    end

    local self = ...
    if self == Config.Signal.Event then
        local method = getnamecallmethod and getnamecallmethod()
        if method == "FireServer" then
            if checkcaller() then
                return oldNamecall(...)
            end

            local a1, a2, a3 = select(2, ...)
            if type(a1) == "number" and type(a2) == "string"
               and (a3 == "Fire" or a3 == "Attack" or a3 == "Hit") then
                local newTmpl = table.pack(select(2, ...))
                local oldTmpl = Config.Signal.Template[a3]

                local shouldUpdate = false
                if not oldTmpl then
                    shouldUpdate = true
                elseif templateHasHits(newTmpl) and not templateHasHits(oldTmpl) then
                    shouldUpdate = true
                elseif newTmpl.n > oldTmpl.n then
                    shouldUpdate = true
                end

                if shouldUpdate then
                    Config.Signal.Template[a3] = newTmpl
                end

                Config.Signal.MsgId      = a1
                Config.Signal.WeaponType = a2
                Config.Signal.Action     = a3
                Config.Signal.Count      = Config.Signal.Count + 1
            end
        end
    end
    return oldNamecall(...)
end))

local function getHRP()
    local c = LocalPlayer.Character
    return c and c:FindFirstChild("HumanoidRootPart")
end

local function getMyHum()
    local c = LocalPlayer.Character
    return c and c:FindFirstChildOfClass("Humanoid")
end

local function isGUID(s)
    return type(s) == "string"
        and string.match(s, "^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x$") ~= nil
end

local function findPart(obj, name)
    return obj:FindFirstChild(name) or obj:FindFirstChild(name, true)
end

local entityCache = { list = {}, time = 0 }

local function collectEntities()
    local now = os.clock()
    if (now - entityCache.time) < Config.Perf.EntityTTL then
        return entityCache.list
    end

    local seen = {}
    local out = {}

    local function tryAdd(m)
        if seen[m] then return end
        if not m:IsA("Model") then return end
        if not findPart(m, "Head") and not findPart(m, "HumanoidRootPart")
           and not m.PrimaryPart then return end

        if Config.Health.Enabled and Config.Health.IndicatorName and Config.Health.IndicatorName ~= "" then
            local healthIndicator = m:FindFirstChild(Config.Health.IndicatorName) or m:FindFirstChild(Config.Health.IndicatorName, true)
            if not healthIndicator then return end
        end

        seen[m] = true
        out[#out + 1] = m
    end

    local container = workspace:FindFirstChild("ENTITY_CONTAINER")
    if container then
        for _, m in ipairs(container:GetChildren()) do
            tryAdd(m)
        end
    end

    for _, m in ipairs(workspace:GetChildren()) do
        if m:IsA("Model") and isGUID(m.Name) then
            tryAdd(m)
        end
    end

    entityCache.list = out
    entityCache.time = now
    return out
end

local function pickAimPart(model, mode)
    if mode == "Head" then
        return findPart(model, "Head")
    elseif mode == "Root" then
        return findPart(model, "HumanoidRootPart") or model.PrimaryPart
    else
        return findPart(model, "Head") or findPart(model, "HumanoidRootPart") or model.PrimaryPart
    end
end

local function rebuildShot(template, targetPart, targetPos)
    if not template or not template.n then return nil end
    if not targetPart or not targetPart.Parent then return nil end

    local origin = Camera.CFrame.Position
    local dir = targetPos - origin
    if dir.Magnitude < 0.001 then return nil end
    dir = dir.Unit

    local rebuilt = table.create(template.n)
    for i = 1, template.n do
        local v = template[i]
        local t = typeof(v)

        if t == "Vector3" then
            rebuilt[i] = dir

        elseif t == "table" then
            local first = v[1]
            if typeof(first) == "Vector3" then
                local arr = table.create(#v)
                for j = 1, #v do arr[j] = dir end
                rebuilt[i] = arr
            elseif type(first) == "table" and typeof(first[1]) == "Instance" then
                local arr = table.create(#v)
                for j = 1, #v do arr[j] = { targetPart, targetPos } end
                rebuilt[i] = arr
            else
                rebuilt[i] = v
            end

        else
            rebuilt[i] = v
        end
    end

    local id     = Config.Signal.IdForce   or Config.Signal.MsgId
    local wtype  = Config.Signal.TypeForce or Config.Signal.WeaponType
    local action = Config.Signal.ActionForce or template[3]

    if id    ~= nil then rebuilt[1] = id end
    if wtype ~= nil then rebuilt[2] = wtype end
    if action ~= nil then rebuilt[3] = action end

    return rebuilt
end

local function aimCameraAt(part)
    if not Config.Rage.LockCamera then return end
    if not part or not part.Parent then return end
    Camera.CFrame = CFrame.lookAt(Camera.CFrame.Position, part.Position)
end

local function fireRageAt(model, part)
    local ev = Config.Signal.Event
    if not ev then return end
    if not part or not part.Parent then return end

    local tmpl = Config.Signal.Template.Fire
    if not tmpl then return end
    if not templateHasHits(tmpl) then return end

    local args = rebuildShot(tmpl, part, part.Position)
    if not args then return end

    pcall(function()
        ev:FireServer(table.unpack(args, 1, args.n))
    end)
end

local function fireMeleeAttack(targetModel)
    local ev = Config.Signal.Event
    if not ev then return end
    local tmpl = Config.Signal.Template.Attack
    if not tmpl then return end

    local part = targetModel and pickAimPart(targetModel, "Root")
    if not part then return end
    local args = rebuildShot(tmpl, part, part.Position)
    if not args then return end

    pcall(function()
        ev:FireServer(table.unpack(args, 1, args.n))
    end)
end

local function fireMeleeHit(targetPart, targetPos)
    local ev = Config.Signal.Event
    if not ev then return end
    local tmpl = Config.Signal.Template.Hit
    if not tmpl then return end

    local args = rebuildShot(tmpl, targetPart, targetPos or targetPart.Position)
    if not args then return end

    pcall(function()
        ev:FireServer(table.unpack(args, 1, args.n))
    end)
end

local function meleeCollect()
    local hrp = getHRP()
    if not hrp then return {} end
    local origin = hrp.Position
    local r2 = Config.Melee.Range * Config.Melee.Range
    local list = {}

    for _, m in ipairs(collectEntities()) do
        local root = findPart(m, "HumanoidRootPart") or m.PrimaryPart
        if root then
            local d = root.Position - origin
            local d2 = d.X*d.X + d.Y*d.Y + d.Z*d.Z
            if d2 <= r2 then
                list[#list + 1] = {
                    npc = m, root = root,
                    dist = math.sqrt(d2), pos = root.Position,
                }
            end
        end
    end

    table.sort(list, function(a, b) return a.dist < b.dist end)
    return list
end

local function tpTo(pos, offset)
    local hrp = getHRP()
    if not hrp then return end
    local dir = hrp.Position - pos
    if dir.Magnitude < 0.1 then dir = Vector3.new(0, 0, 1) end
    dir = dir.Unit * offset
    hrp.CFrame = CFrame.new(pos + dir + Vector3.new(0, 1, 0))
end

local LastRageFire = 0

RunService.Heartbeat:Connect(function()
    if not Config.Rage.Enabled then return end
    local ev = Config.Signal.Event
    if not ev then return end
    local hum = getMyHum()
    if not hum or hum.Health <= 0 then return end
    if not Config.Signal.Template.Fire then return end
    if not templateHasHits(Config.Signal.Template.Fire) then return end

    local myPos = Camera.CFrame.Position
    local entities = collectEntities()
    if #entities == 0 then return end

    local best, bestDist = nil, math.huge
    for _, m in ipairs(entities) do
        local part = pickAimPart(m, Config.Rage.AimPart)
        if part then
            local d = (part.Position - myPos).Magnitude
            if d < bestDist and d <= Config.Rage.Range then
                best, bestDist = { model = m, part = part }, d
            end
        end
    end

    if not best then return end

    aimCameraAt(best.part)

    local now = tick()
    if now - LastRageFire < Config.Rage.FireDelay then return end
    LastRageFire = now

    if Config.Rage.AutoWarp and bestDist > Config.Rage.Range * 0.6 then
        local hrp = getHRP()
        if hrp then
            local origin = hrp.CFrame
            tpTo(best.part.Position, Config.Rage.WarpOffset)
            task.wait(0.02)
            aimCameraAt(best.part)
            fireRageAt(best.model, best.part)
            task.wait(0.02)
            if getHRP() then getHRP().CFrame = origin end
            return
        end
    end

    fireRageAt(best.model, best.part)
end)

local LastAttack = 0
local LastTP     = 0
local Cooldowns  = {}

RunService.Heartbeat:Connect(function()
    if not Config.Melee.Enabled then return end
    local ev = Config.Signal.Event
    if not ev then return end
    local hum = getMyHum()
    if not hum or hum.Health <= 0 then return end

    local now = tick()
    if now - LastAttack < Config.Melee.AttackDelay then return end
    LastAttack = now

    local targets = meleeCollect()
    if #targets == 0 then return end

    local hrp = getHRP()
    if not hrp then return end

    local extended =
        Config.Melee.AutoTP
        and Config.Melee.Range > Config.Melee.TPThreshold
        and (now - LastTP) >= Config.Melee.TPCooldown
        and targets[1].dist > Config.Melee.Range * Config.Melee.TPMinDist

    local originCFrame = hrp.CFrame

    if extended then
        LastTP = now
        tpTo(targets[1].pos, Config.Melee.TPOffset)
        task.wait(Config.Melee.TPForwardDelay)

        hrp = getHRP()
        if not hrp then return end

        targets = meleeCollect()
        if #targets == 0 then
            if Config.Melee.TPReturn then hrp.CFrame = originCFrame end
            return
        end
    end

    fireMeleeAttack(targets[1].npc)

    local count = 0
    for _, t in ipairs(targets) do
        if count >= Config.Melee.MaxTargets then break end
        local last = Cooldowns[t.npc] or 0
        if now - last >= Config.Melee.PerTargetCooldown then
            Cooldowns[t.npc] = now
            fireMeleeHit(t.root, t.pos)
            count = count + 1
        end
    end

    if extended and Config.Melee.TPReturn then
        task.wait(Config.Melee.TPReturnDelay)
        hrp = getHRP()
        if hrp then hrp.CFrame = originCFrame end
    end

    for npc, t in pairs(Cooldowns) do
        if now - t > 5 then Cooldowns[npc] = nil end
    end
end)

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Config.Rage.Keybind then
        Config.Rage.Enabled = not Config.Rage.Enabled
    elseif input.KeyCode == Config.Melee.Keybind then
        Config.Melee.Enabled = not Config.Melee.Enabled
    end
end)

local PAL = {
    bg     = Color3.fromRGB(20, 20, 24),
    panel  = Color3.fromRGB(28, 28, 34),
    row    = Color3.fromRGB(34, 34, 42),
    field  = Color3.fromRGB(40, 40, 48),
    border = Color3.fromRGB(52, 52, 62),
    accent = Color3.fromRGB(120, 200, 255),
    text   = Color3.fromRGB(228, 228, 236),
    sub    = Color3.fromRGB(140, 140, 156),
    ok     = Color3.fromRGB(120, 210, 150),
    warn   = Color3.fromRGB(230, 170, 100),
    off    = Color3.fromRGB(72, 72, 84),
}

local function corner(p, r)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r or 6)
    c.Parent = p
    return c
end

local function stroke(p, c, t)
    local s = Instance.new("UIStroke")
    s.Color = c or PAL.border
    s.Thickness = t or 1
    s.Parent = p
    return s
end

local function getUiParent()
    if gethui then
        local ok, h = pcall(gethui)
        if ok and h then return h end
    end
    return LocalPlayer:FindFirstChild("PlayerGui") or CoreGui
end

local function mkRow(parent, h)
    local f = Instance.new("Frame")
    f.Size = UDim2.new(1, 0, 0, h or 26)
    f.BackgroundColor3 = PAL.row
    f.BorderSizePixel = 0
    f.Parent = parent
    corner(f, 5)
    return f
end

local function mkLabel(parent, text, color, size)
    local l = Instance.new("TextLabel")
    l.Text = text
    l.BackgroundTransparency = 1
    l.Font = Enum.Font.Gotham
    l.TextSize = size or 12
    l.TextColor3 = color or PAL.text
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.Parent = parent
    return l
end

local function addToggle(parent, text, get, set)
    local r = mkRow(parent, 28)
    local l = mkLabel(r, text, PAL.text, 12)
    l.Size = UDim2.new(1, -50, 1, 0)
    l.Position = UDim2.new(0, 10, 0, 0)

    local track = Instance.new("Frame")
    track.Size = UDim2.new(0, 32, 0, 16)
    track.Position = UDim2.new(1, -42, 0.5, -8)
    track.BackgroundColor3 = get() and PAL.accent or PAL.off
    track.BorderSizePixel = 0
    track.Parent = r
    corner(track, 8)

    local knob = Instance.new("Frame")
    knob.Size = UDim2.new(0, 12, 0, 12)
    knob.Position = UDim2.new(0, get() and 17 or 3, 0.5, -6)
    knob.BackgroundColor3 = Color3.fromRGB(240, 240, 246)
    knob.BorderSizePixel = 0
    knob.Parent = track
    corner(knob, 6)

    local btn = Instance.new("TextButton")
    btn.Text = ""
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Parent = r
    btn.MouseButton1Click:Connect(function()
        local v = not get()
        set(v)
        track.BackgroundColor3 = v and PAL.accent or PAL.off
        knob.Position = UDim2.new(0, v and 17 or 3, 0.5, -6)
    end)
end

local function addNumber(parent, text, mn, mx, get, set, isFloat)
    local r = mkRow(parent, 26)
    local l = mkLabel(r, text, PAL.sub, 12)
    l.Size = UDim2.new(1, -84, 1, 0)
    l.Position = UDim2.new(0, 10, 0, 0)

    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0, 64, 1, -4)
    box.Position = UDim2.new(1, -70, 0.5, 0)
    box.BackgroundColor3 = PAL.field
    box.BorderSizePixel = 0
    box.Font = Enum.Font.Code
    box.TextSize = 12
    box.TextColor3 = PAL.text
    box.Text = tostring(get())
    box.ClearTextOnFocus = false
    box.Parent = r
    corner(box, 4)

    local pad = Instance.new("UIPadding")
    pad.PaddingLeft = UDim.new(0, 8)
    pad.Parent = box

    box.FocusLost:Connect(function()
        local n = tonumber(box.Text)
        if n then
            n = math.clamp(n, mn, mx)
            if not isFloat then n = math.floor(n + 0.5) end
            set(n)
            box.Text = tostring(n)
        else
            box.Text = tostring(get())
        end
    end)
end

local function addCycle(parent, text, items, get, set)
    local r = mkRow(parent, 26)
    local l = mkLabel(r, text, PAL.sub, 12)
    l.Size = UDim2.new(0.45, 0, 1, 0)
    l.Position = UDim2.new(0, 10, 0, 0)

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.55, -14, 1, -4)
    btn.Position = UDim2.new(0.45, 4, 0.5, 0)
    btn.BackgroundColor3 = PAL.field
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 11
    btn.TextColor3 = PAL.text
    btn.TextTruncate = Enum.TextTruncate.AtEnd
    btn.Text = tostring(get())
    btn.Parent = r
    corner(btn, 4)

    btn.MouseButton1Click:Connect(function()
        local idx = 1
        for i, k in ipairs(items) do
            if k == get() then idx = i break end
        end
        idx = idx % #items + 1
        set(items[idx])
        btn.Text = tostring(items[idx])
    end)
end

local function addText(parent, text, get, set, placeholder)
    local r = mkRow(parent, 26)
    local l = mkLabel(r, text, PAL.sub, 12)
    l.Size = UDim2.new(0.4, 0, 1, 0)
    l.Position = UDim2.new(0, 10, 0, 0)

    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0.6, -14, 1, -4)
    box.Position = UDim2.new(0.4, 4, 0.5, 0)
    box.BackgroundColor3 = PAL.field
    box.BorderSizePixel = 0
    box.Font = Enum.Font.Code
    box.TextSize = 11
    box.TextColor3 = PAL.text
    box.PlaceholderText = placeholder or ""
    box.PlaceholderColor3 = Color3.fromRGB(100, 100, 115)
    box.Text = get() and tostring(get()) or ""
    box.ClearTextOnFocus = false
    box.Parent = r
    corner(box, 4)

    local pad = Instance.new("UIPadding")
    pad.PaddingLeft = UDim.new(0, 8)
    pad.Parent = box

    box.FocusLost:Connect(function()
        if box.Text == "" then set(nil) else set(box.Text) end
    end)
end

local function addSection(parent, text)
    local l = Instance.new("TextLabel")
    l.Size = UDim2.new(1, 0, 0, 18)
    l.BackgroundTransparency = 1
    l.Font = Enum.Font.GothamBold
    l.TextSize = 10
    l.TextColor3 = PAL.sub
    l.Text = text
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.Parent = parent
    local pad = Instance.new("UIPadding")
    pad.PaddingLeft = UDim.new(0, 4)
    pad.Parent = l
    return l
end

local root = Instance.new("ScreenGui")
root.Name = "rage_melee_ui"
root.ResetOnSpawn = false
root.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
root.DisplayOrder = 999995
root.Parent = getUiParent()

local shell = Instance.new("Frame")
shell.Size = UDim2.new(0, 300, 0, 540)
shell.Position = UDim2.new(0, 40, 0, 70)
shell.BackgroundColor3 = PAL.bg
shell.BorderSizePixel = 0
shell.Active = true
shell.Draggable = true
shell.Parent = root
corner(shell, 10)
stroke(shell, PAL.border, 1)

local bar = Instance.new("Frame")
bar.Size = UDim2.new(1, 0, 0, 32)
bar.BackgroundColor3 = PAL.panel
bar.BorderSizePixel = 0
bar.Parent = shell
corner(bar, 10)
local barCover = Instance.new("Frame")
barCover.Size = UDim2.new(1, 0, 0, 12)
barCover.Position = UDim2.new(0, 0, 1, -12)
barCover.BackgroundColor3 = PAL.panel
barCover.BorderSizePixel = 0
barCover.Parent = bar

local titleLbl = mkLabel(bar, "Ragebot · Kill Aura", PAL.text, 13)
titleLbl.Font = Enum.Font.GothamBold
titleLbl.Size = UDim2.new(1, -80, 1, 0)
titleLbl.Position = UDim2.new(0, 14, 0, 0)

local dotRage = Instance.new("Frame")
dotRage.Size = UDim2.new(0, 6, 0, 6)
dotRage.Position = UDim2.new(1, -68, 0.5, -3)
dotRage.BackgroundColor3 = PAL.off
dotRage.BorderSizePixel = 0
dotRage.Parent = bar
corner(dotRage, 3)

local dotMelee = Instance.new("Frame")
dotMelee.Size = UDim2.new(0, 6, 0, 6)
dotMelee.Position = UDim2.new(1, -54, 0.5, -3)
dotMelee.BackgroundColor3 = PAL.off
dotMelee.BorderSizePixel = 0
dotMelee.Parent = bar
corner(dotMelee, 3)

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 22, 0, 22)
closeBtn.Position = UDim2.new(1, -30, 0.5, -11)
closeBtn.BackgroundColor3 = Color3.fromRGB(44, 30, 34)
closeBtn.BorderSizePixel = 0
closeBtn.Text = "×"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 15
closeBtn.TextColor3 = Color3.fromRGB(230, 180, 180)
closeBtn.Parent = bar
corner(closeBtn, 5)

local tabBar = Instance.new("Frame")
tabBar.Size = UDim2.new(1, -20, 0, 26)
tabBar.Position = UDim2.new(0, 10, 0, 40)
tabBar.BackgroundTransparency = 1
tabBar.Parent = shell

local tabs, pages = {}, {}
local function addTab(id, text, order)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0, 86, 1, 0)
    b.Position = UDim2.new(0, (order - 1) * 90, 0, 0)
    b.BackgroundColor3 = order == 1 and PAL.row or PAL.panel
    b.BorderSizePixel = 0
    b.Font = Enum.Font.Gotham
    b.TextSize = 12
    b.TextColor3 = order == 1 and PAL.text or PAL.sub
    b.Text = text
    b.Parent = tabBar
    corner(b, 5)
    tabs[id] = b
end

local function addPage(id)
    local p = Instance.new("ScrollingFrame")
    p.Size = UDim2.new(1, -20, 1, -108)
    p.Position = UDim2.new(0, 10, 0, 74)
    p.BackgroundTransparency = 1
    p.BorderSizePixel = 0
    p.ScrollBarThickness = 3
    p.ScrollBarImageColor3 = PAL.border
    p.CanvasSize = UDim2.new(0, 0, 0, 0)
    p.AutomaticCanvasSize = Enum.AutomaticSize.Y
    p.Visible = false
    p.Parent = shell

    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 6)
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Parent = p

    pages[id] = p
    return p
end

addTab("rage",  "Ragebot",   1)
addTab("melee", "Kill Aura", 2)
addTab("state", "状态",      3)
addPage("rage")
addPage("melee")
addPage("state")

local function switchTab(id)
    for k, b in pairs(tabs) do
        local on = k == id
        b.BackgroundColor3 = on and PAL.row or PAL.panel
        b.TextColor3 = on and PAL.text or PAL.sub
    end
    for k, p in pairs(pages) do
        p.Visible = k == id
    end
end

for k, b in pairs(tabs) do
    b.MouseButton1Click:Connect(function() switchTab(k) end)
end
switchTab("rage")

closeBtn.MouseButton1Click:Connect(function()
    hookEnabled = false
    root:Destroy()
end)

local toggleBtn = Instance.new("TextButton")
toggleBtn.Name = "ui_toggle"
toggleBtn.Size = UDim2.new(0, 46, 0, 46)
toggleBtn.Position = UDim2.new(0, 20, 0.5, -23)
toggleBtn.BackgroundColor3 = PAL.bg
toggleBtn.BorderSizePixel = 0
toggleBtn.AutoButtonColor = false
toggleBtn.Font = Enum.Font.GothamBold
toggleBtn.TextSize = 12
toggleBtn.TextColor3 = PAL.accent
toggleBtn.Text = "UI"
toggleBtn.Active = true
toggleBtn.Parent = root
corner(toggleBtn, 23)
local toggleStroke = stroke(toggleBtn, PAL.border, 1)

local uiVisible = true

local function setUiVisible(v)
    uiVisible = v
    shell.Visible = v
    toggleBtn.TextColor3 = v and PAL.accent or PAL.sub
    toggleStroke.Color  = v and PAL.accent or PAL.border
    toggleBtn.BackgroundColor3 = v and PAL.bg or PAL.panel
end

local dragging = false
local dragStart, startPos, moved

toggleBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
       or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        moved = false
        dragStart = input.Position
        startPos = toggleBtn.Position
    end
end)

toggleBtn.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
       or input.UserInputType == Enum.UserInputType.Touch then
        if dragging and not moved then
            setUiVisible(not uiVisible)
        end
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if not dragging then return end
    if input.UserInputType == Enum.UserInputType.MouseMovement
       or input.UserInputType == Enum.UserInputType.Touch then
        local delta = input.Position - dragStart
        if delta.Magnitude > 4 then moved = true end
        toggleBtn.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end
end)

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        setUiVisible(not uiVisible)
    end
end)

local rp = pages.rage

addToggle(rp, "启用 Ragebot", function() return Config.Rage.Enabled end,
    function(v) Config.Rage.Enabled = v end)

addSection(rp, "实体过滤")

addToggle(rp, "启用血量检查", function() return Config.Health.Enabled end,
    function(v)
        Config.Health.Enabled = v
        entityCache.time = 0
    end)

addText(rp, "血量标志文件",
    function() return Config.Health.IndicatorName end,
    function(v)
        Config.Health.IndicatorName = (v and v ~= "") and v or "HumanoidRootPart"
        entityCache.time = 0
    end,
    "HumanoidRootPart")

addSection(rp, "瞄准")

addCycle(rp, "瞄准部位", {"Head", "Root", "Any"},
    function() return Config.Rage.AimPart end,
    function(v) Config.Rage.AimPart = v end)

addNumber(rp, "有效距离", 20, 2000,
    function() return Config.Rage.Range end,
    function(v) Config.Rage.Range = v end)

addNumber(rp, "射击间隔 (s)", 0.02, 0.5,
    function() return Config.Rage.FireDelay end,
    function(v) Config.Rage.FireDelay = v end, true)

addToggle(rp, "锁定相机朝向", function() return Config.Rage.LockCamera end,
    function(v) Config.Rage.LockCamera = v end)

addSection(rp, "接近")

addToggle(rp, "自动瞬移", function() return Config.Rage.AutoWarp end,
    function(v) Config.Rage.AutoWarp = v end)

addNumber(rp, "落点距离", 1, 15,
    function() return Config.Rage.WarpOffset end,
    function(v) Config.Rage.WarpOffset = v end, true)

addSection(rp, "手动覆盖（留空 = 用采样模板）")

addText(rp, "消息 ID",
    function() return Config.Signal.IdForce end,
    function(v)
        if v == nil then Config.Signal.IdForce = nil
        else Config.Signal.IdForce = tonumber(v) or v end
    end,
    "自动")

addText(rp, "武器类型",
    function() return Config.Signal.TypeForce end,
    function(v) Config.Signal.TypeForce = v end,
    "自动")

addText(rp, "动作",
    function() return Config.Signal.ActionForce end,
    function(v) Config.Signal.ActionForce = v end,
    "Fire")

local mp = pages.melee

addToggle(mp, "启用 Kill Aura", function() return Config.Melee.Enabled end,
    function(v) Config.Melee.Enabled = v end)

addSection(mp, "节奏")

addNumber(mp, "攻击范围", 5, 200,
    function() return Config.Melee.Range end,
    function(v) Config.Melee.Range = v end)

addNumber(mp, "Attack 间隔 (s)", 0.01, 0.5,
    function() return Config.Melee.AttackDelay end,
    function(v) Config.Melee.AttackDelay = v end, true)

addNumber(mp, "最多目标", 1, 20,
    function() return Config.Melee.MaxTargets end,
    function(v) Config.Melee.MaxTargets = v end)

addNumber(mp, "同目标冷却 (s)", 0.01, 0.5,
    function() return Config.Melee.PerTargetCooldown end,
    function(v) Config.Melee.PerTargetCooldown = v end, true)

addSection(mp, "范围扩展传送")

addToggle(mp, "自动瞬移", function() return Config.Melee.AutoTP end,
    function(v) Config.Melee.AutoTP = v end)

addNumber(mp, "触发范围阈值", 5, 200,
    function() return Config.Melee.TPThreshold end,
    function(v) Config.Melee.TPThreshold = v end)

addNumber(mp, "触发距离系数 ×100", 10, 100,
    function() return math.floor(Config.Melee.TPMinDist * 100) end,
    function(v) Config.Melee.TPMinDist = v / 100 end)

addNumber(mp, "落点距离", 1, 15,
    function() return Config.Melee.TPOffset end,
    function(v) Config.Melee.TPOffset = v end, true)

addNumber(mp, "传送冷却 (s)", 0.02, 2,
    function() return Config.Melee.TPCooldown end,
    function(v) Config.Melee.TPCooldown = v end, true)

addNumber(mp, "到位等待 (s)", 0, 0.2,
    function() return Config.Melee.TPForwardDelay end,
    function(v) Config.Melee.TPForwardDelay = v end, true)

addToggle(mp, "攻击后返回原点", function() return Config.Melee.TPReturn end,
    function(v) Config.Melee.TPReturn = v end)

addNumber(mp, "返回延迟 (s)", 0, 0.3,
    function() return Config.Melee.TPReturnDelay end,
    function(v) Config.Melee.TPReturnDelay = v end, true)

local stp = pages.state

addSection(stp, "采样模板")

local statRow = {}
local function addStat(labelText, id)
    local r = mkRow(stp, 26)
    local l = mkLabel(r, labelText, PAL.sub, 12)
    l.Size = UDim2.new(0.5, 0, 1, 0)
    l.Position = UDim2.new(0, 10, 0, 0)

    local v = mkLabel(r, "—", PAL.text, 12)
    v.Font = Enum.Font.Code
    v.Size = UDim2.new(0.5, -14, 1, 0)
    v.Position = UDim2.new(0.5, 0, 0, 0)
    v.TextXAlignment = Enum.TextXAlignment.Right
    statRow[id] = v
end

addStat("信号源", "src")
addStat("消息 ID", "id")
addStat("武器类型", "type")
addStat("动作", "action")
addStat("Fire 参数数", "fireN")
addStat("Fire 结构", "fireShape")
addStat("Fire 模板", "fireValid")
addStat("Attack 模板", "attackT")
addStat("Hit 模板", "hitT")
addStat("采样次数", "count")

addSection(stp, "实体过滤状态")

addStat("血量检查", "healthCheck")
addStat("血量标志文件", "healthName")
addStat("实体数量", "alive")
addStat("Ragebot", "rage")
addStat("Kill Aura", "melee")

local hint = Instance.new("TextLabel")
hint.Size = UDim2.new(1, 0, 0, 60)
hint.BackgroundTransparency = 1
hint.Font = Enum.Font.Gotham
hint.TextSize = 10
hint.TextColor3 = PAL.sub
hint.TextWrapped = true
hint.Text = "开火一次以捕获模板。左轮请开火打中一次目标以捕获含 hits 的完整模板。「Fire 模板」显示「完整」时 Ragebot 才能正常开火。血量检查开启后，缺少指定标志文件的实体将被视为死亡。"
hint.TextXAlignment = Enum.TextXAlignment.Left
hint.Parent = stp

local function describeShape(tmpl)
    if not tmpl or not tmpl.n then return "—" end
    local parts = {}
    for i = 1, tmpl.n do
        local v = tmpl[i]
        local t = typeof(v)
        if t == "table" then
            local first = v[1]
            if typeof(first) == "Vector3" then
                parts[i] = "{" .. #v .. "V}"
            elseif type(first) == "table" and typeof(first[1]) == "Instance" then
                parts[i] = "{" .. #v .. "P}"
            else
                parts[i] = "tbl"
            end
        elseif t == "Vector3" then
            parts[i] = "V3"
        elseif t == "Instance" then
            parts[i] = "Inst"
        elseif t == "string" then
            parts[i] = "str"
        elseif t == "number" then
            parts[i] = "num"
        elseif t == "nil" then
            parts[i] = "nil"
        else
            parts[i] = t:sub(1, 3)
        end
    end
    return table.concat(parts, " ")
end

local function refreshUI()
    dotRage.BackgroundColor3  = Config.Rage.Enabled  and PAL.accent or PAL.off
    dotMelee.BackgroundColor3 = Config.Melee.Enabled and PAL.ok     or PAL.off

    if Config.Signal.Event then
        statRow.src.Text = "已链接"
        statRow.src.TextColor3 = PAL.ok
    else
        statRow.src.Text = "等待"
        statRow.src.TextColor3 = PAL.warn
    end

    statRow.id.Text = Config.Signal.IdForce and tostring(Config.Signal.IdForce)
                   or Config.Signal.MsgId and tostring(Config.Signal.MsgId) or "—"
    statRow.type.Text = Config.Signal.TypeForce or Config.Signal.WeaponType or "—"
    statRow.action.Text = Config.Signal.ActionForce or Config.Signal.Action or "—"

    local fireT = Config.Signal.Template.Fire
    statRow.fireN.Text = fireT and tostring(fireT.n) or "—"
    statRow.fireN.TextColor3 = fireT and PAL.ok or PAL.sub

    statRow.fireShape.Text = describeShape(fireT)
    statRow.fireShape.TextColor3 = fireT and PAL.ok or PAL.sub

    if fireT then
        if templateHasHits(fireT) then
            statRow.fireValid.Text = "完整（含 hits）"
            statRow.fireValid.TextColor3 = PAL.ok
        else
            statRow.fireValid.Text = "缺 hits（请打中一次）"
            statRow.fireValid.TextColor3 = PAL.warn
        end
    else
        statRow.fireValid.Text = "—"
        statRow.fireValid.TextColor3 = PAL.sub
    end

    statRow.attackT.Text = Config.Signal.Template.Attack and "已捕获" or "—"
    statRow.attackT.TextColor3 = Config.Signal.Template.Attack and PAL.ok or PAL.sub

    statRow.hitT.Text = Config.Signal.Template.Hit and "已捕获" or "—"
    statRow.hitT.TextColor3 = Config.Signal.Template.Hit and PAL.ok or PAL.sub

    statRow.count.Text = tostring(Config.Signal.Count)

    statRow.healthCheck.Text = Config.Health.Enabled and "开启" or "关闭"
    statRow.healthCheck.TextColor3 = Config.Health.Enabled and PAL.ok or PAL.sub
    statRow.healthName.Text = Config.Health.IndicatorName or "—"

    statRow.alive.Text = tostring(#collectEntities())

    statRow.rage.Text = Config.Rage.Enabled and "开" or "关"
    statRow.rage.TextColor3 = Config.Rage.Enabled and PAL.ok or PAL.sub

    statRow.melee.Text = Config.Melee.Enabled and "开" or "关"
    statRow.melee.TextColor3 = Config.Melee.Enabled and PAL.ok or PAL.sub
end

task.spawn(function()
    while root.Parent do
        refreshUI()
        task.wait(0.5)
    end
end)

refreshUI()