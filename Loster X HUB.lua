-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UIScale = Instance.new("UIScale")
local HoverBar = Instance.new("Frame")
local CloseBTN = Instance.new("ImageButton")
local TabBTNs = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local Start = Instance.new("ImageButton")
local Text = Instance.new("TextLabel")
local TabFrames = Instance.new("Frame")
local Start_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Label = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Txt = Instance.new("TextLabel")
local Label_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Txt_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Workspace
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainUI.Name = "MainUI"
MainUI.Parent = ScreenGui
MainUI.AnchorPoint = Vector2.new(0.5, 0.0350000001)
MainUI.BackgroundColor3 = Color3.fromRGB(30, 0, 79)
MainUI.Position = UDim2.new(0.472376108, 0, 0.26720649, 0)
MainUI.Size = UDim2.new(0, 500, 0, 430)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = MainUI

Title.Name = "Title"
Title.Parent = MainUI
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0120000001, 0, 0, 0)
Title.Size = UDim2.new(0, 244, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Loster X HUB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24.000
Title.TextStrokeTransparency = 0.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIScale.Parent = MainUI

HoverBar.Name = "HoverBar"
HoverBar.Parent = MainUI
HoverBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HoverBar.BackgroundTransparency = 1.000
HoverBar.Size = UDim2.new(0, 460, 0, 25)

CloseBTN.Name = "CloseBTN"
CloseBTN.Parent = MainUI
CloseBTN.AnchorPoint = Vector2.new(0.5, 0.5)
CloseBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseBTN.BackgroundTransparency = 1.000
CloseBTN.Position = UDim2.new(0.973999977, 0, 0.0279069766, 0)
CloseBTN.Size = UDim2.new(0, 25, 0, 25)
CloseBTN.Image = "rbxassetid://10002373478"

TabBTNs.Name = "TabBTNs"
TabBTNs.Parent = MainUI
TabBTNs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabBTNs.BackgroundTransparency = 1.000
TabBTNs.Position = UDim2.new(0, 0, 0.0581395365, 0)
TabBTNs.Size = UDim2.new(0, 125, 0, 395)

UIGridLayout.Parent = TabBTNs
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0, 125, 0, 35)

Start.Name = "Start"
Start.Parent = TabBTNs
Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Start.BackgroundTransparency = 1.000
Start.BorderSizePixel = 0
Start.Size = UDim2.new(0, 100, 0, 100)

Text.Name = "Text"
Text.Parent = Start
Text.Active = true
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0.5, 0, 0.5, 0)
Text.Size = UDim2.new(1, 0, 1, 0)
Text.Font = Enum.Font.SourceSansBold
Text.Text = "Start"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 14.000
Text.TextStrokeTransparency = 0.000

TabFrames.Name = "TabFrames"
TabFrames.Parent = MainUI
TabFrames.AnchorPoint = Vector2.new(0.5, 0.5)
TabFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabFrames.BackgroundTransparency = 1.000
TabFrames.Position = UDim2.new(0.624750018, 0, 0.525581419, 0)
TabFrames.Size = UDim2.new(0, 375, 0, 395)

Start_2.Name = "Start"
Start_2.Parent = TabFrames
Start_2.AnchorPoint = Vector2.new(0.5, 0.5)
Start_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Start_2.BackgroundTransparency = 0.900
Start_2.Position = UDim2.new(0.499666661, 0, 0.5, 0)
Start_2.Size = UDim2.new(1, 0, 1, 0)

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Start_2

UIListLayout.Parent = Start_2
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Label.Name = "Label"
Label.Parent = Start_2
Label.AnchorPoint = Vector2.new(0.5, 0.5)
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 0.900
Label.Size = UDim2.new(0, 375, 0, 20)

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Label

Txt.Name = "Txt"
Txt.Parent = Label
Txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Txt.BackgroundTransparency = 1.000
Txt.Size = UDim2.new(1, 0, 1, 0)
Txt.Font = Enum.Font.SourceSansBold
Txt.Text = "Loster X HUB"
Txt.TextColor3 = Color3.fromRGB(255, 255, 255)
Txt.TextSize = 14.000
Txt.TextStrokeTransparency = 0.000

Label_2.Name = "Label"
Label_2.Parent = Start_2
Label_2.AnchorPoint = Vector2.new(0.5, 0.5)
Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_2.BackgroundTransparency = 0.900
Label_2.Size = UDim2.new(0, 375, 0, 20)

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Label_2

Txt_2.Name = "Txt"
Txt_2.Parent = Label_2
Txt_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Txt_2.BackgroundTransparency = 1.000
Txt_2.Size = UDim2.new(1, 0, 1, 0)
Txt_2.Font = Enum.Font.SourceSansBold
Txt_2.Text = "Loster X HUB"
Txt_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Txt_2.TextSize = 14.000
Txt_2.TextStrokeTransparency = 0.000

-- Scripts:

local function WAQCPB_fake_script() -- HoverBar.Manager 
	local script = Instance.new('LocalScript', HoverBar)

	local Clicked = false
	local Hover = false
	
	script.Parent.MouseEnter:Connect(function()
		Hover = true
	end)
	
	script.Parent.MouseLeave:Connect(function()
		Hover = false
	end)
	
	game:GetService("UserInputService").InputBegan:Connect(function(v)
		if v.UserInputType == Enum.UserInputType.MouseButton1 and Hover then
			Clicked = true
		end
	end)
	
	game:GetService("UserInputService").InputEnded:Connect(function(v)
		if v.UserInputType == Enum.UserInputType.MouseButton1 then
			Clicked = false
		end
	end)
	
	while wait() do
		if Clicked then
			game:GetService("TweenService"):Create(script.Parent.Parent, TweenInfo.new(0.075, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {Position = UDim2.new(0, game.Players.LocalPlayer:GetMouse().X, 0, game.Players.LocalPlayer:GetMouse().Y)}):Play()
		end
	end
end
coroutine.wrap(WAQCPB_fake_script)()
local function PIOK_fake_script() -- CloseBTN.Manager 
	local script = Instance.new('LocalScript', CloseBTN)

	script.Parent.MouseEnter:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Rotation = 90, Size = UDim2.new(0, 45, 0, 45), ImageColor3 = Color3.fromRGB(255, 20, 20)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Rotation = 0, Size = UDim2.new(0, 25, 0, 25), ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		game:GetService("TweenService"):Create(script.Parent.Parent.UIScale, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Scale = 0}):Play()
		wait(2)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(PIOK_fake_script)()
local function XPFQ_fake_script() -- TabBTNs.Manager 
	local script = Instance.new('LocalScript', TabBTNs)

	for i, v in pairs(script.Parent:GetChildren()) do
		if v:IsA("ImageButton") then
			local clicked = false
			if v.Name == "Start" then
				clicked = true
				v.BackgroundTransparency = 0.6
			end
			v.MouseEnter:Connect(function()
				if not clicked then
					game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75}):Play()
				end
			end)
			
			v.MouseLeave:Connect(function()
				if not clicked then
					game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 1}):Play()
				end
			end)
			
			v.MouseButton1Up:Connect(function()
				clicked = true
				for i, b in pairs(script.Parent:GetChildren()) do
					if b:IsA("ImageButton") then
						game:GetService("TweenService"):Create(b, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 1}):Play()
					end
				end
				game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5}):Play()
				for i, b in pairs(script.Parent.Parent.TabFrames:GetChildren()) do
					b.Visible = false
					if b.Name == v.Name then
						b.Visible = true
					end
				end
			end)
		end
	end
	
	for i, v in pairs(script.Parent.Parent.TabFrames:GetChildren()) do
		v.Visible = false
		if v.Name == "Start" then
			v.Visible = true
		end
	end
end
coroutine.wrap(XPFQ_fake_script)()
local function FVKDNW_fake_script() -- Txt_2.LocalScript 
	local script = Instance.new('LocalScript', Txt_2)

	script.Parent.Text = "Universal - "..game.PlaceId
end
coroutine.wrap(FVKDNW_fake_script)()
