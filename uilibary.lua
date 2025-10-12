local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local libary = {}
local Windows = {}
local CurrentWindow = nil
local CurrentTab = nil

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.ClipsDescendants = true
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Name = "MainFrame"
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 660, 0, 456)
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = MainFrame

local Header = Instance.new("Frame")
Header.ClipsDescendants = true
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.AnchorPoint = Vector2.new(0.5, 0)
Header.Name = "Header"
Header.Position = UDim2.new(0.5, 0, 0, 0)
Header.Size = UDim2.new(0, 660, 0, 49)
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Header.Parent = MainFrame

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 6)
UICorner2.Parent = Header

local Liner = Instance.new("Frame")
Liner.AnchorPoint = Vector2.new(0.5, 1)
Liner.Name = "Liner"
Liner.Position = UDim2.new(0.5, 0, 1, 0)
Liner.BorderColor3 = Color3.fromRGB(0, 0, 0)
Liner.Size = UDim2.new(1, 1, 0, 1)
Liner.BorderSizePixel = 0
Liner.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
Liner.Parent = Header

local Exit_Button = Instance.new("ImageButton")
Exit_Button.ScaleType = Enum.ScaleType.Fit
Exit_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit_Button.Name = "Exit_Button"
Exit_Button.AnchorPoint = Vector2.new(1, 0.5)
Exit_Button.Image = "rbxassetid://115079070282476"
Exit_Button.BackgroundTransparency = 1
Exit_Button.Position = UDim2.new(1, -15, 0.5, 0)
Exit_Button.Size = UDim2.new(0, 16, 0, 16)
Exit_Button.BorderSizePixel = 0
Exit_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit_Button.Parent = Header

local Dropdown_Name = Instance.new("TextLabel")
Dropdown_Name.RichText = true
Dropdown_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Dropdown_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dropdown_Name.Text = 'Example<font color="#6e75f4">Libary</font>'
Dropdown_Name.Name = "Dropdown_Name"
Dropdown_Name.Size = UDim2.new(0, 1, 0, 1)
Dropdown_Name.AnchorPoint = Vector2.new(0, 0.5)
Dropdown_Name.BorderSizePixel = 0
Dropdown_Name.BackgroundTransparency = 1
Dropdown_Name.Position = UDim2.new(0, 50, 0.5, 0)
Dropdown_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Dropdown_Name.AutomaticSize = Enum.AutomaticSize.XY
Dropdown_Name.TextSize = 18
Dropdown_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdown_Name.Parent = Header

local LogoContainer = Instance.new("Frame")
LogoContainer.ClipsDescendants = true
LogoContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
LogoContainer.AnchorPoint = Vector2.new(0.5, 0)
LogoContainer.BackgroundTransparency = 1
LogoContainer.Position = UDim2.new(0.06818182021379471, 0, 0, 0)
LogoContainer.Name = "LogoContainer"
LogoContainer.Size = UDim2.new(0, 90, 0, 49)
LogoContainer.BorderSizePixel = 0
LogoContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LogoContainer.Parent = MainFrame

local Logo = Instance.new("ImageLabel")
Logo.ScaleType = Enum.ScaleType.Fit
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.Name = "Logo"
Logo.AnchorPoint = Vector2.new(0, 0.5)
Logo.Image = "rbxassetid://136285080435444"
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0, 15, 0.5, 0)
Logo.Size = UDim2.new(0, 28, 0, 28)
Logo.BorderSizePixel = 0
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.Parent = LogoContainer

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 6)
UICorner3.Parent = LogoContainer

local Shadow = Instance.new("Frame")
Shadow.ClipsDescendants = true
Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Name = "Shadow"
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.Size = UDim2.new(0, 90, 0, 49)
Shadow.BorderSizePixel = 0
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.Parent = LogoContainer

local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 6)
UICorner4.Parent = Shadow

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(1, 0.887499988079071)
}
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(110, 117, 244)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 117, 244))
}
UIGradient.Parent = Shadow

local Side_Bar = Instance.new("Frame")
Side_Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Side_Bar.AnchorPoint = Vector2.new(0, 1)
Side_Bar.BackgroundTransparency = 1
Side_Bar.Position = UDim2.new(0, 0, 1, 0)
Side_Bar.Name = "Side_Bar"
Side_Bar.Size = UDim2.new(0, 143, 0, 406)
Side_Bar.BorderSizePixel = 0
Side_Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Side_Bar.Parent = MainFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Side_Bar

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 12)
UIPadding.PaddingLeft = UDim.new(0, 12)
UIPadding.Parent = Side_Bar

local Page = Instance.new("Frame")
Page.BorderColor3 = Color3.fromRGB(0, 0, 0)
Page.AnchorPoint = Vector2.new(1, 1)
Page.BackgroundTransparency = 1
Page.Position = UDim2.new(1, 0, 1, 0)
Page.Name = "Page"
Page.Size = UDim2.new(0, 515, 0, 407)
Page.BorderSizePixel = 0
Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page.Parent = MainFrame

local Container = Instance.new("ScrollingFrame")
Container.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Container.Active = true
Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
Container.ScrollBarThickness = 0
Container.BackgroundTransparency = 1
Container.Position = UDim2.new(0, 0, -3.749088151039359e-08, 0)
Container.Name = "Container"
Container.Size = UDim2.new(0, 515, 0, 407)
Container.BorderSizePixel = 0
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.Parent = Page

local UIListLayout2 = Instance.new("UIListLayout")
UIListLayout2.Wraps = true
UIListLayout2.Padding = UDim.new(0, 12)
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout2.Parent = Container

local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingTop = UDim.new(0, 12)
UIPadding2.PaddingLeft = UDim.new(0, 6)
UIPadding2.Parent = Container

local Window = {}
Window.__index = Window

local Tab = {}
Tab.__index = Tab

local Section = {}
Section.__index = Section

function libary:CreateWindow(config)
    local window = setmetatable({}, Window)
    window.config = config.library_config or {}
    window.tabs = {}
    window.currentTab = nil
    
    if window.config.Cheat_Name then
        Dropdown_Name.Text = window.config.Cheat_Name
    end
    
    if window.config.Cheat_Icon then
        Logo.Image = window.config.Cheat_Icon
    end
    
    if window.config.interface_keybind then
        local keybind = Enum.KeyCode[window.config.interface_keybind]
        if keybind then
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if not gameProcessed and input.KeyCode == keybind then
                    MainFrame.Visible = not MainFrame.Visible
                end
            end)
        end
    end
    
    Exit_Button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            ScreenGui:Destroy()
        end
    end)
    
    local dragging = false
    local dragStart = nil
    local startPosition = nil
    
    Header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPosition = MainFrame.Position
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    CurrentWindow = window
    return window
end

function Window:CreateTab(tabName)
    local tab = setmetatable({}, Tab)
    tab.name = tabName
    tab.sections = {left = {}, right = {}}
    
    local TabButton = Instance.new("TextLabel")
    TabButton.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabButton.Text = tabName
    TabButton.Name = "Tab_" .. tabName
    TabButton.Size = UDim2.new(0, 127, 0, 36)
    TabButton.BorderSizePixel = 0
    TabButton.TextSize = 16
    TabButton.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    TabButton.Parent = Side_Bar
    
    local UIPadding3 = Instance.new("UIPadding")
    UIPadding3.PaddingTop = UDim.new(0, 12)
    UIPadding3.PaddingBottom = UDim.new(0, 12)
    UIPadding3.PaddingRight = UDim.new(0, 40)
    UIPadding3.PaddingLeft = UDim.new(0, 40)
    UIPadding3.Parent = TabButton
    
    local UICorner5 = Instance.new("UICorner")
    UICorner5.CornerRadius = UDim.new(0, 2)
    UICorner5.Parent = TabButton
    
    local function activateThisTab()
        for _, child in ipairs(Container:GetChildren()) do
            if child:IsA("Frame") and child.Name:sub(1,8) == "Section_" then
                child.Visible = false
            end
        end
        for _, s in ipairs(tab.sections.left) do
            if s.frame then s.frame.Visible = true end
        end
        for _, s in ipairs(tab.sections.right) do
            if s.frame then s.frame.Visible = true end
        end
    end
    
    TabButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            for _, child in pairs(Side_Bar:GetChildren()) do
                if child:IsA("TextLabel") and child.Name:find("Tab_") then
                    child.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                    child.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
            end
            
            TabButton.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
            TabButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            
            activateThisTab()
            CurrentTab = tab
        end
    end)
    
    if not CurrentTab then
        TabButton.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
        TabButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        CurrentTab = tab
        activateThisTab()
    end
    
    table.insert(self.tabs, tab)
    return tab
end

function Tab:CreateSection(config)
    local section = setmetatable({}, Section)
    section.config = config
    section.components = {}
    
    local SectionFrame = Instance.new("Frame")
    SectionFrame.ClipsDescendants = true
    SectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SectionFrame.Name = "Section_" .. config.SectionText
    SectionFrame.Size = UDim2.new(0, 242, 0, 70)
    SectionFrame.BorderSizePixel = 0
    SectionFrame.AutomaticSize = Enum.AutomaticSize.Y
    SectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 23)
    SectionFrame.Visible = false
    SectionFrame.Parent = Container
    
    local UICorner6 = Instance.new("UICorner")
    UICorner6.CornerRadius = UDim.new(0, 4)
    UICorner6.Parent = SectionFrame
    
    local SectionHeader = Instance.new("Frame")
    SectionHeader.Name = "Header"
    SectionHeader.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SectionHeader.Size = UDim2.new(0, 242, 0, 34)
    SectionHeader.BorderSizePixel = 0
    SectionHeader.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    SectionHeader.Parent = SectionFrame
    
    local UICorner7 = Instance.new("UICorner")
    UICorner7.CornerRadius = UDim.new(0, 4)
    UICorner7.Parent = SectionHeader
    
    local Liner2 = Instance.new("Frame")
    Liner2.AnchorPoint = Vector2.new(0.5, 1)
    Liner2.Name = "Liner"
    Liner2.Position = UDim2.new(0.5, 0, 1, 0)
    Liner2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Liner2.Size = UDim2.new(1, 1, 0, 1)
    Liner2.BorderSizePixel = 0
    Liner2.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
    Liner2.Parent = SectionHeader
    
    local Section_Name = Instance.new("TextLabel")
    Section_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Section_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Section_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Section_Name.Text = config.SectionText
    Section_Name.Name = "Section_Name"
    Section_Name.AnchorPoint = Vector2.new(0, 0.5)
    Section_Name.Size = UDim2.new(0, 1, 0, 1)
    Section_Name.BackgroundTransparency = 1
    Section_Name.Position = UDim2.new(0, 12, 0.5, 0)
    Section_Name.BorderSizePixel = 0
    Section_Name.AutomaticSize = Enum.AutomaticSize.XY
    Section_Name.TextSize = 14
    Section_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Section_Name.Parent = SectionHeader
    
    local Holder = Instance.new("Frame")
    Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Holder.AnchorPoint = Vector2.new(0.5, 0)
    Holder.BackgroundTransparency = 1
    Holder.Position = UDim2.new(0.5, 0, 1, 0)
    Holder.Name = "Holder"
    Holder.Size = UDim2.new(1, 1, 0.529411792755127, 1)
    Holder.BorderSizePixel = 0
    Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Holder.Parent = SectionHeader
    
    local UIListLayout3 = Instance.new("UIListLayout")
    UIListLayout3.Padding = UDim.new(0, 4)
    UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout3.Parent = Holder
    
    local UIPadding4 = Instance.new("UIPadding")
    UIPadding4.PaddingBottom = UDim.new(0, 12)
    UIPadding4.PaddingTop = UDim.new(0, 40)
    UIPadding4.Parent = Holder
    
    section.frame = SectionFrame
    section.header = SectionHeader
    section.holder = Holder
    
    if config.position == "left" then
        table.insert(self.sections.left, section)
    else
        table.insert(self.sections.right, section)
    end
    
    if CurrentTab == self then
        SectionFrame.Visible = true
    end
    
    return section
end

function Section:CreateToggle(config)
    local toggle = {}
    toggle.config = config
    toggle.state = false
    
    local ToggleComponent = Instance.new("Frame")
    ToggleComponent.BackgroundTransparency = 1
    ToggleComponent.Name = "Toggle_Component"
    ToggleComponent.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ToggleComponent.Size = UDim2.new(0, 243, 0, 35)
    ToggleComponent.BorderSizePixel = 0
    ToggleComponent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleComponent.Parent = self.holder
    
    local Toggle = Instance.new("Frame")
    Toggle.AnchorPoint = Vector2.new(0, 0.5)
    Toggle.Name = "Toggle"
    Toggle.Position = UDim2.new(0, 12, 0.5, 0)
    Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Toggle.Size = UDim2.new(0, 20, 0, 20)
    Toggle.BorderSizePixel = 0
    Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    Toggle.Parent = ToggleComponent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 2)
    UICorner.Parent = Toggle
    
    local Check = Instance.new("ImageLabel")
    Check.ImageColor3 = Color3.fromRGB(21, 21, 23)
    Check.ScaleType = Enum.ScaleType.Fit
    Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Check.Name = "Check"
    Check.AnchorPoint = Vector2.new(0.5, 0.5)
    Check.Image = "rbxassetid://80408732868542"
    Check.BackgroundTransparency = 1
    Check.Position = UDim2.new(0.5, 0, 0.5, 0)
    Check.Size = UDim2.new(0, 12, 0, 10)
    Check.BorderSizePixel = 0
    Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Check.Parent = Toggle
    Check.Visible = false
    
    local Toggle_Name = Instance.new("TextLabel")
    Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Toggle_Name.TextColor3 = Color3.fromRGB(103, 103, 104)
    Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Toggle_Name.Text = config.ToggleText
    Toggle_Name.Name = "Toggle_Name"
    Toggle_Name.AnchorPoint = Vector2.new(0, 0.5)
    Toggle_Name.Size = UDim2.new(0, 1, 0, 1)
    Toggle_Name.BackgroundTransparency = 1
    Toggle_Name.Position = UDim2.new(0, 43, 0.5, 0)
    Toggle_Name.BorderSizePixel = 0
    Toggle_Name.AutomaticSize = Enum.AutomaticSize.XY
    Toggle_Name.TextSize = 14
    Toggle_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle_Name.Parent = ToggleComponent
    
    ToggleComponent.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            toggle.state = not toggle.state
            
            if toggle.state then
                Toggle.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
                Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                Check.Visible = true
            else
                Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                Toggle_Name.TextColor3 = Color3.fromRGB(103, 103, 104)
                Check.Visible = false
            end
            
            if config.Callback then
                config.Callback(toggle.state)
            end
        end
    end)
    
    toggle.component = ToggleComponent
    toggle.toggle = Toggle
    toggle.check = Check
    toggle.text = Toggle_Name
    
    table.insert(self.components, toggle)
    return toggle
end

function Section:CreateSlider(config)
    local slider = {}
    slider.config = config or {}
    slider.text = slider.config.SliderText or "Slider"
    slider.min = slider.config.Min or 0
    slider.max = slider.config.Max or 100
    slider.default = slider.config.Value or 50
    slider.callback = slider.config.Callback
    
    slider.value = slider.default

    local SliderComponent = Instance.new("Frame")
    SliderComponent.Name = "Slider_Component"
    SliderComponent.BackgroundTransparency = 1
    SliderComponent.Position = UDim2.new(0, 0, 1, 0)
    SliderComponent.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderComponent.Size = UDim2.new(0, 243, 0, 38)
    SliderComponent.BorderSizePixel = 0
    SliderComponent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderComponent.Parent = self.holder

    local Slider_Name = Instance.new("TextLabel")
    Slider_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Slider_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Slider_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider_Name.Text = slider.text
    Slider_Name.Name = "Slider_Name"
    Slider_Name.Size = UDim2.new(0, 1, 0, 1)
    Slider_Name.BackgroundTransparency = 1
    Slider_Name.Position = UDim2.new(0, 13, 0, 0)
    Slider_Name.BorderSizePixel = 0
    Slider_Name.AutomaticSize = Enum.AutomaticSize.XY
    Slider_Name.TextSize = 14
    Slider_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider_Name.Parent = SliderComponent

    local Progress_BG = Instance.new("Frame")
    Progress_BG.AnchorPoint = Vector2.new(0, 1)
    Progress_BG.Name = "Progress_BG"
    Progress_BG.Position = UDim2.new(0, 12, 1, 0)
    Progress_BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Progress_BG.Size = UDim2.new(0, 222, 0, 15)
    Progress_BG.BorderSizePixel = 0
    Progress_BG.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    Progress_BG.Parent = SliderComponent

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 2)
    UICorner.Parent = Progress_BG

    local Progress_Bar = Instance.new("Frame")
    Progress_Bar.AnchorPoint = Vector2.new(0, 0.5)
    Progress_Bar.Name = "Progress_Bar"
    Progress_Bar.Position = UDim2.new(0, 0, 0.5, 0)
    Progress_Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Progress_Bar.Size = UDim2.new(0, 190, 0, 15)
    Progress_Bar.BorderSizePixel = 0
    Progress_Bar.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
    Progress_Bar.Parent = Progress_BG

    local UICorner2 = Instance.new("UICorner")
    UICorner2.CornerRadius = UDim.new(0, 2)
    UICorner2.Parent = Progress_Bar

    local Slider_Value = Instance.new("TextLabel")
    Slider_Value.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Slider_Value.TextColor3 = Color3.fromRGB(255, 255, 255)
    Slider_Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider_Value.Text = tostring(slider.value)
    Slider_Value.Name = "Slider_Value"
    Slider_Value.AnchorPoint = Vector2.new(1, 0)
    Slider_Value.Size = UDim2.new(0, 1, 0, 1)
    Slider_Value.BackgroundTransparency = 1
    Slider_Value.Position = UDim2.new(1, -13, 0, 0)
    Slider_Value.BorderSizePixel = 0
    Slider_Value.AutomaticSize = Enum.AutomaticSize.XY
    Slider_Value.TextSize = 14
    Slider_Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider_Value.Parent = SliderComponent

    local function updateSlider(value)
        slider.value = math.clamp(value, slider.min, slider.max)
        local percentage = (slider.value - slider.min) / (slider.max - slider.min)
        local progressWidth = 222 * percentage
        
        Progress_Bar.Size = UDim2.new(0, progressWidth, 0, 15)
        Slider_Value.Text = tostring(math.floor(slider.value + 0.5))
        
        if slider.callback then
            slider.callback(math.floor(slider.value + 0.5))
        end
    end

    updateSlider(slider.default)

    local dragging = false
    local connection

    Progress_BG.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            
            local mousePos = UserInputService:GetMouseLocation()
            local sliderPos = Progress_BG.AbsolutePosition
            local sliderSize = Progress_BG.AbsoluteSize
            local relativeX = mousePos.X - sliderPos.X
            local percentage = math.clamp(relativeX / sliderSize.X, 0, 1)
            local newValue = math.floor(slider.min + (percentage * (slider.max - slider.min)) + 0.5)
            
            updateSlider(newValue)
        end
    end)

    connection = UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local mousePos = UserInputService:GetMouseLocation()
            local sliderPos = Progress_BG.AbsolutePosition
            local sliderSize = Progress_BG.AbsoluteSize
            local relativeX = mousePos.X - sliderPos.X
            local percentage = math.clamp(relativeX / sliderSize.X, 0, 1)
            local newValue = math.floor(slider.min + (percentage * (slider.max - slider.min)) + 0.5)
            
            updateSlider(newValue)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    slider.component = SliderComponent
    slider.progress = Progress_Bar
    slider.valueLabel = Slider_Value
    
    function slider:Set(value)
        updateSlider(value)
    end
    
    function slider:Get()
        return slider.value
    end

    table.insert(self.components, slider)
    return slider
end

function Section:CreateMultidropdown(config)
    local multidropdown = {}
    multidropdown.config = config or {}
    multidropdown.text = multidropdown.config.MultidropdownText or "Multidropdown"
    multidropdown.options = multidropdown.config.Options or {}
    multidropdown.callback = multidropdown.config.Callback
    multidropdown.selected = {}
    multidropdown.open = false

    local MultiDropdown_Component = Instance.new("Frame")
    MultiDropdown_Component.Name = "MultiDropdown_Component"
    MultiDropdown_Component.BackgroundTransparency = 1
    MultiDropdown_Component.Position = UDim2.new(0, 0, 1, 0)
    MultiDropdown_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MultiDropdown_Component.Size = UDim2.new(0, 243, 0, 52)
    MultiDropdown_Component.BorderSizePixel = 0
    MultiDropdown_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MultiDropdown_Component.Parent = self.holder

    local Dropdown = Instance.new("TextButton")
    Dropdown.AnchorPoint = Vector2.new(0, 1)
    Dropdown.Name = "Dropdown"
    Dropdown.Position = UDim2.new(0, 12, 1, 0)
    Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Dropdown.Size = UDim2.new(0, 222, 0, 30)
    Dropdown.BorderSizePixel = 0
    Dropdown.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    Dropdown.Text = ""
    Dropdown.TextTransparency = 1
    Dropdown.Parent = MultiDropdown_Component

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 2)
    UICorner.Parent = Dropdown

    local Option = Instance.new("TextLabel")
    Option.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Option.TextColor3 = Color3.fromRGB(255, 255, 255)
    Option.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Option.Text = "None"
    Option.Name = "Option"
    Option.AnchorPoint = Vector2.new(0, 0.5)
    Option.Size = UDim2.new(0, 1, 0, 1)
    Option.BackgroundTransparency = 1
    Option.Position = UDim2.new(0, 11, 0.5, 0)
    Option.BorderSizePixel = 0
    Option.AutomaticSize = Enum.AutomaticSize.XY
    Option.TextSize = 14
    Option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Option.Parent = Dropdown

    local Icon = Instance.new("ImageLabel")
    Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon.Name = "Icon"
    Icon.AnchorPoint = Vector2.new(1, 0.5)
    Icon.Image = "rbxassetid://135052919879796"
    Icon.BackgroundTransparency = 1
    Icon.Position = UDim2.new(1, -10, 0.5, 0)
    Icon.Size = UDim2.new(0, 14, 0, 16)
    Icon.BorderSizePixel = 0
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.Parent = Dropdown

    local Dropdown_Name = Instance.new("TextLabel")
    Dropdown_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Dropdown_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Dropdown_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Dropdown_Name.Text = multidropdown.text
    Dropdown_Name.Name = "Dropdown_Name"
    Dropdown_Name.Size = UDim2.new(0, 1, 0, 1)
    Dropdown_Name.BackgroundTransparency = 1
    Dropdown_Name.Position = UDim2.new(0, 12, 0, 0)
    Dropdown_Name.BorderSizePixel = 0
    Dropdown_Name.AutomaticSize = Enum.AutomaticSize.XY
    Dropdown_Name.TextSize = 14
    Dropdown_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Dropdown_Name.Parent = MultiDropdown_Component

    local Container = Instance.new("Frame")
    Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Container.Size = UDim2.new(0, 218, 0, 0)
    Container.Name = "Container"
    Container.Position = UDim2.new(0, 0, 0, 0)
    Container.BorderSizePixel = 0
    Container.ZIndex = 100
    Container.AutomaticSize = Enum.AutomaticSize.Y
    Container.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    Container.Parent = ScreenGui
    Container.Visible = false

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = Container

    local UIPadding = Instance.new("UIPadding")
    UIPadding.PaddingBottom = UDim.new(0, 5)
    UIPadding.PaddingTop = UDim.new(0, 5)
    UIPadding.PaddingLeft = UDim.new(0, 3)
    UIPadding.PaddingRight = UDim.new(0, 3)
    UIPadding.Parent = Container

    local UICorner2 = Instance.new("UICorner")
    UICorner2.CornerRadius = UDim.new(0, 2)
    UICorner2.Parent = Container

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(30, 30, 34)
    UIStroke.Parent = Container

    local function updateOptionText()
        if #multidropdown.selected == 0 then
            Option.Text = "None"
        else
            Option.Text = table.concat(multidropdown.selected, " , ")
        end
    end

    local function toggleDropdown()
        print("Toggle dropdown called! Current state:", multidropdown.open)
        multidropdown.open = not multidropdown.open
        Container.Visible = multidropdown.open
        print("New state:", multidropdown.open, "Container visible:", Container.Visible)
        
        if multidropdown.open then
            Container.Size = UDim2.new(0, 218, 0, #multidropdown.options * 20 + 10)
            
            -- Use absolute screen coordinates
            local dropdownAbsolutePos = Dropdown.AbsolutePosition
            local dropdownSize = Dropdown.AbsoluteSize
            local containerX = dropdownAbsolutePos.X
            local containerY = dropdownAbsolutePos.Y + dropdownSize.Y
            
            Container.Position = UDim2.new(0, containerX, 0, containerY)
            print("Container size set to:", Container.Size, "Position:", Container.Position)
        else
            Container.Size = UDim2.new(0, 218, 0, 0)
        end
    end

    local function createOption(optionText, index)
        local Frame = Instance.new("Frame")
        Frame.AnchorPoint = Vector2.new(0, 0)
        Frame.Position = UDim2.new(0, 0, 0, 0)
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.Size = UDim2.new(1, 0, 0, 20)
        Frame.BorderSizePixel = 0
        Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
        Frame.Parent = Container

        local TextLabel = Instance.new("TextLabel")
        TextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = optionText
        TextLabel.AnchorPoint = Vector2.new(0, 0.5)
        TextLabel.Size = UDim2.new(0, 1, 0, 1)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0, 8, 0.5, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.AutomaticSize = Enum.AutomaticSize.XY
        TextLabel.TextSize = 16
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local function isSelected()
            for _, selected in pairs(multidropdown.selected) do
                if selected == optionText then
                    return true
                end
            end
            return false
        end

        local function updateOptionAppearance()
            if isSelected() then
                TextLabel.TextColor3 = Color3.fromRGB(110, 117, 244)
            else
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
        end

        updateOptionAppearance()

        Frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                if isSelected() then
                    for i, selected in pairs(multidropdown.selected) do
                        if selected == optionText then
                            table.remove(multidropdown.selected, i)
                            break
                        end
                    end
                else
                    table.insert(multidropdown.selected, optionText)
                end
                
                updateOptionAppearance()
                updateOptionText()
                
                if multidropdown.callback then
                    multidropdown.callback(multidropdown.selected)
                end
            end
        end)

        return Frame
    end

    for i, option in pairs(multidropdown.options) do
        createOption(option, i)
    end

    Dropdown.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            toggleDropdown()
        end
    end)

    updateOptionText()

    multidropdown.component = MultiDropdown_Component
    multidropdown.button = Dropdown
    multidropdown.container = Container
    multidropdown.optionLabel = Option
    
    function multidropdown:Set(selectedOptions)
        multidropdown.selected = selectedOptions or {}
        updateOptionText()
        
        for _, child in pairs(Container:GetChildren()) do
            if child:IsA("Frame") and child.Name == "Frame" then
                local textLabel = child:FindFirstChild("TextLabel")
                if textLabel then
                    local optionText = textLabel.Text
                    local isSelected = false
                    for _, selected in pairs(multidropdown.selected) do
                        if selected == optionText then
                            isSelected = true
                            break
                        end
                    end
                    
                    if isSelected then
                        textLabel.TextColor3 = Color3.fromRGB(110, 117, 244)
                    else
                        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                end
            end
        end
    end
    
    function multidropdown:Get()
        return multidropdown.selected
    end

    table.insert(self.components, multidropdown)
    return multidropdown
end

return libary
