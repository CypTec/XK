 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(50, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 132, 0, 159)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0, -9, 0, -2), UDim2.new(0, 3, -0.125, 5), UDim2.new(0.0625, 1, 0, -4)), Path2DControlPoint.new(UDim2.new(0, 3, 0.125, 2), UDim2.new(-0.125, -4, 0, -4), UDim2.new(0, -6, 0, 7)), Path2DControlPoint.new(UDim2.new(0.375, 1, 0, 9), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, -0.125, -7)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.4285714328289032)
 
Path2D:GetPositionOnCurve(0.3333333432674408)
 
Path2D:GetTangentOnCurve(0.8125)
 
Path2D:GetTangentOnCurve(0.20000000298023224)
 
Path2D:GetTangentOnCurve(0.20000000298023224)
 
Path2D:GetPositionOnCurveArcLength(0.625)
 
Path2D:GetPositionOnCurveArcLength(0.1666666716337204)
 
Path2D:GetTangentOnCurveArcLength(0.5)
 
Path2D:GetTangentOnCurveArcLength(0.20000000298023224)
 
Path2D:GetTangentOnCurveArcLength(0.45454546809196472)
 
ScreenGui:Destroy()
 
local connection = game.DescendantRemoving:Connect(function(descendant)
end)
 
connection:Disconnect()
 
local connection2 = workspace.DescendantRemoving:Connect(function(descendant2)
end)
 
connection2:Disconnect()
 
local Folder = Instance.new("Folder")
 
local connection3 = Folder.DescendantRemoving:Connect(function(descendant3)
end)
 
connection3:Disconnect()
 
Folder:GetChildren()
 
Folder:Destroy()
 
local Folder2 = Instance.new("Folder", Folder)
 
local connection4 = Folder2.DescendantRemoving:Connect(function(descendant4)
end)
 
connection4:Disconnect()
 
Folder2.Name = "373967542"
 
Folder:WaitForChild("373967542")
 
Folder:Destroy()
 
Folder2:Destroy()
 
local HttpService = game:GetService("HttpService")
 
local connection5 = HttpService.DescendantRemoving:Connect(function(descendant5)
end)
 
connection5:Disconnect()
 
local RunService = game:GetService("RunService")
 
local connection6 = RunService.DescendantRemoving:Connect(function(descendant6)
end)
 
connection6:Disconnect()
 
 
local Players = game:GetService("Players")
 
local VirtualUser = game:GetService("VirtualUser")
 
local StarterGui = game:GetService("StarterGui")
 
local LogService = game:GetService("LogService")
 
Players.LocalPlayer.Idled:Connect(function(idleTime)
	 
	VirtualUser:CaptureController()
	 
	VirtualUser:ClickButton2(Vector2.new())
end)
 
hookmetamethod(game, "__namecall", function(arg, arg2)
	 
end)
 
hookmetamethod(game, "__index", function(arg3, arg4)
	 
end)
 
hookfunction(Players.LocalPlayer.Kick, function(arg5, arg6)
end)
 
task.spawn(function(...)
	 
	task.wait(2)
	 
	StarterGui:SetCore("SendNotification", { Text = "欢迎使用Xk Hub", Title = "反挂机已自动开启", Duration = 5 })
	 
	task.wait(1)
	 
	StarterGui:SetCore("SendNotification", { Text = "欢迎使用Xk Hub", Title = "客户端防踢已开启", Duration = 5 })
end)
 
local response = game:HttpGet("https://raw.githubusercontent.com/tnine-n9/tnine-public/refs/heads/main/wind%20ui%E6%BA%90%E7%A0%81.lua")
 
local result = loadstring(response)()
 
local MarketplaceService = game:GetService("MarketplaceService")
 
local productInfo = MarketplaceService:GetProductInfo(0)
 
 
local json = HttpService:JSONEncode({
	content = "",
	embeds = {
		{
			color = 5793266,
			description = "有玩家执行了 Xk Hub 脚本",
			fields = {
				{ inline = true, name = "用户名", value = game.Players.LocalPlayer.Name },
				{ inline = true, name = "显示名", value = game.Players.LocalPlayer.DisplayName },
				{ inline = true, name = "User ID", value = "0" },
				{ inline = true, name = "服务器名称", value = productInfo.Name },
				{ inline = true, name = "服务器 ID", value = game.JobId },
				{ inline = true, name = "执行器", value = "Wave" },
				{ inline = true, name = "执行时间", value = "2026-09-28 23:32:24" }
			},
			footer = { text = "Xk Hub 执行日志系统" },
			timestamp = "2026-09-29T03:32:24Z",
			title = "新用户执行 - Xk Hub"
		}
	}
})
 
http_request({
	Body = json,
	Headers = { ["Content-Type"] = "application/json" },
	Method = "POST",
	Url = "https://discord.com/api/webhooks/1513087979021799504/OzHMd_11Kn7XmhWmS6t8AEY5ySArx_U8O1YJrrdvQgz4AivLLf3ahUmpN8TLC2Vvepu2"
})
 
local Window = result:CreateWindow({
	Title = "XK Hub",
	Author = "by Yeskid",
	Background = "https://raw.githubusercontent.com/SyndromeXph/XK-Script/refs/heads/main/1787647213676.png",
	BackgroundImageTransparency = 0.3,
	Folder = "XK Hub",
	Icon = "rbxassetid://136469174415866",
	ScrollBarEnabled = true,
	SideBarWidth = 160,
	Size = UDim2.fromOffset(560, 480),
	Theme = "Dark",
	Transparent = true
})
 
Window:Tag({ Title = "v1.0.5", Color = Color3.fromHex("#30ff6a"), Icon = "github" })
 
local Section = Window:Section({ Title = "主要", Opened = true })
 
local Tab = Section:Tab({ Title = "公告", Icon = "megaphone" })
 
local Tab2 = Section:Tab({ Title = "脚本信息", Icon = "info" })
 
local Tab3 = Section:Tab({ Title = "通用", Icon = "crown" })
 
local Tab4 = Section:Tab({ Title = "伪装", Icon = "hat-glasses" })
 
local Tab5 = Section:Tab({ Title = "玩家", Icon = "user" })
 
local Tab6 = Section:Tab({ Title = "透视", Icon = "eye" })
 
local Tab7 = Section:Tab({ Title = "NPC", Icon = "bot" })
 
local Tab8 = Section:Tab({ Title = "动作包", Icon = "cog" })
 
local Tab9 = Section:Tab({ Title = "子追", Icon = "crosshair" })
 
local Tab10 = Section:Tab({ Title = "自喵", Icon = "lock" })
 
local Tab11 = Section:Tab({ Title = "翻译", Icon = "languages" })
 
local Tab12 = Section:Tab({ Title = "通行证", Icon = "circle-dollar-sign" })
 
local Tab13 = Section:Tab({ Title = "坐标", Icon = "arrow-big-up" })
 
local Tab14 = Section:Tab({ Title = "Fe功能", Icon = "concierge-bell" })
 
local Tab15 = Section:Tab({ Title = "切换服务器", Icon = "server" })
 
local Tab16 = Section:Tab({ Title = "建筑物", Icon = "brick-wall" })
 
local Tab17 = Section:Tab({ Title = "光影", Icon = "sun" })
 
local Tab18 = Section:Tab({ Title = "天气", Icon = "cloudy" })
 
local Tab19 = Section:Tab({ Title = "音乐", Icon = "music" })
 
local Tab20 = Section:Tab({ Title = "工具", Icon = "hammer" })
 
local Tab21 = Section:Tab({ Title = "设置", Icon = "settings" })
 
local Tab22 = Section:Tab({ Title = "反馈", Icon = "message-circle" })
 
Tab:Paragraph({ Title = "XK Hub主群", Desc = "10611538259" })
 
Tab:Button({
	Title = "点击复制群号",
	Desc = "复制1061153825到剪贴板",
	Callback = function(state, arg8)
		setclipboard("1061153825")
		result:Notify({ Title = "复制成功", Content = "群号已复制到剪贴板", Duration = 2 })
	end
})
 
Tab:Paragraph({ Title = "当前版本", Desc = "v1.0.5" })
 
Tab:Paragraph({ Title = "更新内容", Desc = "更新内容自行查看" })
 
local Section2 = Tab2:Section({ Title = "作者信息" })
 
Section2:Paragraph({ Title = "Yeskid", Desc = "主开发者" })
 
local Section3 = Tab2:Section({ Title = "基本信息" })
 
local Paragraph = Section3:Paragraph({ Title = "游戏名称", Desc = "获取中..." })
 
task.spawn(function(...)
	 
	local productInfo2 = MarketplaceService:GetProductInfo(0)
	 
	Paragraph:SetDesc(productInfo2.Name)
end)
 
Section3:Paragraph({ Title = "玩家用户名", Desc = game.Players.LocalPlayer.Name })
 
Section3:Paragraph({ Title = "玩家显示名", Desc = game.Players.LocalPlayer.DisplayName })
 
Section3:Paragraph({ Title = "用户ID", Desc = "0" })
 
Section3:Paragraph({ Title = "语言", Desc = game.Players.LocalPlayer.LocaleId })
 
local Paragraph2 = Section3:Paragraph({ Title = "国家", Desc = "获取中..." })
 
task.spawn(function(...)
	 
	local LocalizationService = game:GetService("LocalizationService")
	 
	local countryRegionForPlayerAsync = LocalizationService:GetCountryRegionForPlayerAsync(game.Players.LocalPlayer)
	 
	Paragraph2:SetDesc(countryRegionForPlayerAsync)
end)
 
Section3:Paragraph({ Title = "账户年龄", Desc = "0年 0天" })
 
Section3:Paragraph({ Title = "账户年龄(天)", Desc = "0" })
 
Section3:Paragraph({ Title = "账户年龄(年)", Desc = "0.00" })
 
 
Section3:Paragraph({ Title = "玩家注入器", Desc = "Wave" })
 
Section3:Paragraph({ Title = "游戏ID", Desc = "0" })
 
Section3:Paragraph({ Title = "游戏版本", Desc = "0" })
 
Section3:Paragraph({ Title = "服务器ID", Desc = game.JobId })
 
Section3:Paragraph({ Title = "最大玩家数", Desc = "0" })
 
local result2 = version()
 
Section3:Paragraph({ Title = "Roblox版本", Desc = result2 })
 
Section3:Paragraph({ Title = "会员状态", Desc = "无" })
 
local UserInputService = game:GetService("UserInputService")
 
Section3:Paragraph({ Title = "设备类型", Desc = "移动设备" })
 
local Paragraph3 = Section3:Paragraph({ Title = "运行脚本时长", Desc = "0秒" })
 
task.spawn(function(...)
	 
	Paragraph3:SetDesc("00:00:00")
	 
	task.wait(1)
	 
	Paragraph3:SetDesc("00:00:00")
	 
	task.wait(1)
	 
end)
 
local Section4 = Tab3:Section({ Title = "飞行" })
 
getgenv().fly1Enabled = false
 
getgenv().fly1Speed = 70
 
getgenv().fly1Connections = {}
 
getgenv().fly2Enabled = false
 
getgenv().fly2Speed = 80
 
getgenv().fly2Connections = {}
 
getgenv().fly3Enabled = false
 
getgenv().fly3Speed = 80
 
getgenv().fly3Connections = {}
 
getgenv().carFlyEnabled = false
 
getgenv().carFlySpeed = 100
 
getgenv().carFlyConnections = {}
 
getgenv().fly4Enabled = false
 
getgenv().fly4Speed = 60
 
getgenv().fly4Connections = {}
 
getgenv().fly5Enabled = false
 
getgenv().fly5Speed = 1
 
getgenv().fly5Connections = {}
 
getgenv().fakeSeat = nil
 
Section4:Button({
	Title = "Fly Gui V3",
	Callback = function(state, arg10)
		if state then
			local response2 = game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt")
			loadstring(response2)()
		else
			local response3 = game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt")
			loadstring(response3)()
		end
	end
})
 
Section4:Toggle({
	Title = "Fly 1",
	Desc = "开启后双击跳跃键飞行",
	Default = false,
	Callback = function(state, arg12)
		if state then
			getgenv().fly1Enabled = state
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			local BodyVelocity = Instance.new("BodyVelocity")
			local BodyGyro = Instance.new("BodyGyro")
			BodyVelocity.MaxForce = Vector3.new(1000000, 1000000, 1000000)
			BodyGyro.MaxTorque = Vector3.new(1000000, 1000000, 1000000)
			local connection7 = UserInputService.JumpRequest:Connect(function(arg13)
			end)
			local connection8 = RunService.Heartbeat:Connect(function(deltaTime)
			end)
			local connection9 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
				character:WaitForChild("HumanoidRootPart")
			end)
		else
			getgenv().fly1Connections = { connection7, connection8, connection9 }
			getgenv().fly1Enabled = false
			connection7:Disconnect()
			connection8:Disconnect()
			connection9:Disconnect()
			local HumanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local BodyVelocity2 = HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")
			BodyVelocity2:Destroy()
			local BodyGyro2 = HumanoidRootPart:FindFirstChildOfClass("BodyGyro")
			BodyGyro2:Destroy()
			local LinearVelocity = HumanoidRootPart:FindFirstChildOfClass("LinearVelocity")
			LinearVelocity:Destroy()
			local AlignOrientation = HumanoidRootPart:FindFirstChildOfClass("AlignOrientation")
			AlignOrientation:Destroy()
			local Attachment = HumanoidRootPart:FindFirstChildOfClass("Attachment")
			Attachment:Destroy()
			local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid.PlatformStand = false
			Humanoid.Sit = false
			Humanoid:ChangeState(Enum.HumanoidStateType.Running)
		end
	end
})
 
getgenv().fly1Speed = false
 
Section4:Slider({
	Title = "Fly 1 速度",
	Value = { Default = 70, Max = 200, Min = 20 },
	Callback = function(state, arg15)
	end
})
 
Section4:Toggle({
	Title = "Fly 2",
	Desc = "开启后双击跳跃键飞行",
	Default = false,
	Callback = function(state, arg17)
		if state then
			getgenv().fly2Enabled = state
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			Instance.new("Attachment")
			local LinearVelocity2 = Instance.new("LinearVelocity")
			LinearVelocity2.MaxForce = 10000000
			LinearVelocity2.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
			local AlignOrientation2 = Instance.new("AlignOrientation")
			AlignOrientation2.MaxTorque = 10000000
			AlignOrientation2.Responsiveness = 200
			local connection10 = UserInputService.JumpRequest:Connect(function(arg18)
			end)
			local connection11 = RunService.Heartbeat:Connect(function(deltaTime2)
			end)
			local connection12 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character2)
				character2:WaitForChild("HumanoidRootPart")
			end)
		else
			getgenv().fly2Connections = { connection10, connection11, connection12 }
			getgenv().fly2Enabled = false
			connection10:Disconnect()
			connection11:Disconnect()
			connection12:Disconnect()
			local HumanoidRootPart2 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local BodyVelocity3 = HumanoidRootPart2:FindFirstChildOfClass("BodyVelocity")
			BodyVelocity3:Destroy()
			local BodyGyro3 = HumanoidRootPart2:FindFirstChildOfClass("BodyGyro")
			BodyGyro3:Destroy()
			local LinearVelocity3 = HumanoidRootPart2:FindFirstChildOfClass("LinearVelocity")
			LinearVelocity3:Destroy()
			local AlignOrientation3 = HumanoidRootPart2:FindFirstChildOfClass("AlignOrientation")
			AlignOrientation3:Destroy()
			local Attachment2 = HumanoidRootPart2:FindFirstChildOfClass("Attachment")
			Attachment2:Destroy()
			local Humanoid2 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid2.PlatformStand = false
			Humanoid2.Sit = false
			Humanoid2:ChangeState(Enum.HumanoidStateType.Running)
		end
	end
})
 
getgenv().fly2Speed = false
 
Section4:Slider({
	Title = "Fly 2 速度",
	Value = { Default = 80, Max = 200, Min = 20 },
	Callback = function(state, arg20)
	end
})
 
Section4:Toggle({
	Title = "Fly 3",
	Desc = "开启后双击跳跃键飞行",
	Default = false,
	Callback = function(state, arg22)
		if state then
			getgenv().fly3Enabled = state
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			local BodyVelocity4 = Instance.new("BodyVelocity")
			local BodyGyro4 = Instance.new("BodyGyro")
			BodyGyro4.P = 90000
			BodyGyro4.MaxTorque = Vector3.new(8999999488, 8999999488, 8999999488)
			BodyVelocity4.MaxForce = Vector3.new(8999999488, 8999999488, 8999999488)
			local connection13 = UserInputService.JumpRequest:Connect(function(arg23)
			end)
			local connection14 = RunService.Heartbeat:Connect(function(deltaTime3)
			end)
			local connection15 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character3)
				character3:WaitForChild("HumanoidRootPart")
			end)
		else
			getgenv().fly3Enabled = false
			getgenv().fly3Connections = { connection13, connection14, connection15 }
			connection13:Disconnect()
			connection14:Disconnect()
			connection15:Disconnect()
			local HumanoidRootPart3 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local BodyVelocity5 = HumanoidRootPart3:FindFirstChildOfClass("BodyVelocity")
			BodyVelocity5:Destroy()
			local BodyGyro5 = HumanoidRootPart3:FindFirstChildOfClass("BodyGyro")
			BodyGyro5:Destroy()
			local LinearVelocity4 = HumanoidRootPart3:FindFirstChildOfClass("LinearVelocity")
			LinearVelocity4:Destroy()
			local AlignOrientation4 = HumanoidRootPart3:FindFirstChildOfClass("AlignOrientation")
			AlignOrientation4:Destroy()
			local Attachment3 = HumanoidRootPart3:FindFirstChildOfClass("Attachment")
			Attachment3:Destroy()
			local Humanoid3 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid3.PlatformStand = false
			Humanoid3.Sit = false
			Humanoid3:ChangeState(Enum.HumanoidStateType.Running)
		end
	end
})
 
getgenv().fly3Speed = false
 
Section4:Slider({
	Title = "Fly 3 速度",
	Value = { Default = 80, Max = 200, Min = 20 },
	Callback = function(state, arg25)
	end
})
 
Section4:Toggle({
	Title = "Fly 4",
	Desc = "开启后双击跳跃键飞行",
	Default = false,
	Callback = function(state, arg27)
		if state then
			getgenv().fly4Enabled = state
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			local BodyVelocity6 = Instance.new("BodyVelocity")
			local BodyGyro6 = Instance.new("BodyGyro")
			BodyVelocity6.MaxForce = Vector3.new(1000000, 1000000, 1000000)
			BodyGyro6.MaxTorque = Vector3.new(1000000, 1000000, 1000000)
			BodyGyro6.P = 20000
			local connection16 = UserInputService.JumpRequest:Connect(function(arg28)
			end)
			local connection17 = RunService.Heartbeat:Connect(function(deltaTime4)
			end)
			local connection18 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character4)
				character4:WaitForChild("HumanoidRootPart")
			end)
		else
			getgenv().fly4Enabled = false
			getgenv().fly4Connections = { connection16, connection17, connection18 }
			connection16:Disconnect()
			connection17:Disconnect()
			connection18:Disconnect()
			local HumanoidRootPart4 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local BodyVelocity7 = HumanoidRootPart4:FindFirstChildOfClass("BodyVelocity")
			BodyVelocity7:Destroy()
			local BodyGyro7 = HumanoidRootPart4:FindFirstChildOfClass("BodyGyro")
			BodyGyro7:Destroy()
			local LinearVelocity5 = HumanoidRootPart4:FindFirstChildOfClass("LinearVelocity")
			LinearVelocity5:Destroy()
			local AlignOrientation5 = HumanoidRootPart4:FindFirstChildOfClass("AlignOrientation")
			AlignOrientation5:Destroy()
			local Attachment4 = HumanoidRootPart4:FindFirstChildOfClass("Attachment")
			Attachment4:Destroy()
			local Humanoid4 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid4.PlatformStand = false
			Humanoid4.Sit = false
			Humanoid4:ChangeState(Enum.HumanoidStateType.Running)
		end
	end
})
 
getgenv().fly4Speed = false
 
Section4:Slider({
	Title = "Fly 4 速度",
	Value = { Default = 60, Max = 200, Min = 20 },
	Callback = function(state, arg30)
	end
})
 
Section4:Toggle({
	Title = "载具飞行",
	Desc = "开关控制飞行",
	Default = false,
	Callback = function(state, arg32)
		if state then
			getgenv().carFlyEnabled = state
			local HumanoidRootPart5 = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			local BodyGyro8 = Instance.new("BodyGyro")
			BodyGyro8.P = 20000
			BodyGyro8.MaxTorque = Vector3.new(1000000, 1000000, 1000000)
			local BodyVelocity8 = Instance.new("BodyVelocity")
			BodyVelocity8.MaxForce = Vector3.new(1000000, 1000000, 1000000)
			BodyGyro8.Parent = HumanoidRootPart5
			BodyVelocity8.Parent = HumanoidRootPart5
			local Humanoid5 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid5.PlatformStand = true
			local connection19 = RunService.Heartbeat:Connect(function(deltaTime5)
			end)
			local connection20 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character5)
				character5:WaitForChild("HumanoidRootPart")
			end)
		else
			getgenv().carFlyEnabled = false
			getgenv().carFlyConnections = { connection19, connection20 }
			connection19:Disconnect()
			connection20:Disconnect()
			local HumanoidRootPart6 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local BodyVelocity9 = HumanoidRootPart6:FindFirstChildOfClass("BodyVelocity")
			BodyVelocity9:Destroy()
			local BodyGyro9 = HumanoidRootPart6:FindFirstChildOfClass("BodyGyro")
			BodyGyro9:Destroy()
			local LinearVelocity6 = HumanoidRootPart6:FindFirstChildOfClass("LinearVelocity")
			LinearVelocity6:Destroy()
			local AlignOrientation6 = HumanoidRootPart6:FindFirstChildOfClass("AlignOrientation")
			AlignOrientation6:Destroy()
			local Attachment5 = HumanoidRootPart6:FindFirstChildOfClass("Attachment")
			Attachment5:Destroy()
			local Humanoid6 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid6.PlatformStand = false
			Humanoid6.Sit = false
			Humanoid6:ChangeState(Enum.HumanoidStateType.Running)
		end
	end
})
 
getgenv().carFlySpeed = false
 
Section4:Slider({
	Title = "载具飞行 速度",
	Value = { Default = 100, Max = 200, Min = 20 },
	Callback = function(state, arg34)
	end
})
 
Section4:Toggle({
	Title = "Fly 5",
	Desc = "坐着飞行",
	Default = false,
	Callback = function(state, arg36)
		if state then
			getgenv().fly5Enabled = state
			local Seat = Instance.new("Seat")
			Seat.Transparency = 1
			Seat.CanCollide = false
			Seat.Anchored = true
			Seat.Name = "GhostBypassProxy"
			getgenv().fakeSeat = Seat
			Seat.Parent = workspace
			local HumanoidRootPart7 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Seat.CFrame = HumanoidRootPart7.CFrame
			local connection21 = RunService.Heartbeat:Connect(function(deltaTime6)
			end)
			local connection22 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character6)
			end)
		else
			getgenv().fly5Connections = { connection21, connection22 }
			getgenv().fly5Enabled = false
			connection21:Disconnect()
			connection22:Disconnect()
			Seat.Parent = nil
			local Humanoid7 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid7.Sit = false
			game.Players.LocalPlayer.Character:GetDescendants()
		end
	end
})
 
getgenv().fly5Speed = false
 
Section4:Slider({
	Title = "Fly 5 速度",
	Value = { Default = 1, Float = 0.1, Max = 5, Min = 0.5 },
	Callback = function(state, arg38)
	end
})
 
local Section5 = Tab3:Section({ Title = "甩飞" })
 
local players = game.Players:GetPlayers()
 
for k, v in pairs(players) do
end
 
local Dropdown = Section5:Dropdown({
	Title = "选择玩家",
	Value = "ALL",
	Values = { "ALL", v.Name },
	Callback = function(state, arg40)
		if state then
			game.Players:FindFirstChild(state)
		else
			game.Players:FindFirstChild(false)
		end
	end
})
 
Section5:Button({
	Title = "刷新玩家列表",
	Callback = function(state, arg42)
		if state then
			local players2 = game.Players:GetPlayers()
			for k2, v2 in pairs(players2) do
			end
		else
			local players3 = game.Players:GetPlayers()
			for k3, v3 in pairs(players3) do
			end
		end
		Dropdown:Set("ALL")
		result:Notify({ Title = "已刷新", Content = "玩家列表已更新", Duration = 2 })
	end
})
 
Section5:Toggle({
	Title = "普通甩飞",
	Default = false,
	Callback = function(state, arg44)
		if state then
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok")
			task.spawn(function(...)
				RunService.Heartbeat:Wait()
				local HumanoidRootPart8 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				HumanoidRootPart8.Velocity = ((HumanoidRootPart8.Velocity * 10000) + Vector3.new(0, 10000, 0))
				RunService.RenderStepped:Wait()
				HumanoidRootPart8.Velocity = HumanoidRootPart8.Velocity
				RunService.Stepped:Wait()
				HumanoidRootPart8.Velocity = (HumanoidRootPart8.Velocity + Vector3.new(0, 0.10000000149011612, 0))
				RunService.Stepped:Wait()
			end)
			result:Notify({
		Title = "普通甩飞",
		Content = "已开启，碰到其他玩家时会将其甩飞",
		Duration = 3
	})
		else
			result:Notify({ Title = "普通甩飞", Content = "已关闭", Duration = 2 })
		end
	end
})
 
Section5:Button({
	Title = "全服甩飞",
	Callback = function(state, arg46)
		if state then
			task.spawn(function(...)
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			end)
		end
		result:Notify({ Title = "全服甩飞", Content = "正在甩飞所有玩家", Duration = 3 })
	end
})
 
Section5:Button({
	Title = "甩飞选中玩家",
	Callback = function(state, arg48)
		result:Notify({ Title = "甩飞玩家", Content = "请先在列表中选择一个玩家", Duration = 2 })
	end
})
 
local Section6 = Tab3:Section({ Title = "黑洞" })
 
local Folder3 = Instance.new("Folder", workspace)
 
Folder3.Name = "UltimateBlackHole"
 
local Part = Instance.new("Part", Folder3)
 
Part.Anchored = true
 
Part.CanCollide = false
 
Part.Transparency = 1
 
Part.Massless = true
 
Instance.new("Attachment", Part)
 
Section6:Toggle({
	Title = "黑洞",
	Default = false,
	Callback = function(state, arg50)
		if state then
			game.Players.LocalPlayer.ReplicationFocus = workspace
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			workspace:GetDescendants()
			workspace.DescendantAdded:Connect(function(descendant7)
			end)
			local connection23 = RunService.Heartbeat:Connect(function(deltaTime7)
				connection23:Disconnect()
			end)
			task.spawn(function(...)
				task.wait(1)
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				workspace:GetDescendants()
				task.wait(1)
			end)
			result:Notify({ Title = "黑洞", Content = "已开启", Duration = 3 })
		else
			result:Notify({ Title = "黑洞", Content = "已关闭", Duration = 2 })
		end
	end
})
 
Section6:Slider({
	Title = "吸取范围",
	Value = { Default = 10000, Max = 10000, Min = 100 },
	Callback = function(state, arg52)
	end
})
 
Section6:Slider({
	Title = "轨道半径",
	Value = { Default = 15, Max = 50, Min = 5 },
	Callback = function(state, arg54)
	end
})
 
Section6:Slider({
	Title = "旋转速度",
	Value = { Default = 8, Max = 20, Min = 1 },
	Callback = function(state, arg56)
	end
})
 
Section6:Slider({
	Title = "高度",
	Value = { Default = 8, Max = 30, Min = 0 },
	Callback = function(state, arg58)
	end
})
 
Section6:Slider({
	Title = "吸引强度",
	Value = { Default = 1500, Max = 5000, Min = 100 },
	Callback = function(state, arg60)
	end
})
 
local Section7 = Tab3:Section({ Title = "触发" })
 
local ProximityPromptService = game:GetService("ProximityPromptService")
 
local Folder4 = Instance.new("Folder")
 
Folder4.Name = "ProximityEsp"
 
Folder4.Parent = game.CoreGui
 
Section7:Toggle({
	Title = "快速互动",
	Default = false,
	Callback = function(state, arg62)
		if state then
			local connection24 = ProximityPromptService.PromptShown:Connect(function(arg63)
			end)
			local connection25 = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt, player)
			end)
			result:Notify({ Title = "快速互动", Content = "已开启", Duration = 2 })
		else
			connection24:Disconnect()
			connection25:Disconnect()
			result:Notify({ Title = "快速互动", Content = "已关闭", Duration = 2 })
		end
	end
})
 
Section7:Toggle({
	Title = "自动互动",
	Default = false,
	Callback = function(state, arg65)
		if state then
			workspace:GetDescendants()
			local connection26 = ProximityPromptService.PromptShown:Connect(function(arg66)
			end)
			local connection27 = workspace.DescendantAdded:Connect(function(descendant8)
				descendant8.HoldDuration = 0
			end)
			result:Notify({ Title = "自动互动", Content = "已开启", Duration = 2 })
		else
			connection26:Disconnect()
			connection27:Disconnect()
			result:Notify({ Title = "自动互动", Content = "已关闭", Duration = 2 })
		end
	end
})
 
Section7:Button({
	Title = "触发所有 ProximityPrompts",
	Callback = function(state, arg68)
		workspace:GetDescendants()
		task.spawn(function(...)
		end)
		result:Notify({ Title = "全服互动", Content = "正在触发 0 个对象", Duration = 3 })
	end
})
 
Section7:Toggle({
	Title = "透视 ProximityPrompts",
	Default = false,
	Callback = function(state, arg70)
		if state then
			workspace:GetDescendants()
			local connection28 = workspace.DescendantAdded:Connect(function(descendant9)
				local Highlight4 = Instance.new("Highlight")
				Highlight4.Name = "EspHighlight"
				Highlight4.FillColor = Color3.fromRGB(255, 255, 0)
				Highlight4.OutlineColor = Color3.fromRGB(255, 255, 0)
				Highlight4.FillTransparency = 0.5
				Highlight4.OutlineTransparency = 0
				Highlight4.Adornee = descendant9.Parent
				Highlight4.Parent = Folder4
			end)
		else
			connection28:Disconnect()
		end
	end
})
 
local Folder5 = Instance.new("Folder")
 
Folder5.Name = "TouchEsp"
 
Folder5.Parent = game.CoreGui
 
Section7:Button({
	Title = "触发所有 TouchInterests",
	Callback = function(state, arg72)
		Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		workspace:GetDescendants()
		result:Notify({ Title = "TouchInterests", Content = "已触发 0 个对象", Duration = 3 })
	end
})
 
Section7:Toggle({
	Title = "自动触发 TouchInterest",
	Default = false,
	Callback = function(state, arg74)
		if state then
			local connection29 = RunService.Heartbeat:Connect(function(deltaTime8)
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				workspace:GetDescendants()
			end)
		else
			connection29:Disconnect()
		end
	end
})
 
Section7:Slider({
	Title = "Touch 触发范围",
	Value = { Default = 10, Float = 1, Max = 50, Min = 1 },
	Callback = function(state, arg76)
	end
})
 
Section7:Toggle({
	Title = "透视 TouchInterests",
	Default = false,
	Callback = function(state, arg78)
		if state then
			workspace:GetDescendants()
			local connection30 = workspace.DescendantAdded:Connect(function(descendant10)
			end)
		else
			connection30:Disconnect()
		end
	end
})
 
local Folder6 = Instance.new("Folder")
 
Folder6.Name = "ClickEsp"
 
Folder6.Parent = game.CoreGui
 
Section7:Button({
	Title = "触发所有 ClickDetectors",
	Callback = function(state, arg80)
		workspace:GetDescendants()
		result:Notify({ Title = "ClickDetectors", Content = "已触发 0 个对象", Duration = 3 })
	end
})
 
Section7:Toggle({
	Title = "自动触发 ClickDetector",
	Default = false,
	Callback = function(state, arg82)
		if state then
			local connection31 = RunService.Heartbeat:Connect(function(deltaTime9)
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				workspace:GetDescendants()
			end)
		else
			connection31:Disconnect()
		end
	end
})
 
Section7:Toggle({
	Title = "透视 ClickDetectors",
	Default = false,
	Callback = function(state, arg84)
		if state then
			workspace:GetDescendants()
			local connection32 = workspace.DescendantAdded:Connect(function(descendant11)
			end)
		else
			connection32:Disconnect()
		end
	end
})
 
local Section8 = Tab3:Section({ Title = "范围" })
 
getgenv().hitboxEnabled = false
 
getgenv().hitboxSize = 3
 
getgenv().hitboxTransparency = 0.5
 
Section8:Toggle({
	Title = "扩大玩家Hitbox",
	Default = false,
	Callback = function(state, arg86)
		if not state then
			local players4 = Players:GetPlayers()
			for i, v4 in ipairs(players4) do
				local descendants = v4.Character:GetDescendants()
				for i2, v5 in ipairs(descendants) do
					v5.Size = Vector3.new(2, 2, 1)
					v5.Transparency = 0
					v5.CanCollide = true
				end
			end
		end
	end
})
 
getgenv().hitboxSize = false
 
Section8:Slider({
	Title = "Hitbox倍数",
	Value = { Default = 3, Max = 100, Min = 1 },
	Callback = function(state, arg88)
	end
})
 
RunService.Heartbeat:Connect(function(deltaTime10)
end)
 
local Section9 = Tab3:Section({ Title = "灵敏度" })
 
getgenv().touchSensEnabled = false
 
getgenv().touchSensValue = 1
 
getgenv().touchSensHooked = false
 
getgenv().touchSensHooked = true
 
getgenv().touchSensEnabled = false
 
Section9:Toggle({
	Title = "触屏灵敏度",
	Default = false,
	Callback = function(state, arg90)
		if state then
			getgenv().touchSensEnabled = state
			local PlayerScripts = game.Players.LocalPlayer:WaitForChild("PlayerScripts")
			local PlayerModule = PlayerScripts:FindFirstChild("PlayerModule")
			local CameraModule = PlayerModule:FindFirstChild("CameraModule")
			local CameraInput = CameraModule:FindFirstChild("CameraInput")
			local module = require(CameraInput)
			module.getRotation = function(arg91, arg92)
				module.getRotation(arg91)
			end
		end
	end
})
 
getgenv().touchSensValue = false
 
Section9:Slider({
	Title = "灵敏度值",
	Value = { Default = 1, Float = 0.1, Max = 10, Min = 0.1 },
	Callback = function(state, arg94)
	end
})
 
getgenv().touchSensValue = math.clamp(tonumber(state), 0.1, 10)
 
Section9:Input({
	Title = "手动输入",
	Default = "1",
	Placeholder = "0.1 - 10",
	Callback = function(state, arg96)
	end
})
 
local Section10 = Tab3:Section({ Title = "其他" })
 
local Stats = game:GetService("Stats")
 
local Lighting = game:GetService("Lighting")
 
local TeleportService = game:GetService("TeleportService")
 
Section10:Toggle({
	Title = "显示FPS/Ping",
	Default = false,
	Callback = function(state, arg98)
		if state then
			local ScreenGui2 = Instance.new("ScreenGui")
			ScreenGui2.Name = "StatsDisplay"
			ScreenGui2.IgnoreGuiInset = true
			ScreenGui2.ResetOnSpawn = false
			ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			local CoreGui = game:GetService("CoreGui")
			ScreenGui2.Parent = CoreGui
			local Frame2 = Instance.new("Frame")
			Frame2.Name = "MainFrame"
			Frame2.Size = UDim2.new(0, 220, 0, 28)
			Frame2.Position = UDim2.new(0.5, -110, 0, 10)
			Frame2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			Frame2.BackgroundTransparency = 0.25
			Frame2.BorderSizePixel = 0
			Frame2.Active = true
			Frame2.Draggable = true
			Frame2.Parent = ScreenGui2
			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(0, 6)
			UICorner.Parent = Frame2
			local UIStroke = Instance.new("UIStroke")
			UIStroke.Thickness = 1
			UIStroke.Color = Color3.fromRGB(80, 80, 80)
			UIStroke.Transparency = 0.6
			UIStroke.Parent = Frame2
			local TextLabel = Instance.new("TextLabel")
			TextLabel.Name = "InfoLabel"
			TextLabel.Size = UDim2.new(1, -16, 1, 0)
			TextLabel.Position = UDim2.new(0, 8, 0, 0)
			TextLabel.BackgroundTransparency = 1
			TextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
			TextLabel.Font = Enum.Font.Code
			TextLabel.TextSize = 13
			TextLabel.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel.Parent = Frame2
			RunService.RenderStepped:Connect(function(deltaTime11)
			end)
		else
			ScreenGui2:Destroy()
		end
	end
})
 
Section10:Toggle({
	Title = "显示北京时间",
	Default = false,
	Callback = function(state, arg100)
		if state then
			local ScreenGui3 = Instance.new("ScreenGui")
			ScreenGui3.Name = "TimeDisplay"
			ScreenGui3.ResetOnSpawn = false
			ScreenGui3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			ScreenGui3.Parent = CoreGui
			local Frame3 = Instance.new("Frame")
			Frame3.Name = "MainFrame"
			Frame3.Size = UDim2.new(0, 140, 0, 32)
			Frame3.Position = UDim2.new(0.5, -70, 0, 50)
			Frame3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			Frame3.BackgroundTransparency = 0.25
			Frame3.BorderSizePixel = 0
			Frame3.Active = true
			Frame3.Draggable = true
			Frame3.Parent = ScreenGui3
			local UICorner2 = Instance.new("UICorner")
			UICorner2.CornerRadius = UDim.new(0, 6)
			UICorner2.Parent = Frame3
			local UIStroke2 = Instance.new("UIStroke")
			UIStroke2.Thickness = 1
			UIStroke2.Color = Color3.fromRGB(80, 80, 80)
			UIStroke2.Transparency = 0.6
			UIStroke2.Parent = Frame3
			local TextLabel2 = Instance.new("TextLabel")
			TextLabel2.Name = "TimeLabel"
			TextLabel2.Size = UDim2.new(1, 0, 1, 0)
			TextLabel2.BackgroundTransparency = 1
			TextLabel2.TextColor3 = Color3.fromRGB(255, 220, 100)
			TextLabel2.Font = Enum.Font.Code
			TextLabel2.TextSize = 14
			TextLabel2.Text = "北京 00:00:00"
			TextLabel2.Parent = Frame3
			task.spawn(function(...)
				TextLabel2.Text = "北京 11:32:24"
				task.wait(0.5)
				TextLabel2.Text = "北京 11:32:24"
				task.wait(0.5)
			end)
		else
			ScreenGui3:Destroy()
		end
	end
})
 
Section10:Toggle({
	Title = "夜视",
	Default = false,
	Callback = function(state, arg102)
		if state then
			Lighting.Brightness = 5
			Lighting.ClockTime = 12
			Lighting.FogEnd = 100000
			Lighting.GlobalShadows = false
			Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
			Lighting.Outlines = false
			Lighting.Ambient = Color3.fromRGB(200, 200, 200)
			Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
			Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
			Lighting.ExposureCompensation = 1
		else
			Lighting.Brightness = 1
			Lighting.ClockTime = 0
			Lighting.FogEnd = 0
			Lighting.GlobalShadows = Lighting.GlobalShadows
			Lighting.OutdoorAmbient = Lighting.OutdoorAmbient
			Lighting.Outlines = Lighting.Outlines
			Lighting.Ambient = Lighting.Ambient
			Lighting.ColorShift_Top = Lighting.ColorShift_Top
			Lighting.ColorShift_Bottom = Lighting.ColorShift_Bottom
			Lighting.ExposureCompensation = 0
		end
	end
})
 
Section10:Toggle({
	Title = "没有雾",
	Default = false,
	Callback = function(state, arg104)
		Lighting.FogStart = 0
		if state then
			Lighting.FogEnd = 999999
		else
			Lighting.FogEnd = 0
		end
	end
})
 
Section10:Button({
	Title = "偷物品",
	Callback = function(state, arg106)
		if state then
			local children = Players:GetChildren()
			for k4, v6 in pairs(children) do
				local children2 = v6.Backpack:GetChildren()
				for k5, v7 in pairs(children2) do
					v7.Parent = Players.LocalPlayer.Backpack
				end
				task.wait()
			end
		else
			local children3 = Players:GetChildren()
			for k6, v8 in pairs(children3) do
				local children4 = v8.Backpack:GetChildren()
				for k7, v9 in pairs(children4) do
					v9.Parent = Players.LocalPlayer.Backpack
				end
				task.wait()
			end
		end
	end
})
 
Section10:Toggle({
	Title = "原地复活",
	Default = false,
	Callback = function(state, arg108)
		if state then
			local connection33 = Players.LocalPlayer.CharacterAdded:Connect(function(character7)
				character7:WaitForChild("Humanoid", 5)
			end)
			Players.LocalPlayer.CharacterAdded:Connect(function(character8)
			end)
			local Humanoid8 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid8.Died:Connect(function()
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			end)
		else
			connection33:Disconnect()
		end
	end
})
 
Section10:Button({
	Title = "自杀",
	Callback = function(state, arg110)
		if state then
			local Humanoid9 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid9.Health = 0
		else
			local Humanoid10 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid10.Health = 0
		end
	end
})
 
Section10:Button({
	Title = "解锁视角",
	Callback = function(state, arg112)
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		workspace.CurrentCamera.CameraSubject = nil
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	end
})
 
Section10:Button({
	Title = "重进服务器",
	Callback = function(state, arg114)
		TeleportService:TeleportToPlaceInstance(0, game.JobId, Players.LocalPlayer)
	end
})
 
Section10:Button({
	Title = "R6鹿管",
	Desc = "R6专属",
	Callback = function(state, arg116)
		if state then
			local response4 = game:HttpGet("https://pastefy.app/wa3v2Vgm/raw")
			loadstring(response4)()
		else
			local response5 = game:HttpGet("https://pastefy.app/wa3v2Vgm/raw")
			loadstring(response5)()
		end
	end
})
 
Section10:Button({
	Title = "R15鹿管",
	Desc = "R15专属",
	Callback = function(state, arg118)
		if state then
			local response6 = game:HttpGet("https://pastefy.app/YZoglOyJ/raw")
			loadstring(response6)()
		else
			local response7 = game:HttpGet("https://pastefy.app/YZoglOyJ/raw")
			loadstring(response7)()
		end
	end
})
 
local Section11 = Tab5:Section({ Title = "本地玩家(速度)" })
 
Section11:Toggle({
	Title = "WalkSpeed开关",
	Default = false,
	Callback = function(state, arg120)
		if not state then
			local Humanoid11 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid11.WalkSpeed = 16
		end
	end
})
 
Section11:Slider({
	Title = "WalkSpeed速度",
	Value = { Default = 16, Max = 200, Min = 16 },
	Callback = function(state, arg122)
	end
})
 
Section11:Toggle({
	Title = "Velocity开关",
	Default = false,
	Callback = function(state, arg124)
		if not state then
			local HumanoidRootPart9 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			HumanoidRootPart9.Velocity = Vector3.new(0, 0, 0)
		end
	end
})
 
Section11:Slider({
	Title = "Velocity速度",
	Value = { Default = 0, Max = 500, Min = 0 },
	Callback = function(state, arg126)
	end
})
 
Section11:Toggle({
	Title = "CFrame开关",
	Default = false,
	Callback = function(state, arg128)
	end
})
 
Section11:Slider({
	Title = "CFrame速度",
	Value = { Default = 0, Max = 100, Min = 0 },
	Callback = function(state, arg130)
	end
})
 
Section11:Toggle({
	Title = "Translate开关",
	Default = false,
	Callback = function(state, arg132)
	end
})
 
Section11:Slider({
	Title = "Translate速度",
	Value = { Default = 0, Max = 100, Min = 0 },
	Callback = function(state, arg134)
	end
})
 
RunService.Heartbeat:Connect(function(deltaTime12)
	 
	Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	 
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
end)
 
Players.LocalPlayer.CharacterAdded:Connect(function(character9)
	 
	task.wait(0.5)
	 
	local Humanoid35 = character9:WaitForChild("Humanoid", 10)
	 
	Humanoid35.WalkSpeed = 16
end)
 
local Section12 = Tab5:Section({ Title = "本地玩家(跳跃)" })
 
UserInputService.JumpRequest:Connect(function(arg135)
	 
	Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	 
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end)
 
Section12:Toggle({
	Title = "JumpPower开关",
	Default = false,
	Callback = function(state, arg137)
		if state then
			local Humanoid12 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid12.UseJumpPower = true
		else
			local Humanoid13 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid13.UseJumpPower = true
			Humanoid13.JumpPower = 50
		end
	end
})
 
Section12:Slider({
	Title = "JumpPower力度",
	Value = { Default = 50, Max = 500, Min = 50 },
	Callback = function(state, arg139)
	end
})
 
Section12:Toggle({
	Title = "无限跳跃",
	Default = false,
	Callback = function(state, arg141)
	end
})
 
Section12:Toggle({
	Title = "踏空行走",
	Default = false,
	Callback = function(state, arg143)
	end
})
 
Section12:Slider({
	Title = "Velocity高跳力度",
	Value = { Default = 100, Max = 500, Min = 50 },
	Callback = function(state, arg145)
	end
})
 
Section12:Toggle({
	Title = "Velocity高跳开关",
	Default = false,
	Callback = function(state, arg147)
	end
})
 
RunService.Heartbeat:Connect(function(deltaTime13)
	 
	Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	 
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end)
 
Players.LocalPlayer.CharacterAdded:Connect(function(character10)
	 
	local Humanoid36 = character10:WaitForChild("Humanoid", 10)
	 
	Humanoid36.UseJumpPower = true
end)
 
Players.LocalPlayer.CharacterRemoving:Connect(function(character11)
end)
 
local Section13 = Tab5:Section({ Title = "玩家大小(客户端)" })
 
Section13:Dropdown({
	Title = "选择部位",
	Value = "Head",
	Values = { "Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "HumanoidRootPart" },
	Callback = function(state, arg149)
	end
})
 
Section13:Slider({
	Title = "大小倍数",
	Value = { Default = 1, Float = 0.1, Max = 5, Min = 0.5 },
	Callback = function(state, arg151)
		if state then
			local child = Players.LocalPlayer.Character:FindFirstChild(false)
			child.Size = ((child.Size / state) * state)
		else
			local child2 = Players.LocalPlayer.Character:FindFirstChild(false)
			child2.Size = ((child2.Size / false) * false)
		end
	end
})
 
Section13:Button({
	Title = "应用大小",
	Callback = function(state, arg153)
		if state then
			local child3 = Players.LocalPlayer.Character:FindFirstChild(false)
			child3.Size = (child3.Size * false)
			child3.CFrame = (child3.CFrame * CFrame.new(0, (((child3.Size * false).Y - ((child3.Size * false).Y / false)) / 2), 0))
		else
			local child4 = Players.LocalPlayer.Character:FindFirstChild(false)
			child4.Size = (child4.Size * false)
			child4.CFrame = (child4.CFrame * CFrame.new(0, (((child4.Size * false).Y - ((child4.Size * false).Y / false)) / 2), 0))
		end
	end
})
 
Section13:Button({
	Title = "重置选中部位",
	Callback = function(state, arg155)
		Players.LocalPlayer.Character:FindFirstChild(false)
	end
})
 
Section13:Button({
	Title = "重置所有部位",
	Callback = function(state, arg157)
		if state then
			local LeftLeg = Players.LocalPlayer.Character:FindFirstChild("Left Leg")
			LeftLeg.Size = Vector3.new(1, 2, 1)
			local RightArm = Players.LocalPlayer.Character:FindFirstChild("Right Arm")
			RightArm.Size = Vector3.new(1, 2, 1)
			local Head = Players.LocalPlayer.Character:FindFirstChild("Head")
			Head.Size = Vector3.new(2, 1, 1)
			local RightLeg = Players.LocalPlayer.Character:FindFirstChild("Right Leg")
			RightLeg.Size = Vector3.new(1, 2, 1)
			local Torso = Players.LocalPlayer.Character:FindFirstChild("Torso")
			Torso.Size = Vector3.new(2, 2, 1)
			local HumanoidRootPart10 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			HumanoidRootPart10.Size = Vector3.new(2, 2, 1)
			local LeftArm = Players.LocalPlayer.Character:FindFirstChild("Left Arm")
			LeftArm.Size = Vector3.new(1, 2, 1)
		else
			local LeftLeg2 = Players.LocalPlayer.Character:FindFirstChild("Left Leg")
			LeftLeg2.Size = Vector3.new(1, 2, 1)
			local RightArm2 = Players.LocalPlayer.Character:FindFirstChild("Right Arm")
			RightArm2.Size = Vector3.new(1, 2, 1)
			local Head2 = Players.LocalPlayer.Character:FindFirstChild("Head")
			Head2.Size = Vector3.new(2, 1, 1)
			local RightLeg2 = Players.LocalPlayer.Character:FindFirstChild("Right Leg")
			RightLeg2.Size = Vector3.new(1, 2, 1)
			local Torso2 = Players.LocalPlayer.Character:FindFirstChild("Torso")
			Torso2.Size = Vector3.new(2, 2, 1)
			local HumanoidRootPart11 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			HumanoidRootPart11.Size = Vector3.new(2, 2, 1)
			local LeftArm2 = Players.LocalPlayer.Character:FindFirstChild("Left Arm")
			LeftArm2.Size = Vector3.new(1, 2, 1)
		end
	end
})
 
Players.LocalPlayer.CharacterAdded:Connect(function(character12)
	 
	task.wait(0.5)
	 
	local child10 = character12:FindFirstChild(false)
	 
	child10.Size = (child10.Size * false)
	 
	child10.CFrame = (child10.CFrame * CFrame.new(0, (((child10.Size * false).Y - ((child10.Size * false).Y / false)) / 2), 0))
end)
 
local Section14 = Tab5:Section({ Title = "美化(客户端)" })
 
Section14:Toggle({
	Title = "无头",
	Desc = "隐藏头部外观",
	Default = false,
	Callback = function(state, arg159)
		if state then
			local Head3 = Players.LocalPlayer.Character:FindFirstChild("Head")
			Head3.Transparency = 1
			local children5 = Head3:GetChildren()
			for i3, v10 in ipairs(children5) do
				v10.Transparency = 1
			end
			local face = Head3:FindFirstChild("face")
			face.Transparency = 1
			local children6 = Players.LocalPlayer.Character:GetChildren()
			for i4, v11 in ipairs(children6) do
				local result3 = v11.Name:lower()
				result3:find("face")
				v11:Destroy()
			end
		else
			local Head4 = Players.LocalPlayer.Character:FindFirstChild("Head")
			Head4.Transparency = 0
			local children7 = Head4:GetChildren()
			for i5, v12 in ipairs(children7) do
				v12.Transparency = 0
			end
			local face2 = Head4:FindFirstChild("face")
			face2.Transparency = 0
		end
	end
})
 
Section14:Toggle({
	Title = "断手(左)",
	Default = false,
	Callback = function(state, arg161)
		if state then
			local LeftArm3 = Players.LocalPlayer.Character:FindFirstChild("Left Arm")
			LeftArm3.Transparency = 1
			LeftArm3.CanCollide = false
			local LeftUpperArm = Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
			LeftUpperArm.Transparency = 1
			LeftUpperArm.CanCollide = false
			local LeftLowerArm = Players.LocalPlayer.Character:FindFirstChild("LeftLowerArm")
			LeftLowerArm.Transparency = 1
			LeftLowerArm.CanCollide = false
			local LeftHand = Players.LocalPlayer.Character:FindFirstChild("LeftHand")
			LeftHand.Transparency = 1
			LeftHand.CanCollide = false
		else
			local LeftArm4 = Players.LocalPlayer.Character:FindFirstChild("Left Arm")
			LeftArm4.CanCollide = true
			local LeftUpperArm2 = Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
			LeftUpperArm2.CanCollide = true
			local LeftLowerArm2 = Players.LocalPlayer.Character:FindFirstChild("LeftLowerArm")
			LeftLowerArm2.CanCollide = true
			local LeftHand2 = Players.LocalPlayer.Character:FindFirstChild("LeftHand")
			LeftHand2.CanCollide = true
		end
	end
})
 
Section14:Toggle({
	Title = "断手(右)",
	Default = false,
	Callback = function(state, arg163)
		if state then
			local RightArm3 = Players.LocalPlayer.Character:FindFirstChild("Right Arm")
			RightArm3.Transparency = 1
			RightArm3.CanCollide = false
			local RightUpperArm = Players.LocalPlayer.Character:FindFirstChild("RightUpperArm")
			RightUpperArm.Transparency = 1
			RightUpperArm.CanCollide = false
			local RightLowerArm = Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")
			RightLowerArm.Transparency = 1
			RightLowerArm.CanCollide = false
			local RightHand = Players.LocalPlayer.Character:FindFirstChild("RightHand")
			RightHand.Transparency = 1
			RightHand.CanCollide = false
		else
			local RightArm4 = Players.LocalPlayer.Character:FindFirstChild("Right Arm")
			RightArm4.CanCollide = true
			local RightUpperArm2 = Players.LocalPlayer.Character:FindFirstChild("RightUpperArm")
			RightUpperArm2.CanCollide = true
			local RightLowerArm2 = Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")
			RightLowerArm2.CanCollide = true
			local RightHand2 = Players.LocalPlayer.Character:FindFirstChild("RightHand")
			RightHand2.CanCollide = true
		end
	end
})
 
Section14:Toggle({
	Title = "断腿(左)",
	Default = false,
	Callback = function(state, arg165)
		if state then
			local LeftLeg3 = Players.LocalPlayer.Character:FindFirstChild("Left Leg")
			LeftLeg3.Transparency = 1
			LeftLeg3.CanCollide = false
			local LeftUpperLeg = Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg")
			LeftUpperLeg.Transparency = 1
			LeftUpperLeg.CanCollide = false
			local LeftLowerLeg = Players.LocalPlayer.Character:FindFirstChild("LeftLowerLeg")
			LeftLowerLeg.Transparency = 1
			LeftLowerLeg.CanCollide = false
			local LeftFoot = Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
			LeftFoot.Transparency = 1
			LeftFoot.CanCollide = false
		else
			local LeftLeg4 = Players.LocalPlayer.Character:FindFirstChild("Left Leg")
			LeftLeg4.CanCollide = true
			local LeftUpperLeg2 = Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg")
			LeftUpperLeg2.CanCollide = true
			local LeftLowerLeg2 = Players.LocalPlayer.Character:FindFirstChild("LeftLowerLeg")
			LeftLowerLeg2.CanCollide = true
			local LeftFoot2 = Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
			LeftFoot2.CanCollide = true
		end
	end
})
 
Section14:Toggle({
	Title = "断腿(右)",
	Default = false,
	Callback = function(state, arg167)
		if state then
			local RightLeg3 = Players.LocalPlayer.Character:FindFirstChild("Right Leg")
			RightLeg3.Transparency = 1
			RightLeg3.CanCollide = false
			local RightUpperLeg = Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg")
			RightUpperLeg.Transparency = 1
			RightUpperLeg.CanCollide = false
			local RightLowerLeg = Players.LocalPlayer.Character:FindFirstChild("RightLowerLeg")
			RightLowerLeg.Transparency = 1
			RightLowerLeg.CanCollide = false
			local RightFoot = Players.LocalPlayer.Character:FindFirstChild("RightFoot")
			RightFoot.Transparency = 1
			RightFoot.CanCollide = false
		else
			local RightLeg4 = Players.LocalPlayer.Character:FindFirstChild("Right Leg")
			RightLeg4.CanCollide = true
			local RightUpperLeg2 = Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg")
			RightUpperLeg2.CanCollide = true
			local RightLowerLeg2 = Players.LocalPlayer.Character:FindFirstChild("RightLowerLeg")
			RightLowerLeg2.CanCollide = true
			local RightFoot2 = Players.LocalPlayer.Character:FindFirstChild("RightFoot")
			RightFoot2.CanCollide = true
		end
	end
})
 
Players.LocalPlayer.CharacterAdded:Connect(function(character13)
	 
	character13:WaitForChild("Humanoid", 5)
	 
	task.wait(0.5)
end)
 
local Section15 = Tab5:Section({ Title = "人物特效(客户端)" })
 
task.spawn(function(...)
	 
	task.wait()
	 
	task.wait()
	 
end)
 
Players.LocalPlayer.CharacterAdded:Connect(function(character14)
	 
	task.wait(1)
	 
	RunService.Heartbeat:Connect(function(deltaTime36)
	end)
end)
 
Section15:Toggle({
	Title = "人物透明",
	Default = false,
	Callback = function(state, arg169)
		if state then
			local connection34 = RunService.Heartbeat:Connect(function(deltaTime14)
			end)
		else
			connection34:Disconnect()
		end
	end
})
 
Section15:Toggle({
	Title = "人物变色",
	Default = false,
	Callback = function(state, arg171)
		if state then
			local connection35 = RunService.Heartbeat:Connect(function(deltaTime15)
			end)
		end
	end
})
 
Section15:Toggle({
	Title = "中国帽",
	Default = false,
	Callback = function(state, arg173)
		if state then
			local Head5 = Players.LocalPlayer.Character:FindFirstChild("Head")
			local Part2 = Instance.new("Part")
			Part2.Name = "ChinaHat"
			Part2.Size = Vector3.new(1.8500000238418579, 1.1000000238418579, 1.8500000238418579)
			Part2.Color = Color3.fromRGB(220, 190, 130)
			Part2.Material = Enum.Material.SmoothPlastic
			Part2.Transparency = 0
			Part2.CanCollide = false
			Part2.Massless = true
			local SpecialMesh = Instance.new("SpecialMesh")
			SpecialMesh.MeshType = Enum.MeshType.FileMesh
			SpecialMesh.MeshId = "rbxassetid://1033714"
			SpecialMesh.Scale = Vector3.new(1.8500000238418579, 1.1000000238418579, 1.8500000238418579)
			SpecialMesh.Parent = Part2
			local Attachment6 = Instance.new("Attachment")
			Attachment6.Name = "HatAttachment"
			Attachment6.Position = Vector3.new(0, -0.11999999731779099, 0)
			Attachment6.Parent = Part2
			local Attachment7 = Instance.new("Attachment")
			Attachment7.Name = "HeadAttachment"
			Attachment7.Position = Vector3.new(0, 0.60000002384185791, 0)
			Attachment7.Parent = Head5
			local RigidConstraint = Instance.new("RigidConstraint")
			RigidConstraint.Attachment0 = Attachment7
			RigidConstraint.Attachment1 = Attachment6
			RigidConstraint.Parent = Part2
			Part2.Parent = Players.LocalPlayer.Character
		else
			Part2:Destroy()
			connection35:Disconnect()
		end
	end
})
 
Section15:Slider({
	Title = "帽子厚度",
	Value = { Default = 1.1, Float = 0.1, Max = 5, Min = 0.5 },
	Callback = function(state, arg175)
	end
})
 
Section15:Slider({
	Title = "帽子高度",
	Value = { Default = 0.6, Float = 0.1, Max = 3, Min = 0 },
	Callback = function(state, arg177)
	end
})
 
Section15:Slider({
	Title = "帽子宽度",
	Value = { Default = 1.85, Float = 0.1, Max = 5, Min = 0.5 },
	Callback = function(state, arg179)
	end
})
 
Section15:Toggle({
	Title = "帽子透明",
	Default = false,
	Callback = function(state, arg181)
	end
})
 
Section15:Toggle({
	Title = "帽子变色",
	Default = false,
	Callback = function(state, arg183)
	end
})
 
local Section16 = Tab5:Section({ Title = "旋转" })
 
Section16:Toggle({
	Title = "开启旋转",
	Default = false,
	Callback = function(state, arg185)
	end
})
 
Section16:Slider({
	Title = "旋转速度",
	Value = { Default = 10, Max = 5000, Min = 1 },
	Callback = function(state, arg187)
	end
})
 
Section16:Dropdown({
	Title = "旋转方向",
	Value = "Y轴(水平)",
	Values = { "Y轴(水平)", "X轴(前翻)", "Z轴(侧翻)" },
	Callback = function(state, arg189)
	end
})
 
RunService.Heartbeat:Connect(function(deltaTime16)
end)
 
local Section17 = Tab5:Section({ Title = "选择玩家" })
 
local players5 = Players:GetPlayers()
 
for i6, v13 in ipairs(players5) do
end
 
local players6 = Players:GetPlayers()
 
for i7, v14 in ipairs(players6) do
end
 
local Dropdown2 = Section17:Dropdown({
	Title = "玩家列表",
	Value = v14.Name,
	Values = { v13.Name },
	Callback = function(state, arg191)
		if state then
			local child5 = Players:FindFirstChild(state)
			result:Notify({ Title = "选择玩家", Content = "已选中: " .. child5.DisplayName, Duration = 2 })
		else
			local child6 = Players:FindFirstChild(false)
			result:Notify({ Title = "选择玩家", Content = "已选中: " .. child6.DisplayName, Duration = 2 })
		end
	end
})
 
Section17:Button({
	Title = "刷新玩家列表",
	Callback = function(state, arg193)
		if state then
			local players7 = Players:GetPlayers()
			for i8, v15 in ipairs(players7) do
			end
			Dropdown2:Set(v15.Name)
			Players:FindFirstChild(v15.Name)
		else
			local players8 = Players:GetPlayers()
			for i9, v16 in ipairs(players8) do
			end
			Dropdown2:Set(v16.Name)
			local child7 = Players:FindFirstChild(v16.Name)
		end
	end
})
 
Section17:Toggle({
	Title = "查看玩家",
	Default = false,
	Callback = function(state, arg195)
		if state then
			local Humanoid14 = child7.Character:FindFirstChildOfClass("Humanoid")
			workspace.CurrentCamera.CameraSubject = Humanoid14
		else
			local Humanoid15 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			workspace.CurrentCamera.CameraSubject = Humanoid15
		end
	end
})
 
Section17:Toggle({
	Title = "环绕玩家",
	Default = false,
	Callback = function(state, arg197)
		if state then
			local connection36 = RunService.Heartbeat:Connect(function(deltaTime17)
			end)
		else
			connection36:Disconnect()
		end
	end
})
 
Section17:Slider({
	Title = "环绕半径",
	Value = { Default = 10, Max = 50, Min = 2 },
	Callback = function(state, arg199)
	end
})
 
Section17:Slider({
	Title = "环绕速度",
	Value = { Default = 5, Max = 30, Min = 1 },
	Callback = function(state, arg201)
	end
})
 
Section17:Toggle({
	Title = "冻结玩家(客户端)",
	Default = false,
	Callback = function(state, arg203)
		if state then
			local connection37 = RunService.Heartbeat:Connect(function(deltaTime18)
				child7.Character:FindFirstChild("HumanoidRootPart")
				child7.Character.HumanoidRootPart.Anchored = true
			end)
		else
			connection37:Disconnect()
			child7.Character:FindFirstChild("HumanoidRootPart")
			child7.Character.HumanoidRootPart.Anchored = false
		end
	end
})
 
Section17:Toggle({
	Title = "吸取玩家(客户端)",
	Default = false,
	Callback = function(state, arg205)
		if state then
			local connection38 = RunService.Heartbeat:Connect(function(deltaTime19)
			end)
		else
			connection38:Disconnect()
		end
	end
})
 
Section17:Toggle({
	Title = "循环传送至玩家",
	Default = false,
	Callback = function(state, arg207)
		if state then
			local connection39 = RunService.Heartbeat:Connect(function(deltaTime20)
			end)
		else
			connection39:Disconnect()
		end
	end
})
 
Section17:Button({
	Title = "删除玩家(客户端)",
	Callback = function(state, arg209)
		child7.Character:Destroy()
	end
})
 
Section17:Button({
	Title = "传送至玩家",
	Callback = function(state, arg211)
		child7.Character:FindFirstChild("HumanoidRootPart")
		Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (child7.Character.HumanoidRootPart.CFrame + Vector3.new(2, 0, 0))
	end
})
 
Players.PlayerRemoving:Connect(function(player2)
end)
 
local ScreenGui4 = Instance.new("ScreenGui")
 
ScreenGui4.Parent = CoreGui
 
ScreenGui4.Name = "ESPHolder"
 
local players9 = Players:GetPlayers()
 
for k8, v17 in pairs(players9) do
	 
	ScreenGui4:FindFirstChild(v17.Name)
	 
	ScreenGui4[v17.Name]:Destroy()
	 
	local TextLabel3 = Instance.new("TextLabel")
	 
	TextLabel3.Visible = false
	 
	TextLabel3.RichText = true
	 
	TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel3.Parent = ScreenGui4
	 
	TextLabel3.TextStrokeTransparency = 0
	 
	TextLabel3.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel3.Font = Enum.Font.Code
	 
	TextLabel3.BackgroundTransparency = 1
	 
	TextLabel3.Position = UDim2.new(0.5, 0, 0, -11)
	 
	TextLabel3.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel3.TextSize = 13
	 
	TextLabel3.Size = UDim2.new(0, 100, 0, 20)
	 
	local TextLabel4 = Instance.new("TextLabel")
	 
	TextLabel4.Visible = false
	 
	TextLabel4.RichText = true
	 
	TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel4.Parent = ScreenGui4
	 
	TextLabel4.TextStrokeTransparency = 0
	 
	TextLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel4.Font = Enum.Font.Code
	 
	TextLabel4.BackgroundTransparency = 1
	 
	TextLabel4.Position = UDim2.new(0.5, 0, 0, 11)
	 
	TextLabel4.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel4.TextSize = 13
	 
	TextLabel4.Size = UDim2.new(0, 100, 0, 20)
	 
	local TextLabel5 = Instance.new("TextLabel")
	 
	TextLabel5.Visible = false
	 
	TextLabel5.RichText = true
	 
	TextLabel5.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel5.Parent = ScreenGui4
	 
	TextLabel5.TextStrokeTransparency = 0
	 
	TextLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel5.Font = Enum.Font.Code
	 
	TextLabel5.BackgroundTransparency = 1
	 
	TextLabel5.Position = UDim2.new(0.5, 0, 0, 31)
	 
	TextLabel5.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel5.TextSize = 13
	 
	TextLabel5.Size = UDim2.new(0, 100, 0, 20)
	 
	local Frame4 = Instance.new("Frame")
	 
	Frame4.Visible = false
	 
	Frame4.BackgroundTransparency = 0.85
	 
	Frame4.Parent = ScreenGui4
	 
	Frame4.BorderSizePixel = 0
	 
	Frame4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	 
	local UIGradient = Instance.new("UIGradient")
	 
	UIGradient.Enabled = false
	 
	UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 30, 50)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 20, 40)) })
	 
	UIGradient.Parent = Frame4
	 
	local UIStroke3 = Instance.new("UIStroke")
	 
	UIStroke3.Enabled = false
	 
	UIStroke3.Transparency = 0
	 
	UIStroke3.Parent = Frame4
	 
	UIStroke3.Thickness = 1
	 
	UIStroke3.LineJoinMode = Enum.LineJoinMode.Miter
	 
	UIStroke3.Color = Color3.fromRGB(100, 150, 255)
	 
	local UIGradient2 = Instance.new("UIGradient")
	 
	UIGradient2.Enabled = false
	 
	UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 150, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 220, 255)) })
	 
	UIGradient2.Parent = UIStroke3
	 
	local Frame5 = Instance.new("Frame")
	 
	Frame5.Parent = ScreenGui4
	 
	Frame5.Visible = false
	 
	Frame5.BackgroundTransparency = 0
	 
	Frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	 
	local Frame6 = Instance.new("Frame")
	 
	Frame6.Visible = false
	 
	Frame6.BackgroundTransparency = 0
	 
	Frame6.Parent = ScreenGui4
	 
	Frame6.ZIndex = -1
	 
	Frame6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	 
	local UIGradient3 = Instance.new("UIGradient")
	 
	UIGradient3.Enabled = false
	 
	UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 150, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 0)) })
	 
	UIGradient3.Rotation = -90
	 
	UIGradient3.Parent = Frame5
	 
	local ImageLabel = Instance.new("ImageLabel")
	 
	ImageLabel.Visible = false
	 
	ImageLabel.BackgroundTransparency = 1
	 
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	 
	ImageLabel.Parent = ScreenGui4
	 
	ImageLabel.BorderSizePixel = 0
	 
	ImageLabel.Size = UDim2.new(0, 40, 0, 40)
	 
	local UIGradient4 = Instance.new("UIGradient")
	 
	UIGradient4.Rotation = -90
	 
	UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(119, 120, 255)) })
	 
	UIGradient4.Enabled = false
	 
	UIGradient4.Parent = ImageLabel
	 
	local Highlight = Instance.new("Highlight")
	 
	Highlight.Enabled = false
	 
	Highlight.OutlineTransparency = 0
	 
	Highlight.DepthMode = "AlwaysOnTop"
	 
	Highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	 
	Highlight.FillTransparency = 1
	 
	Highlight.Parent = ScreenGui4
	 
	local Frame7 = Instance.new("Frame")
	 
	Frame7.Visible = false
	 
	Frame7.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame7.Parent = ScreenGui4
	 
	Frame7.BorderSizePixel = 0
	 
	Frame7.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame8 = Instance.new("Frame")
	 
	Frame8.Visible = false
	 
	Frame8.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame8.Parent = ScreenGui4
	 
	Frame8.BorderSizePixel = 0
	 
	Frame8.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame9 = Instance.new("Frame")
	 
	Frame9.Visible = false
	 
	Frame9.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame9.Parent = ScreenGui4
	 
	Frame9.BorderSizePixel = 0
	 
	Frame9.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame10 = Instance.new("Frame")
	 
	Frame10.Visible = false
	 
	Frame10.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame10.Parent = ScreenGui4
	 
	Frame10.BorderSizePixel = 0
	 
	Frame10.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame11 = Instance.new("Frame")
	 
	Frame11.Visible = false
	 
	Frame11.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame11.Parent = ScreenGui4
	 
	Frame11.BorderSizePixel = 0
	 
	Frame11.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame12 = Instance.new("Frame")
	 
	Frame12.Visible = false
	 
	Frame12.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame12.Parent = ScreenGui4
	 
	Frame12.BorderSizePixel = 0
	 
	Frame12.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame13 = Instance.new("Frame")
	 
	Frame13.Visible = false
	 
	Frame13.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame13.Parent = ScreenGui4
	 
	Frame13.BorderSizePixel = 0
	 
	Frame13.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame14 = Instance.new("Frame")
	 
	Frame14.Visible = false
	 
	Frame14.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame14.Parent = ScreenGui4
	 
	Frame14.BorderSizePixel = 0
	 
	Frame14.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local UICorner3 = Instance.new("UICorner")
	 
	UICorner3.CornerRadius = UDim.new(0, 4)
	 
	UICorner3.Parent = Frame7
	 
	local UICorner4 = Instance.new("UICorner")
	 
	UICorner4.CornerRadius = UDim.new(0, 4)
	 
	UICorner4.Parent = Frame8
	 
	local UICorner5 = Instance.new("UICorner")
	 
	UICorner5.CornerRadius = UDim.new(0, 4)
	 
	UICorner5.Parent = Frame9
	 
	local UICorner6 = Instance.new("UICorner")
	 
	UICorner6.CornerRadius = UDim.new(0, 4)
	 
	UICorner6.Parent = Frame10
	 
	local UICorner7 = Instance.new("UICorner")
	 
	UICorner7.CornerRadius = UDim.new(0, 4)
	 
	UICorner7.Parent = Frame11
	 
	local UICorner8 = Instance.new("UICorner")
	 
	UICorner8.CornerRadius = UDim.new(0, 4)
	 
	UICorner8.Parent = Frame12
	 
	local UICorner9 = Instance.new("UICorner")
	 
	UICorner9.CornerRadius = UDim.new(0, 4)
	 
	UICorner9.Parent = Frame13
	 
	local UICorner10 = Instance.new("UICorner")
	 
	UICorner10.CornerRadius = UDim.new(0, 4)
	 
	UICorner10.Parent = Frame14
	 
	local TextLabel6 = Instance.new("TextLabel")
	 
	TextLabel6.Visible = false
	 
	TextLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel6.Parent = ScreenGui4
	 
	TextLabel6.TextStrokeTransparency = 0
	 
	TextLabel6.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel6.Font = Enum.Font.Code
	 
	TextLabel6.BackgroundTransparency = 1
	 
	TextLabel6.Position = UDim2.new(1, 0, 0, 0)
	 
	TextLabel6.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel6.TextSize = 13
	 
	TextLabel6.Size = UDim2.new(0, 100, 0, 20)
	 
	local TextLabel7 = Instance.new("TextLabel")
	 
	TextLabel7.Visible = false
	 
	TextLabel7.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel7.Parent = ScreenGui4
	 
	TextLabel7.TextStrokeTransparency = 0
	 
	TextLabel7.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel7.Font = Enum.Font.Code
	 
	TextLabel7.BackgroundTransparency = 1
	 
	TextLabel7.Position = UDim2.new(1, 0, 0, 0)
	 
	TextLabel7.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel7.TextSize = 13
	 
	TextLabel7.Size = UDim2.new(0, 100, 0, 20)
	 
	RunService.RenderStepped:Connect(function(deltaTime21)
		 
		Frame4.Visible = false
		 
		TextLabel3.Visible = false
		 
		TextLabel4.Visible = false
		 
		TextLabel5.Visible = false
		 
		Frame5.Visible = false
		 
		Frame6.Visible = false
		 
		ImageLabel.Visible = false
		 
		Frame7.Visible = false
		 
		Frame8.Visible = false
		 
		Frame9.Visible = false
		 
		Frame10.Visible = false
		 
		Frame11.Visible = false
		 
		Frame12.Visible = false
		 
		Frame13.Visible = false
		 
		Frame14.Visible = false
		 
		TextLabel6.Visible = false
		 
		Highlight.Enabled = false
		 
		TextLabel7.Visible = false
	end)
end
 
Players.PlayerAdded:Connect(function(player3)
	 
	ScreenGui4:FindFirstChild(player3.Name)
	 
	ScreenGui4[player3.Name]:Destroy()
	 
	local TextLabel8 = Instance.new("TextLabel")
	 
	TextLabel8.Visible = false
	 
	TextLabel8.RichText = true
	 
	TextLabel8.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel8.Parent = ScreenGui4
	 
	TextLabel8.TextStrokeTransparency = 0
	 
	TextLabel8.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel8.Font = Enum.Font.Code
	 
	TextLabel8.BackgroundTransparency = 1
	 
	TextLabel8.Position = UDim2.new(0.5, 0, 0, -11)
	 
	TextLabel8.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel8.TextSize = false
	 
	TextLabel8.Size = UDim2.new(0, 100, 0, 20)
	 
	local TextLabel9 = Instance.new("TextLabel")
	 
	TextLabel9.Visible = false
	 
	TextLabel9.RichText = true
	 
	TextLabel9.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel9.Parent = ScreenGui4
	 
	TextLabel9.TextStrokeTransparency = 0
	 
	TextLabel9.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel9.Font = Enum.Font.Code
	 
	TextLabel9.BackgroundTransparency = 1
	 
	TextLabel9.Position = UDim2.new(0.5, 0, 0, 11)
	 
	TextLabel9.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel9.TextSize = false
	 
	TextLabel9.Size = UDim2.new(0, 100, 0, 20)
	 
	local TextLabel10 = Instance.new("TextLabel")
	 
	TextLabel10.Visible = false
	 
	TextLabel10.RichText = true
	 
	TextLabel10.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel10.Parent = ScreenGui4
	 
	TextLabel10.TextStrokeTransparency = 0
	 
	TextLabel10.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel10.Font = Enum.Font.Code
	 
	TextLabel10.BackgroundTransparency = 1
	 
	TextLabel10.Position = UDim2.new(0.5, 0, 0, 31)
	 
	TextLabel10.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel10.TextSize = false
	 
	TextLabel10.Size = UDim2.new(0, 100, 0, 20)
	 
	local Frame15 = Instance.new("Frame")
	 
	Frame15.Visible = false
	 
	Frame15.BackgroundTransparency = 0.85
	 
	Frame15.Parent = ScreenGui4
	 
	Frame15.BorderSizePixel = 0
	 
	Frame15.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	 
	local UIGradient5 = Instance.new("UIGradient")
	 
	UIGradient5.Enabled = false
	 
	UIGradient5.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 30, 50)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 20, 40)) })
	 
	UIGradient5.Parent = Frame15
	 
	local UIStroke4 = Instance.new("UIStroke")
	 
	UIStroke4.Enabled = false
	 
	UIStroke4.Transparency = 0
	 
	UIStroke4.Parent = Frame15
	 
	UIStroke4.Thickness = 1
	 
	UIStroke4.LineJoinMode = Enum.LineJoinMode.Miter
	 
	UIStroke4.Color = Color3.fromRGB(100, 150, 255)
	 
	local UIGradient6 = Instance.new("UIGradient")
	 
	UIGradient6.Enabled = false
	 
	UIGradient6.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 150, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 220, 255)) })
	 
	UIGradient6.Parent = UIStroke4
	 
	local Frame16 = Instance.new("Frame")
	 
	Frame16.Parent = ScreenGui4
	 
	Frame16.Visible = false
	 
	Frame16.BackgroundTransparency = 0
	 
	Frame16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	 
	local Frame17 = Instance.new("Frame")
	 
	Frame17.Visible = false
	 
	Frame17.BackgroundTransparency = 0
	 
	Frame17.Parent = ScreenGui4
	 
	Frame17.ZIndex = -1
	 
	Frame17.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	 
	local UIGradient7 = Instance.new("UIGradient")
	 
	UIGradient7.Enabled = false
	 
	UIGradient7.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 150, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 0)) })
	 
	UIGradient7.Rotation = -90
	 
	UIGradient7.Parent = Frame16
	 
	local ImageLabel7 = Instance.new("ImageLabel")
	 
	ImageLabel7.Visible = false
	 
	ImageLabel7.BackgroundTransparency = 1
	 
	ImageLabel7.BorderColor3 = Color3.fromRGB(0, 0, 0)
	 
	ImageLabel7.Parent = ScreenGui4
	 
	ImageLabel7.BorderSizePixel = 0
	 
	ImageLabel7.Size = UDim2.new(0, 40, 0, 40)
	 
	local UIGradient8 = Instance.new("UIGradient")
	 
	UIGradient8.Rotation = -90
	 
	UIGradient8.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(119, 120, 255)) })
	 
	UIGradient8.Enabled = false
	 
	UIGradient8.Parent = ImageLabel7
	 
	local Highlight5 = Instance.new("Highlight")
	 
	Highlight5.Enabled = false
	 
	Highlight5.OutlineTransparency = 0
	 
	Highlight5.DepthMode = "AlwaysOnTop"
	 
	Highlight5.OutlineColor = Color3.fromRGB(255, 255, 255)
	 
	Highlight5.FillTransparency = 1
	 
	Highlight5.Parent = ScreenGui4
	 
	local Frame18 = Instance.new("Frame")
	 
	Frame18.Visible = false
	 
	Frame18.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame18.Parent = ScreenGui4
	 
	Frame18.BorderSizePixel = 0
	 
	Frame18.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame19 = Instance.new("Frame")
	 
	Frame19.Visible = false
	 
	Frame19.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame19.Parent = ScreenGui4
	 
	Frame19.BorderSizePixel = 0
	 
	Frame19.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame20 = Instance.new("Frame")
	 
	Frame20.Visible = false
	 
	Frame20.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame20.Parent = ScreenGui4
	 
	Frame20.BorderSizePixel = 0
	 
	Frame20.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame21 = Instance.new("Frame")
	 
	Frame21.Visible = false
	 
	Frame21.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame21.Parent = ScreenGui4
	 
	Frame21.BorderSizePixel = 0
	 
	Frame21.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame22 = Instance.new("Frame")
	 
	Frame22.Visible = false
	 
	Frame22.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame22.Parent = ScreenGui4
	 
	Frame22.BorderSizePixel = 0
	 
	Frame22.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame23 = Instance.new("Frame")
	 
	Frame23.Visible = false
	 
	Frame23.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame23.Parent = ScreenGui4
	 
	Frame23.BorderSizePixel = 0
	 
	Frame23.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame24 = Instance.new("Frame")
	 
	Frame24.Visible = false
	 
	Frame24.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame24.Parent = ScreenGui4
	 
	Frame24.BorderSizePixel = 0
	 
	Frame24.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local Frame25 = Instance.new("Frame")
	 
	Frame25.Visible = false
	 
	Frame25.Position = UDim2.new(0, 0, 0, 0)
	 
	Frame25.Parent = ScreenGui4
	 
	Frame25.BorderSizePixel = 0
	 
	Frame25.BackgroundColor3 = Color3.fromRGB(150, 200, 255)
	 
	local UICorner11 = Instance.new("UICorner")
	 
	UICorner11.CornerRadius = UDim.new(0, 4)
	 
	UICorner11.Parent = Frame18
	 
	local UICorner12 = Instance.new("UICorner")
	 
	UICorner12.CornerRadius = UDim.new(0, 4)
	 
	UICorner12.Parent = Frame19
	 
	local UICorner13 = Instance.new("UICorner")
	 
	UICorner13.CornerRadius = UDim.new(0, 4)
	 
	UICorner13.Parent = Frame20
	 
	local UICorner14 = Instance.new("UICorner")
	 
	UICorner14.CornerRadius = UDim.new(0, 4)
	 
	UICorner14.Parent = Frame21
	 
	local UICorner15 = Instance.new("UICorner")
	 
	UICorner15.CornerRadius = UDim.new(0, 4)
	 
	UICorner15.Parent = Frame22
	 
	local UICorner16 = Instance.new("UICorner")
	 
	UICorner16.CornerRadius = UDim.new(0, 4)
	 
	UICorner16.Parent = Frame23
	 
	local UICorner17 = Instance.new("UICorner")
	 
	UICorner17.CornerRadius = UDim.new(0, 4)
	 
	UICorner17.Parent = Frame24
	 
	local UICorner18 = Instance.new("UICorner")
	 
	UICorner18.CornerRadius = UDim.new(0, 4)
	 
	UICorner18.Parent = Frame25
	 
	local TextLabel11 = Instance.new("TextLabel")
	 
	TextLabel11.Visible = false
	 
	TextLabel11.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel11.Parent = ScreenGui4
	 
	TextLabel11.TextStrokeTransparency = 0
	 
	TextLabel11.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel11.Font = Enum.Font.Code
	 
	TextLabel11.BackgroundTransparency = 1
	 
	TextLabel11.Position = UDim2.new(1, 0, 0, 0)
	 
	TextLabel11.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel11.TextSize = false
	 
	TextLabel11.Size = UDim2.new(0, 100, 0, 20)
	 
	local TextLabel12 = Instance.new("TextLabel")
	 
	TextLabel12.Visible = false
	 
	TextLabel12.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel12.Parent = ScreenGui4
	 
	TextLabel12.TextStrokeTransparency = 0
	 
	TextLabel12.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	TextLabel12.Font = Enum.Font.Code
	 
	TextLabel12.BackgroundTransparency = 1
	 
	TextLabel12.Position = UDim2.new(1, 0, 0, 0)
	 
	TextLabel12.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel12.TextSize = false
	 
	TextLabel12.Size = UDim2.new(0, 100, 0, 20)
	 
	RunService.RenderStepped:Connect(function(deltaTime37)
		 
		Frame15.Visible = false
		 
		TextLabel8.Visible = false
		 
		TextLabel9.Visible = false
		 
		TextLabel10.Visible = false
		 
		Frame16.Visible = false
		 
		Frame17.Visible = false
		 
		ImageLabel7.Visible = false
		 
		Frame18.Visible = false
		 
		Frame19.Visible = false
		 
		Frame20.Visible = false
		 
		Frame21.Visible = false
		 
		Frame22.Visible = false
		 
		Frame23.Visible = false
		 
		Frame24.Visible = false
		 
		Frame25.Visible = false
		 
		TextLabel11.Visible = false
		 
		Highlight5.Enabled = false
		 
		TextLabel12.Visible = false
	end)
end)
 
Players.PlayerRemoving:Connect(function(player4)
	 
	local child11 = ScreenGui4:FindFirstChild(player4.Name)
	 
	child11:Destroy()
end)
 
Tab6:Toggle({
	Title = "玩家透视",
	Value = false,
	Callback = function(state, arg213)
	end
})
 
Tab6:Toggle({
	Title = "仅敌人",
	Value = false,
	Callback = function(state, arg215)
	end
})
 
Tab6:Slider({
	Title = "透视距离",
	Value = { Default = 250, Float = 1, Max = 1000, Min = 50 },
	Callback = function(state, arg217)
	end
})
 
Tab6:Slider({
	Title = "字体大小",
	Value = { Default = 13, Float = 1, Max = 20, Min = 8 },
	Callback = function(state, arg219)
	end
})
 
Tab6:Slider({
	Title = "最小字体",
	Value = { Default = 6, Float = 1, Max = 12, Min = 4 },
	Callback = function(state, arg221)
	end
})
 
Tab6:Toggle({
	Title = "距离渐隐",
	Value = false,
	Callback = function(state, arg223)
	end
})
 
Tab6:Toggle({
	Title = "显示血量",
	Value = false,
	Callback = function(state, arg225)
	end
})
 
Tab6:Toggle({
	Title = "显示名称",
	Value = false,
	Callback = function(state, arg227)
	end
})
 
Tab6:Toggle({
	Title = "显示距离",
	Value = false,
	Callback = function(state, arg229)
	end
})
 
Tab6:Toggle({
	Title = "显示方框",
	Value = false,
	Callback = function(state, arg231)
	end
})
 
Tab6:Toggle({
	Title = "彩虹高亮",
	Value = false,
	Callback = function(state, arg233)
	end
})
 
Tab6:Toggle({
	Title = "高亮呼吸",
	Value = false,
	Callback = function(state, arg235)
	end
})
 
Tab6:Toggle({
	Title = "遮挡可见",
	Value = false,
	Callback = function(state, arg237)
	end
})
 
Tab6:Toggle({
	Title = "血量渐变色",
	Value = false,
	Callback = function(state, arg239)
	end
})
 
Tab6:Toggle({
	Title = "方框动画",
	Value = false,
	Callback = function(state, arg241)
	end
})
 
Tab6:Toggle({
	Title = "角框显示",
	Value = false,
	Callback = function(state, arg243)
	end
})
 
workspace:GetDescendants()
 
local Section18 = Tab7:Section({ Title = "NPC控制" })
 
local Dropdown3 = Section18:Dropdown({
	Title = "选择NPC",
	Value = "无NPC",
	Values = { "无NPC" },
	Callback = function(state, arg245)
		workspace:GetDescendants()
	end
})
 
Section18:Button({
	Title = "刷新列表",
	Callback = function(state, arg247)
		workspace:GetDescendants()
		Dropdown3:SetValues({ "无NPC" })
	end
})
 
Section18:Button({
	Title = "传送至NPC",
	Callback = function(state, arg249)
	end
})
 
Section18:Toggle({
	Title = "查看NPC",
	Default = false,
	Callback = function(state, arg251)
		if state then
			local Humanoid16 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			workspace.CurrentCamera.CameraSubject = Humanoid16
		else
			local Humanoid17 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			workspace.CurrentCamera.CameraSubject = Humanoid17
		end
	end
})
 
Section18:Button({
	Title = "删除NPC(客户端)",
	Callback = function(state, arg253)
	end
})
 
Section18:Toggle({
	Title = "NPC跟随玩家",
	Default = false,
	Callback = function(state, arg255)
		if state then
			local connection40 = RunService.Heartbeat:Connect(function(deltaTime22)
			end)
		else
			connection40:Disconnect()
		end
	end
})
 
Section18:Slider({
	Title = "跟随距离",
	Value = { Default = 5, Max = 20, Min = 2 },
	Callback = function(state, arg257)
	end
})
 
local Section19 = Tab7:Section({ Title = "NPC范围" })
 
Section19:Toggle({
	Title = "NPC范围显示",
	Default = false,
	Callback = function(state, arg259)
		if state then
			workspace:GetDescendants()
			task.spawn(function(...)
			end)
			task.spawn(function(...)
			end)
			task.spawn(function(...)
			end)
			local connection41 = workspace.DescendantAdded:Connect(function(descendant12)
			end)
		else
			connection41:Disconnect()
		end
	end
})
 
Section19:Slider({
	Title = "放大倍数",
	Value = { Default = 4, Float = 0.5, Max = 10, Min = 1 },
	Callback = function(state, arg261)
	end
})
 
local Highlight2 = Instance.new("Highlight")
 
Highlight2.Name = "AimTargetHighlight"
 
Highlight2.FillColor = Color3.fromRGB(255, 0, 0)
 
Highlight2.OutlineColor = Color3.fromRGB(255, 255, 255)
 
Highlight2.FillTransparency = 0.5
 
Highlight2.OutlineTransparency = 0
 
Highlight2.Enabled = false
 
Highlight2.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
 
Highlight2.Parent = CoreGui
 
local Circle = Drawing.new("Circle")
 
Circle.Visible = false
 
Circle.Thickness = 1
 
Circle.Color = Color3.fromRGB(255, 255, 255)
 
Circle.Transparency = 1
 
Circle.NumSides = 60
 
Circle.Radius = 150
 
Circle.Filled = false
 
RunService.Heartbeat:Connect(function(deltaTime23)
	 
	Circle.Visible = false
	 
	Highlight2.Enabled = false
	 
	Highlight2.Adornee = nil
end)
 
local Section20 = Tab9:Section({ Title = "子追控制" })
 
Section20:Toggle({
	Title = "启用子追",
	Default = false,
	Callback = function(state, arg263)
	end
})
 
Section20:Toggle({
	Title = "显示目标高亮",
	Default = false,
	Callback = function(state, arg265)
	end
})
 
Section20:Toggle({
	Title = "子追NPC",
	Default = false,
	Callback = function(state, arg267)
	end
})
 
Section20:Slider({
	Title = "命中率 %",
	Value = { Default = 100, Max = 100, Min = 0 },
	Callback = function(state, arg269)
	end
})
 
Section20:Slider({
	Title = "身体命中率 %",
	Value = { Default = 90, Max = 100, Min = 0 },
	Callback = function(state, arg271)
	end
})
 
Section20:Slider({
	Title = "头部命中率 %",
	Value = { Default = 10, Max = 100, Min = 0 },
	Callback = function(state, arg273)
	end
})
 
Section20:Toggle({
	Title = "随机射击位置",
	Default = false,
	Callback = function(state, arg275)
	end
})
 
Section20:Slider({
	Title = "随机范围",
	Value = { Default = 50, Max = 100, Min = 0 },
	Callback = function(arg276, arg277)
	end
})
 
Section20:Toggle({
	Title = "队伍检测",
	Default = false,
	Callback = function(state, arg279)
	end
})
 
Section20:Toggle({
	Title = "墙壁检测",
	Default = false,
	Callback = function(state, arg281)
	end
})
 
Section20:Toggle({
	Title = "好友检测",
	Default = false,
	Callback = function(state, arg283)
	end
})
 
Section20:Toggle({
	Title = "倒地检测",
	Default = false,
	Callback = function(state, arg285)
	end
})
 
Section20:Toggle({
	Title = "保护罩检测",
	Default = false,
	Callback = function(state, arg287)
	end
})
 
Section20:Toggle({
	Title = "启用FOV圈",
	Default = false,
	Callback = function(state, arg289)
	end
})
 
Section20:Slider({
	Title = "FOV大小",
	Value = { Default = 150, Max = 800, Min = 10 },
	Callback = function(state, arg291)
	end
})
 
Section20:Toggle({
	Title = "启用黑名单",
	Default = false,
	Callback = function(state, arg293)
	end
})
 
local players10 = Players:GetPlayers()
 
for k9, v18 in pairs(players10) do
end
 
local Dropdown4 = Section20:Dropdown({
	Title = "黑名单玩家",
	Multi = true,
	Value = {},
	Values = { v18.Name },
	Callback = function(arg294, arg295)
		 
		for i10, v19 in ipairs(arg294) do
		end
	end
})
 
Section20:Toggle({
	Title = "启用白名单",
	Default = false,
	Callback = function(state, arg297)
	end
})
 
local players11 = Players:GetPlayers()
 
for k10, v20 in pairs(players11) do
end
 
local Dropdown5 = Section20:Dropdown({
	Title = "白名单玩家",
	Multi = true,
	Value = {},
	Values = { v20.Name },
	Callback = function(arg298, arg299)
		 
		for i11, v21 in ipairs(arg298) do
		end
	end
})
 
Section20:Button({
	Title = "刷新玩家列表",
	Callback = function(state, arg301)
		if state then
			local players12 = Players:GetPlayers()
			for k11, v22 in pairs(players12) do
			end
			Dropdown4:SetValues({ v22.Name })
			Dropdown5:SetValues({ v22.Name })
		else
			local players13 = Players:GetPlayers()
			for k12, v23 in pairs(players13) do
			end
			Dropdown4:SetValues({ v23.Name })
			Dropdown5:SetValues({ v23.Name })
		end
	end
})
 
local Highlight3 = Instance.new("Highlight")
 
Highlight3.Name = "AimTargetHighlight"
 
Highlight3.FillColor = Color3.fromRGB(255, 0, 0)
 
Highlight3.OutlineColor = Color3.fromRGB(255, 255, 255)
 
Highlight3.FillTransparency = 0.5
 
Highlight3.OutlineTransparency = 0
 
Highlight3.Enabled = false
 
Highlight3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
 
Highlight3.Parent = CoreGui
 
local Circle2 = Drawing.new("Circle")
 
Circle2.Visible = false
 
Circle2.Thickness = 1
 
Circle2.Color = Color3.fromRGB(255, 255, 255)
 
Circle2.Transparency = 1
 
Circle2.NumSides = 60
 
Circle2.Radius = 150
 
Circle2.Filled = false
 
RunService.Heartbeat:Connect(function(deltaTime24)
	 
	Circle2.Visible = false
	 
	Highlight3.Adornee = nil
end)
 
local Section21 = Tab10:Section({ Title = "自喵控制" })
 
Section21:Toggle({
	Title = "启用自喵",
	Default = false,
	Callback = function(state, arg303)
	end
})
 
Section21:Toggle({
	Title = "显示目标高亮",
	Default = false,
	Callback = function(state, arg305)
	end
})
 
Section21:Dropdown({
	Title = "瞄准部位",
	Value = "Head",
	Values = { "Head", "Torso", "LeftHand", "RightHand", "HumanoidRootPart" },
	Callback = function(state, arg307)
	end
})
 
Section21:Slider({
	Title = "平滑度",
	Value = { Default = 1, Max = 20, Min = 1 },
	Callback = function(state, arg309)
	end
})
 
Section21:Toggle({
	Title = "队伍检测",
	Default = false,
	Callback = function(state, arg311)
	end
})
 
Section21:Toggle({
	Title = "墙壁检测",
	Default = false,
	Callback = function(state, arg313)
	end
})
 
Section21:Toggle({
	Title = "好友检测",
	Default = false,
	Callback = function(state, arg315)
	end
})
 
Section21:Toggle({
	Title = "倒地检测",
	Default = false,
	Callback = function(state, arg317)
	end
})
 
Section21:Toggle({
	Title = "保护罩检测",
	Default = false,
	Callback = function(state, arg319)
	end
})
 
Section21:Toggle({
	Title = "启用FOV圈",
	Default = false,
	Callback = function(state, arg321)
	end
})
 
Section21:Slider({
	Title = "FOV大小",
	Value = { Default = 150, Max = 800, Min = 10 },
	Callback = function(state, arg323)
	end
})
 
Section21:Toggle({
	Title = "启用黑名单",
	Default = false,
	Callback = function(state, arg325)
	end
})
 
local players14 = Players:GetPlayers()
 
for k13, v24 in pairs(players14) do
end
 
local Dropdown6 = Section21:Dropdown({
	Title = "黑名单玩家",
	Multi = true,
	Value = {},
	Values = { v24.Name },
	Callback = function(arg326, arg327)
		 
		for i12, v25 in ipairs(arg326) do
		end
	end
})
 
Section21:Toggle({
	Title = "启用白名单",
	Default = false,
	Callback = function(state, arg329)
	end
})
 
local players15 = Players:GetPlayers()
 
for k14, v26 in pairs(players15) do
end
 
local Dropdown7 = Section21:Dropdown({
	Title = "白名单玩家",
	Multi = true,
	Value = {},
	Values = { v26.Name },
	Callback = function(arg330, arg331)
		 
		for i13, v27 in ipairs(arg330) do
		end
	end
})
 
Section21:Button({
	Title = "刷新玩家列表",
	Callback = function(state, arg333)
		if state then
			local players16 = Players:GetPlayers()
			for k15, v28 in pairs(players16) do
			end
			Dropdown6:SetValues({ v28.Name })
			Dropdown7:SetValues({ v28.Name })
		else
			local players17 = Players:GetPlayers()
			for k16, v29 in pairs(players17) do
			end
			Dropdown6:SetValues({ v29.Name })
			Dropdown7:SetValues({ v29.Name })
		end
	end
})
 
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
 
local Section22 = Tab11:Section({ Title = "翻译控制" })
 
Section22:Toggle({
	Title = "启用自动翻译",
	Default = false,
	Callback = function(state, arg335)
		if state then
			local connection42 = PlayerGui.DescendantAdded:Connect(function(descendant13)
			end)
			local connection43 = CoreGui.DescendantAdded:Connect(function(descendant14)
			end)
			local connection44 = RunService.Heartbeat:Connect(function(deltaTime25)
			end)
			local descendants2 = PlayerGui:GetDescendants()
			for k17, v30 in pairs(descendants2) do
				task.spawn(function(...)
					local result4 = v30.Text:gmatch(".")
					for k18, v31 in result4 do
					end
				end)
			end
			CoreGui:GetChildren()
			ScreenGui4:GetDescendants()
			task.spawn(function(...)
				local result5 = TextLabel3.Text:gmatch(".")
				for k19, v32 in result5 do
				end
			end)
			task.spawn(function(...)
				local result6 = TextLabel4.Text:gmatch(".")
				for k20, v33 in result6 do
				end
			end)
			task.spawn(function(...)
				local result7 = TextLabel5.Text:gmatch(".")
				for k21, v34 in result7 do
				end
			end)
			task.spawn(function(...)
				local result8 = TextLabel6.Text:gmatch(".")
				for k22, v35 in result8 do
				end
			end)
			task.spawn(function(...)
				local result9 = TextLabel7.Text:gmatch(".")
				for k23, v36 in result9 do
				end
			end)
		else
			connection42:Disconnect()
			connection43:Disconnect()
			connection44:Disconnect()
		end
	end
})
 
Section22:Slider({
	Title = "翻译速度",
	Value = { Default = 2, Max = 5, Min = 1 },
	Callback = function(state, arg337)
	end
})
 
local Section23 = Tab20:Section({ Title = "工具控制" })
 
Section23:Button({
	Title = "Dex",
	Desc = "点击执行Dex",
	Callback = function(state, arg339)
		if state then
			local response8 = game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua")
			loadstring(response8)()
		else
			local response9 = game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua")
			loadstring(response9)()
		end
	end
})
 
Section23:Button({
	Title = "Simple Spy",
	Desc = "点击执行Simple Spy",
	Callback = function(state, arg341)
		if state then
			local response10 = game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Octo-Spy/refs/heads/main/Main.lua", true)
			loadstring(response10)()
		else
			local response11 = game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Octo-Spy/refs/heads/main/Main.lua", true)
			loadstring(response11)()
		end
	end
})
 
Section23:Button({
	Title = "Cobalt",
	Desc = "点击执行Cobalt",
	Callback = function(state, arg343)
		if state then
			local response12 = game:HttpGet("https://github.com/notpoiu/cobalt/releases/latest/download/Cobalt.luau")
			loadstring(response12)()
		else
			local response13 = game:HttpGet("https://github.com/notpoiu/cobalt/releases/latest/download/Cobalt.luau")
			loadstring(response13)()
		end
	end
})
 
Section23:Button({
	Title = "Dex++",
	Desc = "点击执行Dex++",
	Callback = function(state, arg345)
		if state then
			local response14 = game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua")
			loadstring(response14)()
		else
			local response15 = game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua")
			loadstring(response15)()
		end
	end
})
 
Section23:Button({
	Title = "Console",
	Desc = "模拟F9打开控制台",
	Callback = function(state, arg347)
		if state then
			local VirtualInputManager = game:GetService("VirtualInputManager")
		end
		VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
		VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F9, false, game)
	end
})
 
local Section24 = Tab21:Section({ Title = "设置控制" })
 
Section24:Dropdown({
	Title = "字体风格",
	Desc = "选择文字字体样式",
	Value = "标准粗体",
	Values = {
		"Arial粗体",
		"代码字体",
		"代码粗体",
		"代码细体",
		"卡通字体",
		"卡通粗体",
		"哥特中等",
		"哥特书本体",
		"哥特半粗体",
		"哥特常规体",
		"哥特极细体",
		"哥特标准",
		"哥特特粗体",
		"哥特特细体",
		"哥特粗体",
		"哥特粗重体",
		"哥特细体",
		"哥特超细体",
		"哥特超黑体",
		"哥特黑体",
		"手写体",
		"斜体",
		"标准Arial体",
		"标准体",
		"标准粗体",
		"科幻字体",
		"科幻斜体",
		"科幻粗体",
		"细体",
		"经典哥特中等",
		"经典哥特体",
		"经典哥特粗体",
		"经典哥特细体",
		"经典哥特黑体",
		"高速公路体",
		"高速公路粗体",
		"高速公路细体"
	},
	Callback = function(state, arg349)
	end
})
 
Section24:Dropdown({
	Title = "字体颜色",
	Value = "默认无颜色",
	Values = {
		"彩虹颜色",
		"日落颜色",
		"森林颜色",
		"橙青颜色",
		"海洋颜色",
		"火焰颜色",
		"粉蓝颜色",
		"糖果颜色",
		"紫金颜色",
		"红金颜色",
		"绿紫颜色",
		"蓝白颜色",
		"蓝黑颜色",
		"金属颜色",
		"银河颜色",
		"银蓝颜色",
		"霓虹颜色",
		"黑红颜色"
	},
	Callback = function(state, arg351)
		if state then
			local descendants3 = Window.UIElements.Main:GetDescendants()
			for i14, v37 in ipairs(descendants3) do
				local FontColorGradient = v37:FindFirstChild("FontColorGradient")
				FontColorGradient:Destroy()
				v37.TextColor3 = Color3.new(1, 1, 1)
			end
		else
			local descendants4 = Window.UIElements.Main:GetDescendants()
			for i15, v38 in ipairs(descendants4) do
				local FontColorGradient2 = v38:FindFirstChild("FontColorGradient")
				FontColorGradient2:Destroy()
				v38.TextColor3 = Color3.new(1, 1, 1)
			end
		end
	end
})
 
Section24:Toggle({
	Title = "启用字体颜色",
	Value = false,
	Callback = function(state, arg353)
		if state then
			local descendants5 = Window.UIElements.Main:GetDescendants()
			for i16, v39 in ipairs(descendants5) do
				local FontColorGradient3 = v39:FindFirstChild("FontColorGradient")
				FontColorGradient3:Destroy()
			end
		else
			local descendants6 = Window.UIElements.Main:GetDescendants()
			for i17, v40 in ipairs(descendants6) do
				local FontColorGradient4 = v40:FindFirstChild("FontColorGradient")
				FontColorGradient4:Destroy()
				v40.TextColor3 = Color3.new(1, 1, 1)
			end
		end
	end
})
 
local Section25 = Tab22:Section({ Title = "发送反馈" })
 
Section25:Input({
	Title = "反馈内容",
	Desc = "请输入你的Bug或建议",
	Default = "",
	Placeholder = "输入反馈内容...",
	Callback = function(state, arg355)
	end
})
 
Section25:Button({
	Title = "发送反馈",
	Desc = "勿乱发",
	Callback = function(state, arg357)
		if state then
			local json2 = HttpService:JSONEncode({
		content = "",
		embeds = {
			{
				color = 5793266,
				description = false,
				fields = {
					{ inline = true, name = "玩家", value = Players.LocalPlayer.Name },
					{ inline = true, name = "User ID", value = "0" },
					{ inline = true, name = "游戏", value = "获取中..." },
					{ inline = true, name = "Place ID", value = "0" },
					{ inline = false, name = "服务器 JobId", value = game.JobId }
				},
				footer = { text = "Ys Hub 反馈系统" },
				timestamp = "2026-09-29T03:32:24Z",
				title = "新反馈 - Ys Hub"
			}
		}
	})
			http_request({
		Body = json2,
		Headers = { ["Content-Type"] = "application/json" },
		Method = "POST",
		Url = "https://discord.com/api/webhooks/1513087979021799504/OzHMd_11Kn7XmhWmS6t8AEY5ySArx_U8O1YJrrdvQgz4AivLLf3ahUmpN8TLC2Vvepu2"
	})
			result:Notify({ Title = "反馈成功", Content = "感谢你的反馈！", Duration = 3 })
		else
			result:Notify({ Title = "反馈失败", Content = "请输入反馈内容", Duration = 3 })
		end
	end
})
 
hookfunction(function(arg358, arg359)
end, function(arg360, arg361)
end)
 
hookfunction(game.HttpGet, function(arg362, arg363)
end)
 
spawn(function(...)
	 
	task.wait(0.5)
	 
	 
	 
	 
	task.wait(0.5)
	 
end)
 
getgenv().rconsoleprint = nil
 
getgenv().rconsolewarn = nil
 
getgenv().rconsoleinfo = nil
 
getgenv().rconsoleerr = nil
 
getgenv().rconsoletitle = nil
 
getgenv().clonefunction = nil
 
local Section26 = Tab4:Section({ Title = "夺舍控制" })
 
local Dropdown8 = Section26:Dropdown({
	Title = "选择玩家",
	Value = "",
	Values = {},
	Callback = function(state, arg365)
	end
})
 
Section26:Button({
	Title = "刷新玩家列表",
	Callback = function(state, arg367)
		if state then
			local players18 = Players:GetPlayers()
			for i18, v41 in ipairs(players18) do
			end
			Dropdown8:SetValues({ v41.Name })
			Dropdown8:Set(v41.Name)
		else
			local players19 = Players:GetPlayers()
			for i19, v42 in ipairs(players19) do
			end
			Dropdown8:SetValues({ v42.Name })
			Dropdown8:Set(v42.Name)
		end
		result:Notify({ Title = "提示", Content = "列表已刷新", Duration = 2 })
	end
})
 
Section26:Button({
	Title = "随机伪装",
	Callback = function(state, arg369)
		if state then
			local players20 = Players:GetPlayers()
			for i20, v43 in ipairs(players20) do
				v43.Character:FindFirstChild("HumanoidRootPart")
			end
			v43.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid18 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart12 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Humanoid18.PlatformStand = false
			Humanoid18.DisplayName = Players.LocalPlayer.DisplayName
			HumanoidRootPart12.Anchored = false
			HumanoidRootPart12.CanCollide = true
			Players.LocalPlayer.Character:GetDescendants()
			Players.LocalPlayer.Character = Players.LocalPlayer.Character
			workspace.CurrentCamera.CameraSubject = Humanoid18
			task.wait(0.2)
			local HumanoidRootPart13 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid19 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			v43.Character.Archivable = true
			local clone = v43.Character:Clone()
			clone.Name = "PossessedClone"
			local descendants7 = clone:GetDescendants()
			for i21, v44 in ipairs(descendants7) do
				v44:Destroy()
			end
			local Humanoid20 = clone:FindFirstChildOfClass("Humanoid")
			Humanoid20.DisplayName = " "
			clone.Parent = workspace
			clone:FindFirstChild("HumanoidRootPart")
			Players.LocalPlayer.Character:GetDescendants()
			Humanoid19.PlatformStand = true
			HumanoidRootPart13.Anchored = true
			local connection45 = RunService.Heartbeat:Connect(function(deltaTime26)
				HumanoidRootPart13.CFrame = HumanoidRootPart13.CFrame
				HumanoidRootPart13.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				HumanoidRootPart13.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
			end)
			Players.LocalPlayer.Character = clone
			workspace.CurrentCamera.CameraSubject = Humanoid20
			local Animate = clone:FindFirstChild("Animate")
			Animate.Disabled = true
			task.wait(0.1)
			Animate.Disabled = false
			Humanoid20.Died:Connect(function()
				local Humanoid37 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				local HumanoidRootPart24 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Humanoid37.PlatformStand = false
				Humanoid37.DisplayName = Players.LocalPlayer.DisplayName
				HumanoidRootPart24.Anchored = false
				HumanoidRootPart24.CanCollide = true
				Players.LocalPlayer.Character:GetDescendants()
				Players.LocalPlayer.Character = Players.LocalPlayer.Character
				workspace.CurrentCamera.CameraSubject = Humanoid37
			end)
			result:Notify({ Title = "成功", Content = "已伪装: " .. v43.Name, Duration = 3 })
		else
			local players21 = Players:GetPlayers()
			for i22, v45 in ipairs(players21) do
				v45.Character:FindFirstChild("HumanoidRootPart")
			end
			v45.Character:FindFirstChild("HumanoidRootPart")
			connection45:Disconnect()
			clone:Destroy()
			local Humanoid21 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart14 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Humanoid21.PlatformStand = false
			Humanoid21.DisplayName = Players.LocalPlayer.DisplayName
			HumanoidRootPart14.Anchored = false
			HumanoidRootPart14.CanCollide = true
			Players.LocalPlayer.Character:GetDescendants()
			Players.LocalPlayer.Character = Players.LocalPlayer.Character
			workspace.CurrentCamera.CameraSubject = Humanoid21
			task.wait(0.2)
			local HumanoidRootPart15 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid22 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			v45.Character.Archivable = true
			local clone2 = v45.Character:Clone()
			clone2.Name = "PossessedClone"
			local descendants8 = clone2:GetDescendants()
			for i23, v46 in ipairs(descendants8) do
				v46:Destroy()
			end
			local Humanoid23 = clone2:FindFirstChildOfClass("Humanoid")
			Humanoid23.DisplayName = " "
			clone2.Parent = workspace
			clone2:FindFirstChild("HumanoidRootPart")
			Players.LocalPlayer.Character:GetDescendants()
			Humanoid22.PlatformStand = true
			HumanoidRootPart15.Anchored = true
			local connection46 = RunService.Heartbeat:Connect(function(deltaTime27)
				HumanoidRootPart15.CFrame = HumanoidRootPart15.CFrame
				HumanoidRootPart15.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				HumanoidRootPart15.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
			end)
			Players.LocalPlayer.Character = clone2
			workspace.CurrentCamera.CameraSubject = Humanoid23
			local Animate2 = clone2:FindFirstChild("Animate")
			Animate2.Disabled = true
			task.wait(0.1)
			Animate2.Disabled = false
			Humanoid23.Died:Connect(function()
				local Humanoid38 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				local HumanoidRootPart25 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Humanoid38.PlatformStand = false
				Humanoid38.DisplayName = Players.LocalPlayer.DisplayName
				HumanoidRootPart25.Anchored = false
				HumanoidRootPart25.CanCollide = true
				Players.LocalPlayer.Character:GetDescendants()
				Players.LocalPlayer.Character = Players.LocalPlayer.Character
				workspace.CurrentCamera.CameraSubject = Humanoid38
			end)
			result:Notify({ Title = "成功", Content = "已伪装: " .. v45.Name, Duration = 3 })
		end
	end
})
 
Section26:Button({
	Title = "伪装选中玩家",
	Callback = function(state, arg371)
		if state then
			local child8 = Players:FindFirstChild(Dropdown8.Value)
			child8.Character:FindFirstChild("HumanoidRootPart")
			connection46:Disconnect()
			clone2:Destroy()
			local Humanoid24 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart16 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Humanoid24.PlatformStand = false
			Humanoid24.DisplayName = Players.LocalPlayer.DisplayName
			HumanoidRootPart16.Anchored = false
			HumanoidRootPart16.CanCollide = true
			Players.LocalPlayer.Character:GetDescendants()
			Players.LocalPlayer.Character = Players.LocalPlayer.Character
			workspace.CurrentCamera.CameraSubject = Humanoid24
			task.wait(0.2)
			local HumanoidRootPart17 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid25 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			child8.Character.Archivable = true
			local clone3 = child8.Character:Clone()
			clone3.Name = "PossessedClone"
			local descendants9 = clone3:GetDescendants()
			for i24, v47 in ipairs(descendants9) do
				v47:Destroy()
			end
			local Humanoid26 = clone3:FindFirstChildOfClass("Humanoid")
			Humanoid26.DisplayName = " "
			clone3.Parent = workspace
			clone3:FindFirstChild("HumanoidRootPart")
			Players.LocalPlayer.Character:GetDescendants()
			Humanoid25.PlatformStand = true
			HumanoidRootPart17.Anchored = true
			local connection47 = RunService.Heartbeat:Connect(function(deltaTime28)
				HumanoidRootPart17.CFrame = HumanoidRootPart17.CFrame
				HumanoidRootPart17.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				HumanoidRootPart17.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
			end)
			Players.LocalPlayer.Character = clone3
			workspace.CurrentCamera.CameraSubject = Humanoid26
			local Animate3 = clone3:FindFirstChild("Animate")
			Animate3.Disabled = true
			task.wait(0.1)
			Animate3.Disabled = false
			Humanoid26.Died:Connect(function()
				local Humanoid39 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				local HumanoidRootPart26 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Humanoid39.PlatformStand = false
				Humanoid39.DisplayName = Players.LocalPlayer.DisplayName
				HumanoidRootPart26.Anchored = false
				HumanoidRootPart26.CanCollide = true
				Players.LocalPlayer.Character:GetDescendants()
				Players.LocalPlayer.Character = Players.LocalPlayer.Character
				workspace.CurrentCamera.CameraSubject = Humanoid39
			end)
			result:Notify({ Title = "成功", Content = "已伪装: " .. child8.Name, Duration = 3 })
		else
			local child9 = Players:FindFirstChild(Dropdown8.Value)
			child9.Character:FindFirstChild("HumanoidRootPart")
			connection47:Disconnect()
			clone3:Destroy()
			local Humanoid27 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart18 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Humanoid27.PlatformStand = false
			Humanoid27.DisplayName = Players.LocalPlayer.DisplayName
			HumanoidRootPart18.Anchored = false
			HumanoidRootPart18.CanCollide = true
			Players.LocalPlayer.Character:GetDescendants()
			Players.LocalPlayer.Character = Players.LocalPlayer.Character
			workspace.CurrentCamera.CameraSubject = Humanoid27
			task.wait(0.2)
			local HumanoidRootPart19 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid28 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			child9.Character.Archivable = true
			local clone4 = child9.Character:Clone()
			clone4.Name = "PossessedClone"
			local descendants10 = clone4:GetDescendants()
			for i25, v48 in ipairs(descendants10) do
				v48:Destroy()
			end
			local Humanoid29 = clone4:FindFirstChildOfClass("Humanoid")
			Humanoid29.DisplayName = " "
			clone4.Parent = workspace
			clone4:FindFirstChild("HumanoidRootPart")
			Players.LocalPlayer.Character:GetDescendants()
			Humanoid28.PlatformStand = true
			HumanoidRootPart19.Anchored = true
			local connection48 = RunService.Heartbeat:Connect(function(deltaTime29)
				HumanoidRootPart19.CFrame = HumanoidRootPart19.CFrame
				HumanoidRootPart19.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				HumanoidRootPart19.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
			end)
			Players.LocalPlayer.Character = clone4
			workspace.CurrentCamera.CameraSubject = Humanoid29
			local Animate4 = clone4:FindFirstChild("Animate")
			Animate4.Disabled = true
			task.wait(0.1)
			Animate4.Disabled = false
			Humanoid29.Died:Connect(function()
				local Humanoid40 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				local HumanoidRootPart27 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Humanoid40.PlatformStand = false
				Humanoid40.DisplayName = Players.LocalPlayer.DisplayName
				HumanoidRootPart27.Anchored = false
				HumanoidRootPart27.CanCollide = true
				Players.LocalPlayer.Character:GetDescendants()
				Players.LocalPlayer.Character = Players.LocalPlayer.Character
				workspace.CurrentCamera.CameraSubject = Humanoid40
			end)
			result:Notify({ Title = "成功", Content = "已伪装: " .. child9.Name, Duration = 3 })
		end
	end
})
 
Section26:Button({
	Title = "重置夺舍状态",
	Callback = function(state, arg373)
		if state then
			connection48:Disconnect()
			clone4:Destroy()
			local Humanoid30 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart20 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Humanoid30.PlatformStand = false
			Humanoid30.DisplayName = Players.LocalPlayer.DisplayName
			HumanoidRootPart20.Anchored = false
			HumanoidRootPart20.CanCollide = true
			Players.LocalPlayer.Character:GetDescendants()
			Players.LocalPlayer.Character = Players.LocalPlayer.Character
			workspace.CurrentCamera.CameraSubject = Humanoid30
		else
			local Humanoid31 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart21 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Humanoid31.PlatformStand = false
			Humanoid31.DisplayName = Players.LocalPlayer.DisplayName
			HumanoidRootPart21.Anchored = false
			HumanoidRootPart21.CanCollide = true
			Players.LocalPlayer.Character:GetDescendants()
			Players.LocalPlayer.Character = Players.LocalPlayer.Character
			workspace.CurrentCamera.CameraSubject = Humanoid31
		end
		result:Notify({ Title = "成功", Content = "已恢复正常状态", Duration = 2 })
	end
})
 
local Section27 = Tab4:Section({ Title = "名字伪装" })
 
Section27:Input({
	Title = "伪装用户名",
	Default = "",
	Placeholder = "影响排行榜用户名",
	Callback = function(state, arg375)
	end
})
 
Section27:Input({
	Title = "伪装显示名",
	Default = "",
	Placeholder = "影响排行榜显示名",
	Callback = function(state, arg377)
	end
})
 
Section27:Button({
	Title = "开启名字伪装",
	Callback = function(state, arg379)
		if state then
			local connection49 = RunService.Heartbeat:Connect(function(deltaTime30)
			end)
		else
			connection49:Disconnect()
			local connection50 = RunService.Heartbeat:Connect(function(deltaTime31)
			end)
		end
		result:Notify({ Title = "成功", Content = "名字伪装已开启", Duration = 2 })
	end
})
 
Section27:Button({
	Title = "关闭名字伪装",
	Callback = function(state, arg381)
		if state then
			connection50:Disconnect()
		end
		result:Notify({ Title = "成功", Content = "名字伪装已关闭", Duration = 2 })
	end
})
 
local players22 = Players:GetPlayers()
 
for i26, v49 in ipairs(players22) do
end
 
Dropdown8:SetValues({ v49.Name })
 
Dropdown8:Set(v49.Name)
 
Players.PlayerAdded:Connect(function(player5)
	 
	task.wait(0.5)
	 
	local players37 = Players:GetPlayers()
	 
	for i215, v238 in ipairs(players37) do
	end
	 
	Dropdown8:SetValues({ v238.Name })
	 
	Dropdown8:Set(v238.Name)
end)
 
Players.PlayerRemoving:Connect(function(player6)
	 
	task.wait(0.5)
	 
	local players38 = Players:GetPlayers()
	 
	for i216, v239 in ipairs(players38) do
	end
	 
	Dropdown8:SetValues({ v239.Name })
	 
	Dropdown8:Set(v239.Name)
end)
 
getgenv().animPackEnabled = false
 
getgenv().animPackSelected = "吸血鬼"
 
getgenv().animPackOriginalSaved = false
 
getgenv().animPackOriginalData = {}
 
local Section28 = Tab8:Section({ Title = "动作包控制" })
 
getgenv().animPackSelected = false
 
Section28:Dropdown({
	Title = "选择动画包",
	Value = "吸血鬼",
	Values = {
		"吸血鬼",
		"英雄",
		"经典僵尸",
		"法师",
		"幽灵",
		"长者",
		"漂浮",
		"宇航员",
		"忍者",
		"狼人",
		"卡通",
		"海盗",
		"潜行",
		"玩具",
		"骑士",
		"自信",
		"流行明星",
		"公主",
		"牛仔",
		"巡逻",
		"僵尸FE"
	},
	Callback = function(state, arg383)
	end
})
 
Section28:Toggle({
	Title = "开启动画包",
	Default = false,
	Callback = function(state, arg385)
		if state then
			getgenv().animPackEnabled = state
			Players.LocalPlayer.Character:FindFirstChild("Animate")
			local Animate5 = Players.LocalPlayer.Character:FindFirstChild("Animate")
			Animate5:FindFirstChild("idle")
			Animate5.idle:FindFirstChild("Animation1")
			Animate5:FindFirstChild("idle")
			Animate5.idle:FindFirstChild("Animation2")
			Animate5:FindFirstChild("walk")
			Animate5.walk:FindFirstChild("WalkAnim")
			Animate5:FindFirstChild("run")
			Animate5.run:FindFirstChild("RunAnim")
			Animate5:FindFirstChild("jump")
			Animate5.jump:FindFirstChild("JumpAnim")
			Animate5:FindFirstChild("climb")
			Animate5.climb:FindFirstChild("ClimbAnim")
			Animate5:FindFirstChild("fall")
			Animate5.fall:FindFirstChild("FallAnim")
			getgenv().animPackOriginalData = {
		climb = Animate5.climb.ClimbAnim.AnimationId,
		fall = Animate5.fall.FallAnim.AnimationId,
		idle1 = Animate5.idle.Animation1.AnimationId,
		idle2 = Animate5.idle.Animation2.AnimationId,
		jump = Animate5.jump.JumpAnim.AnimationId,
		run = Animate5.run.RunAnim.AnimationId,
		walk = Animate5.walk.WalkAnim.AnimationId
	}
			getgenv().animPackOriginalSaved = true
			Animate5.Disabled = true
			Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
			local Humanoid32 = Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
			Humanoid32:ChangeState(Enum.HumanoidStateType.Jumping)
			Animate5.Disabled = false
		else
			getgenv().animPackEnabled = false
			Players.LocalPlayer.Character:FindFirstChild("Animate")
			local Animate6 = Players.LocalPlayer.Character:FindFirstChild("Animate")
			Animate6.Disabled = true
			Animate6:FindFirstChild("idle")
			Animate6.idle:FindFirstChild("Animation1")
			Animate6.idle.Animation1.AnimationId = Animate5.idle.Animation1.AnimationId
			Animate6:FindFirstChild("idle")
			Animate6.idle:FindFirstChild("Animation2")
			Animate6.idle.Animation2.AnimationId = Animate5.idle.Animation2.AnimationId
			Animate6:FindFirstChild("walk")
			Animate6.walk:FindFirstChild("WalkAnim")
			Animate6.walk.WalkAnim.AnimationId = Animate5.walk.WalkAnim.AnimationId
			Animate6:FindFirstChild("run")
			Animate6.run:FindFirstChild("RunAnim")
			Animate6.run.RunAnim.AnimationId = Animate5.run.RunAnim.AnimationId
			Animate6:FindFirstChild("jump")
			Animate6.jump:FindFirstChild("JumpAnim")
			Animate6.jump.JumpAnim.AnimationId = Animate5.jump.JumpAnim.AnimationId
			Animate6:FindFirstChild("climb")
			Animate6.climb:FindFirstChild("ClimbAnim")
			Animate6.climb.ClimbAnim.AnimationId = Animate5.climb.ClimbAnim.AnimationId
			Animate6:FindFirstChild("fall")
			Animate6.fall:FindFirstChild("FallAnim")
			Animate6.fall.FallAnim.AnimationId = Animate5.fall.FallAnim.AnimationId
			Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
			local Humanoid33 = Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
			Humanoid33:ChangeState(Enum.HumanoidStateType.Jumping)
			Animate6.Disabled = false
		end
	end
})
 
local Section29 = Tab8:Section({ Title = "服务器动画包ID" })
 
local Dropdown9 = Section29:Dropdown({
	Title = "选择动画",
	Value = "未找到动画",
	Values = { "未找到动画" },
	Callback = function(state, arg387)
	end
})
 
Section29:Toggle({
	Title = "开启播放动画包",
	Default = false,
	Callback = function(state, arg389)
		if not state then
			local Humanoid34 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local tracks = Humanoid34:GetPlayingAnimationTracks()
			for i27, v50 in ipairs(tracks) do
				v50:Stop()
			end
		end
	end
})
 
Section29:Button({
	Title = "扫描动画",
	Callback = function(state, arg391)
		if state then
			local ServerStorage = game:GetService("ServerStorage")
			local ServerScriptService = game:GetService("ServerScriptService")
			local StarterPack = game:GetService("StarterPack")
			local StarterPlayer = game:GetService("StarterPlayer")
			local SoundService = game:GetService("SoundService")
			local Chat = game:GetService("Chat")
			local Teams = game:GetService("Teams")
			local InsertService = game:GetService("InsertService")
			local TweenService = game:GetService("TweenService")
			local CollectionService = game:GetService("CollectionService")
			local ContextActionService = game:GetService("ContextActionService")
			local TextService = game:GetService("TextService")
			local PhysicsService = game:GetService("PhysicsService")
			local PathfindingService = game:GetService("PathfindingService")
			local Debris = game:GetService("Debris")
			local BadgeService = game:GetService("BadgeService")
			local SocialService = game:GetService("SocialService")
			local MaterialService = game:GetService("MaterialService")
			local GroupService = game:GetService("GroupService")
			local PolicyService = game:GetService("PolicyService")
			local TextChatService = game:GetService("TextChatService")
			local AvatarEditorService = game:GetService("AvatarEditorService")
			local MemoryStoreService = game:GetService("MemoryStoreService")
			local MessagingService = game:GetService("MessagingService")
			local UserService = game:GetService("UserService")
			workspace:GetDescendants()
			Folder3:GetChildren()
			clone.AnimationId:find("rbxassetid://")
			clone2.AnimationId:find("rbxassetid://")
			clone3.AnimationId:find("rbxassetid://")
			clone4.AnimationId:find("rbxassetid://")
			local descendants11 = Lighting:GetDescendants()
			for i28, v51 in ipairs(descendants11) do
				v51.AnimationId:find("rbxassetid://")
			end
			local descendants12 = ReplicatedStorage:GetDescendants()
			for i29, v52 in ipairs(descendants12) do
				v52.AnimationId:find("rbxassetid://")
			end
			local descendants13 = ServerStorage:GetDescendants()
			for i30, v53 in ipairs(descendants13) do
				v53.AnimationId:find("rbxassetid://")
			end
			local descendants14 = ServerScriptService:GetDescendants()
			for i31, v54 in ipairs(descendants14) do
				v54.AnimationId:find("rbxassetid://")
			end
			local descendants15 = StarterPack:GetDescendants()
			for i32, v55 in ipairs(descendants15) do
				v55.AnimationId:find("rbxassetid://")
			end
			local descendants16 = StarterPlayer:GetDescendants()
			for i33, v56 in ipairs(descendants16) do
				v56.AnimationId:find("rbxassetid://")
			end
			local descendants17 = StarterGui:GetDescendants()
			for i34, v57 in ipairs(descendants17) do
				v57.AnimationId:find("rbxassetid://")
			end
			local descendants18 = Players:GetDescendants()
			for i35, v58 in ipairs(descendants18) do
				v58.AnimationId:find("rbxassetid://")
			end
			local descendants19 = SoundService:GetDescendants()
			for i36, v59 in ipairs(descendants19) do
				v59.AnimationId:find("rbxassetid://")
			end
			local descendants20 = Chat:GetDescendants()
			for i37, v60 in ipairs(descendants20) do
				v60.AnimationId:find("rbxassetid://")
			end
			local descendants21 = Teams:GetDescendants()
			for i38, v61 in ipairs(descendants21) do
				v61.AnimationId:find("rbxassetid://")
			end
			local descendants22 = HttpService:GetDescendants()
			for i39, v62 in ipairs(descendants22) do
				v62.AnimationId:find("rbxassetid://")
			end
			local descendants23 = InsertService:GetDescendants()
			for i40, v63 in ipairs(descendants23) do
				v63.AnimationId:find("rbxassetid://")
			end
			local descendants24 = TeleportService:GetDescendants()
			for i41, v64 in ipairs(descendants24) do
				v64.AnimationId:find("rbxassetid://")
			end
			local descendants25 = TweenService:GetDescendants()
			for i42, v65 in ipairs(descendants25) do
				v65.AnimationId:find("rbxassetid://")
			end
			local descendants26 = MarketplaceService:GetDescendants()
			for i43, v66 in ipairs(descendants26) do
				v66.AnimationId:find("rbxassetid://")
			end
			local descendants27 = CollectionService:GetDescendants()
			for i44, v67 in ipairs(descendants27) do
				v67.AnimationId:find("rbxassetid://")
			end
			local descendants28 = RunService:GetDescendants()
			for i45, v68 in ipairs(descendants28) do
				v68.AnimationId:find("rbxassetid://")
			end
			local descendants29 = ContextActionService:GetDescendants()
			for i46, v69 in ipairs(descendants29) do
				v69.AnimationId:find("rbxassetid://")
			end
			local descendants30 = TextService:GetDescendants()
			for i47, v70 in ipairs(descendants30) do
				v70.AnimationId:find("rbxassetid://")
			end
			local descendants31 = PhysicsService:GetDescendants()
			for i48, v71 in ipairs(descendants31) do
				v71.AnimationId:find("rbxassetid://")
			end
			local descendants32 = PathfindingService:GetDescendants()
			for i49, v72 in ipairs(descendants32) do
				v72.AnimationId:find("rbxassetid://")
			end
			local descendants33 = Debris:GetDescendants()
			for i50, v73 in ipairs(descendants33) do
				v73.AnimationId:find("rbxassetid://")
			end
			local descendants34 = BadgeService:GetDescendants()
			for i51, v74 in ipairs(descendants34) do
				v74.AnimationId:find("rbxassetid://")
			end
			local descendants35 = SocialService:GetDescendants()
			for i52, v75 in ipairs(descendants35) do
				v75.AnimationId:find("rbxassetid://")
			end
			local descendants36 = MaterialService:GetDescendants()
			for i53, v76 in ipairs(descendants36) do
				v76.AnimationId:find("rbxassetid://")
			end
			local descendants37 = GroupService:GetDescendants()
			for i54, v77 in ipairs(descendants37) do
				v77.AnimationId:find("rbxassetid://")
			end
			local descendants38 = PolicyService:GetDescendants()
			for i55, v78 in ipairs(descendants38) do
				v78.AnimationId:find("rbxassetid://")
			end
			local descendants39 = TextChatService:GetDescendants()
			for i56, v79 in ipairs(descendants39) do
				v79.AnimationId:find("rbxassetid://")
			end
			local descendants40 = AvatarEditorService:GetDescendants()
			for i57, v80 in ipairs(descendants40) do
				v80.AnimationId:find("rbxassetid://")
			end
			local descendants41 = LocalizationService:GetDescendants()
			for i58, v81 in ipairs(descendants41) do
				v81.AnimationId:find("rbxassetid://")
			end
			local descendants42 = MemoryStoreService:GetDescendants()
			for i59, v82 in ipairs(descendants42) do
				v82.AnimationId:find("rbxassetid://")
			end
			local descendants43 = MessagingService:GetDescendants()
			for i60, v83 in ipairs(descendants43) do
				v83.AnimationId:find("rbxassetid://")
			end
			local descendants44 = UserService:GetDescendants()
			for i61, v84 in ipairs(descendants44) do
				v84.AnimationId:find("rbxassetid://")
			end
			local descendants45 = game:GetDescendants()
			for i62, v85 in ipairs(descendants45) do
				v85.AnimationId:find("rbxassetid://")
			end
			Dropdown9:Destroy()
			local Dropdown10 = Section29:Dropdown({
		Title = "选择动画",
		Value = "未找到动画",
		Values = { "未找到动画" },
		Callback = function(state, arg393)
				end
	})
		else
			workspace:GetDescendants()
			Folder3:GetChildren()
			clone.AnimationId:find("rbxassetid://")
			clone2.AnimationId:find("rbxassetid://")
			clone3.AnimationId:find("rbxassetid://")
			clone4.AnimationId:find("rbxassetid://")
			local descendants46 = Lighting:GetDescendants()
			for i63, v86 in ipairs(descendants46) do
				v86.AnimationId:find("rbxassetid://")
			end
			local descendants47 = ReplicatedStorage:GetDescendants()
			for i64, v87 in ipairs(descendants47) do
				v87.AnimationId:find("rbxassetid://")
			end
			local descendants48 = ServerStorage:GetDescendants()
			for i65, v88 in ipairs(descendants48) do
				v88.AnimationId:find("rbxassetid://")
			end
			local descendants49 = ServerScriptService:GetDescendants()
			for i66, v89 in ipairs(descendants49) do
				v89.AnimationId:find("rbxassetid://")
			end
			local descendants50 = StarterPack:GetDescendants()
			for i67, v90 in ipairs(descendants50) do
				v90.AnimationId:find("rbxassetid://")
			end
			local descendants51 = StarterPlayer:GetDescendants()
			for i68, v91 in ipairs(descendants51) do
				v91.AnimationId:find("rbxassetid://")
			end
			local descendants52 = StarterGui:GetDescendants()
			for i69, v92 in ipairs(descendants52) do
				v92.AnimationId:find("rbxassetid://")
			end
			local descendants53 = Players:GetDescendants()
			for i70, v93 in ipairs(descendants53) do
				v93.AnimationId:find("rbxassetid://")
			end
			local descendants54 = SoundService:GetDescendants()
			for i71, v94 in ipairs(descendants54) do
				v94.AnimationId:find("rbxassetid://")
			end
			local descendants55 = Chat:GetDescendants()
			for i72, v95 in ipairs(descendants55) do
				v95.AnimationId:find("rbxassetid://")
			end
			local descendants56 = Teams:GetDescendants()
			for i73, v96 in ipairs(descendants56) do
				v96.AnimationId:find("rbxassetid://")
			end
			local descendants57 = HttpService:GetDescendants()
			for i74, v97 in ipairs(descendants57) do
				v97.AnimationId:find("rbxassetid://")
			end
			local descendants58 = InsertService:GetDescendants()
			for i75, v98 in ipairs(descendants58) do
				v98.AnimationId:find("rbxassetid://")
			end
			local descendants59 = TeleportService:GetDescendants()
			for i76, v99 in ipairs(descendants59) do
				v99.AnimationId:find("rbxassetid://")
			end
			local descendants60 = TweenService:GetDescendants()
			for i77, v100 in ipairs(descendants60) do
				v100.AnimationId:find("rbxassetid://")
			end
			local descendants61 = MarketplaceService:GetDescendants()
			for i78, v101 in ipairs(descendants61) do
				v101.AnimationId:find("rbxassetid://")
			end
			local descendants62 = CollectionService:GetDescendants()
			for i79, v102 in ipairs(descendants62) do
				v102.AnimationId:find("rbxassetid://")
			end
			local descendants63 = RunService:GetDescendants()
			for i80, v103 in ipairs(descendants63) do
				v103.AnimationId:find("rbxassetid://")
			end
			local descendants64 = ContextActionService:GetDescendants()
			for i81, v104 in ipairs(descendants64) do
				v104.AnimationId:find("rbxassetid://")
			end
			local descendants65 = TextService:GetDescendants()
			for i82, v105 in ipairs(descendants65) do
				v105.AnimationId:find("rbxassetid://")
			end
			local descendants66 = PhysicsService:GetDescendants()
			for i83, v106 in ipairs(descendants66) do
				v106.AnimationId:find("rbxassetid://")
			end
			local descendants67 = PathfindingService:GetDescendants()
			for i84, v107 in ipairs(descendants67) do
				v107.AnimationId:find("rbxassetid://")
			end
			local descendants68 = Debris:GetDescendants()
			for i85, v108 in ipairs(descendants68) do
				v108.AnimationId:find("rbxassetid://")
			end
			local descendants69 = BadgeService:GetDescendants()
			for i86, v109 in ipairs(descendants69) do
				v109.AnimationId:find("rbxassetid://")
			end
			local descendants70 = SocialService:GetDescendants()
			for i87, v110 in ipairs(descendants70) do
				v110.AnimationId:find("rbxassetid://")
			end
			local descendants71 = MaterialService:GetDescendants()
			for i88, v111 in ipairs(descendants71) do
				v111.AnimationId:find("rbxassetid://")
			end
			local descendants72 = GroupService:GetDescendants()
			for i89, v112 in ipairs(descendants72) do
				v112.AnimationId:find("rbxassetid://")
			end
			local descendants73 = PolicyService:GetDescendants()
			for i90, v113 in ipairs(descendants73) do
				v113.AnimationId:find("rbxassetid://")
			end
			local descendants74 = TextChatService:GetDescendants()
			for i91, v114 in ipairs(descendants74) do
				v114.AnimationId:find("rbxassetid://")
			end
			local descendants75 = AvatarEditorService:GetDescendants()
			for i92, v115 in ipairs(descendants75) do
				v115.AnimationId:find("rbxassetid://")
			end
			local descendants76 = LocalizationService:GetDescendants()
			for i93, v116 in ipairs(descendants76) do
				v116.AnimationId:find("rbxassetid://")
			end
			local descendants77 = MemoryStoreService:GetDescendants()
			for i94, v117 in ipairs(descendants77) do
				v117.AnimationId:find("rbxassetid://")
			end
			local descendants78 = MessagingService:GetDescendants()
			for i95, v118 in ipairs(descendants78) do
				v118.AnimationId:find("rbxassetid://")
			end
			local descendants79 = UserService:GetDescendants()
			for i96, v119 in ipairs(descendants79) do
				v119.AnimationId:find("rbxassetid://")
			end
			local descendants80 = game:GetDescendants()
			for i97, v120 in ipairs(descendants80) do
				v120.AnimationId:find("rbxassetid://")
			end
			Dropdown10:Destroy()
			Section29:Dropdown({
		Title = "选择动画",
		Value = "未找到动画",
		Values = { "未找到动画" },
		Callback = function(state, arg395)
				end
	})
		end
		result:Notify({ Title = "扫描完成", Content = "找到 0 个动画", Duration = 2 })
	end
})
 
Section29:Button({
	Title = "复制选中动画ID",
	Callback = function(state, arg397)
		result:Notify({ Title = "提示", Content = "请先选择动画", Duration = 2 })
	end
})
 
local Section30 = Tab19:Section({ Title = "音乐播放器" })
 
getgenv().musicId = ""
 
getgenv().musicSound = nil
 
getgenv().musicPaused = false
 
getgenv().musicId = false
 
Section30:Input({
	Title = "音乐ID",
	Default = "",
	Placeholder = "例如: 1842807215",
	Callback = function(state, arg399)
	end
})
 
Section30:Button({
	Title = "播放/暂停",
	Callback = function(state, arg401)
		if state then
			local Sound = Instance.new("Sound")
			Sound.Parent = SoundService
			Sound.Volume = 1
			getgenv().musicSound = Sound
			Sound:Pause()
			getgenv().musicPaused = true
		else
			Sound:Pause()
		end
		result:Notify({ Title = "音乐", Content = "已暂停", Duration = 1 })
	end
})
 
Section30:Button({
	Title = "关闭",
	Callback = function(state, arg403)
		if state then
			Sound:Stop()
			Sound:Destroy()
			getgenv().musicPaused = false
			getgenv().musicSound = nil
			result:Notify({ Title = "音乐", Content = "已停止", Duration = 1 })
		end
	end
})
 
Section30:Slider({
	Title = "音量",
	Value = { Default = 100, Max = 100, Min = 0 },
	Callback = function(state, arg405)
	end
})
 
local Section31 = Tab19:Section({ Title = "服务器音效ID" })
 
local Dropdown11 = Section31:Dropdown({
	Title = "选择音效",
	Value = "请先扫描音效",
	Values = { "请先扫描音效" },
	Callback = function(state, arg407)
	end
})
 
Section31:Button({
	Title = "扫描音效",
	Callback = function(state, arg409)
		workspace:GetDescendants()
		Folder3:GetChildren()
		clone.SoundId:find("rbxassetid://")
		clone2.SoundId:find("rbxassetid://")
		clone3.SoundId:find("rbxassetid://")
		clone4.SoundId:find("rbxassetid://")
		if state then
			local descendants81 = Lighting:GetDescendants()
			for i98, v121 in ipairs(descendants81) do
				v121.SoundId:find("rbxassetid://")
			end
			local descendants82 = ReplicatedStorage:GetDescendants()
			for i99, v122 in ipairs(descendants82) do
				v122.SoundId:find("rbxassetid://")
			end
			local descendants83 = ServerStorage:GetDescendants()
			for i100, v123 in ipairs(descendants83) do
				v123.SoundId:find("rbxassetid://")
			end
			local descendants84 = ServerScriptService:GetDescendants()
			for i101, v124 in ipairs(descendants84) do
				v124.SoundId:find("rbxassetid://")
			end
			local descendants85 = StarterPack:GetDescendants()
			for i102, v125 in ipairs(descendants85) do
				v125.SoundId:find("rbxassetid://")
			end
			local descendants86 = StarterPlayer:GetDescendants()
			for i103, v126 in ipairs(descendants86) do
				v126.SoundId:find("rbxassetid://")
			end
			local descendants87 = StarterGui:GetDescendants()
			for i104, v127 in ipairs(descendants87) do
				v127.SoundId:find("rbxassetid://")
			end
			local descendants88 = Players:GetDescendants()
			for i105, v128 in ipairs(descendants88) do
				v128.SoundId:find("rbxassetid://")
			end
			SoundService:GetDescendants()
			local descendants89 = Chat:GetDescendants()
			for i106, v129 in ipairs(descendants89) do
				v129.SoundId:find("rbxassetid://")
			end
			local descendants90 = Teams:GetDescendants()
			for i107, v130 in ipairs(descendants90) do
				v130.SoundId:find("rbxassetid://")
			end
			local descendants91 = HttpService:GetDescendants()
			for i108, v131 in ipairs(descendants91) do
				v131.SoundId:find("rbxassetid://")
			end
			local descendants92 = InsertService:GetDescendants()
			for i109, v132 in ipairs(descendants92) do
				v132.SoundId:find("rbxassetid://")
			end
			local descendants93 = TeleportService:GetDescendants()
			for i110, v133 in ipairs(descendants93) do
				v133.SoundId:find("rbxassetid://")
			end
			local descendants94 = TweenService:GetDescendants()
			for i111, v134 in ipairs(descendants94) do
				v134.SoundId:find("rbxassetid://")
			end
			local descendants95 = MarketplaceService:GetDescendants()
			for i112, v135 in ipairs(descendants95) do
				v135.SoundId:find("rbxassetid://")
			end
			local descendants96 = CollectionService:GetDescendants()
			for i113, v136 in ipairs(descendants96) do
				v136.SoundId:find("rbxassetid://")
			end
			local descendants97 = RunService:GetDescendants()
			for i114, v137 in ipairs(descendants97) do
				v137.SoundId:find("rbxassetid://")
			end
			local descendants98 = ContextActionService:GetDescendants()
			for i115, v138 in ipairs(descendants98) do
				v138.SoundId:find("rbxassetid://")
			end
			local descendants99 = TextService:GetDescendants()
			for i116, v139 in ipairs(descendants99) do
				v139.SoundId:find("rbxassetid://")
			end
			local descendants100 = PhysicsService:GetDescendants()
			for i117, v140 in ipairs(descendants100) do
				v140.SoundId:find("rbxassetid://")
			end
			local descendants101 = PathfindingService:GetDescendants()
			for i118, v141 in ipairs(descendants101) do
				v141.SoundId:find("rbxassetid://")
			end
			local descendants102 = Debris:GetDescendants()
			for i119, v142 in ipairs(descendants102) do
				v142.SoundId:find("rbxassetid://")
			end
			local descendants103 = BadgeService:GetDescendants()
			for i120, v143 in ipairs(descendants103) do
				v143.SoundId:find("rbxassetid://")
			end
			local descendants104 = SocialService:GetDescendants()
			for i121, v144 in ipairs(descendants104) do
				v144.SoundId:find("rbxassetid://")
			end
			local descendants105 = MaterialService:GetDescendants()
			for i122, v145 in ipairs(descendants105) do
				v145.SoundId:find("rbxassetid://")
			end
			local descendants106 = GroupService:GetDescendants()
			for i123, v146 in ipairs(descendants106) do
				v146.SoundId:find("rbxassetid://")
			end
			local descendants107 = PolicyService:GetDescendants()
			for i124, v147 in ipairs(descendants107) do
				v147.SoundId:find("rbxassetid://")
			end
			local descendants108 = TextChatService:GetDescendants()
			for i125, v148 in ipairs(descendants108) do
				v148.SoundId:find("rbxassetid://")
			end
			local descendants109 = AvatarEditorService:GetDescendants()
			for i126, v149 in ipairs(descendants109) do
				v149.SoundId:find("rbxassetid://")
			end
			local descendants110 = LocalizationService:GetDescendants()
			for i127, v150 in ipairs(descendants110) do
				v150.SoundId:find("rbxassetid://")
			end
			local descendants111 = MemoryStoreService:GetDescendants()
			for i128, v151 in ipairs(descendants111) do
				v151.SoundId:find("rbxassetid://")
			end
			local descendants112 = MessagingService:GetDescendants()
			for i129, v152 in ipairs(descendants112) do
				v152.SoundId:find("rbxassetid://")
			end
			local descendants113 = UserService:GetDescendants()
			for i130, v153 in ipairs(descendants113) do
				v153.SoundId:find("rbxassetid://")
			end
			local descendants114 = game:GetDescendants()
			for i131, v154 in ipairs(descendants114) do
				v154.SoundId:find("rbxassetid://")
			end
			Dropdown11:Destroy()
			local Dropdown12 = Section31:Dropdown({
		Title = "选择音效",
		Value = "请先扫描音效",
		Values = { "请先扫描音效" },
		Callback = function(state, arg411)
				end
	})
		else
			local descendants115 = Lighting:GetDescendants()
			for i132, v155 in ipairs(descendants115) do
				v155.SoundId:find("rbxassetid://")
			end
			local descendants116 = ReplicatedStorage:GetDescendants()
			for i133, v156 in ipairs(descendants116) do
				v156.SoundId:find("rbxassetid://")
			end
			local descendants117 = ServerStorage:GetDescendants()
			for i134, v157 in ipairs(descendants117) do
				v157.SoundId:find("rbxassetid://")
			end
			local descendants118 = ServerScriptService:GetDescendants()
			for i135, v158 in ipairs(descendants118) do
				v158.SoundId:find("rbxassetid://")
			end
			local descendants119 = StarterPack:GetDescendants()
			for i136, v159 in ipairs(descendants119) do
				v159.SoundId:find("rbxassetid://")
			end
			local descendants120 = StarterPlayer:GetDescendants()
			for i137, v160 in ipairs(descendants120) do
				v160.SoundId:find("rbxassetid://")
			end
			local descendants121 = StarterGui:GetDescendants()
			for i138, v161 in ipairs(descendants121) do
				v161.SoundId:find("rbxassetid://")
			end
			local descendants122 = Players:GetDescendants()
			for i139, v162 in ipairs(descendants122) do
				v162.SoundId:find("rbxassetid://")
			end
			SoundService:GetDescendants()
			local descendants123 = Chat:GetDescendants()
			for i140, v163 in ipairs(descendants123) do
				v163.SoundId:find("rbxassetid://")
			end
			local descendants124 = Teams:GetDescendants()
			for i141, v164 in ipairs(descendants124) do
				v164.SoundId:find("rbxassetid://")
			end
			local descendants125 = HttpService:GetDescendants()
			for i142, v165 in ipairs(descendants125) do
				v165.SoundId:find("rbxassetid://")
			end
			local descendants126 = InsertService:GetDescendants()
			for i143, v166 in ipairs(descendants126) do
				v166.SoundId:find("rbxassetid://")
			end
			local descendants127 = TeleportService:GetDescendants()
			for i144, v167 in ipairs(descendants127) do
				v167.SoundId:find("rbxassetid://")
			end
			local descendants128 = TweenService:GetDescendants()
			for i145, v168 in ipairs(descendants128) do
				v168.SoundId:find("rbxassetid://")
			end
			local descendants129 = MarketplaceService:GetDescendants()
			for i146, v169 in ipairs(descendants129) do
				v169.SoundId:find("rbxassetid://")
			end
			local descendants130 = CollectionService:GetDescendants()
			for i147, v170 in ipairs(descendants130) do
				v170.SoundId:find("rbxassetid://")
			end
			local descendants131 = RunService:GetDescendants()
			for i148, v171 in ipairs(descendants131) do
				v171.SoundId:find("rbxassetid://")
			end
			local descendants132 = ContextActionService:GetDescendants()
			for i149, v172 in ipairs(descendants132) do
				v172.SoundId:find("rbxassetid://")
			end
			local descendants133 = TextService:GetDescendants()
			for i150, v173 in ipairs(descendants133) do
				v173.SoundId:find("rbxassetid://")
			end
			local descendants134 = PhysicsService:GetDescendants()
			for i151, v174 in ipairs(descendants134) do
				v174.SoundId:find("rbxassetid://")
			end
			local descendants135 = PathfindingService:GetDescendants()
			for i152, v175 in ipairs(descendants135) do
				v175.SoundId:find("rbxassetid://")
			end
			local descendants136 = Debris:GetDescendants()
			for i153, v176 in ipairs(descendants136) do
				v176.SoundId:find("rbxassetid://")
			end
			local descendants137 = BadgeService:GetDescendants()
			for i154, v177 in ipairs(descendants137) do
				v177.SoundId:find("rbxassetid://")
			end
			local descendants138 = SocialService:GetDescendants()
			for i155, v178 in ipairs(descendants138) do
				v178.SoundId:find("rbxassetid://")
			end
			local descendants139 = MaterialService:GetDescendants()
			for i156, v179 in ipairs(descendants139) do
				v179.SoundId:find("rbxassetid://")
			end
			local descendants140 = GroupService:GetDescendants()
			for i157, v180 in ipairs(descendants140) do
				v180.SoundId:find("rbxassetid://")
			end
			local descendants141 = PolicyService:GetDescendants()
			for i158, v181 in ipairs(descendants141) do
				v181.SoundId:find("rbxassetid://")
			end
			local descendants142 = TextChatService:GetDescendants()
			for i159, v182 in ipairs(descendants142) do
				v182.SoundId:find("rbxassetid://")
			end
			local descendants143 = AvatarEditorService:GetDescendants()
			for i160, v183 in ipairs(descendants143) do
				v183.SoundId:find("rbxassetid://")
			end
			local descendants144 = LocalizationService:GetDescendants()
			for i161, v184 in ipairs(descendants144) do
				v184.SoundId:find("rbxassetid://")
			end
			local descendants145 = MemoryStoreService:GetDescendants()
			for i162, v185 in ipairs(descendants145) do
				v185.SoundId:find("rbxassetid://")
			end
			local descendants146 = MessagingService:GetDescendants()
			for i163, v186 in ipairs(descendants146) do
				v186.SoundId:find("rbxassetid://")
			end
			local descendants147 = UserService:GetDescendants()
			for i164, v187 in ipairs(descendants147) do
				v187.SoundId:find("rbxassetid://")
			end
			local descendants148 = game:GetDescendants()
			for i165, v188 in ipairs(descendants148) do
				v188.SoundId:find("rbxassetid://")
			end
			Dropdown12:Destroy()
			Section31:Dropdown({
		Title = "选择音效",
		Value = "请先扫描音效",
		Values = { "请先扫描音效" },
		Callback = function(state, arg413)
				end
	})
		end
		result:Notify({ Title = "扫描完成", Content = "找到 0 个音效", Duration = 2 })
	end
})
 
Section31:Button({
	Title = "点击播放",
	Callback = function(state, arg415)
		result:Notify({ Title = "提示", Content = "请先选择音效", Duration = 2 })
	end
})
 
Section31:Button({
	Title = "暂停/继续",
	Callback = function(state, arg417)
		result:Notify({ Title = "提示", Content = "没有正在播放的音效", Duration = 2 })
	end
})
 
Section31:Button({
	Title = "停止音效",
	Callback = function(state, arg419)
		result:Notify({ Title = "提示", Content = "没有正在播放的音效", Duration = 2 })
	end
})
 
Section31:Button({
	Title = "复制选中音效ID",
	Callback = function(state, arg421)
		result:Notify({ Title = "提示", Content = "请先选择音效", Duration = 2 })
	end
})
 
local Section32 = Tab18:Section({ Title = "时间控制" })
 
Section32:Toggle({
	Title = "自定义时间",
	Default = false,
	Callback = function(state, arg423)
		if state then
			Lighting.ClockTime = 12
			local connection51 = RunService.Heartbeat:Connect(function(deltaTime32)
			end)
		else
			connection51:Disconnect()
			Lighting.ClockTime = 0
		end
	end
})
 
Section32:Slider({
	Title = "当前时间",
	Desc = "小时 (0-24)",
	Value = { Default = 12, Float = 0.1, Max = 24, Min = 0 },
	Callback = function(state, arg425)
	end
})
 
Section32:Slider({
	Title = "时间流速",
	Value = { Default = 1, Max = 100, Min = 0 },
	Callback = function(state, arg427)
	end
})
 
local Section33 = Tab18:Section({ Title = "天气控制" })
 
Section33:Dropdown({
	Title = "切换天气",
	Value = "晴天",
	Values = { "晴天", "多云", "雨天", "雾天", "夜晚" },
	Callback = function(state, arg429)
	end
})
 
Section33:Toggle({
	Title = "没有雾",
	Default = false,
	Callback = function(state, arg431)
		if state then
			Lighting.FogStart = math.huge
			Lighting.FogEnd = math.huge
		else
			Lighting.FogStart = 0
			Lighting.FogEnd = 0
		end
	end
})
 
local Section34 = Tab18:Section({ Title = "天空盒控制" })
 
Section34:Dropdown({
	Title = "天空盒图片",
	Desc = "选择天空背景",
	Value = "默认",
	Values = { "默认", "天空", "夜晚星空", "神秘" },
	Callback = function(state, arg433)
		if state then
			local children8 = Lighting:GetChildren()
			children8[1]:Destroy()
		else
			local children9 = Lighting:GetChildren()
			children9[1]:Destroy()
		end
	end
})
 
Section34:Input({
	Title = "自定义天空盒",
	Default = "",
	Placeholder = "rbxassetid://...",
	Callback = function(state, arg435)
		if state then
			local Sky = Instance.new("Sky")
			Sky.SkyboxBk = state
			Sky.SkyboxDn = state
			Sky.SkyboxFt = state
			Sky.SkyboxLf = state
			Sky.SkyboxRt = state
			Sky.SkyboxUp = state
			Sky.Parent = Lighting
		else
			local Sky2 = Instance.new("Sky")
			Sky2.SkyboxBk = false
			Sky2.SkyboxDn = false
			Sky2.SkyboxFt = false
			Sky2.SkyboxLf = false
			Sky2.SkyboxRt = false
			Sky2.SkyboxUp = false
			Sky2.Parent = Lighting
		end
	end
})
 
Section34:Button({
	Title = "清除天空盒",
	Callback = function(state, arg437)
		Lighting:GetChildren()
		if state then
			Sky:Destroy()
			Sky2:Destroy()
		end
		result:Notify({ Title = "天气", Content = "已恢复默认天空", Duration = 2 })
	end
})
 
local Section35 = Tab18:Section({ Title = "其他效果" })
 
Section35:Slider({
	Title = "亮度",
	Value = { Default = 2, Float = 0.1, Max = 5, Min = 0.1 },
	Callback = function(state, arg439)
		if state then
			Lighting.Brightness = state
		else
			Lighting.Brightness = false
		end
	end
})
 
Section35:Slider({
	Title = "环境光",
	Value = { Default = 0.5, Float = 0.05, Max = 1, Min = 0 },
	Callback = function(state, arg441)
		if state then
			Lighting.OutdoorAmbient = Color3.new(state, state, state)
			Lighting.Ambient = Color3.new(state, state, state)
		else
			Lighting.OutdoorAmbient = Color3.new(false, false, false)
			Lighting.Ambient = Color3.new(false, false, false)
		end
	end
})
 
Section35:Button({
	Title = "重置所有天气设置",
	Callback = function(state, arg443)
		Lighting.ClockTime = 0
		Lighting.Brightness = 1
		Lighting.FogStart = 0
		Lighting.FogEnd = 0
		Lighting.OutdoorAmbient = Lighting.OutdoorAmbient
		Lighting.Ambient = Color3.fromRGB(127, 127, 127)
		Lighting:GetChildren()
		result:Notify({ Title = "天气", Content = "已重置所有设置", Duration = 2 })
	end
})
 
local Section36 = Tab12:Section({ Title = "购买信号伪造" })
 
Section36:Input({
	Title = "道具/通行证 ID",
	Default = "",
	Placeholder = "输入数字ID...",
	Callback = function(state, arg445)
	end
})
 
Section36:Dropdown({
	Title = "信号类型",
	Value = "Product",
	Values = { "Product", "Gamepass", "Bulk", "Purchase" },
	Callback = function(state, arg447)
	end
})
 
Section36:Button({
	Title = "发送伪造信号",
	Icon = "send",
	Callback = function(state, arg449)
		result:Notify({ Title = "错误", Content = "请先输入有效的商品ID", Duration = 2 })
	end
})
 
Section36:Toggle({
	Title = "自动拦截并重发信号",
	Default = false,
	Callback = function(state, arg451)
	end
})
 
MarketplaceService.PromptProductPurchaseFinished:Connect(function(arg452)
end)
 
MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(arg453)
end)
 
MarketplaceService.PromptBulkPurchaseFinished:Connect(function(arg454)
end)
 
MarketplaceService.PromptPurchaseFinished:Connect(function(arg455)
end)
 
local Workspace = game:FindFirstChildOfClass("Workspace")
 
local Camera = Workspace:FindFirstChild("Camera")
 
local Lighting2 = game:FindFirstChildOfClass("Lighting")
 
local Terrain = Workspace:FindFirstChildOfClass("Terrain")
 
game:FindFirstChildOfClass("UserInputService")
 
local RunService2 = game:FindFirstChildOfClass("RunService")
 
local Players2 = game:FindFirstChildOfClass("Players")
 
local ScreenGui5 = Instance.new("ScreenGui", Players2.LocalPlayer.PlayerGui)
 
local ImageLabel2 = Instance.new("ImageLabel")
 
local result10 = gethiddenproperty(Lighting2, "Technology")
 
sethiddenproperty(Lighting2, "Technology", "ShadowMap")
 
local BloomEffect = Lighting2:FindFirstChildOfClass("BloomEffect")
 
BloomEffect.Enabled = false
 
local clone5 = BloomEffect:Clone()
 
clone5.Parent = Lighting2
 
clone5.Enabled = true
 
local Sky3 = Lighting2:FindFirstChildOfClass("Sky")
 
Sky3.Enabled = false
 
local clone6 = Sky3:Clone()
 
clone6.Parent = Lighting2
 
clone6.Enabled = true
 
local Atmosphere = Lighting2:FindFirstChildOfClass("Atmosphere")
 
Atmosphere.Enabled = false
 
local clone7 = Atmosphere:Clone()
 
clone7.Parent = Lighting2
 
clone7.Enabled = true
 
local BlurEffect = Lighting2:FindFirstChildOfClass("BlurEffect")
 
BlurEffect.Enabled = false
 
BlurEffect.Size = 0
 
local clone8 = BlurEffect:Clone()
 
clone8.Parent = Lighting2
 
clone8.Enabled = true
 
local DepthOfFieldEffect = Lighting2:FindFirstChildOfClass("DepthOfFieldEffect")
 
DepthOfFieldEffect.Enabled = false
 
local clone9 = DepthOfFieldEffect:Clone()
 
clone9.Parent = Lighting2
 
clone9.Enabled = true
 
local ColorCorrectionEffect = Lighting2:FindFirstChildOfClass("ColorCorrectionEffect")
 
ColorCorrectionEffect.Enabled = false
 
local clone10 = ColorCorrectionEffect:Clone()
 
clone10.Parent = Lighting2
 
clone10.Enabled = true
 
local SunRaysEffect = Lighting2:FindFirstChildOfClass("SunRaysEffect")
 
SunRaysEffect.Enabled = false
 
local clone11 = SunRaysEffect:Clone()
 
clone11.Parent = Lighting2
 
clone11.Enabled = true
 
local Clouds = Terrain:FindFirstChildOfClass("Clouds")
 
local clone12 = Clouds:Clone()
 
Terrain.ChildRemoved:Connect(function(child)
end)
 
Lighting2.ChildRemoved:Connect(function(child2)
end)
 
clone5.Name = "vXvJg"
 
clone6.Name = "vXvJg"
 
clone7.Name = "vXvJg"
 
clone8.Name = "vXvJg"
 
clone9.Name = "vXvJg"
 
clone10.Name = "vXvJg"
 
clone11.Name = "vXvJg"
 
clone12.Name = "vXvJg"
 
clone5.Name = "vXvJg"
 
clone6.Name = "vXvJg"
 
clone7.Name = "vXvJg"
 
clone8.Name = "vXvJg"
 
clone9.Name = "vXvJg"
 
clone10.Name = "vXvJg"
 
clone11.Name = "vXvJg"
 
clone12.Name = "vXvJg"
 
local BlurEffect2 = Instance.new("BlurEffect", Camera)
 
BlurEffect2.Size = 0
 
Workspace.Changed:Connect(function(value)
end)
 
ScreenGui5.Name = "flare"
 
ScreenGui5.Enabled = false
 
ScreenGui5.ResetOnSpawn = false
 
ImageLabel2.Parent = ScreenGui5
 
ImageLabel2.Name = "sunfl"
 
ImageLabel2.SizeConstraint = "RelativeYY"
 
ImageLabel2.BackgroundTransparency = 1
 
ImageLabel2.ImageTransparency = 0
 
ImageLabel2.BorderSizePixel = 0
 
ImageLabel2.Image = "rbxassetid://277033149"
 
ImageLabel2.ImageColor3 = Color3.new(1, 1, 0.95)
 
ImageLabel2.ZIndex = 0
 
ImageLabel2.Size = UDim2.new(3, 0, 3, 0)
 
local CoreGui2 = game:FindFirstChildOfClass("CoreGui")
 
ScreenGui5.Parent = CoreGui2
 
local ImageLabel3 = Instance.new("ImageLabel", ScreenGui5)
 
ImageLabel3.Name = "aflare"
 
ImageLabel3.Size = UDim2.new(0.13999999999999999, 0, 0.13999999999999999, 0)
 
ImageLabel3.SizeConstraint = "RelativeYY"
 
ImageLabel3.BackgroundTransparency = 1
 
ImageLabel3.ImageTransparency = 0.8
 
ImageLabel3.BorderSizePixel = 0
 
ImageLabel3.Rotation = -25
 
ImageLabel3.Image = "rbxassetid://15164863822"
 
ImageLabel3.ImageColor3 = Color3.new(1, 1, 0.8)
 
ImageLabel3.ZIndex = -1
 
local ImageLabel4 = Instance.new("ImageLabel", ScreenGui5)
 
ImageLabel4.Name = "aflare"
 
ImageLabel4.Size = UDim2.new(0.040000000000000008, 0, 0.040000000000000008, 0)
 
ImageLabel4.SizeConstraint = "RelativeYY"
 
ImageLabel4.BackgroundTransparency = 1
 
ImageLabel4.ImageTransparency = 0.7
 
ImageLabel4.BorderSizePixel = 0
 
ImageLabel4.Rotation = -25
 
ImageLabel4.Image = "rbxassetid://15164863822"
 
ImageLabel4.ImageColor3 = Color3.new(1, 1, 0.8)
 
ImageLabel4.ZIndex = -1
 
local ImageLabel5 = Instance.new("ImageLabel", ScreenGui5)
 
ImageLabel5.Name = "aflare"
 
ImageLabel5.Size = UDim2.new(0.24, 0, 0.24, 0)
 
ImageLabel5.SizeConstraint = "RelativeYY"
 
ImageLabel5.BackgroundTransparency = 1
 
ImageLabel5.ImageTransparency = 0.9
 
ImageLabel5.BorderSizePixel = 0
 
ImageLabel5.Rotation = -25
 
ImageLabel5.Image = "rbxassetid://15164863822"
 
ImageLabel5.ImageColor3 = Color3.new(1, 1, 0.8)
 
ImageLabel5.ZIndex = -1
 
local ImageLabel6 = Instance.new("ImageLabel", ScreenGui5)
 
ImageLabel6.Name = "aflare"
 
ImageLabel6.Size = UDim2.new(0.090000000000000011, 0, 0.090000000000000011, 0)
 
ImageLabel6.SizeConstraint = "RelativeYY"
 
ImageLabel6.BackgroundTransparency = 1
 
ImageLabel6.ImageTransparency = 0.6
 
ImageLabel6.BorderSizePixel = 0
 
ImageLabel6.Rotation = -25
 
ImageLabel6.Image = "rbxassetid://15164863822"
 
ImageLabel6.ImageColor3 = Color3.new(1, 1, 0.8)
 
ImageLabel6.ZIndex = -1
 
local response16 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/sky/m.json")
 
loadstring(response16)()
 
local response17 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/sky/n.json")
 
loadstring(response17)()
 
local response18 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/sky/a.json")
 
loadstring(response18)()
 
local response19 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/sky/e.json")
 
loadstring(response19)()
 
local response20 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/sky/r.json")
 
loadstring(response20)()
 
local response21 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/sky/c.json")
 
loadstring(response21)()
 
local response22 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/morning.json")
 
loadstring(response22)()
 
local response23 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/midday.json")
 
loadstring(response23)()
 
local response24 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/afternoon.json")
 
loadstring(response24)()
 
local response25 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/evening%2Cjson")
 
loadstring(response25)()
 
local response26 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/night.json")
 
loadstring(response26)()
 
local response27 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/midnight.json")
 
loadstring(response27)()
 
local response28 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/morning1.json")
 
loadstring(response28)()
 
local response29 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/midday1.json")
 
loadstring(response29)()
 
local response30 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/afternoon1.json")
 
loadstring(response30)()
 
local response31 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/evening1.json")
 
loadstring(response31)()
 
local response32 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/night1.json")
 
loadstring(response32)()
 
local response33 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/midnight1.json")
 
loadstring(response33)()
 
local response34 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/black.json")
 
loadstring(response34)()
 
local response35 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/green.json")
 
loadstring(response35)()
 
local response36 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/red.json")
 
loadstring(response36)()
 
local response37 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/yellow.json")
 
loadstring(response37)()
 
local response38 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/pink.json")
 
loadstring(response38)()
 
local response39 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/gray.json")
 
loadstring(response39)()
 
local response40 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/white.json")
 
loadstring(response40)()
 
local response41 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/purple.json")
 
loadstring(response41)()
 
local response42 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/black1.json")
 
loadstring(response42)()
 
local response43 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/green1.json")
 
loadstring(response43)()
 
local response44 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/red1.json")
 
loadstring(response44)()
 
local response45 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/yellow1.json")
 
loadstring(response45)()
 
local response46 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/pink1.json")
 
loadstring(response46)()
 
local response47 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/gray1.json")
 
loadstring(response47)()
 
local response48 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/white1.json")
 
loadstring(response48)()
 
local response49 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/purple1.json")
 
loadstring(response49)()
 
local response50 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/rain.json")
 
loadstring(response50)()
 
local response51 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/snow.json")
 
loadstring(response51)()
 
local response52 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/fog.json")
 
loadstring(response52)()
 
local response53 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/sunny.json")
 
loadstring(response53)()
 
local response54 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/cloudy.json")
 
loadstring(response54)()
 
local response55 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/storm.json")
 
loadstring(response55)()
 
local response56 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/autumn.json")
 
loadstring(response56)()
 
local response57 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/spring.json")
 
loadstring(response57)()
 
local response58 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/summer.json")
 
loadstring(response58)()
 
local response59 = game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/shr/winter.json")
 
loadstring(response59)()
 
local Folder7 = Instance.new("Folder", Workspace)
 
Folder7.Name = "1sp34"
 
RunService2.PreRender:Connect(function(deltaTime33)
	 
	clone6.SkyboxBk = clone6.SkyboxBk
	 
	clone6.SkyboxDn = clone6.SkyboxDn
	 
	clone6.SkyboxFt = clone6.SkyboxFt
	 
	clone6.SkyboxLf = clone6.SkyboxLf
	 
	clone6.SkyboxRt = clone6.SkyboxRt
	 
	clone6.SkyboxUp = clone6.SkyboxUp
	 
	clone7.Density = 0
	 
	clone7.Offset = 0
	 
	clone7.Color = Color3.new(1, 1, 1)
	 
	clone7.Decay = Color3.new(1, 1, 1)
	 
	clone7.Glare = 0
	 
	clone7.Haze = 0
	 
	clone12.Cover = 0
	 
	clone12.Density = 0
	 
	clone12.Color = Color3.new(1, 1, 1)
	 
	Lighting2.Ambient = Lighting2.Ambient
	 
	Lighting2.ClockTime = Lighting2.ClockTime
	 
	Lighting2.GeographicLatitude = Lighting2.GeographicLatitude
	 
	Lighting2.Brightness = Lighting2.Brightness
	 
	Lighting2.ColorShift_Bottom = Lighting2.ColorShift_Bottom
	 
	Lighting2.ColorShift_Top = Lighting2.ColorShift_Top
	 
	Lighting2.EnvironmentDiffuseScale = Lighting2.EnvironmentDiffuseScale
	 
	Lighting2.EnvironmentSpecularScale = Lighting2.EnvironmentSpecularScale
	 
	Lighting2.GlobalShadows = Lighting2.GlobalShadows
	 
	Lighting2.OutdoorAmbient = Lighting2.OutdoorAmbient
	 
	Lighting2.ExposureCompensation = Lighting2.ExposureCompensation
	 
	Lighting2.FogEnd = Lighting2.FogEnd
	 
	Lighting2.FogColor = Lighting2.FogColor
	 
	Lighting2.FogStart = Lighting2.FogStart
	 
	Terrain.WaterReflectance = Terrain.WaterReflectance
	 
	Terrain.WaterTransparency = Terrain.WaterTransparency
	 
	Terrain.WaterWaveSize = Terrain.WaterWaveSize
	 
	Terrain.WaterWaveSpeed = Terrain.WaterWaveSpeed
	 
	ScreenGui5.Enabled = false
	 
	connection52:Disconnect()
end)
 
Tab17:Toggle({
	Title = "开启光影",
	Value = true,
	Callback = function(state, arg457)
		if state then
			local connection52 = RunService2.PreRender:Connect(function(deltaTime34)
			end)
			Workspace:GetDescendants()
			sethiddenproperty(Lighting2, "Technology", "ShadowMap")
		else
			Workspace:GetDescendants()
			sethiddenproperty(Lighting2, "Technology", result10)
		end
	end
})
 
Tab17:Dropdown({
	Title = "光影预设",
	Value = "默认",
	Values = {
		"默认",
		"早晨",
		"正午",
		"下午",
		"傍晚",
		"夜晚",
		"午夜",
		"早晨(轻)",
		"正午(轻)",
		"下午(轻)",
		"傍晚(轻)",
		"夜晚(轻)",
		"午夜(轻)",
		"黑色",
		"绿色",
		"红色",
		"黄色",
		"粉色",
		"灰色",
		"白色",
		"紫色",
		"黑色(轻)",
		"绿色(轻)",
		"红色(轻)",
		"黄色(轻)",
		"粉色(轻)",
		"灰色(轻)",
		"白色(轻)",
		"紫色(轻)",
		"雨",
		"雪",
		"雾",
		"晴天",
		"多云",
		"风暴",
		"秋天",
		"春天",
		"夏天",
		"冬天"
	},
	Callback = function(state, arg459)
	end
})
 
Tab17:Dropdown({
	Title = "天空盒",
	Value = "默认",
	Values = { "默认", "早晨", "正午", "下午", "傍晚", "雨", "多云", "游戏原版" },
	Callback = function(state, arg461)
	end
})
 
Tab17:Toggle({
	Title = "全局光照",
	Value = false,
	Callback = function(state, arg463)
	end
})
 
Tab17:Dropdown({
	Title = "光影技术",
	Value = "阴影贴图",
	Values = { "未来", "阴影贴图", "兼容", "旧版", "体素" },
	Callback = function(state, arg465)
	end
})
 
Tab17:Slider({
	Title = "时钟时间",
	Value = { Default = (Lighting2.ClockTime * 10), Float = 1, Max = 240, Min = 0 },
	Callback = function(arg466, arg467)
	end
})
 
Tab17:Slider({
	Title = "地理纬度",
	Value = { Default = (Lighting2.GeographicLatitude * 10), Float = 1, Max = 1800, Min = 0 },
	Callback = function(arg468, arg469)
	end
})
 
Tab17:Slider({
	Title = "云覆盖",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg470, arg471)
	end
})
 
Tab17:Slider({
	Title = "云密度",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg472, arg473)
	end
})
 
Tab17:Slider({
	Title = "大气密度",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg474, arg475)
	end
})
 
Tab17:Slider({
	Title = "大气偏移",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg476, arg477)
	end
})
 
Tab17:Slider({
	Title = "大气眩光",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg478, arg479)
	end
})
 
Tab17:Slider({
	Title = "大气雾霾",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg480, arg481)
	end
})
 
Tab17:Toggle({
	Title = "景深效果",
	Value = false,
	Callback = function(state, arg483)
		if state then
			clone9.Enabled = state
		else
			clone9.Enabled = false
		end
	end
})
 
Tab17:Slider({
	Title = "景深远强度",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg484, arg485)
	end
})
 
Tab17:Slider({
	Title = "景深焦距",
	Value = { Default = 0, Float = 1, Max = 200, Min = 0 },
	Callback = function(state, arg487)
	end
})
 
Tab17:Slider({
	Title = "景深清晰半径",
	Value = { Default = 0, Float = 1, Max = 500, Min = 0 },
	Callback = function(arg488, arg489)
	end
})
 
Tab17:Slider({
	Title = "景深近强度",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg490, arg491)
	end
})
 
Tab17:Toggle({
	Title = "太阳光线",
	Value = false,
	Callback = function(state, arg493)
		if state then
			clone11.Enabled = state
		else
			clone11.Enabled = false
		end
	end
})
 
Tab17:Slider({
	Title = "太阳光线强度",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg494, arg495)
		 
		clone11.Intensity = (arg494 / 100)
	end
})
 
Tab17:Slider({
	Title = "太阳光线扩散",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg496, arg497)
		 
		clone11.Spread = (arg496 / 100)
	end
})
 
Tab17:Toggle({
	Title = "色彩校正",
	Value = false,
	Callback = function(state, arg499)
		if state then
			clone10.Enabled = state
		else
			clone10.Enabled = false
		end
	end
})
 
Tab17:Slider({
	Title = "色彩校正亮度",
	Value = { Default = 0, Float = 1, Max = 100, Min = -100 },
	Callback = function(arg500, arg501)
	end
})
 
Tab17:Slider({
	Title = "色彩校正对比度",
	Value = { Default = 0, Float = 1, Max = 100, Min = -100 },
	Callback = function(arg502, arg503)
	end
})
 
Tab17:Slider({
	Title = "色彩校正饱和度",
	Value = { Default = 0, Float = 1, Max = 100, Min = -100 },
	Callback = function(arg504, arg505)
	end
})
 
Tab17:Toggle({
	Title = "模糊效果",
	Value = false,
	Callback = function(state, arg507)
		if state then
			clone8.Enabled = state
		else
			clone8.Enabled = false
		end
	end
})
 
Tab17:Slider({
	Title = "模糊大小",
	Value = { Default = 0, Float = 1, Max = 56, Min = 0 },
	Callback = function(state, arg509)
	end
})
 
Tab17:Toggle({
	Title = "泛光效果",
	Value = false,
	Callback = function(state, arg511)
		if state then
			clone5.Enabled = state
		else
			clone5.Enabled = false
		end
	end
})
 
Tab17:Slider({
	Title = "泛光强度",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg512, arg513)
	end
})
 
Tab17:Slider({
	Title = "泛光大小",
	Value = { Default = 0, Float = 1, Max = 56, Min = 0 },
	Callback = function(state, arg515)
	end
})
 
Tab17:Slider({
	Title = "泛光阈值",
	Value = { Default = 100, Float = 1, Max = 400, Min = 0 },
	Callback = function(arg516, arg517)
	end
})
 
Tab17:Toggle({
	Title = "太阳耀斑",
	Value = false,
	Callback = function(state, arg519)
	end
})
 
Tab17:Toggle({
	Title = "运动模糊",
	Value = false,
	Callback = function(state, arg521)
	end
})
 
Tab17:Slider({
	Title = "运动模糊大小",
	Value = { Default = 26, Float = 1, Max = 100, Min = 0 },
	Callback = function(state, arg523)
	end
})
 
Tab17:Slider({
	Title = "反射",
	Value = { Default = 0, Float = 1, Max = 100, Min = 0 },
	Callback = function(arg524, arg525)
	end
})
 
Tab17:Slider({
	Title = "水面波速",
	Value = { Default = Terrain.WaterWaveSpeed, Float = 1, Max = 100, Min = 0 },
	Callback = function(state, arg527)
	end
})
 
Tab17:Slider({
	Title = "水面透明度",
	Value = { Default = (Terrain.WaterTransparency * 100), Float = 1, Max = 100, Min = 0 },
	Callback = function(state, arg529)
	end
})
 
Tab17:Slider({
	Title = "水面波纹大小",
	Value = { Default = (Terrain.WaterWaveSize * 10), Float = 1, Max = 400, Min = 0 },
	Callback = function(state, arg531)
	end
})
 
task.wait(1)
 
local Workspace2 = game:FindFirstChildOfClass("Workspace")
 
local Players3 = game:FindFirstChildOfClass("Players")
 
local RunService3 = game:FindFirstChildOfClass("RunService")
 
Tab16:Toggle({
	Title = "删除建筑物光环",
	Value = false,
	Callback = function(state, arg533)
		if state then
			OverlapParams.new().FilterType = Enum.RaycastFilterType.Exclude
			OverlapParams.new().FilterDescendantsInstances = { Players3.LocalPlayer.Character }
			local connection53 = RunService3.Heartbeat:Connect(function(deltaTime35)
				local HumanoidRootPart28 = Players3.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				OverlapParams.new().FilterDescendantsInstances = { Players3.LocalPlayer.Character }
				local parts = Workspace2:GetPartBoundsInRadius(HumanoidRootPart28.Position, false, OverlapParams.new())
				for i217, v240 in ipairs(parts) do
				end
			end)
		else
			connection53:Disconnect()
		end
	end
})
 
Tab16:Toggle({
	Title = "光环删除地板",
	Value = true,
	Callback = function(state, arg535)
	end
})
 
Tab16:Slider({
	Title = "删除光环范围",
	Value = { Default = 10, Float = 1, Max = 100, Min = 5 },
	Callback = function(state, arg537)
	end
})
 
Tab16:Toggle({
	Title = "透视建筑物",
	Value = false,
	Callback = function(state, arg539)
		if state then
			local descendants149 = Workspace2:GetDescendants()
			for i166, v189 in ipairs(descendants149) do
			end
			local connection54 = Workspace2.DescendantAdded:Connect(function(descendant15)
			end)
			local connection55 = Workspace2.DescendantRemoving:Connect(function(descendant16)
			end)
		else
			connection54:Disconnect()
			connection55:Disconnect()
		end
	end
})
 
Tab16:Button({
	Title = "删除所有门",
	Callback = function(state, arg541)
		if state then
			local players23 = Players3:GetPlayers()
			for i167, v190 in ipairs(players23) do
				local descendants150 = v190.Character:GetDescendants()
				for i168, v191 in ipairs(descendants150) do
				end
			end
			local descendants151 = Workspace2:GetDescendants()
			for i169, v192 in ipairs(descendants151) do
			end
		else
			local players24 = Players3:GetPlayers()
			for i170, v193 in ipairs(players24) do
				local descendants152 = v193.Character:GetDescendants()
				for i171, v194 in ipairs(descendants152) do
				end
			end
			local descendants153 = Workspace2:GetDescendants()
			for i172, v195 in ipairs(descendants153) do
			end
		end
	end
})
 
Tab16:Button({
	Title = "删除所有墙",
	Callback = function(state, arg543)
		if state then
			local players25 = Players3:GetPlayers()
			for i173, v196 in ipairs(players25) do
				local descendants154 = v196.Character:GetDescendants()
				for i174, v197 in ipairs(descendants154) do
				end
			end
			local descendants155 = Workspace2:GetDescendants()
			for i175, v198 in ipairs(descendants155) do
			end
			local players26 = Players3:GetPlayers()
			for i176, v199 in ipairs(players26) do
				local descendants156 = v199.Character:GetDescendants()
				for i177, v200 in ipairs(descendants156) do
				end
			end
			local descendants157 = Workspace2:GetDescendants()
			for i178, v201 in ipairs(descendants157) do
			end
		else
			local players27 = Players3:GetPlayers()
			for i179, v202 in ipairs(players27) do
				local descendants158 = v202.Character:GetDescendants()
				for i180, v203 in ipairs(descendants158) do
				end
			end
			local descendants159 = Workspace2:GetDescendants()
			for i181, v204 in ipairs(descendants159) do
			end
			local players28 = Players3:GetPlayers()
			for i182, v205 in ipairs(players28) do
				local descendants160 = v205.Character:GetDescendants()
				for i183, v206 in ipairs(descendants160) do
				end
			end
			local descendants161 = Workspace2:GetDescendants()
			for i184, v207 in ipairs(descendants161) do
			end
		end
	end
})
 
Tab16:Button({
	Title = "删除所有地板",
	Callback = function(state, arg545)
		if state then
			local players29 = Players3:GetPlayers()
			for i185, v208 in ipairs(players29) do
				local descendants162 = v208.Character:GetDescendants()
				for i186, v209 in ipairs(descendants162) do
				end
			end
			local descendants163 = Workspace2:GetDescendants()
			for i187, v210 in ipairs(descendants163) do
			end
		else
			local players30 = Players3:GetPlayers()
			for i188, v211 in ipairs(players30) do
				local descendants164 = v211.Character:GetDescendants()
				for i189, v212 in ipairs(descendants164) do
				end
			end
			local descendants165 = Workspace2:GetDescendants()
			for i190, v213 in ipairs(descendants165) do
			end
		end
	end
})
 
Tab16:Button({
	Title = "删除所有窗户",
	Callback = function(state, arg547)
		if state then
			local players31 = Players3:GetPlayers()
			for i191, v214 in ipairs(players31) do
				local descendants166 = v214.Character:GetDescendants()
				for i192, v215 in ipairs(descendants166) do
				end
			end
			local descendants167 = Workspace2:GetDescendants()
			for i193, v216 in ipairs(descendants167) do
			end
			local players32 = Players3:GetPlayers()
			for i194, v217 in ipairs(players32) do
				local descendants168 = v217.Character:GetDescendants()
				for i195, v218 in ipairs(descendants168) do
				end
			end
			local descendants169 = Workspace2:GetDescendants()
			for i196, v219 in ipairs(descendants169) do
			end
		else
			local players33 = Players3:GetPlayers()
			for i197, v220 in ipairs(players33) do
				local descendants170 = v220.Character:GetDescendants()
				for i198, v221 in ipairs(descendants170) do
				end
			end
			local descendants171 = Workspace2:GetDescendants()
			for i199, v222 in ipairs(descendants171) do
			end
			local players34 = Players3:GetPlayers()
			for i200, v223 in ipairs(players34) do
				local descendants172 = v223.Character:GetDescendants()
				for i201, v224 in ipairs(descendants172) do
				end
			end
			local descendants173 = Workspace2:GetDescendants()
			for i202, v225 in ipairs(descendants173) do
			end
		end
	end
})
 
Tab16:Button({
	Title = "所有建筑物未锚定",
	Callback = function(state, arg549)
		if state then
			local players35 = Players3:GetPlayers()
			for i203, v226 in ipairs(players35) do
				local descendants174 = v226.Character:GetDescendants()
				for i204, v227 in ipairs(descendants174) do
				end
			end
			local descendants175 = Workspace2:GetDescendants()
			for i205, v228 in ipairs(descendants175) do
			end
		else
			local players36 = Players3:GetPlayers()
			for i206, v229 in ipairs(players36) do
				local descendants176 = v229.Character:GetDescendants()
				for i207, v230 in ipairs(descendants176) do
				end
			end
			local descendants177 = Workspace2:GetDescendants()
			for i208, v231 in ipairs(descendants177) do
			end
		end
	end
})
 
local Paragraph4 = Tab15:Paragraph({ Title = "服务器ID: " .. game.JobId, Desc = "" })
 
Tab15:Button({
	Title = "复制服务器ID",
	Callback = function(state, arg551)
		setclipboard(tostring(game.JobId))
	end
})
 
Tab15:Button({
	Title = "刷新服务器信息",
	Callback = function(state, arg553)
		Paragraph4.Title = "服务器ID: " .. game.JobId
	end
})
 
Tab15:Input({
	Title = "输入服务器ID",
	Value = "",
	Callback = function(state, arg555)
	end
})
 
Tab15:Button({
	Title = "传送至该服务器ID",
	Callback = function(state, arg557)
	end
})
 
Tab15:Button({
	Title = "Server Hop",
	Callback = function(state, arg559)
		if state then
			local response60 = HttpService:GetAsync("https://games.roblox.com/v1/games/0/servers/Public?limit=100&sortOrder=Asc")
			local data = HttpService:JSONDecode(response60)
			for i209, v232 in ipairs(data.data) do
			end
			TeleportService:TeleportToPlaceInstance(0, v232.id, Players.LocalPlayer)
		else
			local response61 = HttpService:GetAsync("https://games.roblox.com/v1/games/0/servers/Public?limit=100&sortOrder=Asc")
			local data2 = HttpService:JSONDecode(response61)
			for i210, v233 in ipairs(data2.data) do
			end
			TeleportService:TeleportToPlaceInstance(0, v233.id, Players.LocalPlayer)
		end
	end
})
 
Tab15:Button({
	Title = "切换到最少人服务器",
	Callback = function(state, arg561)
		if state then
			local response62 = HttpService:GetAsync("https://games.roblox.com/v1/games/0/servers/Public?limit=100&sortOrder=Asc")
			local data3 = HttpService:JSONDecode(response62)
			for i211, v234 in ipairs(data3.data) do
			end
			TeleportService:TeleportToPlaceInstance(0, v234.id, Players.LocalPlayer)
		else
			local response63 = HttpService:GetAsync("https://games.roblox.com/v1/games/0/servers/Public?limit=100&sortOrder=Asc")
			local data4 = HttpService:JSONDecode(response63)
			for i212, v235 in ipairs(data4.data) do
			end
			TeleportService:TeleportToPlaceInstance(0, v235.id, Players.LocalPlayer)
		end
	end
})
 
Tab15:Button({
	Title = "随机切换服务器",
	Callback = function(state, arg563)
		if state then
			local response64 = HttpService:GetAsync("https://games.roblox.com/v1/games/0/servers/Public?limit=100&sortOrder=Asc")
			local data5 = HttpService:JSONDecode(response64)
			for i213, v236 in ipairs(data5.data) do
			end
			TeleportService:TeleportToPlaceInstance(0, v236.id, Players.LocalPlayer)
		else
			local response65 = HttpService:GetAsync("https://games.roblox.com/v1/games/0/servers/Public?limit=100&sortOrder=Asc")
			local data6 = HttpService:JSONDecode(response65)
			for i214, v237 in ipairs(data6.data) do
			end
			TeleportService:TeleportToPlaceInstance(0, v237.id, Players.LocalPlayer)
		end
	end
})
 
local Sound2 = Instance.new("Sound")
 
Sound2.Looped = true
 
Sound2.PlaybackRegionsEnabled = false
 
Sound2.Volume = 1
 
Sound2:SetAttribute("Volume", 1)
 
Sound2.Parent = SoundService
 
makefolder("UhhhhhhReanim")
 
makefolder("UhhhhhhReanim/Content")
 
makefolder("UhhhhhhReanim/Content/Anims")
 
makefolder("UhhhhhhReanim/Content/Sounds")
 
makefolder("UhhhhhhReanim/Content/Images")
 
makefolder("UhhhhhhReanim/Content/Models")
 
makefolder("UhhhhhhReanim/Content/Unknown")
 
local Section37 = Tab14:Section({ Title = "舞蹈动作包" })
 
Section37:Dropdown({
	Title = "选择舞蹈",
	Description = "从所有内置舞蹈动作包中选择",
	Default = 1,
	Values = {
		"无",
		"布娃娃",
		"跳绳",
		"后空翻",
		"Headlock",
		"猫咪舞",
		"默认舞蹈",
		"Boogie",
		"老鼠舞",
		"Assumptions",
		"Mesmerizer",
		"Caramelldansen",
		"Hakari's Dance",
		"加州女孩",
		"科目三",
		"Lag Train",
		"江南Style",
		"Distraction Dance",
		"It Burns! Burns! Burns!",
		"Kasane Teto - Igaku",
		"Stocks 股票",
		"DO THE FLOP",
		"Silly Billy",
		"It's Going Down",
		"Results",
		"Birdbrain",
		"泰拉瑞亚摇摆舞",
		"Thriller 惊悚",
		"怪物捣乱",
		"So Retro",
		"Lux",
		"Jitterbug",
		"hacking full roblox",
		"埃及舞",
		"Rambunctious",
		"FNAF Remix",
		"Looping The Rooms",
		"Popipo 波皮波"
	},
	Callback = function(state, arg565)
	end
})
 
Section37:Toggle({
	Title = "停止舞蹈",
	Description = "停止当前正在播放的舞蹈",
	Default = false,
	Callback = function(state, arg567)
	end
})
 
task.spawn(function(...)
	 
	RunService.Heartbeat:Wait()
	 
	RunService.Heartbeat:Wait()
	 
end)
 
local Paragraph5 = Tab13:Paragraph({ Title = "当前位置坐标", Desc = "0, 0, 0" })
 
Tab13:Paragraph({ Title = "当前CFrame坐标", Desc = "0, 0, 0, 0, 0, 0" })
 
task.spawn(function(...)
	 
	local HumanoidRootPart22 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	Paragraph5:SetDesc(string.format("%.2f, %.2f, %.2f", HumanoidRootPart22.Position.X, HumanoidRootPart22.Position.Y, HumanoidRootPart22.Position.Z))
	 
	HumanoidRootPart22.CFrame:ToEulerAnglesXYZ()
	 
	task.wait(0.1)
	 
	local HumanoidRootPart23 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	Paragraph5:SetDesc(string.format("%.2f, %.2f, %.2f", HumanoidRootPart23.Position.X, HumanoidRootPart23.Position.Y, HumanoidRootPart23.Position.Z))
	 
	HumanoidRootPart23.CFrame:ToEulerAnglesXYZ()
	 
	task.wait(0.1)
	 
end)
 
Tab13:Button({
	Title = "复制位置坐标",
	Callback = function(state, arg569)
		setclipboard(string.format("%.2f, %.2f, %.2f", Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X, Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y, Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z))
	end
})
 
Tab13:Button({
	Title = "复制CFrame坐标",
	Callback = function(arg570, arg571)
		 
		Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:ToEulerAnglesXYZ()
		 
	end
})
 
Tab13:Input({
	Title = "输入目标坐标 (X, Y, Z)",
	Value = "",
	Callback = function(state, arg573)
	end
})
 
Tab13:Button({
	Title = "传送至该坐标",
	Callback = function(arg574, arg575)
		 
	end
})
 
Tab13:Input({
	Title = "输入物品关键词 (例如 Eggs)",
	Value = "",
	Callback = function(state, arg577)
	end
})
 
Tab13:Button({
	Title = "搜索并复制物品坐标",
	Callback = function(arg578, arg579)
		 
	end
})
