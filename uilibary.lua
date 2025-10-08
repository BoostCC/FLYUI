-- Minimal self-contained UI library with:
-- - Header configuration (name/icon)
-- - Keybind to open/close
-- - Tabs and Sections
-- Other component creators exist as no-op stubs to avoid runtime errors.

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local libary = {}

-- Internal state
local CurrentTab = nil

-- Root Gui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

-- Main window
local MainFrame = Instance.new("Frame")
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Name = "MainFrame"
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 615, 0, 382)
MainFrame.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 4)
corner.Parent = MainFrame
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(25, 25, 25)
stroke.Parent = MainFrame

-- Header
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.BackgroundTransparency = 1
Header.Size = UDim2.new(1, 0, 0, 32)
Header.Parent = MainFrame

local HeaderLine = Instance.new("Frame")
HeaderLine.Name = "Inline"
HeaderLine.AnchorPoint = Vector2.new(0, 1)
HeaderLine.Position = UDim2.new(0, 0, 1, 0)
HeaderLine.Size = UDim2.new(1, 0, 0, 1)
HeaderLine.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HeaderLine.BorderSizePixel = 0
HeaderLine.Parent = Header

local IconHolder = Instance.new("Frame")
IconHolder.Name = "IconHolder"
IconHolder.BackgroundTransparency = 1
IconHolder.Size = UDim2.new(0, 39, 0, 31)
IconHolder.Parent = MainFrame

local Libary_Icon = Instance.new("ImageLabel")
Libary_Icon.Name = "Libary_Icon"
Libary_Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Libary_Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Libary_Icon.Size = UDim2.new(0, 15, 0, 15)
Libary_Icon.BackgroundTransparency = 1
Libary_Icon.Image = "rbxassetid://130833403023050"
Libary_Icon.Parent = IconHolder

local Libary_Name = Instance.new("TextLabel")
Libary_Name.Name = "Libary_Name"
Libary_Name.AnchorPoint = Vector2.new(0, 0.5)
Libary_Name.Position = UDim2.new(0, 50, 0.5, 0)
Libary_Name.BackgroundTransparency = 1
Libary_Name.Text = "YourLibary"
Libary_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Libary_Name.TextSize = 12
Libary_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Libary_Name.AutomaticSize = Enum.AutomaticSize.XY
Libary_Name.Parent = Header

-- Sidebar (tabs list)
local SideBar = Instance.new("Frame")
SideBar.Name = "Side_Bar"
SideBar.BackgroundTransparency = 1
SideBar.AnchorPoint = Vector2.new(0, 1)
SideBar.Position = UDim2.new(0, 0, 1, 0)
SideBar.Size = UDim2.new(0, 126, 0, 351)
SideBar.Parent = MainFrame

local SideInline = Instance.new("Frame")
SideInline.Name = "Inline"
SideInline.AnchorPoint = Vector2.new(1, 0)
SideInline.Position = UDim2.new(1, 0, 0, 0)
SideInline.Size = UDim2.new(0, 1, 1, 0)
SideInline.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SideInline.BorderSizePixel = 0
SideInline.Parent = SideBar

local TabContainer = Instance.new("Frame")
TabContainer.Name = "TabContainer"
TabContainer.BackgroundTransparency = 1
TabContainer.Size = UDim2.new(0, 125, 0, 352)
TabContainer.Parent = SideBar

local listTabs = Instance.new("UIListLayout")
listTabs.Padding = UDim.new(0, 8)
listTabs.SortOrder = Enum.SortOrder.LayoutOrder
listTabs.Parent = TabContainer
local padTabs = Instance.new("UIPadding")
padTabs.PaddingTop = UDim.new(0, 10)
padTabs.PaddingLeft = UDim.new(0, 8)
padTabs.Parent = TabContainer

-- Content area
local Page = Instance.new("Frame")
Page.Name = "Page"
Page.BackgroundTransparency = 1
Page.Position = UDim2.new(0.206, 0, 0.085, 0)
Page.Size = UDim2.new(0, 489, 0, 350)
Page.Parent = MainFrame

local Container = Instance.new("ScrollingFrame")
Container.Name = "Container"
Container.BackgroundTransparency = 1
Container.Active = true
Container.ScrollBarThickness = 0
Container.Size = UDim2.new(0, 488, 0, 349)
Container.Parent = Page

local listContent = Instance.new("UIListLayout")
listContent.Wraps = true
listContent.Padding = UDim.new(0, 12)
listContent.SortOrder = Enum.SortOrder.LayoutOrder
listContent.FillDirection = Enum.FillDirection.Horizontal
listContent.Parent = Container
local padContent = Instance.new("UIPadding")
padContent.PaddingTop = UDim.new(0, 10)
padContent.PaddingLeft = UDim.new(0, 10)
padContent.Parent = Container

-- Classes
local Window = {}
Window.__index = Window

local Tab = {}
Tab.__index = Tab

local Section = {}
Section.__index = Section

-- CreateWindow
function libary:CreateWindow(config)
    local window = setmetatable({}, Window)
    window.config = config and config.library_config or {}
    window.tabs = {}

    -- Header config
    if window.config.Cheat_Name then
        Libary_Name.Text = window.config.Cheat_Name
    end
    if window.config.Cheat_Icon then
        Libary_Icon.Image = window.config.Cheat_Icon
    end

    -- Keybind to toggle
    if window.config.interface_keybind then
        local kc = Enum.KeyCode[window.config.interface_keybind]
        if kc then
            UserInputService.InputBegan:Connect(function(input, gp)
                if not gp and input.KeyCode == kc then
                    MainFrame.Visible = not MainFrame.Visible
                end
            end)
        end
    end

    -- Dragging
    local dragging = false
    local dragStart, startPos
    Header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    return window
end

-- CreateTab
function Window:CreateTab(config)
    local tab = setmetatable({}, Tab)
    tab.sections = { left = {}, right = {} }

    local tabText, tabIcon
    if typeof(config) == "string" then
        tabText = config
    else
        tabText = config.TabText or "Tab"
        tabIcon = config.icon
    end

    -- Button
    local TabButton = Instance.new("Frame")
    TabButton.Name = "Tab_" .. tostring(tabText)
    TabButton.Size = UDim2.new(0, 107, 0, 25)
    TabButton.BackgroundTransparency = 1
    TabButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TabButton.Parent = TabContainer

    local tCorner = Instance.new("UICorner")
    tCorner.CornerRadius = UDim.new(0, 4)
    tCorner.Parent = TabButton

    local Icon = Instance.new("ImageLabel")
    Icon.Name = "Icon"
    Icon.AnchorPoint = Vector2.new(0, 0.5)
    Icon.Position = UDim2.new(0, 6, 0.5, 0)
    Icon.Size = UDim2.new(0, 15, 0, 15)
    Icon.BackgroundTransparency = 1
    Icon.ImageColor3 = Color3.fromRGB(78, 78, 78)
    Icon.Image = tabIcon or "rbxassetid://103009339613412"
    Icon.Parent = TabButton

    local Tab_Name = Instance.new("TextLabel")
    Tab_Name.Name = "Tab_Name"
    Tab_Name.AnchorPoint = Vector2.new(0, 0.5)
    Tab_Name.Position = UDim2.new(0, 25, 0.5, 0)
    Tab_Name.BackgroundTransparency = 1
    Tab_Name.Text = tostring(tabText)
    Tab_Name.TextColor3 = Color3.fromRGB(78, 78, 78)
    Tab_Name.TextSize = 14
    Tab_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Tab_Name.AutomaticSize = Enum.AutomaticSize.XY
    Tab_Name.Parent = TabButton

    local function showThisTab()
        for _, child in ipairs(Container:GetChildren()) do
            if child:IsA("Frame") and child.Name:sub(1, 8) == "Section_" then
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
            for _, child in ipairs(TabContainer:GetChildren()) do
                if child:IsA("Frame") and child:FindFirstChild("Tab_Name") then
                    TweenService:Create(child, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                    TweenService:Create(child.Tab_Name, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(78, 78, 78)}):Play()
                    if child:FindFirstChild("Icon") then
                        TweenService:Create(child.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(78, 78, 78)}):Play()
                    end
                    local s = child:FindFirstChild("UIStroke")
                    if s then s:Destroy() end
                end
            end

            TweenService:Create(TabButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
            TweenService:Create(Tab_Name, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            TweenService:Create(Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            local stroke = Instance.new("UIStroke")
            stroke.Color = Color3.fromRGB(25, 25, 25)
            stroke.Parent = TabButton

            CurrentTab = tab
            showThisTab()
        end
    end)

    if not CurrentTab then
        TabButton.BackgroundTransparency = 0
        Tab_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
        Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
        local strokeInit = Instance.new("UIStroke")
        strokeInit.Color = Color3.fromRGB(25, 25, 25)
        strokeInit.Parent = TabButton
        CurrentTab = tab
        showThisTab()
    end

    table.insert(self.tabs, tab)
    return tab
end

-- CreateSection
function Tab:CreateSection(config)
    local section = setmetatable({}, Section)
    section.config = config or {}
    section.components = {}

    local SectionFrame = Instance.new("Frame")
    SectionFrame.Name = "Section_" .. tostring(section.config.SectionText or "Section")
    SectionFrame.Size = UDim2.new(0, 228, 0, 65)
    SectionFrame.AutomaticSize = Enum.AutomaticSize.Y
    SectionFrame.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
    SectionFrame.BorderSizePixel = 0
    SectionFrame.Visible = false
    SectionFrame.Parent = Container

    local sCorner = Instance.new("UICorner")
    sCorner.CornerRadius = UDim.new(0, 4)
    sCorner.Parent = SectionFrame
    local sStroke = Instance.new("UIStroke")
    sStroke.Color = Color3.fromRGB(26, 26, 26)
    sStroke.Parent = SectionFrame
    local sPad = Instance.new("UIPadding")
    sPad.PaddingBottom = UDim.new(0, 10)
    sPad.Parent = SectionFrame

    local SHeader = Instance.new("Frame")
    SHeader.Name = "Header"
    SHeader.Size = UDim2.new(0, 228, 0, 35)
    SHeader.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    SHeader.BorderSizePixel = 0
    SHeader.Parent = SectionFrame

    local shCorner = Instance.new("UICorner")
    shCorner.CornerRadius = UDim.new(0, 4)
    shCorner.Parent = SHeader
    local shLine = Instance.new("Frame")
    shLine.Name = "Inline"
    shLine.AnchorPoint = Vector2.new(0, 1)
    shLine.Position = UDim2.new(0, 0, 1, 0)
    shLine.Size = UDim2.new(1, 0, 0, 1)
    shLine.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    shLine.BorderSizePixel = 0
    shLine.Parent = SHeader

    local SIcon = Instance.new("ImageLabel")
    SIcon.Name = "Icon"
    SIcon.AnchorPoint = Vector2.new(0, 0.5)
    SIcon.Position = UDim2.new(0, 8, 0.5, 0)
    SIcon.Size = UDim2.new(0, 15, 0, 15)
    SIcon.BackgroundTransparency = 1
    SIcon.Image = section.config.SectionIcon or "rbxassetid://78055370910689"
    SIcon.Parent = SHeader

    local SName = Instance.new("TextLabel")
    SName.Name = "Section_Name"
    SName.AnchorPoint = Vector2.new(0, 0.5)
    SName.Position = UDim2.new(0, 30, 0.5, 0)
    SName.BackgroundTransparency = 1
    SName.Text = tostring(section.config.SectionText or "Section")
    SName.TextColor3 = Color3.fromRGB(255, 255, 255)
    SName.TextSize = 14
    SName.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    SName.AutomaticSize = Enum.AutomaticSize.XY
    SName.Parent = SHeader

    local Holder = Instance.new("Frame")
    Holder.Name = "Holder"
    Holder.AnchorPoint = Vector2.new(0.5, 0)
    Holder.Position = UDim2.new(0.5, 0, 1, 0)
    Holder.BackgroundTransparency = 1
    Holder.AutomaticSize = Enum.AutomaticSize.Y
    Holder.Size = UDim2.new(0, 1, 0, 1)
    Holder.Parent = SHeader

    local hList = Instance.new("UIListLayout")
    hList.SortOrder = Enum.SortOrder.LayoutOrder
    hList.Parent = Holder
    local hPad = Instance.new("UIPadding")
    hPad.PaddingTop = UDim.new(0, 4)
    hPad.PaddingBottom = UDim.new(0, 25)
    hPad.Parent = Holder

    section.frame = SectionFrame
    section.header = SHeader
    section.holder = Holder

    if section.config.position == "left" then
        table.insert(self.sections.left, section)
    else
        table.insert(self.sections.right, section)
    end

    if CurrentTab == self then
        SectionFrame.Visible = true
    end

    return section
end

-- No-op stubs for other components so existing calls won't error
local function noopReturn(self)
    return { component = nil }
end

function Section:CreateToggle(config) return noopReturn(self) end
function Section:CreateToggleKeybind(config) return noopReturn(self) end
function Section:CreateSlider(config) return noopReturn(self) end
function Section:CreateColorpicker(config) return noopReturn(self) end
function Section:CreateDropdown(config) return noopReturn(self) end
function Section:CreateMultiDropdown(config) return noopReturn(self) end
function Section:CreateButton(config) return noopReturn(self) end
function Section:CreateLabel(config) return noopReturn(self) end
function Section:CreateToggleWithColor(config) return noopReturn(self) end
function Section:CreateKeybind(config) return noopReturn(self) end

return libary

