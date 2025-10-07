local library = {}
local tabs = {}
local sections = {left = {}, right = {}}
local Dragging = false
local DragStart = nil
local DragStartPosition = nil

local libary_theming = {
    AccentColor = "#6e75f4",
    Cheat_Name = "LibaryTest",
    Cheat_Icon = "rbxassetid://132964100967987",
    interface_keybind = "Insert"
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

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

local Exit_Button = Instance.new("ImageLabel")
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
Dropdown_Name.Text = 'Flx<font color="#6e75f4">Hub</font>'
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
Container.Name = "Container"
Container.BackgroundTransparency = 1
Container.Position = UDim2.new(0, 0, -3.749088151039359e-08, 0)
Container.Size = UDim2.new(0, 515, 0, 407)
Container.CanvasPosition = Vector2.new(0, 0)
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

local function ColorFromHex(hex)
    return Color3.fromRGB(tonumber(hex:sub(1,2), 16), tonumber(hex:sub(3,4), 16), tonumber(hex:sub(5,6), 16))
end

local function CreateWindow(config)
    local library_config = config.library_config
    libary_theming.Cheat_Name = library_config.Cheat_Name
    libary_theming.Cheat_Icon = library_config.Cheat_Icon
    libary_theming.interface_keybind = library_config.interface_keybind
    libary_theming.AccentColor = library_config.AccentColor
    
    Dropdown_Name.Text = library_config.Cheat_Name
    Logo.Image = library_config.Cheat_Icon
    
    local accentColor = ColorFromHex(libary_theming.AccentColor:sub(2))
    
    local function setupDragging()
        local UserInputService = game:GetService("UserInputService")
        
        Header.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Dragging = true
                DragStart = input.Position
                DragStartPosition = MainFrame.Position
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                local delta = input.Position - DragStart
                MainFrame.Position = UDim2.new(DragStartPosition.X.Scale, DragStartPosition.X.Offset + delta.X, DragStartPosition.Y.Scale, DragStartPosition.Y.Offset + delta.Y)
            end
        end)
        
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Dragging = false
            end
        end)
    end
    
    local function setupKeybind()
        local UserInputService = game:GetService("UserInputService")
        local keybind = libary_theming.interface_keybind
        
        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if gameProcessed then return end
            if input.KeyCode == Enum.KeyCode[keybind] then
                ScreenGui.Enabled = not ScreenGui.Enabled
            end
        end)
    end
    
    Exit_Button.MouseButton1Click:Connect(function()
        ScreenGui.Enabled = false
    end)
    
    setupDragging()
    setupKeybind()
    
    return {
        CreateTab = function(tabName)
            local tabButton = Instance.new("TextLabel")
            tabButton.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
            tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            tabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            tabButton.Text = tabName
            tabButton.Name = "Tab"
            tabButton.Size = UDim2.new(0, 127, 0, 36)
            tabButton.BorderSizePixel = 0
            tabButton.TextSize = 16
            tabButton.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
            tabButton.Parent = Side_Bar
            
            local UIPadding3 = Instance.new("UIPadding")
            UIPadding3.PaddingTop = UDim.new(0, 12)
            UIPadding3.PaddingBottom = UDim.new(0, 12)
            UIPadding3.PaddingRight = UDim.new(0, 40)
            UIPadding3.PaddingLeft = UDim.new(0, 40)
            UIPadding3.Parent = tabButton
            
            local UICorner5 = Instance.new("UICorner")
            UICorner5.CornerRadius = UDim.new(0, 2)
            UICorner5.Parent = tabButton
            
            local tabContent = Instance.new("Frame")
            tabContent.Name = "TabContent"
            tabContent.Size = UDim2.new(1, 0, 1, 0)
            tabContent.BackgroundTransparency = 1
            tabContent.Parent = Container
            
            local isActive = false
            
            tabButton.MouseButton1Click:Connect(function()
                for _, otherTab in pairs(tabs) do
                    if otherTab ~= tabButton then
                        otherTab.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                        otherTab.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                end
                
                tabButton.BackgroundColor3 = accentColor
                tabButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                
                for _, content in pairs(Container:GetChildren()) do
                    if content:IsA("Frame") and content.Name == "TabContent" then
                        content.Visible = false
                    end
                end
                
                tabContent.Visible = true
                isActive = true
            end)
            
            table.insert(tabs, tabButton)
            
            return {
                CreateSection = function(sectionConfig)
                    local position = sectionConfig.position or "left"
                    local sectionText = sectionConfig.SectionText or "Section"
                    
                    local sectionFrame = Instance.new("Frame")
                    sectionFrame.ClipsDescendants = true
                    sectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    sectionFrame.Name = "Section_" .. sectionText
                    sectionFrame.Size = UDim2.new(0, 242, 0, 70)
                    sectionFrame.BorderSizePixel = 0
                    sectionFrame.AutomaticSize = Enum.AutomaticSize.Y
                    sectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 23)
                    sectionFrame.Parent = tabContent
                    
                    local UICorner6 = Instance.new("UICorner")
                    UICorner6.CornerRadius = UDim.new(0, 4)
                    UICorner6.Parent = sectionFrame
                    
                    local Header2 = Instance.new("Frame")
                    Header2.Name = "Header"
                    Header2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Header2.Size = UDim2.new(0, 242, 0, 34)
                    Header2.BorderSizePixel = 0
                    Header2.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                    Header2.Parent = sectionFrame
                    
                    local Holder = Instance.new("Frame")
                    Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Holder.AnchorPoint = Vector2.new(0.5, 0)
                    Holder.BackgroundTransparency = 1
                    Holder.Position = UDim2.new(0.5, 0, 1, 0)
                    Holder.Name = "Holder"
                    Holder.Size = UDim2.new(1, 1, 0.529411792755127, 1)
                    Holder.BorderSizePixel = 0
                    Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Holder.Parent = Header2
                    
                    local UIListLayout3 = Instance.new("UIListLayout")
                    UIListLayout3.Padding = UDim.new(0, 4)
                    UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayout3.Parent = Holder
                    
                    local UIPadding4 = Instance.new("UIPadding")
                    UIPadding4.PaddingBottom = UDim.new(0, 12)
                    UIPadding4.PaddingTop = UDim.new(0, 40)
                    UIPadding4.Parent = Holder
                    
                    local Section_Name = Instance.new("TextLabel")
                    Section_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                    Section_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Section_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Section_Name.Text = sectionText
                    Section_Name.Name = "Section_Name"
                    Section_Name.AnchorPoint = Vector2.new(0, 0.5)
                    Section_Name.Size = UDim2.new(0, 1, 0, 1)
                    Section_Name.BackgroundTransparency = 1
                    Section_Name.Position = UDim2.new(0, 12, 0.5, 0)
                    Section_Name.BorderSizePixel = 0
                    Section_Name.AutomaticSize = Enum.AutomaticSize.XY
                    Section_Name.TextSize = 14
                    Section_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Section_Name.Parent = Header2
                    
                    local Liner2 = Instance.new("Frame")
                    Liner2.AnchorPoint = Vector2.new(0.5, 1)
                    Liner2.Name = "Liner"
                    Liner2.Position = UDim2.new(0.5, 0, 1, 0)
                    Liner2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Liner2.Size = UDim2.new(1, 1, 0, 1)
                    Liner2.BorderSizePixel = 0
                    Liner2.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
                    Liner2.Parent = Header2
                    
                    local UICorner7 = Instance.new("UICorner")
                    UICorner7.CornerRadius = UDim.new(0, 4)
                    UICorner7.Parent = Header2
                    
                    return {
                        CreateToggle = function(toggleConfig)
                            local toggleText = toggleConfig.ToggleText or "Toggle"
                            local callback = toggleConfig.Callback or function() end
                            
                            local Toggle_Component = Instance.new("Frame")
                            Toggle_Component.BackgroundTransparency = 1
                            Toggle_Component.Name = "Toggle_Component"
                            Toggle_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle_Component.Size = UDim2.new(0, 243, 0, 35)
                            Toggle_Component.BorderSizePixel = 0
                            Toggle_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Component.Parent = Holder
                            
                            local Toggle = Instance.new("Frame")
                            Toggle.AnchorPoint = Vector2.new(0, 0.5)
                            Toggle.Name = "Toggle"
                            Toggle.Position = UDim2.new(0, 12, 0.5, 0)
                            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle.Size = UDim2.new(0, 20, 0, 20)
                            Toggle.BorderSizePixel = 0
                            Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                            Toggle.Parent = Toggle_Component
                            
                            local UICorner8 = Instance.new("UICorner")
                            UICorner8.CornerRadius = UDim.new(0, 2)
                            UICorner8.Parent = Toggle
                            
                            local Toggle_Name = Instance.new("TextLabel")
                            Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle_Name.Text = toggleText
                            Toggle_Name.Name = "Toggle_Name"
                            Toggle_Name.AnchorPoint = Vector2.new(0, 0.5)
                            Toggle_Name.Size = UDim2.new(0, 1, 0, 1)
                            Toggle_Name.BackgroundTransparency = 1
                            Toggle_Name.Position = UDim2.new(0, 43, 0.5, 0)
                            Toggle_Name.BorderSizePixel = 0
                            Toggle_Name.AutomaticSize = Enum.AutomaticSize.XY
                            Toggle_Name.TextSize = 14
                            Toggle_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.Parent = Toggle_Component
                            
                            local isToggled = false
                            
                            Toggle_Component.MouseButton1Click:Connect(function()
                                isToggled = not isToggled
                                if isToggled then
                                    Toggle.BackgroundColor3 = accentColor
                                else
                                    Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                                end
                                callback(isToggled)
                            end)
                            
                            return {
                                Set = function(value)
                                    isToggled = value
                                    if isToggled then
                                        Toggle.BackgroundColor3 = accentColor
                                    else
                                        Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                                    end
                                end,
                                Get = function()
                                    return isToggled
                                end
                            }
                        end,
                        
                        CreateButton = function(buttonConfig)
                            local buttonText = buttonConfig.ButtonText or "Button"
                            local callback = buttonConfig.Callback or function() end
                            
                            local Button_Component = Instance.new("Frame")
                            Button_Component.Name = "Button_Component"
                            Button_Component.BackgroundTransparency = 1
                            Button_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Button_Component.Size = UDim2.new(0, 243, 0, 46)
                            Button_Component.BorderSizePixel = 0
                            Button_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Button_Component.Parent = Holder
                            
                            local TextButton = Instance.new("TextButton")
                            TextButton.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            TextButton.Text = buttonText
                            TextButton.AnchorPoint = Vector2.new(0, 0.5)
                            TextButton.Position = UDim2.new(0, 12, 0.5, 0)
                            TextButton.Size = UDim2.new(0, 222, 0, 35)
                            TextButton.BorderSizePixel = 0
                            TextButton.TextSize = 14
                            TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                            TextButton.Parent = Button_Component
                            
                            local UICorner9 = Instance.new("UICorner")
                            UICorner9.CornerRadius = UDim.new(0, 2)
                            UICorner9.Parent = TextButton
                            
                            TextButton.MouseButton1Click:Connect(function()
                                callback()
                            end)
                            
                            return {}
                        end,
                        
                        CreateSlider = function(sliderConfig)
                            local sliderText = sliderConfig.SliderText or "Slider"
                            local min = sliderConfig.Min or 0
                            local max = sliderConfig.Max or 100
                            local callback = sliderConfig.Callback or function() end
                            
                            local Slider_Component = Instance.new("Frame")
                            Slider_Component.Name = "Slider_Component"
                            Slider_Component.BackgroundTransparency = 1
                            Slider_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Slider_Component.Size = UDim2.new(0, 243, 0, 38)
                            Slider_Component.BorderSizePixel = 0
                            Slider_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Slider_Component.Parent = Holder
                            
                            local Progress_BG = Instance.new("Frame")
                            Progress_BG.AnchorPoint = Vector2.new(0, 1)
                            Progress_BG.Name = "Progress_BG"
                            Progress_BG.Position = UDim2.new(0, 12, 1, 0)
                            Progress_BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Progress_BG.Size = UDim2.new(0, 222, 0, 15)
                            Progress_BG.BorderSizePixel = 0
                            Progress_BG.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                            Progress_BG.Parent = Slider_Component
                            
                            local UICorner10 = Instance.new("UICorner")
                            UICorner10.CornerRadius = UDim.new(0, 2)
                            UICorner10.Parent = Progress_BG
                            
                            local Progress_Bar = Instance.new("Frame")
                            Progress_Bar.AnchorPoint = Vector2.new(0, 0.5)
                            Progress_Bar.Name = "Progress_Bar"
                            Progress_Bar.Position = UDim2.new(0, 0, 0.5, 0)
                            Progress_Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Progress_Bar.Size = UDim2.new(0, 0, 0, 15)
                            Progress_Bar.BorderSizePixel = 0
                            Progress_Bar.BackgroundColor3 = accentColor
                            Progress_Bar.Parent = Progress_BG
                            
                            local UICorner11 = Instance.new("UICorner")
                            UICorner11.CornerRadius = UDim.new(0, 2)
                            UICorner11.Parent = Progress_Bar
                            
                            local Slider_Name = Instance.new("TextLabel")
                            Slider_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Slider_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Slider_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Slider_Name.Text = sliderText
                            Slider_Name.Name = "Slider_Name"
                            Slider_Name.Size = UDim2.new(0, 1, 0, 1)
                            Slider_Name.BackgroundTransparency = 1
                            Slider_Name.Position = UDim2.new(0, 13, 0, 0)
                            Slider_Name.BorderSizePixel = 0
                            Slider_Name.AutomaticSize = Enum.AutomaticSize.XY
                            Slider_Name.TextSize = 14
                            Slider_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Slider_Name.Parent = Slider_Component
                            
                            local Slider_Value = Instance.new("TextLabel")
                            Slider_Value.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Slider_Value.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Slider_Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Slider_Value.Text = tostring(min)
                            Slider_Value.Name = "Slider_Value"
                            Slider_Value.AnchorPoint = Vector2.new(1, 0)
                            Slider_Value.Size = UDim2.new(0, 1, 0, 1)
                            Slider_Value.BackgroundTransparency = 1
                            Slider_Value.Position = UDim2.new(1, -13, 0, 0)
                            Slider_Value.BorderSizePixel = 0
                            Slider_Value.AutomaticSize = Enum.AutomaticSize.XY
                            Slider_Value.TextSize = 14
                            Slider_Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Slider_Value.Parent = Slider_Component
                            
                            local currentValue = min
                            
                            local function updateSlider(value)
                                currentValue = math.clamp(value, min, max)
                                local percentage = (currentValue - min) / (max - min)
                                Progress_Bar.Size = UDim2.new(percentage, 0, 0, 15)
                                Slider_Value.Text = tostring(math.floor(currentValue))
                                callback(currentValue)
                            end
                            
                            local isDragging = false
                            
                            Progress_BG.InputBegan:Connect(function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    isDragging = true
                                end
                            end)
                            
                            game:GetService("UserInputService").InputChanged:Connect(function(input)
                                if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                    local mouseX = input.Position.X
                                    local progressBarX = Progress_BG.AbsolutePosition.X
                                    local progressBarWidth = Progress_BG.AbsoluteSize.X
                                    local percentage = math.clamp((mouseX - progressBarX) / progressBarWidth, 0, 1)
                                    local value = min + (max - min) * percentage
                                    updateSlider(value)
                                end
                            end)
                            
                            game:GetService("UserInputService").InputEnded:Connect(function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                    isDragging = false
                                end
                            end)
                            
                            return {
                                Set = function(value)
                                    updateSlider(value)
                                end,
                                Get = function()
                                    return currentValue
                                end
                            }
                        end,
                        
                        CreateDropdown = function(dropdownConfig)
                            local dropdownText = dropdownConfig.DropdownText or "Dropdown"
                            local options = dropdownConfig.Options or {}
                            local callback = dropdownConfig.Callback or function() end
                            
                            local Dropdown_Component = Instance.new("Frame")
                            Dropdown_Component.Name = "Dropdown_Component"
                            Dropdown_Component.BackgroundTransparency = 1
                            Dropdown_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Dropdown_Component.Size = UDim2.new(0, 243, 0, 52)
                            Dropdown_Component.BorderSizePixel = 0
                            Dropdown_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Dropdown_Component.Parent = Holder
                            
                            local Dropdown = Instance.new("Frame")
                            Dropdown.AnchorPoint = Vector2.new(0, 1)
                            Dropdown.Name = "Dropdown"
                            Dropdown.Position = UDim2.new(0, 12, 1, 0)
                            Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Dropdown.Size = UDim2.new(0, 222, 0, 30)
                            Dropdown.BorderSizePixel = 0
                            Dropdown.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                            Dropdown.Parent = Dropdown_Component
                            
                            local UICorner12 = Instance.new("UICorner")
                            UICorner12.CornerRadius = UDim.new(0, 2)
                            UICorner12.Parent = Dropdown
                            
                            local Option = Instance.new("TextLabel")
                            Option.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Option.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Option.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Option.Text = options[1] or "Option 1"
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
                            Icon.Image = "rbxassetid://130094546997037"
                            Icon.BackgroundTransparency = 1
                            Icon.Position = UDim2.new(1, -10, 0.5, 0)
                            Icon.Size = UDim2.new(0, 14, 0, 14)
                            Icon.BorderSizePixel = 0
                            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Icon.Parent = Dropdown
                            
                            local Dropdown_Name = Instance.new("TextLabel")
                            Dropdown_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Dropdown_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Dropdown_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Dropdown_Name.Text = dropdownText
                            Dropdown_Name.Name = "Dropdown_Name"
                            Dropdown_Name.Size = UDim2.new(0, 1, 0, 1)
                            Dropdown_Name.BackgroundTransparency = 1
                            Dropdown_Name.Position = UDim2.new(0, 12, 0, 0)
                            Dropdown_Name.BorderSizePixel = 0
                            Dropdown_Name.AutomaticSize = Enum.AutomaticSize.XY
                            Dropdown_Name.TextSize = 14
                            Dropdown_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Dropdown_Name.Parent = Dropdown_Component
                            
                            local isOpen = false
                            local currentSelection = options[1] or "Option 1"
                            
                            Dropdown.MouseButton1Click:Connect(function()
                                isOpen = not isOpen
                                if isOpen then
                                    Icon.Image = "rbxassetid://135052919879796"
                                else
                                    Icon.Image = "rbxassetid://130094546997037"
                                end
                            end)
                            
                            return {
                                Set = function(value)
                                    currentSelection = value
                                    Option.Text = value
                                    callback(value)
                                end,
                                Get = function()
                                    return currentSelection
                                end
                            }
                        end,
                        
                        CreateMultiDropdown = function(multiDropdownConfig)
                            local multiDropdownText = multiDropdownConfig.MultiDropdownText or "MultiDropdown"
                            local options = multiDropdownConfig.Options or {}
                            local callback = multiDropdownConfig.Callback or function() end
                            
                            local MultiDropdown_Component = Instance.new("Frame")
                            MultiDropdown_Component.Name = "MultiDropdown_Component"
                            MultiDropdown_Component.BackgroundTransparency = 1
                            MultiDropdown_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            MultiDropdown_Component.Size = UDim2.new(0, 243, 0, 52)
                            MultiDropdown_Component.BorderSizePixel = 0
                            MultiDropdown_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            MultiDropdown_Component.Parent = Holder
                            
                            local Dropdown = Instance.new("Frame")
                            Dropdown.AnchorPoint = Vector2.new(0, 1)
                            Dropdown.Name = "Dropdown"
                            Dropdown.Position = UDim2.new(0, 12, 1, 0)
                            Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Dropdown.Size = UDim2.new(0, 222, 0, 30)
                            Dropdown.BorderSizePixel = 0
                            Dropdown.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                            Dropdown.Parent = MultiDropdown_Component
                            
                            local UICorner13 = Instance.new("UICorner")
                            UICorner13.CornerRadius = UDim.new(0, 2)
                            UICorner13.Parent = Dropdown
                            
                            local Option = Instance.new("TextLabel")
                            Option.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Option.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Option.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Option.Text = table.concat(options, " , ")
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
                            Dropdown_Name.Text = multiDropdownText
                            Dropdown_Name.Name = "Dropdown_Name"
                            Dropdown_Name.Size = UDim2.new(0, 1, 0, 1)
                            Dropdown_Name.BackgroundTransparency = 1
                            Dropdown_Name.Position = UDim2.new(0, 12, 0, 0)
                            Dropdown_Name.BorderSizePixel = 0
                            Dropdown_Name.AutomaticSize = Enum.AutomaticSize.XY
                            Dropdown_Name.TextSize = 14
                            Dropdown_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Dropdown_Name.Parent = MultiDropdown_Component
                            
                            local currentSelections = {}
                            
                            return {
                                Set = function(selections)
                                    currentSelections = selections
                                    Option.Text = table.concat(selections, " , ")
                                    callback(selections)
                                end,
                                Get = function()
                                    return currentSelections
                                end
                            }
                        end,
                        
                        CreateColorpicker = function(colorpickerConfig)
                            local colorpickerText = colorpickerConfig.ColorpickerText or "Colorpicker"
                            local defaultColor = colorpickerConfig.DefaultColor or Color3.fromRGB(255, 0, 0)
                            local callback = colorpickerConfig.Callback or function() end
                            
                            local Colorpicker_Component = Instance.new("Frame")
                            Colorpicker_Component.BackgroundTransparency = 1
                            Colorpicker_Component.Name = "Colorpicker_Component"
                            Colorpicker_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Colorpicker_Component.Size = UDim2.new(0, 243, 0, 35)
                            Colorpicker_Component.BorderSizePixel = 0
                            Colorpicker_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Colorpicker_Component.Parent = Holder
                            
                            local Toggle_Name = Instance.new("TextLabel")
                            Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle_Name.Text = colorpickerText
                            Toggle_Name.Name = "Toggle_Name"
                            Toggle_Name.AnchorPoint = Vector2.new(0, 0.5)
                            Toggle_Name.Size = UDim2.new(0, 1, 0, 1)
                            Toggle_Name.BackgroundTransparency = 1
                            Toggle_Name.Position = UDim2.new(0, 42, 0.5, 0)
                            Toggle_Name.BorderSizePixel = 0
                            Toggle_Name.AutomaticSize = Enum.AutomaticSize.XY
                            Toggle_Name.TextSize = 14
                            Toggle_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.Parent = Colorpicker_Component
                            
                            local Colorpicker = Instance.new("ImageLabel")
                            Colorpicker.ClipsDescendants = true
                            Colorpicker.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Colorpicker.Name = "Colorpicker"
                            Colorpicker.AnchorPoint = Vector2.new(0, 0.5)
                            Colorpicker.Image = "rbxassetid://70964617193772"
                            Colorpicker.BackgroundTransparency = 1
                            Colorpicker.Position = UDim2.new(0, 12, 0.5, 0)
                            Colorpicker.Size = UDim2.new(0, 20, 0, 20)
                            Colorpicker.BorderSizePixel = 0
                            Colorpicker.BackgroundColor3 = defaultColor
                            Colorpicker.Parent = Colorpicker_Component
                            
                            local UICorner14 = Instance.new("UICorner")
                            UICorner14.CornerRadius = UDim.new(0, 2)
                            UICorner14.Parent = Colorpicker
                            
                            local currentColor = defaultColor
                            
                            Colorpicker.MouseButton1Click:Connect(function()
                                callback(currentColor)
                            end)
                            
                            return {
                                Set = function(color)
                                    currentColor = color
                                    Colorpicker.BackgroundColor3 = color
                                    callback(color)
                                end,
                                Get = function()
                                    return currentColor
                                end
                            }
                        end,
                        
                        CreateToggleKeybind = function(toggleKeybindConfig)
                            local toggleText = toggleKeybindConfig.ToggleText or "Toggle"
                            local callback = toggleKeybindConfig.Callback or function() end
                            
                            local Toggle_Component = Instance.new("Frame")
                            Toggle_Component.BackgroundTransparency = 1
                            Toggle_Component.Name = "Toggle_Component"
                            Toggle_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle_Component.Size = UDim2.new(0, 243, 0, 35)
                            Toggle_Component.BorderSizePixel = 0
                            Toggle_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Component.Parent = Holder
                            
                            local Toggle = Instance.new("Frame")
                            Toggle.AnchorPoint = Vector2.new(0, 0.5)
                            Toggle.Name = "Toggle"
                            Toggle.Position = UDim2.new(0, 12, 0.5, 0)
                            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle.Size = UDim2.new(0, 20, 0, 20)
                            Toggle.BorderSizePixel = 0
                            Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                            Toggle.Parent = Toggle_Component
                            
                            local UICorner15 = Instance.new("UICorner")
                            UICorner15.CornerRadius = UDim.new(0, 2)
                            UICorner15.Parent = Toggle
                            
                            local Toggle_Name = Instance.new("TextLabel")
                            Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle_Name.Text = toggleText
                            Toggle_Name.Name = "Toggle_Name"
                            Toggle_Name.AnchorPoint = Vector2.new(0, 0.5)
                            Toggle_Name.Size = UDim2.new(0, 1, 0, 1)
                            Toggle_Name.BackgroundTransparency = 1
                            Toggle_Name.Position = UDim2.new(0, 43, 0.5, 0)
                            Toggle_Name.BorderSizePixel = 0
                            Toggle_Name.AutomaticSize = Enum.AutomaticSize.XY
                            Toggle_Name.TextSize = 14
                            Toggle_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.Parent = Toggle_Component
                            
                            local Keybind = Instance.new("TextLabel")
                            Keybind.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Keybind.Text = "SHIFT"
                            Keybind.Size = UDim2.new(0, 1, 0, 1)
                            Keybind.AnchorPoint = Vector2.new(1, 0.5)
                            Keybind.AutomaticSize = Enum.AutomaticSize.XY
                            Keybind.Name = "Keybind"
                            Keybind.Position = UDim2.new(1, -12, 0.5, 0)
                            Keybind.BorderSizePixel = 0
                            Keybind.ZIndex = 50
                            Keybind.TextSize = 14
                            Keybind.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                            Keybind.Parent = Toggle_Component
                            
                            local UIPadding5 = Instance.new("UIPadding")
                            UIPadding5.PaddingTop = UDim.new(0, 6)
                            UIPadding5.PaddingBottom = UDim.new(0, 6)
                            UIPadding5.PaddingRight = UDim.new(0, 6)
                            UIPadding5.PaddingLeft = UDim.new(0, 6)
                            UIPadding5.Parent = Keybind
                            
                            local UICorner16 = Instance.new("UICorner")
                            UICorner16.CornerRadius = UDim.new(0, 4)
                            UICorner16.Parent = Keybind
                            
                            local isToggled = false
                            
                            Toggle_Component.MouseButton1Click:Connect(function()
                                isToggled = not isToggled
                                if isToggled then
                                    Toggle.BackgroundColor3 = accentColor
                                else
                                    Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                                end
                                callback(isToggled)
                            end)
                            
                            return {
                                Set = function(value)
                                    isToggled = value
                                    if isToggled then
                                        Toggle.BackgroundColor3 = accentColor
                                    else
                                        Toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                                    end
                                end,
                                Get = function()
                                    return isToggled
                                end
                            }
                        end,
                        
                        CreateToggleWithColor = function(toggleWithColorConfig)
                            local toggleText = toggleWithColorConfig.ToggleText or "Toggle"
                            local defaultColor = toggleWithColorConfig.DefaultColor or Color3.fromRGB(255, 0, 0)
                            local callback = toggleWithColorConfig.Callback or function() end
                            
                            local Toggle_Component = Instance.new("Frame")
                            Toggle_Component.BackgroundTransparency = 1
                            Toggle_Component.Name = "Toggle_Component"
                            Toggle_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle_Component.Size = UDim2.new(0, 243, 0, 35)
                            Toggle_Component.BorderSizePixel = 0
                            Toggle_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Component.Parent = Holder
                            
                            local Toggle = Instance.new("Frame")
                            Toggle.AnchorPoint = Vector2.new(0, 0.5)
                            Toggle.Name = "Toggle"
                            Toggle.Position = UDim2.new(0, 12, 0.5, 0)
                            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle.Size = UDim2.new(0, 20, 0, 20)
                            Toggle.BorderSizePixel = 0
                            Toggle.BackgroundColor3 = defaultColor
                            Toggle.Parent = Toggle_Component
                            
                            local UICorner17 = Instance.new("UICorner")
                            UICorner17.CornerRadius = UDim.new(0, 2)
                            UICorner17.Parent = Toggle
                            
                            local Toggle_Name = Instance.new("TextLabel")
                            Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                            Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Toggle_Name.Text = toggleText
                            Toggle_Name.Name = "Toggle_Name"
                            Toggle_Name.AnchorPoint = Vector2.new(0, 0.5)
                            Toggle_Name.Size = UDim2.new(0, 1, 0, 1)
                            Toggle_Name.BackgroundTransparency = 1
                            Toggle_Name.Position = UDim2.new(0, 43, 0.5, 0)
                            Toggle_Name.BorderSizePixel = 0
                            Toggle_Name.AutomaticSize = Enum.AutomaticSize.XY
                            Toggle_Name.TextSize = 14
                            Toggle_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            Toggle_Name.Parent = Toggle_Component
                            
                            local isToggled = false
                            
                            Toggle_Component.MouseButton1Click:Connect(function()
                                isToggled = not isToggled
                                if isToggled then
                                    Toggle.BackgroundColor3 = accentColor
                                else
                                    Toggle.BackgroundColor3 = defaultColor
                                end
                                callback(isToggled)
                            end)
                            
                            return {
                                Set = function(value)
                                    isToggled = value
                                    if isToggled then
                                        Toggle.BackgroundColor3 = accentColor
                                    else
                                        Toggle.BackgroundColor3 = defaultColor
                                    end
                                end,
                                Get = function()
                                    return isToggled
                                end
                            }
                        end
                    }
                end
            }
        end
    }
end

ScreenGui.Enabled = true

return library
