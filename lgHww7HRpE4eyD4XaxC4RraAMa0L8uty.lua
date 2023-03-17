game.StarterGui:SetCore("SendNotification", {
    Title = "LXH",
    Text = "Make Sure You are fully Loaded Before Opening LXH.",
    Duration = 5
})

_G.HUBSize = 1
_G.PerformanceMode = false
_G.PatchNotes = "Official Release."
_G.HUBName = "Loster X HUB"
_G.HUBSize = 1
_G.PerformanceMode = false

-- Variables --
_G.ZombieESP = false
_G.PerkESP = false
_G.ZombieInfoText = false
_G.PerkInfoText = false
_G.BoxESP = false
_G.BoxInfoText = false
_G.AutoReload = false
_G.CircleRadius = 50
_G.ShowCircle = false
_G.AimBot = false
_G.AimPart = "Head"

local NotLoaded = false

if not game.Workspace.Ignore:FindFirstChild("Camera"):FindFirstChild("ArmRig") then
    NotLoaded = true
else
    NotLoaded = false
end

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Version = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local Bar_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UICorner_3 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local Info = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Name = "lR0aDGsThllQhWODPEwUgcQZOcnj3jbv"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.499742657, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 235, 0, 235)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 235, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "[Error - 0]"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24.000
Title.TextStrokeTransparency = 0.000

Version.Name = "Version"
Version.Parent = Frame
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.Position = UDim2.new(0.0255319141, 0, 0.893617034, 0)
Version.Size = UDim2.new(0, 87, 0, 25)
Version.Font = Enum.Font.SourceSansBold
Version.Text = "[Error - 0]"
Version.TextColor3 = Color3.fromRGB(255, 255, 255)
Version.TextSize = 12.000
Version.TextTransparency = 0.800
Version.TextXAlignment = Enum.TextXAlignment.Left

Bar.Name = "Bar"
Bar.Parent = Frame
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BackgroundTransparency = 0.800
Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
Bar.ClipsDescendants = true
Bar.Position = UDim2.new(0.136170208, 0, 0.740425527, 0)
Bar.Size = UDim2.new(0, 170, 0, 30)

Bar_2.Name = "Bar"
Bar_2.Parent = Bar
Bar_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar_2.Position = UDim2.new(0.00588235259, 0, 0, 0)
Bar_2.Size = UDim2.new(0, 170, 0, 30)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = Bar_2

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(70, 255, 70)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 225, 0))}
UIGradient.Rotation = 90
UIGradient.Parent = Bar_2

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = Bar

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(155, 65, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(125, 0, 208))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = Frame

Info.Name = "Info"
Info.Parent = Frame
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.Position = UDim2.new(0.314893633, 0, 0.608510673, 0)
Info.Size = UDim2.new(0, 87, 0, 25)
Info.Font = Enum.Font.SourceSansBold
Info.Text = _G.LoadingInfo[1]
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextSize = 14.000
Info.TextTransparency = 0.500

-- Scripts:

local function PYMCRF_fake_script() -- Frame.Manage 
    local script = Instance.new('LocalScript', Frame)
    
    --//-- Variables --\\--
    local Title = script.Parent.Title
    local Update = script.Parent.Version
    local Frame = script.Parent
    local BarBack = script.Parent.Bar
    local Bar = BarBack.Bar
    local InfoText = script.Parent.Info
    local TS = game:GetService("TweenService")
    
    --//-- Scripts --\\--
    Title.Text = "Loster X ".._G.UIName
    Update.Text = _G.Version
    
    Frame.Size = UDim2.new(0, 0, 0, 0)
    Title.Transparency = 1
    Title.TextStrokeTransparency = 1
    Update.Transparency = 1
    BarBack.Transparency = 1
    Bar.Size = UDim2.new(0, 0, 0, 30)
    Bar.Visible = false
    InfoText.TextTransparency = 1
    
    wait(1)
    
    TS:Create(Frame, TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 235, 0, 235)}):Play()
    
    wait(1)
    
    TS:Create(Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {TextTransparency = 0, TextStrokeTransparency = 0}):Play()
    TS:Create(Update, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {TextTransparency = 0.8}):Play()
    TS:Create(BarBack, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Transparency = 0.75}):Play()
    TS:Create(InfoText, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {TextTransparency = 0.5}):Play()
    
    wait(0.45)
    
    Bar.Visible = true
    
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 30, 0, 30)}):Play()
    InfoText.Text = _G.LoadingInfo[1]
    wait(0.35)
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 85, 0, 30)}):Play()
    InfoText.Text = _G.LoadingInfo[2]
    wait(0.15)
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 100, 0, 30)}):Play()
    InfoText.Text = _G.LoadingInfo[3]
    wait(0.45)
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 115, 0, 30)}):Play()
    InfoText.Text = _G.LoadingInfo[4]
    wait(0.15)
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 130, 0, 30)}):Play()
    InfoText.Text = _G.LoadingInfo[5]
    wait(0.35)
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 160, 0, 30)}):Play()
    InfoText.Text = _G.LoadingInfo[6]
    wait(0.55)
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 170, 0, 30)}):Play()
    InfoText.Text = _G.LoadingInfo[7]
    
    wait(1)
    
    TS:Create(Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
    TS:Create(Update, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play()
    TS:Create(BarBack, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {Transparency = 1}):Play()
    TS:Create(InfoText, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play()
    TS:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {Transparency = 1}):Play()
    
    wait(0.75)
    
    TS:Create(Frame, TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    wait(5)
    Frame:Destroy()
    
end
coroutine.wrap(PYMCRF_fake_script)()

wait(8)

local RunHUB = function()
    -- Instances:

    local _0aGqpAEEbvcXZZVNgNGd8DME556mrJIz = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local Title = Instance.new("TextLabel")
    local BTNFrame = Instance.new("Frame")
    local AStart = Instance.new("Frame")
    local BTN = Instance.new("TextButton")
    local Background = Instance.new("Frame")
    local Text = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local UIGridLayout = Instance.new("UIGridLayout")
    local BAimBot = Instance.new("Frame")
    local BTN_2 = Instance.new("TextButton")
    local Background_2 = Instance.new("Frame")
    local Text_2 = Instance.new("TextLabel")
    local UICorner_2 = Instance.new("UICorner")
    local CVisuals = Instance.new("Frame")
    local BTN_3 = Instance.new("TextButton")
    local Background_3 = Instance.new("Frame")
    local Text_3 = Instance.new("TextLabel")
    local UICorner_3 = Instance.new("UICorner")
    local DUI = Instance.new("Frame")
    local BTN_4 = Instance.new("TextButton")
    local Background_4 = Instance.new("Frame")
    local Text_4 = Instance.new("TextLabel")
    local UICorner_4 = Instance.new("UICorner")
    local TabsFrame = Instance.new("Frame")
    local AStart_2 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local Frame_2 = Instance.new("ScrollingFrame")
    local UIGridLayout_2 = Instance.new("UIGridLayout")
    local BTextLabel = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local Background_5 = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local Text_5 = Instance.new("TextLabel")
    local CTextLabel = Instance.new("Frame")
    local UICorner_8 = Instance.new("UICorner")
    local Background_6 = Instance.new("Frame")
    local UICorner_9 = Instance.new("UICorner")
    local Text_6 = Instance.new("TextLabel")
    local ATextLabel = Instance.new("Frame")
    local UICorner_10 = Instance.new("UICorner")
    local Text_7 = Instance.new("TextLabel")
    local DTextLabel = Instance.new("Frame")
    local UICorner_11 = Instance.new("UICorner")
    local Background_7 = Instance.new("Frame")
    local UICorner_12 = Instance.new("UICorner")
    local Text_8 = Instance.new("TextLabel")
    local UICorner_13 = Instance.new("UICorner")
    local CVisuals_2 = Instance.new("Frame")
    local UICorner_14 = Instance.new("UICorner")
    local Frame_3 = Instance.new("ScrollingFrame")
    local UIGridLayout_3 = Instance.new("UIGridLayout")
    local ATextLabel_2 = Instance.new("Frame")
    local UICorner_15 = Instance.new("UICorner")
    local Text_9 = Instance.new("TextLabel")
    local BToggle = Instance.new("Frame")
    local Background_8 = Instance.new("Frame")
    local UICorner_16 = Instance.new("UICorner")
    local Text_10 = Instance.new("TextLabel")
    local BTN_5 = Instance.new("TextButton")
    local Outline = Instance.new("ImageLabel")
    local Ball = Instance.new("ImageLabel")
    local CToggle = Instance.new("Frame")
    local Background_9 = Instance.new("Frame")
    local UICorner_17 = Instance.new("UICorner")
    local Text_11 = Instance.new("TextLabel")
    local BTN_6 = Instance.new("TextButton")
    local Outline_2 = Instance.new("ImageLabel")
    local Ball_2 = Instance.new("ImageLabel")
    local EToggle = Instance.new("Frame")
    local Background_10 = Instance.new("Frame")
    local UICorner_18 = Instance.new("UICorner")
    local Text_12 = Instance.new("TextLabel")
    local BTN_7 = Instance.new("TextButton")
    local Outline_3 = Instance.new("ImageLabel")
    local Ball_3 = Instance.new("ImageLabel")
    local FToggle = Instance.new("Frame")
    local Background_11 = Instance.new("Frame")
    local UICorner_19 = Instance.new("UICorner")
    local Text_13 = Instance.new("TextLabel")
    local BTN_8 = Instance.new("TextButton")
    local Outline_4 = Instance.new("ImageLabel")
    local Ball_4 = Instance.new("ImageLabel")
    local DToggle = Instance.new("Frame")
    local Background_12 = Instance.new("Frame")
    local UICorner_20 = Instance.new("UICorner")
    local Text_14 = Instance.new("TextLabel")
    local BTN_9 = Instance.new("TextButton")
    local Outline_5 = Instance.new("ImageLabel")
    local Ball_5 = Instance.new("ImageLabel")
    local GToggle = Instance.new("Frame")
    local Background_13 = Instance.new("Frame")
    local UICorner_21 = Instance.new("UICorner")
    local Text_15 = Instance.new("TextLabel")
    local BTN_10 = Instance.new("TextButton")
    local Outline_6 = Instance.new("ImageLabel")
    local Ball_6 = Instance.new("ImageLabel")
    local DUI_2 = Instance.new("Frame")
    local UICorner_22 = Instance.new("UICorner")
    local Frame_4 = Instance.new("ScrollingFrame")
    local UIGridLayout_4 = Instance.new("UIGridLayout")
    local ATextLabel_3 = Instance.new("Frame")
    local UICorner_23 = Instance.new("UICorner")
    local Text_16 = Instance.new("TextLabel")
    local BToggle_2 = Instance.new("Frame")
    local Background_14 = Instance.new("Frame")
    local UICorner_24 = Instance.new("UICorner")
    local Text_17 = Instance.new("TextLabel")
    local BTN_11 = Instance.new("TextButton")
    local Outline_7 = Instance.new("ImageLabel")
    local Ball_7 = Instance.new("ImageLabel")
    local CToggle_2 = Instance.new("Frame")
    local Background_15 = Instance.new("Frame")
    local UICorner_25 = Instance.new("UICorner")
    local Text_18 = Instance.new("TextLabel")
    local BTN_12 = Instance.new("TextButton")
    local Outline_8 = Instance.new("ImageLabel")
    local Ball_8 = Instance.new("ImageLabel")
    local DToggle_2 = Instance.new("Frame")
    local Background_16 = Instance.new("Frame")
    local UICorner_26 = Instance.new("UICorner")
    local Text_19 = Instance.new("TextLabel")
    local BTN_13 = Instance.new("TextButton")
    local Outline_9 = Instance.new("ImageLabel")
    local Ball_9 = Instance.new("ImageLabel")
    local BAimBot_2 = Instance.new("Frame")
    local UICorner_27 = Instance.new("UICorner")
    local Frame_5 = Instance.new("ScrollingFrame")
    local UIGridLayout_5 = Instance.new("UIGridLayout")
    local ATextLabel_4 = Instance.new("Frame")
    local UICorner_28 = Instance.new("UICorner")
    local Text_20 = Instance.new("TextLabel")
    local BToggle_3 = Instance.new("Frame")
    local Background_17 = Instance.new("Frame")
    local UICorner_29 = Instance.new("UICorner")
    local Text_21 = Instance.new("TextLabel")
    local BTN_14 = Instance.new("TextButton")
    local Outline_10 = Instance.new("ImageLabel")
    local Ball_10 = Instance.new("ImageLabel")
    local CTextLabel_2 = Instance.new("Frame")
    local UICorner_30 = Instance.new("UICorner")
    local Text_22 = Instance.new("TextLabel")
    local DToggle_3 = Instance.new("Frame")
    local Background_18 = Instance.new("Frame")
    local UICorner_31 = Instance.new("UICorner")
    local Text_23 = Instance.new("TextLabel")
    local BTN_15 = Instance.new("TextButton")
    local Outline_11 = Instance.new("ImageLabel")
    local Ball_11 = Instance.new("ImageLabel")
    local EToggle_2 = Instance.new("Frame")
    local Background_19 = Instance.new("Frame")
    local UICorner_32 = Instance.new("UICorner")
    local Text_24 = Instance.new("TextLabel")
    local BTN_16 = Instance.new("TextButton")
    local Outline_12 = Instance.new("ImageLabel")
    local Ball_12 = Instance.new("ImageLabel")
    local FToggle_2 = Instance.new("Frame")
    local Background_20 = Instance.new("Frame")
    local UICorner_33 = Instance.new("UICorner")
    local Text_25 = Instance.new("TextLabel")
    local BTN_17 = Instance.new("TextButton")
    local Outline_13 = Instance.new("ImageLabel")
    local Ball_13 = Instance.new("ImageLabel")
    local DragBar = Instance.new("Frame")
    local Close = Instance.new("ImageButton")
    local UICorner_34 = Instance.new("UICorner")
    local UIScale = Instance.new("UIScale")
    local Minimize = Instance.new("ImageButton")

    --Properties:

    _0aGqpAEEbvcXZZVNgNGd8DME556mrJIz.Name = "0aGqpAEEbvcXZZVNgNGd8DME556mrJIz"
    _0aGqpAEEbvcXZZVNgNGd8DME556mrJIz.Parent = game.CoreGui
    _0aGqpAEEbvcXZZVNgNGd8DME556mrJIz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = _0aGqpAEEbvcXZZVNgNGd8DME556mrJIz
    Frame.AnchorPoint = Vector2.new(0.5, 0.0250000004)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.Position = UDim2.new(0.408739626, 0, 0.347560972, 0)
    Frame.Size = UDim2.new(0, 350, 0, 300)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(105, 0, 209)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(60, 0, 117))}
    UIGradient.Rotation = 90
    UIGradient.Parent = Frame

    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Title.Position = UDim2.new(0.0171428565, 0, 0, 0)
    Title.Size = UDim2.new(0, 194, 0, 20)
    Title.Font = Enum.Font.SourceSansBold
    Title.Text = "Loster X HUB"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16.000
    Title.TextStrokeTransparency = 0.000
    Title.TextXAlignment = Enum.TextXAlignment.Left

    BTNFrame.Name = "BTNFrame"
    BTNFrame.Parent = Frame
    BTNFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTNFrame.BackgroundTransparency = 1.000
    BTNFrame.Position = UDim2.new(0.0171428565, 0, 0.0666666701, 0)
    BTNFrame.Size = UDim2.new(0, 85, 0, 275)

    AStart.Name = "A.Start"
    AStart.Parent = BTNFrame
    AStart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AStart.BackgroundTransparency = 1.000
    AStart.Size = UDim2.new(0, 100, 0, 100)

    BTN.Name = "BTN"
    BTN.Parent = AStart
    BTN.AnchorPoint = Vector2.new(0.5, 0.5)
    BTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN.BackgroundTransparency = 1.000
    BTN.Position = UDim2.new(0.5, 0, 0.5, 0)
    BTN.Size = UDim2.new(1, 0, 1, 0)
    BTN.Font = Enum.Font.SourceSans
    BTN.Text = ""
    BTN.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN.TextSize = 14.000

    Background.Name = "Background"
    Background.Parent = BTN
    Background.AnchorPoint = Vector2.new(0.5, 0.5)
    Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background.BackgroundTransparency = 0.750
    Background.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background.Size = UDim2.new(1, 0, 1, 0)

    Text.Name = "Text"
    Text.Parent = Background
    Text.AnchorPoint = Vector2.new(0.5, 0.5)
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.Position = UDim2.new(0.5, 0, 0.5, 0)
    Text.Size = UDim2.new(1, 0, 1, 0)
    Text.Font = Enum.Font.SourceSansBold
    Text.Text = "Start"
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextSize = 16.000
    Text.TextStrokeTransparency = 0.000

    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Background

    UIGridLayout.Parent = BTNFrame
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 85, 0, 25)

    BAimBot.Name = "B.AimBot"
    BAimBot.Parent = BTNFrame
    BAimBot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BAimBot.BackgroundTransparency = 1.000
    BAimBot.Size = UDim2.new(0, 100, 0, 100)

    BTN_2.Name = "BTN"
    BTN_2.Parent = BAimBot
    BTN_2.AnchorPoint = Vector2.new(0.5, 0.5)
    BTN_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_2.BackgroundTransparency = 1.000
    BTN_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    BTN_2.Size = UDim2.new(1, 0, 1, 0)
    BTN_2.Font = Enum.Font.SourceSans
    BTN_2.Text = ""
    BTN_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_2.TextSize = 14.000

    Background_2.Name = "Background"
    Background_2.Parent = BTN_2
    Background_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_2.BackgroundTransparency = 0.750
    Background_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_2.Size = UDim2.new(1, 0, 1, 0)

    Text_2.Name = "Text"
    Text_2.Parent = Background_2
    Text_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_2.BackgroundTransparency = 1.000
    Text_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Text_2.Size = UDim2.new(1, 0, 1, 0)
    Text_2.Font = Enum.Font.SourceSansBold
    Text_2.Text = "AimBot"
    Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_2.TextSize = 16.000
    Text_2.TextStrokeTransparency = 0.000

    UICorner_2.CornerRadius = UDim.new(0, 6)
    UICorner_2.Parent = Background_2

    CVisuals.Name = "C.Visuals"
    CVisuals.Parent = BTNFrame
    CVisuals.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CVisuals.BackgroundTransparency = 1.000
    CVisuals.Size = UDim2.new(0, 100, 0, 100)

    BTN_3.Name = "BTN"
    BTN_3.Parent = CVisuals
    BTN_3.AnchorPoint = Vector2.new(0.5, 0.5)
    BTN_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_3.BackgroundTransparency = 1.000
    BTN_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    BTN_3.Size = UDim2.new(1, 0, 1, 0)
    BTN_3.Font = Enum.Font.SourceSans
    BTN_3.Text = ""
    BTN_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_3.TextSize = 14.000

    Background_3.Name = "Background"
    Background_3.Parent = BTN_3
    Background_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_3.BackgroundTransparency = 0.750
    Background_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_3.Size = UDim2.new(1, 0, 1, 0)

    Text_3.Name = "Text"
    Text_3.Parent = Background_3
    Text_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_3.BackgroundTransparency = 1.000
    Text_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    Text_3.Size = UDim2.new(1, 0, 1, 0)
    Text_3.Font = Enum.Font.SourceSansBold
    Text_3.Text = "Visuals"
    Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_3.TextSize = 16.000
    Text_3.TextStrokeTransparency = 0.000

    UICorner_3.CornerRadius = UDim.new(0, 6)
    UICorner_3.Parent = Background_3

    DUI.Name = "D.UI"
    DUI.Parent = BTNFrame
    DUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DUI.BackgroundTransparency = 1.000
    DUI.Size = UDim2.new(0, 100, 0, 100)

    BTN_4.Name = "BTN"
    BTN_4.Parent = DUI
    BTN_4.AnchorPoint = Vector2.new(0.5, 0.5)
    BTN_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_4.BackgroundTransparency = 1.000
    BTN_4.Position = UDim2.new(0.5, 0, 0.5, 0)
    BTN_4.Size = UDim2.new(1, 0, 1, 0)
    BTN_4.Font = Enum.Font.SourceSans
    BTN_4.Text = ""
    BTN_4.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_4.TextSize = 14.000

    Background_4.Name = "Background"
    Background_4.Parent = BTN_4
    Background_4.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_4.BackgroundTransparency = 0.750
    Background_4.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_4.Size = UDim2.new(1, 0, 1, 0)

    Text_4.Name = "Text"
    Text_4.Parent = Background_4
    Text_4.AnchorPoint = Vector2.new(0.5, 0.5)
    Text_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_4.BackgroundTransparency = 1.000
    Text_4.Position = UDim2.new(0.5, 0, 0.5, 0)
    Text_4.Size = UDim2.new(1, 0, 1, 0)
    Text_4.Font = Enum.Font.SourceSansBold
    Text_4.Text = "UI"
    Text_4.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_4.TextSize = 16.000
    Text_4.TextStrokeTransparency = 0.000

    UICorner_4.CornerRadius = UDim.new(0, 6)
    UICorner_4.Parent = Background_4

    TabsFrame.Name = "TabsFrame"
    TabsFrame.Parent = Frame
    TabsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabsFrame.BackgroundTransparency = 0.900
    TabsFrame.ClipsDescendants = true
    TabsFrame.Position = UDim2.new(0.277142853, 0, 0.0666666701, 0)
    TabsFrame.Size = UDim2.new(0, 247, 0, 275)

    AStart_2.Name = "A.Start"
    AStart_2.Parent = TabsFrame
    AStart_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AStart_2.BackgroundTransparency = 0.900
    AStart_2.Size = UDim2.new(1, 0, 1, 0)

    UICorner_5.CornerRadius = UDim.new(0, 6)
    UICorner_5.Parent = AStart_2

    Frame_2.Name = "Frame"
    Frame_2.Parent = AStart_2
    Frame_2.Active = true
    Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_2.BackgroundTransparency = 1.000
    Frame_2.BorderSizePixel = 0
    Frame_2.Size = UDim2.new(1, 0, 1, 0)
    Frame_2.CanvasSize = UDim2.new(0, 0, 0, 0)
    Frame_2.ScrollBarThickness = 2

    UIGridLayout_2.Parent = Frame_2
    UIGridLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout_2.CellSize = UDim2.new(0, 240, 0, 25)

    BTextLabel.Name = "B.TextLabel"
    BTextLabel.Parent = Frame_2
    BTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTextLabel.BackgroundTransparency = 1.000
    BTextLabel.Size = UDim2.new(0, 100, 0, 100)

    UICorner_6.CornerRadius = UDim.new(0, 6)
    UICorner_6.Parent = BTextLabel

    Background_5.Name = "Background"
    Background_5.Parent = BTextLabel
    Background_5.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_5.BackgroundTransparency = 0.750
    Background_5.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_5.Size = UDim2.new(1, 0, 1, 0)

    UICorner_7.CornerRadius = UDim.new(0, 6)
    UICorner_7.Parent = Background_5

    Text_5.Name = "Text"
    Text_5.Parent = Background_5
    Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_5.BackgroundTransparency = 1.000
    Text_5.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_5.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_5.Font = Enum.Font.SourceSansBold
    Text_5.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_5.TextSize = 14.000
    Text_5.TextStrokeTransparency = 0.000
    Text_5.TextXAlignment = Enum.TextXAlignment.Left

    CTextLabel.Name = "C.TextLabel"
    CTextLabel.Parent = Frame_2
    CTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CTextLabel.BackgroundTransparency = 1.000
    CTextLabel.Size = UDim2.new(0, 100, 0, 100)

    UICorner_8.CornerRadius = UDim.new(0, 6)
    UICorner_8.Parent = CTextLabel

    Background_6.Name = "Background"
    Background_6.Parent = CTextLabel
    Background_6.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_6.BackgroundTransparency = 0.750
    Background_6.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_6.Size = UDim2.new(1, 0, 1, 0)

    UICorner_9.CornerRadius = UDim.new(0, 6)
    UICorner_9.Parent = Background_6

    Text_6.Name = "Text"
    Text_6.Parent = Background_6
    Text_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_6.BackgroundTransparency = 1.000
    Text_6.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_6.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_6.Font = Enum.Font.SourceSansBold
    Text_6.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_6.TextSize = 14.000
    Text_6.TextStrokeTransparency = 0.000
    Text_6.TextXAlignment = Enum.TextXAlignment.Left

    ATextLabel.Name = "A.TextLabel"
    ATextLabel.Parent = Frame_2
    ATextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ATextLabel.BackgroundTransparency = 1.000
    ATextLabel.Size = UDim2.new(0, 100, 0, 100)

    UICorner_10.CornerRadius = UDim.new(0, 6)
    UICorner_10.Parent = ATextLabel

    Text_7.Name = "Text"
    Text_7.Parent = ATextLabel
    Text_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_7.BackgroundTransparency = 1.000
    Text_7.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_7.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_7.Font = Enum.Font.SourceSansBold
    Text_7.Text = "Start"
    Text_7.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_7.TextSize = 14.000
    Text_7.TextTransparency = 0.750
    Text_7.TextXAlignment = Enum.TextXAlignment.Left

    DTextLabel.Name = "D.TextLabel"
    DTextLabel.Parent = Frame_2
    DTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DTextLabel.BackgroundTransparency = 1.000
    DTextLabel.Size = UDim2.new(0, 100, 0, 100)

    UICorner_11.CornerRadius = UDim.new(0, 6)
    UICorner_11.Parent = DTextLabel

    Background_7.Name = "Background"
    Background_7.Parent = DTextLabel
    Background_7.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_7.BackgroundTransparency = 0.750
    Background_7.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_7.Size = UDim2.new(1, 0, 1, 0)

    UICorner_12.CornerRadius = UDim.new(0, 6)
    UICorner_12.Parent = Background_7

    Text_8.Name = "Text"
    Text_8.Parent = Background_7
    Text_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_8.BackgroundTransparency = 1.000
    Text_8.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_8.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_8.Font = Enum.Font.SourceSansBold
    Text_8.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_8.TextSize = 14.000
    Text_8.TextStrokeTransparency = 0.000
    Text_8.TextXAlignment = Enum.TextXAlignment.Left

    UICorner_13.CornerRadius = UDim.new(0, 6)
    UICorner_13.Parent = TabsFrame

    CVisuals_2.Name = "C.Visuals"
    CVisuals_2.Parent = TabsFrame
    CVisuals_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CVisuals_2.BackgroundTransparency = 0.900
    CVisuals_2.Position = UDim2.new(0, 0, -1, 0)
    CVisuals_2.Size = UDim2.new(1, 0, 1, 0)
    CVisuals_2.Visible = false

    UICorner_14.CornerRadius = UDim.new(0, 6)
    UICorner_14.Parent = CVisuals_2

    Frame_3.Name = "Frame"
    Frame_3.Parent = CVisuals_2
    Frame_3.Active = true
    Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_3.BackgroundTransparency = 1.000
    Frame_3.BorderSizePixel = 0
    Frame_3.Size = UDim2.new(1, 0, 1, 0)
    Frame_3.CanvasSize = UDim2.new(0, 0, 0, 0)
    Frame_3.ScrollBarThickness = 2

    UIGridLayout_3.Parent = Frame_3
    UIGridLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout_3.CellSize = UDim2.new(0, 240, 0, 25)

    ATextLabel_2.Name = "A.TextLabel"
    ATextLabel_2.Parent = Frame_3
    ATextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ATextLabel_2.BackgroundTransparency = 1.000
    ATextLabel_2.Size = UDim2.new(0, 100, 0, 100)

    UICorner_15.CornerRadius = UDim.new(0, 6)
    UICorner_15.Parent = ATextLabel_2

    Text_9.Name = "Text"
    Text_9.Parent = ATextLabel_2
    Text_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_9.BackgroundTransparency = 1.000
    Text_9.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_9.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_9.Font = Enum.Font.SourceSansBold
    Text_9.Text = "Visuals"
    Text_9.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_9.TextSize = 14.000
    Text_9.TextTransparency = 0.750
    Text_9.TextXAlignment = Enum.TextXAlignment.Left

    BToggle.Name = "B.Toggle"
    BToggle.Parent = Frame_3
    BToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BToggle.BackgroundTransparency = 1.000
    BToggle.Size = UDim2.new(0, 100, 0, 100)

    Background_8.Name = "Background"
    Background_8.Parent = BToggle
    Background_8.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_8.BackgroundTransparency = 0.750
    Background_8.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_8.Size = UDim2.new(1, 0, 1, 0)

    UICorner_16.CornerRadius = UDim.new(0, 6)
    UICorner_16.Parent = Background_8

    Text_10.Name = "Text"
    Text_10.Parent = Background_8
    Text_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_10.BackgroundTransparency = 1.000
    Text_10.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_10.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_10.Font = Enum.Font.SourceSansBold
    Text_10.Text = "Zombie ESP"
    Text_10.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_10.TextSize = 14.000
    Text_10.TextStrokeTransparency = 0.000
    Text_10.TextXAlignment = Enum.TextXAlignment.Left

    BTN_5.Name = "BTN"
    BTN_5.Parent = Background_8
    BTN_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_5.BackgroundTransparency = 1.000
    BTN_5.Size = UDim2.new(1, 0, 1, 0)
    BTN_5.Font = Enum.Font.SourceSans
    BTN_5.Text = ""
    BTN_5.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_5.TextSize = 14.000

    Outline.Name = "Outline"
    Outline.Parent = Background_8
    Outline.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline.BackgroundTransparency = 1.000
    Outline.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline.Size = UDim2.new(0, 50, 0, 22)
    Outline.Image = "rbxassetid://11772366871"

    Ball.Name = "Ball"
    Ball.Parent = Background_8
    Ball.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball.BackgroundTransparency = 1.000
    Ball.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball.Size = UDim2.new(0, 15, 0, 15)
    Ball.Image = "rbxassetid://5552526748"

    CToggle.Name = "C.Toggle"
    CToggle.Parent = Frame_3
    CToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CToggle.BackgroundTransparency = 1.000
    CToggle.Size = UDim2.new(0, 100, 0, 100)

    Background_9.Name = "Background"
    Background_9.Parent = CToggle
    Background_9.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_9.BackgroundTransparency = 0.750
    Background_9.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_9.Size = UDim2.new(1, 0, 1, 0)

    UICorner_17.CornerRadius = UDim.new(0, 6)
    UICorner_17.Parent = Background_9

    Text_11.Name = "Text"
    Text_11.Parent = Background_9
    Text_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_11.BackgroundTransparency = 1.000
    Text_11.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_11.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_11.Font = Enum.Font.SourceSansBold
    Text_11.Text = "Perk ESP"
    Text_11.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_11.TextSize = 14.000
    Text_11.TextStrokeTransparency = 0.000
    Text_11.TextXAlignment = Enum.TextXAlignment.Left

    BTN_6.Name = "BTN"
    BTN_6.Parent = Background_9
    BTN_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_6.BackgroundTransparency = 1.000
    BTN_6.Size = UDim2.new(1, 0, 1, 0)
    BTN_6.Font = Enum.Font.SourceSans
    BTN_6.Text = ""
    BTN_6.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_6.TextSize = 14.000

    Outline_2.Name = "Outline"
    Outline_2.Parent = Background_9
    Outline_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_2.BackgroundTransparency = 1.000
    Outline_2.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_2.Size = UDim2.new(0, 50, 0, 22)
    Outline_2.Image = "rbxassetid://11772366871"

    Ball_2.Name = "Ball"
    Ball_2.Parent = Background_9
    Ball_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_2.BackgroundTransparency = 1.000
    Ball_2.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_2.Size = UDim2.new(0, 15, 0, 15)
    Ball_2.Image = "rbxassetid://5552526748"

    EToggle.Name = "E.Toggle"
    EToggle.Parent = Frame_3
    EToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    EToggle.BackgroundTransparency = 1.000
    EToggle.Size = UDim2.new(0, 100, 0, 100)

    Background_10.Name = "Background"
    Background_10.Parent = EToggle
    Background_10.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_10.BackgroundTransparency = 0.750
    Background_10.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_10.Size = UDim2.new(1, 0, 1, 0)

    UICorner_18.CornerRadius = UDim.new(0, 6)
    UICorner_18.Parent = Background_10

    Text_12.Name = "Text"
    Text_12.Parent = Background_10
    Text_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_12.BackgroundTransparency = 1.000
    Text_12.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_12.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_12.Font = Enum.Font.SourceSansBold
    Text_12.Text = "Zombie Info"
    Text_12.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_12.TextSize = 14.000
    Text_12.TextStrokeTransparency = 0.000
    Text_12.TextXAlignment = Enum.TextXAlignment.Left

    BTN_7.Name = "BTN"
    BTN_7.Parent = Background_10
    BTN_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_7.BackgroundTransparency = 1.000
    BTN_7.Size = UDim2.new(1, 0, 1, 0)
    BTN_7.Font = Enum.Font.SourceSans
    BTN_7.Text = ""
    BTN_7.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_7.TextSize = 14.000

    Outline_3.Name = "Outline"
    Outline_3.Parent = Background_10
    Outline_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_3.BackgroundTransparency = 1.000
    Outline_3.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_3.Size = UDim2.new(0, 50, 0, 22)
    Outline_3.Image = "rbxassetid://11772366871"

    Ball_3.Name = "Ball"
    Ball_3.Parent = Background_10
    Ball_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_3.BackgroundTransparency = 1.000
    Ball_3.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_3.Size = UDim2.new(0, 15, 0, 15)
    Ball_3.Image = "rbxassetid://5552526748"

    FToggle.Name = "F.Toggle"
    FToggle.Parent = Frame_3
    FToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FToggle.BackgroundTransparency = 1.000
    FToggle.Size = UDim2.new(0, 100, 0, 100)

    Background_11.Name = "Background"
    Background_11.Parent = FToggle
    Background_11.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_11.BackgroundTransparency = 0.750
    Background_11.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_11.Size = UDim2.new(1, 0, 1, 0)

    UICorner_19.CornerRadius = UDim.new(0, 6)
    UICorner_19.Parent = Background_11

    Text_13.Name = "Text"
    Text_13.Parent = Background_11
    Text_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_13.BackgroundTransparency = 1.000
    Text_13.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_13.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_13.Font = Enum.Font.SourceSansBold
    Text_13.Text = "Perk Info"
    Text_13.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_13.TextSize = 14.000
    Text_13.TextStrokeTransparency = 0.000
    Text_13.TextXAlignment = Enum.TextXAlignment.Left

    BTN_8.Name = "BTN"
    BTN_8.Parent = Background_11
    BTN_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_8.BackgroundTransparency = 1.000
    BTN_8.Size = UDim2.new(1, 0, 1, 0)
    BTN_8.Font = Enum.Font.SourceSans
    BTN_8.Text = ""
    BTN_8.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_8.TextSize = 14.000

    Outline_4.Name = "Outline"
    Outline_4.Parent = Background_11
    Outline_4.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_4.BackgroundTransparency = 1.000
    Outline_4.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_4.Size = UDim2.new(0, 50, 0, 22)
    Outline_4.Image = "rbxassetid://11772366871"

    Ball_4.Name = "Ball"
    Ball_4.Parent = Background_11
    Ball_4.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_4.BackgroundTransparency = 1.000
    Ball_4.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_4.Size = UDim2.new(0, 15, 0, 15)
    Ball_4.Image = "rbxassetid://5552526748"

    DToggle.Name = "D.Toggle"
    DToggle.Parent = Frame_3
    DToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DToggle.BackgroundTransparency = 1.000
    DToggle.Size = UDim2.new(0, 100, 0, 100)

    Background_12.Name = "Background"
    Background_12.Parent = DToggle
    Background_12.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_12.BackgroundTransparency = 0.750
    Background_12.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_12.Size = UDim2.new(1, 0, 1, 0)

    UICorner_20.CornerRadius = UDim.new(0, 6)
    UICorner_20.Parent = Background_12

    Text_14.Name = "Text"
    Text_14.Parent = Background_12
    Text_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_14.BackgroundTransparency = 1.000
    Text_14.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_14.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_14.Font = Enum.Font.SourceSansBold
    Text_14.Text = "Mystery Box ESP"
    Text_14.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_14.TextSize = 14.000
    Text_14.TextStrokeTransparency = 0.000
    Text_14.TextXAlignment = Enum.TextXAlignment.Left

    BTN_9.Name = "BTN"
    BTN_9.Parent = Background_12
    BTN_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_9.BackgroundTransparency = 1.000
    BTN_9.Size = UDim2.new(1, 0, 1, 0)
    BTN_9.Font = Enum.Font.SourceSans
    BTN_9.Text = ""
    BTN_9.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_9.TextSize = 14.000

    Outline_5.Name = "Outline"
    Outline_5.Parent = Background_12
    Outline_5.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_5.BackgroundTransparency = 1.000
    Outline_5.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_5.Size = UDim2.new(0, 50, 0, 22)
    Outline_5.Image = "rbxassetid://11772366871"

    Ball_5.Name = "Ball"
    Ball_5.Parent = Background_12
    Ball_5.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_5.BackgroundTransparency = 1.000
    Ball_5.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_5.Size = UDim2.new(0, 15, 0, 15)
    Ball_5.Image = "rbxassetid://5552526748"

    GToggle.Name = "G.Toggle"
    GToggle.Parent = Frame_3
    GToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GToggle.BackgroundTransparency = 1.000
    GToggle.Size = UDim2.new(0, 100, 0, 100)

    Background_13.Name = "Background"
    Background_13.Parent = GToggle
    Background_13.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_13.BackgroundTransparency = 0.750
    Background_13.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_13.Size = UDim2.new(1, 0, 1, 0)

    UICorner_21.CornerRadius = UDim.new(0, 6)
    UICorner_21.Parent = Background_13

    Text_15.Name = "Text"
    Text_15.Parent = Background_13
    Text_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_15.BackgroundTransparency = 1.000
    Text_15.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_15.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_15.Font = Enum.Font.SourceSansBold
    Text_15.Text = "Mystery Box Info"
    Text_15.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_15.TextSize = 14.000
    Text_15.TextStrokeTransparency = 0.000
    Text_15.TextXAlignment = Enum.TextXAlignment.Left

    BTN_10.Name = "BTN"
    BTN_10.Parent = Background_13
    BTN_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_10.BackgroundTransparency = 1.000
    BTN_10.Size = UDim2.new(1, 0, 1, 0)
    BTN_10.Font = Enum.Font.SourceSans
    BTN_10.Text = ""
    BTN_10.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_10.TextSize = 14.000

    Outline_6.Name = "Outline"
    Outline_6.Parent = Background_13
    Outline_6.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_6.BackgroundTransparency = 1.000
    Outline_6.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_6.Size = UDim2.new(0, 50, 0, 22)
    Outline_6.Image = "rbxassetid://11772366871"

    Ball_6.Name = "Ball"
    Ball_6.Parent = Background_13
    Ball_6.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_6.BackgroundTransparency = 1.000
    Ball_6.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_6.Size = UDim2.new(0, 15, 0, 15)
    Ball_6.Image = "rbxassetid://5552526748"

    DUI_2.Name = "D.UI"
    DUI_2.Parent = TabsFrame
    DUI_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DUI_2.BackgroundTransparency = 0.900
    DUI_2.Position = UDim2.new(0, 0, -1, 0)
    DUI_2.Size = UDim2.new(1, 0, 1, 0)
    DUI_2.Visible = false

    UICorner_22.CornerRadius = UDim.new(0, 6)
    UICorner_22.Parent = DUI_2

    Frame_4.Name = "Frame"
    Frame_4.Parent = DUI_2
    Frame_4.Active = true
    Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_4.BackgroundTransparency = 1.000
    Frame_4.BorderSizePixel = 0
    Frame_4.Size = UDim2.new(1, 0, 1, 0)
    Frame_4.CanvasSize = UDim2.new(0, 0, 0, 0)
    Frame_4.ScrollBarThickness = 2

    UIGridLayout_4.Parent = Frame_4
    UIGridLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout_4.CellSize = UDim2.new(0, 240, 0, 25)

    ATextLabel_3.Name = "A.TextLabel"
    ATextLabel_3.Parent = Frame_4
    ATextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ATextLabel_3.BackgroundTransparency = 1.000
    ATextLabel_3.Size = UDim2.new(0, 100, 0, 100)

    UICorner_23.CornerRadius = UDim.new(0, 6)
    UICorner_23.Parent = ATextLabel_3

    Text_16.Name = "Text"
    Text_16.Parent = ATextLabel_3
    Text_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_16.BackgroundTransparency = 1.000
    Text_16.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_16.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_16.Font = Enum.Font.SourceSansBold
    Text_16.Text = "UI"
    Text_16.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_16.TextSize = 14.000
    Text_16.TextTransparency = 0.750
    Text_16.TextXAlignment = Enum.TextXAlignment.Left

    BToggle_2.Name = "B.Toggle"
    BToggle_2.Parent = Frame_4
    BToggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BToggle_2.BackgroundTransparency = 1.000
    BToggle_2.Size = UDim2.new(0, 100, 0, 100)

    Background_14.Name = "Background"
    Background_14.Parent = BToggle_2
    Background_14.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_14.BackgroundTransparency = 0.750
    Background_14.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_14.Size = UDim2.new(1, 0, 1, 0)

    UICorner_24.CornerRadius = UDim.new(0, 6)
    UICorner_24.Parent = Background_14

    Text_17.Name = "Text"
    Text_17.Parent = Background_14
    Text_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_17.BackgroundTransparency = 1.000
    Text_17.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_17.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_17.Font = Enum.Font.SourceSansBold
    Text_17.Text = "Performance Mode"
    Text_17.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_17.TextSize = 14.000
    Text_17.TextStrokeTransparency = 0.000
    Text_17.TextXAlignment = Enum.TextXAlignment.Left

    BTN_11.Name = "BTN"
    BTN_11.Parent = Background_14
    BTN_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_11.BackgroundTransparency = 1.000
    BTN_11.Size = UDim2.new(1, 0, 1, 0)
    BTN_11.Font = Enum.Font.SourceSans
    BTN_11.Text = ""
    BTN_11.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_11.TextSize = 14.000

    Outline_7.Name = "Outline"
    Outline_7.Parent = Background_14
    Outline_7.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_7.BackgroundTransparency = 1.000
    Outline_7.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_7.Size = UDim2.new(0, 50, 0, 22)
    Outline_7.Image = "rbxassetid://11772366871"

    Ball_7.Name = "Ball"
    Ball_7.Parent = Background_14
    Ball_7.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_7.BackgroundTransparency = 1.000
    Ball_7.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_7.Size = UDim2.new(0, 15, 0, 15)
    Ball_7.Image = "rbxassetid://5552526748"

    CToggle_2.Name = "C.Toggle"
    CToggle_2.Parent = Frame_4
    CToggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CToggle_2.BackgroundTransparency = 1.000
    CToggle_2.Size = UDim2.new(0, 100, 0, 100)

    Background_15.Name = "Background"
    Background_15.Parent = CToggle_2
    Background_15.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_15.BackgroundTransparency = 0.750
    Background_15.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_15.Size = UDim2.new(1, 0, 1, 0)

    UICorner_25.CornerRadius = UDim.new(0, 6)
    UICorner_25.Parent = Background_15

    Text_18.Name = "Text"
    Text_18.Parent = Background_15
    Text_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_18.BackgroundTransparency = 1.000
    Text_18.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_18.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_18.Font = Enum.Font.SourceSansBold
    Text_18.Text = "Dark Mode"
    Text_18.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_18.TextSize = 14.000
    Text_18.TextStrokeTransparency = 0.000
    Text_18.TextXAlignment = Enum.TextXAlignment.Left

    BTN_12.Name = "BTN"
    BTN_12.Parent = Background_15
    BTN_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_12.BackgroundTransparency = 1.000
    BTN_12.Size = UDim2.new(1, 0, 1, 0)
    BTN_12.Font = Enum.Font.SourceSans
    BTN_12.Text = ""
    BTN_12.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_12.TextSize = 14.000

    Outline_8.Name = "Outline"
    Outline_8.Parent = Background_15
    Outline_8.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_8.BackgroundTransparency = 1.000
    Outline_8.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_8.Size = UDim2.new(0, 50, 0, 22)
    Outline_8.Image = "rbxassetid://11772366871"

    Ball_8.Name = "Ball"
    Ball_8.Parent = Background_15
    Ball_8.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_8.BackgroundTransparency = 1.000
    Ball_8.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_8.Size = UDim2.new(0, 15, 0, 15)
    Ball_8.Image = "rbxassetid://5552526748"

    DToggle_2.Name = "D.Toggle"
    DToggle_2.Parent = Frame_4
    DToggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DToggle_2.BackgroundTransparency = 1.000
    DToggle_2.Size = UDim2.new(0, 100, 0, 100)

    Background_16.Name = "Background"
    Background_16.Parent = DToggle_2
    Background_16.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_16.BackgroundTransparency = 0.750
    Background_16.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_16.Size = UDim2.new(1, 0, 1, 0)

    UICorner_26.CornerRadius = UDim.new(0, 6)
    UICorner_26.Parent = Background_16

    Text_19.Name = "Text"
    Text_19.Parent = Background_16
    Text_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_19.BackgroundTransparency = 1.000
    Text_19.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_19.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_19.Font = Enum.Font.SourceSansBold
    Text_19.Text = "Increase HUB Size"
    Text_19.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_19.TextSize = 14.000
    Text_19.TextStrokeTransparency = 0.000
    Text_19.TextXAlignment = Enum.TextXAlignment.Left

    BTN_13.Name = "BTN"
    BTN_13.Parent = Background_16
    BTN_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_13.BackgroundTransparency = 1.000
    BTN_13.Size = UDim2.new(1, 0, 1, 0)
    BTN_13.Font = Enum.Font.SourceSans
    BTN_13.Text = ""
    BTN_13.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_13.TextSize = 14.000

    Outline_9.Name = "Outline"
    Outline_9.Parent = Background_16
    Outline_9.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_9.BackgroundTransparency = 1.000
    Outline_9.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_9.Size = UDim2.new(0, 50, 0, 22)
    Outline_9.Image = "rbxassetid://11772366871"

    Ball_9.Name = "Ball"
    Ball_9.Parent = Background_16
    Ball_9.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_9.BackgroundTransparency = 1.000
    Ball_9.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_9.Size = UDim2.new(0, 15, 0, 15)
    Ball_9.Image = "rbxassetid://5552526748"

    BAimBot_2.Name = "B.AimBot"
    BAimBot_2.Parent = TabsFrame
    BAimBot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BAimBot_2.BackgroundTransparency = 0.900
    BAimBot_2.Position = UDim2.new(0, 0, -1, 0)
    BAimBot_2.Size = UDim2.new(1, 0, 1, 0)
    BAimBot_2.Visible = false

    UICorner_27.CornerRadius = UDim.new(0, 6)
    UICorner_27.Parent = BAimBot_2

    Frame_5.Name = "Frame"
    Frame_5.Parent = BAimBot_2
    Frame_5.Active = true
    Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_5.BackgroundTransparency = 1.000
    Frame_5.BorderSizePixel = 0
    Frame_5.Size = UDim2.new(1, 0, 1, 0)
    Frame_5.CanvasSize = UDim2.new(0, 0, 0, 0)
    Frame_5.ScrollBarThickness = 2

    UIGridLayout_5.Parent = Frame_5
    UIGridLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout_5.CellSize = UDim2.new(0, 240, 0, 25)

    ATextLabel_4.Name = "A.TextLabel"
    ATextLabel_4.Parent = Frame_5
    ATextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ATextLabel_4.BackgroundTransparency = 1.000
    ATextLabel_4.Size = UDim2.new(0, 100, 0, 100)

    UICorner_28.CornerRadius = UDim.new(0, 6)
    UICorner_28.Parent = ATextLabel_4

    Text_20.Name = "Text"
    Text_20.Parent = ATextLabel_4
    Text_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_20.BackgroundTransparency = 1.000
    Text_20.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_20.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_20.Font = Enum.Font.SourceSansBold
    Text_20.Text = "AimBot"
    Text_20.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_20.TextSize = 14.000
    Text_20.TextTransparency = 0.750
    Text_20.TextXAlignment = Enum.TextXAlignment.Left

    BToggle_3.Name = "B.Toggle"
    BToggle_3.Parent = Frame_5
    BToggle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BToggle_3.BackgroundTransparency = 1.000
    BToggle_3.Size = UDim2.new(0, 100, 0, 100)

    Background_17.Name = "Background"
    Background_17.Parent = BToggle_3
    Background_17.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_17.BackgroundTransparency = 0.750
    Background_17.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_17.Size = UDim2.new(1, 0, 1, 0)

    UICorner_29.CornerRadius = UDim.new(0, 6)
    UICorner_29.Parent = Background_17

    Text_21.Name = "Text"
    Text_21.Parent = Background_17
    Text_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_21.BackgroundTransparency = 1.000
    Text_21.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_21.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_21.Font = Enum.Font.SourceSansBold
    Text_21.Text = "AimBot"
    Text_21.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_21.TextSize = 14.000
    Text_21.TextStrokeTransparency = 0.000
    Text_21.TextXAlignment = Enum.TextXAlignment.Left

    BTN_14.Name = "BTN"
    BTN_14.Parent = Background_17
    BTN_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_14.BackgroundTransparency = 1.000
    BTN_14.Size = UDim2.new(1, 0, 1, 0)
    BTN_14.Font = Enum.Font.SourceSans
    BTN_14.Text = ""
    BTN_14.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_14.TextSize = 14.000

    Outline_10.Name = "Outline"
    Outline_10.Parent = Background_17
    Outline_10.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_10.BackgroundTransparency = 1.000
    Outline_10.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_10.Size = UDim2.new(0, 50, 0, 22)
    Outline_10.Image = "rbxassetid://11772366871"

    Ball_10.Name = "Ball"
    Ball_10.Parent = Background_17
    Ball_10.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_10.BackgroundTransparency = 1.000
    Ball_10.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_10.Size = UDim2.new(0, 15, 0, 15)
    Ball_10.Image = "rbxassetid://5552526748"

    CTextLabel_2.Name = "C.TextLabel"
    CTextLabel_2.Parent = Frame_5
    CTextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CTextLabel_2.BackgroundTransparency = 1.000
    CTextLabel_2.Size = UDim2.new(0, 100, 0, 100)

    UICorner_30.CornerRadius = UDim.new(0, 6)
    UICorner_30.Parent = CTextLabel_2

    Text_22.Name = "Text"
    Text_22.Parent = CTextLabel_2
    Text_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_22.BackgroundTransparency = 1.000
    Text_22.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_22.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_22.Font = Enum.Font.SourceSansBold
    Text_22.Text = "Visuals"
    Text_22.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_22.TextSize = 14.000
    Text_22.TextTransparency = 0.750
    Text_22.TextXAlignment = Enum.TextXAlignment.Left

    DToggle_3.Name = "D.Toggle"
    DToggle_3.Parent = Frame_5
    DToggle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DToggle_3.BackgroundTransparency = 1.000
    DToggle_3.Size = UDim2.new(0, 100, 0, 100)

    Background_18.Name = "Background"
    Background_18.Parent = DToggle_3
    Background_18.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_18.BackgroundTransparency = 0.750
    Background_18.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_18.Size = UDim2.new(1, 0, 1, 0)

    UICorner_31.CornerRadius = UDim.new(0, 6)
    UICorner_31.Parent = Background_18

    Text_23.Name = "Text"
    Text_23.Parent = Background_18
    Text_23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_23.BackgroundTransparency = 1.000
    Text_23.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_23.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_23.Font = Enum.Font.SourceSansBold
    Text_23.Text = "Show FOV"
    Text_23.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_23.TextSize = 14.000
    Text_23.TextStrokeTransparency = 0.000
    Text_23.TextXAlignment = Enum.TextXAlignment.Left

    BTN_15.Name = "BTN"
    BTN_15.Parent = Background_18
    BTN_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_15.BackgroundTransparency = 1.000
    BTN_15.Size = UDim2.new(1, 0, 1, 0)
    BTN_15.Font = Enum.Font.SourceSans
    BTN_15.Text = ""
    BTN_15.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_15.TextSize = 14.000

    Outline_11.Name = "Outline"
    Outline_11.Parent = Background_18
    Outline_11.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_11.BackgroundTransparency = 1.000
    Outline_11.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_11.Size = UDim2.new(0, 50, 0, 22)
    Outline_11.Image = "rbxassetid://11772366871"

    Ball_11.Name = "Ball"
    Ball_11.Parent = Background_18
    Ball_11.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_11.BackgroundTransparency = 1.000
    Ball_11.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_11.Size = UDim2.new(0, 15, 0, 15)
    Ball_11.Image = "rbxassetid://5552526748"

    EToggle_2.Name = "E.Toggle"
    EToggle_2.Parent = Frame_5
    EToggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    EToggle_2.BackgroundTransparency = 1.000
    EToggle_2.Size = UDim2.new(0, 100, 0, 100)

    Background_19.Name = "Background"
    Background_19.Parent = EToggle_2
    Background_19.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_19.BackgroundTransparency = 0.750
    Background_19.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_19.Size = UDim2.new(1, 0, 1, 0)

    UICorner_32.CornerRadius = UDim.new(0, 6)
    UICorner_32.Parent = Background_19

    Text_24.Name = "Text"
    Text_24.Parent = Background_19
    Text_24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_24.BackgroundTransparency = 1.000
    Text_24.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_24.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_24.Font = Enum.Font.SourceSansBold
    Text_24.Text = "Wide FOV"
    Text_24.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_24.TextSize = 14.000
    Text_24.TextStrokeTransparency = 0.000
    Text_24.TextXAlignment = Enum.TextXAlignment.Left

    BTN_16.Name = "BTN"
    BTN_16.Parent = Background_19
    BTN_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_16.BackgroundTransparency = 1.000
    BTN_16.Size = UDim2.new(1, 0, 1, 0)
    BTN_16.Font = Enum.Font.SourceSans
    BTN_16.Text = ""
    BTN_16.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_16.TextSize = 14.000

    Outline_12.Name = "Outline"
    Outline_12.Parent = Background_19
    Outline_12.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_12.BackgroundTransparency = 1.000
    Outline_12.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_12.Size = UDim2.new(0, 50, 0, 22)
    Outline_12.Image = "rbxassetid://11772366871"

    Ball_12.Name = "Ball"
    Ball_12.Parent = Background_19
    Ball_12.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_12.BackgroundTransparency = 1.000
    Ball_12.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_12.Size = UDim2.new(0, 15, 0, 15)
    Ball_12.Image = "rbxassetid://5552526748"

    FToggle_2.Name = "F.Toggle"
    FToggle_2.Parent = Frame_5
    FToggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FToggle_2.BackgroundTransparency = 1.000
    FToggle_2.Size = UDim2.new(0, 100, 0, 100)

    Background_20.Name = "Background"
    Background_20.Parent = FToggle_2
    Background_20.AnchorPoint = Vector2.new(0.5, 0.5)
    Background_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Background_20.BackgroundTransparency = 0.750
    Background_20.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background_20.Size = UDim2.new(1, 0, 1, 0)

    UICorner_33.CornerRadius = UDim.new(0, 6)
    UICorner_33.Parent = Background_20

    Text_25.Name = "Text"
    Text_25.Parent = Background_20
    Text_25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text_25.BackgroundTransparency = 1.000
    Text_25.Position = UDim2.new(0.0250000004, 0, 0, 0)
    Text_25.Size = UDim2.new(0.975000024, 0, 1, 0)
    Text_25.Font = Enum.Font.SourceSansBold
    Text_25.Text = "AimBot Torso"
    Text_25.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text_25.TextSize = 14.000
    Text_25.TextStrokeTransparency = 0.000
    Text_25.TextXAlignment = Enum.TextXAlignment.Left

    BTN_17.Name = "BTN"
    BTN_17.Parent = Background_20
    BTN_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BTN_17.BackgroundTransparency = 1.000
    BTN_17.Size = UDim2.new(1, 0, 1, 0)
    BTN_17.Font = Enum.Font.SourceSans
    BTN_17.Text = ""
    BTN_17.TextColor3 = Color3.fromRGB(0, 0, 0)
    BTN_17.TextSize = 14.000

    Outline_13.Name = "Outline"
    Outline_13.Parent = Background_20
    Outline_13.AnchorPoint = Vector2.new(0.5, 0.5)
    Outline_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_13.BackgroundTransparency = 1.000
    Outline_13.Position = UDim2.new(0.883333325, 0, 0.480000019, 0)
    Outline_13.Size = UDim2.new(0, 50, 0, 22)
    Outline_13.Image = "rbxassetid://11772366871"

    Ball_13.Name = "Ball"
    Ball_13.Parent = Background_20
    Ball_13.AnchorPoint = Vector2.new(0.5, 0.5)
    Ball_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ball_13.BackgroundTransparency = 1.000
    Ball_13.Position = UDim2.new(0.93749994, 0, 0.479999989, 0)
    Ball_13.Size = UDim2.new(0, 15, 0, 15)
    Ball_13.Image = "rbxassetid://5552526748"

    DragBar.Name = "DragBar"
    DragBar.Parent = Frame
    DragBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DragBar.BackgroundTransparency = 1.000
    DragBar.Position = UDim2.new(0.287142843, 0, 0, 0)
    DragBar.Size = UDim2.new(0, 194, 0, 20)

    Close.Name = "Close"
    Close.Parent = Frame
    Close.AnchorPoint = Vector2.new(0.5, 0.5)
    Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close.BackgroundTransparency = 1.000
    Close.Position = UDim2.new(0.971428573, 0, 0.0333333351, 0)
    Close.Size = UDim2.new(0, 20, 0, 20)
    Close.Image = "rbxassetid://4661609682"

    UICorner_34.CornerRadius = UDim.new(0, 6)
    UICorner_34.Parent = Frame

    UIScale.Parent = Frame

    Minimize.Name = "Minimize"
    Minimize.Parent = Frame
    Minimize.AnchorPoint = Vector2.new(0.5, 0.5)
    Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Minimize.BackgroundTransparency = 1.000
    Minimize.Position = UDim2.new(0.905714333, 0, 0.0333333351, 0)
    Minimize.Size = UDim2.new(0, 15, 0, 15)
    Minimize.Image = "rbxassetid://11779029829"

    -- Scripts:

    local function DNVJCKX_fake_script() -- Title.Manager 
        local script = Instance.new('LocalScript', Title)

        script.Parent.Text = _G.HUBName
    end
    coroutine.wrap(DNVJCKX_fake_script)()
    local function VMCE_fake_script() -- Background.Animations 
        local script = Instance.new('LocalScript', Background)

        local TS = game:GetService("TweenService")
        local Object = script.Parent
        local Allowed = true
        
        Object.MouseEnter:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-7, 7), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        Object.MouseLeave:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Down:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.85, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Up:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
    end
    coroutine.wrap(VMCE_fake_script)()
    local function KFWLHT_fake_script() -- Background_2.Animations 
        local script = Instance.new('LocalScript', Background_2)

        local TS = game:GetService("TweenService")
        local Object = script.Parent
        local Allowed = true
        
        Object.MouseEnter:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-7, 7), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        Object.MouseLeave:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Down:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.85, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Up:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
    end
    coroutine.wrap(KFWLHT_fake_script)()
    local function XRRX_fake_script() -- Background_3.Animations 
        local script = Instance.new('LocalScript', Background_3)

        local TS = game:GetService("TweenService")
        local Object = script.Parent
        local Allowed = true
        
        Object.MouseEnter:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-7, 7), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        Object.MouseLeave:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Down:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.85, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Up:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
    end
    coroutine.wrap(XRRX_fake_script)()
    local function ELWNKU_fake_script() -- Background_4.Animations 
        local script = Instance.new('LocalScript', Background_4)

        local TS = game:GetService("TweenService")
        local Object = script.Parent
        local Allowed = true
        
        Object.MouseEnter:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-7, 7), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        Object.MouseLeave:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Down:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.85, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        Object.Parent.MouseButton1Up:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(Object, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
    end
    coroutine.wrap(ELWNKU_fake_script)()
    local function SDWNHOC_fake_script() -- Text_5.Text 
        local script = Instance.new('LocalScript', Text_5)

        script.Parent.Text = "Welcome, "..game.Players.LocalPlayer.DisplayName.."!"
    end
    coroutine.wrap(SDWNHOC_fake_script)()
    local function UBFSOT_fake_script() -- Background_5.Animations 
        local script = Instance.new('LocalScript', Background_5)

        local BTN = script.Parent
        local Background = script.Parent
        local TS = game:GetService("TweenService")
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
    end
    coroutine.wrap(UBFSOT_fake_script)()
    local function EBPDM_fake_script() -- Background_6.Animations 
        local script = Instance.new('LocalScript', Background_6)

        local BTN = script.Parent
        local Background = script.Parent
        local TS = game:GetService("TweenService")
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
    end
    coroutine.wrap(EBPDM_fake_script)()
    local function WTNJW_fake_script() -- Text_6.Text 
        local script = Instance.new('LocalScript', Text_6)

        script.Parent.Text = "Michael's Zombies - v1.0.1"
    end
    coroutine.wrap(WTNJW_fake_script)()
    local function PPGEUKK_fake_script() -- Background_7.Animations 
        local script = Instance.new('LocalScript', Background_7)

        local BTN = script.Parent
        local Background = script.Parent
        local TS = game:GetService("TweenService")
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
    end
    coroutine.wrap(PPGEUKK_fake_script)()
    local function XDYG_fake_script() -- Text_8.Text 
        local script = Instance.new('LocalScript', Text_8)

        script.Parent.Text = "Patch Notes: ".._G.PatchNotes
    end
    coroutine.wrap(XDYG_fake_script)()
    local function KVPAQSL_fake_script() -- BToggle.Manager 
        local script = Instance.new('LocalScript', BToggle)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.ZombieESP = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.ZombieESP = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(KVPAQSL_fake_script)()
    local function XSJIHYQ_fake_script() -- CToggle.Manager 
        local script = Instance.new('LocalScript', CToggle)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.PerkESP = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.PerkESP = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(XSJIHYQ_fake_script)()
    local function ZEMRLX_fake_script() -- EToggle.Manager 
        local script = Instance.new('LocalScript', EToggle)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.ZombieInfoText = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.ZombieInfoText = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(ZEMRLX_fake_script)()
    local function ANCKFB_fake_script() -- FToggle.Manager 
        local script = Instance.new('LocalScript', FToggle)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.PerkInfoText = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.PerkInfoText = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(ANCKFB_fake_script)()
    local function UQCFOCD_fake_script() -- DToggle.Manager 
        local script = Instance.new('LocalScript', DToggle)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.BoxESP = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.BoxESP = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(UQCFOCD_fake_script)()
    local function GNVJW_fake_script() -- GToggle.Manager 
        local script = Instance.new('LocalScript', GToggle)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.BoxInfoText = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.BoxInfoText = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(GNVJW_fake_script)()
    local function VBWL_fake_script() -- BToggle_2.Manager 
        local script = Instance.new('LocalScript', BToggle_2)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.PerformanceMode = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
                
                _G.PerformanceMode = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(VBWL_fake_script)()
    local function UYNHNG_fake_script() -- CToggle_2.Manager 
        local script = Instance.new('LocalScript', CToggle_2)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
                
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                script.Parent.Parent.Parent.Parent.Parent.UIGradient.Color = ColorSequence.new(Color3.fromRGB(105, 0, 209), Color3.fromRGB(60, 0, 117))
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                script.Parent.Parent.Parent.Parent.Parent.UIGradient.Color = ColorSequence.new(Color3.fromRGB(100, 100, 100), Color3.fromRGB(60, 60, 60))
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(UYNHNG_fake_script)()
    local function MLNGPI_fake_script() -- DToggle_2.Manager 
        local script = Instance.new('LocalScript', DToggle_2)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
                
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        
                _G.HUBSize = 1
                TS:Create(script.Parent.Parent.Parent.Parent.Parent.UIScale, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Scale = _G.HUBSize}):Play()
        
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
        
                _G.HUBSize = 1.5
                TS:Create(script.Parent.Parent.Parent.Parent.Parent.UIScale, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Scale = _G.HUBSize}):Play()
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(MLNGPI_fake_script)()
    local function AXPPEL_fake_script() -- BToggle_3.Manager 
        local script = Instance.new('LocalScript', BToggle_3)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.AimBot = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                game.StarterGui:SetCore("SendNotification", {
                    Title = "LXH",
                    Text = "Hold Down Right Click.",
                    Duration = 2
                })
                
                _G.AimBot = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(AXPPEL_fake_script)()
    local function SZMFX_fake_script() -- DToggle_3.Manager 
        local script = Instance.new('LocalScript', DToggle_3)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.ShowCircle = false
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.ShowCircle = true
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(SZMFX_fake_script)()
    local function YGUYVZE_fake_script() -- EToggle_2.Manager 
        local script = Instance.new('LocalScript', EToggle_2)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.CircleRadius = 50
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.CircleRadius = 150
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(YGUYVZE_fake_script)()
    local function CHDGA_fake_script() -- FToggle_2.Manager 
        local script = Instance.new('LocalScript', FToggle_2)

        local BTN = script.Parent.Background.BTN
        local Background = script.Parent.Background
        local TS = game:GetService("TweenService")
        local Toggled = false
        
        if Toggled then
            Background.Ball.Position = UDim2.new(0.937, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(0, 255, 55)
        else
            Background.Ball.Position = UDim2.new(0.825, 0, 0.48, 0)
            Background.Outline.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode == true then
        
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Rotation = math.random(-5, 5), Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Rotation = 0, Size = UDim2.new(1, 0, 1, 0)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode == true then
                return
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.75, Size = UDim2.new(1, -2.5, 1, -2.5)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            local TransTime = 0.15
            if _G.PerformanceMode == true then
                TransTime = 0
            else
                TS:Create(Background, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5, Size = UDim2.new(1, 5, 1, 5)}):Play()
            end
            
            if Toggled then
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.825, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                
                _G.AimPart = "Head"
                
                Toggled = false
            else
                TS:Create(Background.Ball, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0.937, 0, 0.48, 0)}):Play()
                TS:Create(Background.Outline, TweenInfo.new(TransTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(0, 255, 55)}):Play()
                
                _G.AimPart = "HumanoidRootPart"
        
                Toggled = true
            end
        end)
    end
    coroutine.wrap(CHDGA_fake_script)()
    local function ZCSXGJ_fake_script() -- Frame.SwitchManager 
        local script = Instance.new('LocalScript', Frame)

        local Tabs = script.Parent.TabsFrame
        local BTNs = script.Parent.BTNFrame
        local TS = game:GetService("TweenService")
        local ClickAllow = true
        local TransTime = 0.35
        
        script.Parent.UIScale.Scale = 0
        
        TS:Create(script.Parent.UIScale, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Scale = _G.HUBSize}):Play()
        
        for i, v in pairs(BTNs:GetChildren()) do
            if v:IsA("Frame") then
                v.BTN.MouseButton1Up:Connect(function()
                    local Frame = Tabs:FindFirstChild(v.Name)
                    if Frame.Position ~= UDim2.new(0, 0, 0, 0) then
                        if _G.PerformanceMode then
                            TransTime = 0
                        else
                            TransTime = 0.35
                        end
        
                        Frame.Visible = true
                        for i, b in pairs(Tabs:GetChildren()) do
                            if b:IsA("Frame") then
                                if b.Position == UDim2.new(0, 0, 0, 0) then
                                    if b.Name ~= v.Name then
                                        TS:Create(b, TweenInfo.new(TransTime, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0), {Position = UDim2.new(0, 0, 1, 0)}):Play()
                                        TS:Create(Frame, TweenInfo.new(TransTime, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0), {Position = UDim2.new(0, 0, 0, 0)}):Play()
                                        wait(TransTime)
                                        b.Visible = false
                                        b.Position = UDim2.new(0, 0, -1, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
        
        for i, v in pairs(script.Parent:GetDescendants()) do
            if v:IsA("TextButton") then
                
                v.MouseEnter:Connect(function()
                    if not _G.PerformanceMode then
                        local v1 = Instance.new("Sound")
                        v1.SoundId = "rbxassetid://10066942189"
                        v1.Looped = false
                        v1.Parent = script
                        v1.Volume = 0.5
                        v1:Play()
                        wait(0.25)
                        v1:Destroy()
                    end
                end)
                
                v.MouseButton1Down:Connect(function()
                    if not _G.PerformanceMode then
                        local v1 = Instance.new("Sound")
                        v1.SoundId = "rbxassetid://10066931761"
                        v1.Looped = false
                        v1.Parent = script
                        v1:Play()
                        wait(0.1)
                        v1:Destroy()
                    end
                end)
            end
        end
    end
    coroutine.wrap(ZCSXGJ_fake_script)()
    local function KLCMJ_fake_script() -- DragBar.Manager 
        local script = Instance.new('LocalScript', DragBar)

        local Bar = script.Parent
        local Frame = script.Parent.Parent
        local UIS = game:GetService("UserInputService")
        local TS = game:GetService("TweenService")
        local RS = game:GetService("RunService")
        local Allowed = false
        local CanRun = false
        
        Bar.MouseEnter:Connect(function()
            Allowed = true
        end)
        
        Bar.MouseLeave:Connect(function()
            Allowed = false
        end)
        
        UIS.InputBegan:Connect(function(v)
            if v.UserInputType == Enum.UserInputType.MouseButton1 then
                if Allowed == true then
                    CanRun = true
                end
            end
        end)
        
        UIS.InputEnded:Connect(function(v)
            if v.UserInputType == Enum.UserInputType.MouseButton1 then
                CanRun = false
            end
        end)
        
        RS.RenderStepped:Connect(function()
            if CanRun then
                if _G.PerformanceMode ~= true then
                    TS:Create(Frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Position = UDim2.new(0, game.Players.LocalPlayer:GetMouse().X, 0, game.Players.LocalPlayer:GetMouse().Y)}):Play()
                else
                    Frame.Position = UDim2.new(0, game.Players.LocalPlayer:GetMouse().X, 0, game.Players.LocalPlayer:GetMouse().Y)
                end
            end
        end)
    end
    coroutine.wrap(KLCMJ_fake_script)()
    local function PEWCIU_fake_script() -- Close.Manager 
        local script = Instance.new('LocalScript', Close)

        local BTN = script.Parent
        local TS = game:GetService("TweenService")
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Rotation = math.random(45, 180), ImageColor3 = Color3.fromRGB(255, 0, 50), Size = UDim2.new(0, 30, 0, 30)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Rotation = 0, ImageColor3 = Color3.fromRGB(255, 255, 255), Size = UDim2.new(0, 20, 0, 20)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 20, 0, 20), ImageColor3 = Color3.fromRGB(120, 0, 24)}):Play()
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {ImageColor3 = Color3.fromRGB(255, 0, 50), Size = UDim2.new(0, 30, 0, 30)}):Play()
                TS:Create(BTN.Parent.UIScale, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Scale = 0}):Play()
            end
            wait(0.1)
            BTN.Parent.Parent:Destroy()
        end)
    end
    coroutine.wrap(PEWCIU_fake_script)()
    local function DJYVF_fake_script() -- Minimize.Manager 
        local script = Instance.new('LocalScript', Minimize)

        local BTN = script.Parent
        local TS = game:GetService("TweenService")
        local UIS = game:GetService("UserInputService")
        
        BTN.MouseEnter:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 20, 0, 20)}):Play()
            end
        end)
        
        BTN.MouseLeave:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 15, 0, 15)}):Play()
            end
        end)
        
        BTN.MouseButton1Down:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 10, 0, 10)}):Play()
            end
        end)
        
        UIS.InputBegan:Connect(function(Input)
            if Input.KeyCode == Enum.KeyCode.RightShift then
                if _G.PerformanceMode ~= true then
                    TS:Create(BTN.Parent.UIScale, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Scale = _G.HUBSize}):Play()
                    wait(0)
                end
                BTN.Parent.Visible = true
            end
        end)
        
        BTN.MouseButton1Up:Connect(function()
            if _G.PerformanceMode ~= true then
                TS:Create(BTN, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 15, 0, 15)}):Play()
                TS:Create(BTN.Parent.UIScale, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {Scale = 0}):Play()
                wait(0.15)
            end
            game.StarterGui:SetCore("SendNotification", {
                Title = "LXH",
                Text = "Click Right Shift to Make LXH Visible Again.",
                Duration = 5
            })
            BTN.Parent.Visible = false
        end)
    end
    coroutine.wrap(DJYVF_fake_script)()
end

-- Everything --
local Allowed = false

game.UserInputService.InputBegan:Connect(function(v)
    if v.UserInputType == Enum.UserInputType.MouseButton2 then
        Allowed = true
    elseif v.KeyCode == Enum.KeyCode.ButtonL2 then
        Allowed = true
    end
end)

game.UserInputService.InputEnded:Connect(function(v)
    if v.UserInputType == Enum.UserInputType.MouseButton2 then
        Allowed = false
    elseif v.KeyCode == Enum.KeyCode.ButtonL2 then
        Allowed = false
    end
end)

local InfoText = function(v, b, c, d)
    -- Instances:

    local Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB = Instance.new("BillboardGui")
    local JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu = Instance.new("TextLabel")

    -- Properties:

    Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB.Name = c
    Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB.Parent = v
    Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB.Active = true
    Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB.AlwaysOnTop = true
    Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB.ExtentsOffsetWorldSpace = d
    Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB.Size = UDim2.new(0, 2000, 0, 15)

    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.Name = "JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu"
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.Parent = Sl2WzeHfhzU9EpXIDfocJ1s3v1zUB3mB
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.BackgroundTransparency = 1.000
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.Size = UDim2.new(1, 0, 1, 0)
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.Font = Enum.Font.SourceSansBold
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.Text = b
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.TextColor3 = Color3.fromRGB(255, 255, 255)
    JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu.TextSize = 16.000
end

local FC = Drawing.new("Circle")
FC.Color = Color3.fromRGB(255, 255, 255)
FC.Thickness = 1
FC.Filled = false

game:GetService("RunService").RenderStepped:Connect(function()
    FC.Position = Vector2.new(game.Workspace.Ignore.Camera.ViewportSize.X / 2, game.Workspace.Ignore.Camera.ViewportSize.Y / 2)
    FC.Visible = _G.ShowCircle
    FC.Radius = _G.CircleRadius

    if _G.ZombieESP then
        for i, v in pairs(game.Workspace.Ignore.Zombies:GetChildren()) do
            if not v:FindFirstChild("M1RR8ndAQW") then
                local ESP = Instance.new("Highlight")
                ESP.Name = "M1RR8ndAQW"
                ESP.FillTransparency = 1
                ESP.FillColor = Color3.fromRGB(255, 115, 115)
                ESP.OutlineColor = Color3.fromRGB(255, 255, 255)
                ESP.Parent = v
            end
        end
    else
        for i, v in pairs(game.Workspace.Ignore.Zombies:GetChildren()) do
            if v:FindFirstChild("M1RR8ndAQW") then
                v:FindFirstChild("M1RR8ndAQW"):Destroy()
            end
        end
    end
    
    if _G.ZombieInfoText then
        for i, v in pairs(game.Workspace.Ignore.Zombies:GetChildren()) do
            if not v.Head:FindFirstChild("VDm91x3P1C") then
                InfoText(v.Head, "Distance: Error", "VDm91x3P1C", Vector3.new(0, 2.5, 0))
            else
                v.Head:FindFirstChild("VDm91x3P1C"):FindFirstChild("JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu").Text = "Distance: "..math.ceil((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
            end
        end
    else
        for i, v in pairs(game.Workspace.Ignore.Zombies:GetChildren()) do
            if v.Head:FindFirstChild("VDm91x3P1C") then
                v.Head:FindFirstChild("VDm91x3P1C"):Destroy()
            end
        end
    end

    if _G.PerkESP then
        for i, v in pairs(game.Workspace:FindFirstChild("_PerkMachines"):GetChildren()) do
            if not v:FindFirstChild("XrrtiGtcjT") then
                local ESP = Instance.new("Highlight")
                ESP.Name = "XrrtiGtcjT"
                ESP.FillTransparency = 0.5
                ESP.FillColor = Color3.fromRGB(0, 255, 185)
                ESP.OutlineColor = Color3.fromRGB(0, 155, 255)
                ESP.Parent = v
            end
        end
    else
        for i, v in pairs(game.Workspace:FindFirstChild("_PerkMachines"):GetChildren()) do
            if v:FindFirstChild("XrrtiGtcjT") then
                v:FindFirstChild("XrrtiGtcjT"):Destroy()
            end
        end
    end

    if _G.PerkInfoText then
        for i, v in pairs(game.Workspace:FindFirstChild("_PerkMachines"):GetChildren()) do
            if not v:FindFirstChild("iPxkj08Dwi") then
                if v:IsA("Script") then
                else
                    InfoText(v, "Name: Error Distance: Error", "iPxkj08Dwi", Vector3.new(0, 1, 0))
                end
            else
                if v.Name ~= "MachineControl" then
                    v:FindFirstChild("iPxkj08Dwi"):FindFirstChild("JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu").Text = "Name: ".. v.Name.." Distance: "..math.ceil((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.PurchasePerk.Position).Magnitude)
                end
            end
        end
    else
        for i, v in pairs(game.Workspace:FindFirstChild("_PerkMachines"):GetChildren()) do
            if v:FindFirstChild("iPxkj08Dwi") then
                v:FindFirstChild("iPxkj08Dwi"):Destroy()
            end
        end
    end

    if _G.BoxESP then
        for i, v in pairs(game.Workspace:FindFirstChild("_MapComponents"):GetChildren()) do
            if v.Name == "MysteryBox" then
                if not v:FindFirstChild("Y7E2cDJGbL") then
                    local ESP = Instance.new("Highlight")
                    ESP.Name = "Y7E2cDJGbL"
                    ESP.FillTransparency = 0.75
                    ESP.FillColor = Color3.fromRGB(165, 135, 255)
                    ESP.OutlineColor = Color3.fromRGB(155, 0, 255)
                    ESP.Parent = v
                end
            end
        end
    else
        for i, v in pairs(game.Workspace:FindFirstChild("_MapComponents"):GetChildren()) do
            if v.Name == "MysteryBox" then
                if v:FindFirstChild("Y7E2cDJGbL") then
                    v:FindFirstChild("Y7E2cDJGbL"):Destroy()
                end
            end
        end
    end

    if _G.BoxInfoText then
        for i, v in pairs(game.Workspace:FindFirstChild("_MapComponents"):GetChildren()) do
            if v.Name == "MysteryBox" then
                if not v:FindFirstChild("zoELfg9wfq") then
                    InfoText(v, "Name: Error Distance: Error", "zoELfg9wfq", Vector3.new(0, 1, 0))
                else
                    v:FindFirstChild("zoELfg9wfq"):FindFirstChild("JYqD7KOayu9ujWakEDCnGmRWnvzhdnEu").Text = "Name: ".. v.Name.." Distance: "..math.ceil((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.PurchaseBox.Position).Magnitude)
                end
            end
        end
    else
        for i, v in pairs(game.Workspace:FindFirstChild("_MapComponents"):FindFirstChild("MysteryBox"):GetChildren()) do
            if v.PurchaseBox:FindFirstChild("zoELfg9wfq") then
                v.PurchaseBox:FindFirstChild("zoELfg9wfq"):Destroy()
            end
        end
    end

    if _G.AutoReload then
        game:GetService("Players").LocalPlayer.Character.Remotes.Reload:FireServer()
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AimBot then
        local MaxDis = math.huge
    
        for i, v in pairs(game.Workspace.Ignore.Zombies:GetChildren()) do
            if v:FindFirstChild("Humanoid") ~= 0 then
                local char = v
                local charposition, onscreen = game.Workspace.Ignore.Camera:WorldToViewportPoint(v[_G.AimPart].Position)

                if onscreen then
                    local Mag = (Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y) - Vector2.new(charposition.X, charposition.Y)).Magnitude

                    if Allowed and Mag < MaxDis and Mag < _G.CircleRadius then
                        MaxDis = Mag
                        local Anim = game:GetService("TweenService"):Create(game.Workspace.Ignore.Camera, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(game.Workspace.Ignore.Camera.CFrame.Position, v[_G.AimPart].Position)})
                        Anim:Play()
                        wait(0.001)
                        Anim:Cancel()
                    end
                end
            end
        end
    end
end)

RunHUB()