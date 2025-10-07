local library = {}
local tabs = {}
local sections = {left = {}, right = {}}
local Dragging = false
local DragStart = nil
local DragStartPosition = nil
local currentTab = nil
local currentWindow = nil
local isOpen = true

-- Helper function to create rounded corners
local function createCorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = parent
    return corner
end

-- Helper function to create stroke
local function createStroke(parent, color, thickness)
    local stroke = Instance.new("UIStroke")
    stroke.Color = color
    stroke.Thickness = thickness
    stroke.Parent = parent
    return stroke
end

-- Helper function to get color from hex
local function ColorFromHex(hex)
    hex = hex:gsub("#", "")
    return Color3.fromRGB(
        tonumber(hex:sub(1, 2), 16),
        tonumber(hex:sub(3, 4), 16),
        tonumber(hex:sub(5, 6), 16)
    )
end

-- Create the main UI
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

createCorner(MainFrame, 6)

-- Header
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

createCorner(Header, 6)

-- Header line
local Liner = Instance.new("Frame")
Liner.AnchorPoint = Vector2.new(0.5, 1)
Liner.Name = "Liner"
Liner.Position = UDim2.new(0.5, 0, 1, 0)
Liner.BorderColor3 = Color3.fromRGB(0, 0, 0)
Liner.Size = UDim2.new(1, 1, 0, 1)
Liner.BorderSizePixel = 0
Liner.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
Liner.Parent = Header

-- Exit button
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

-- Library name
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

-- Logo container
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

-- Logo
local Logo = Instance.new("ImageLabel")
Logo.ScaleType = Enum.ScaleType.Fit
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.Name = "Logo"
Logo.Size = UDim2.new(0, 30, 0, 30)
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.BorderSizePixel = 0
Logo.BackgroundTransparency = 1
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.Parent = LogoContainer

-- Tab container
local TabContainer = Instance.new("Frame")
TabContainer.ClipsDescendants = true
TabContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabContainer.AnchorPoint = Vector2.new(0, 0)
TabContainer.Name = "TabContainer"
TabContainer.Position = UDim2.new(0, 0, 0, 49)
TabContainer.Size = UDim2.new(0, 660, 0, 40)
TabContainer.BorderSizePixel = 0
TabContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 23)
TabContainer.Parent = MainFrame

-- Tab list layout
local TabListLayout = Instance.new("UIListLayout")
TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabListLayout.FillDirection = Enum.FillDirection.Horizontal
TabListLayout.Padding = UDim.new(0, 0)
TabListLayout.Parent = TabContainer

-- Content area
local ContentArea = Instance.new("Frame")
ContentArea.ClipsDescendants = true
ContentArea.BorderColor3 = Color3.fromRGB(0, 0, 0)
ContentArea.AnchorPoint = Vector2.new(0, 0)
ContentArea.Name = "ContentArea"
ContentArea.Position = UDim2.new(0, 0, 0, 89)
ContentArea.Size = UDim2.new(0, 660, 0, 367)
ContentArea.BorderSizePixel = 0
ContentArea.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
ContentArea.Parent = MainFrame

-- Content scrolling frame
local ContentScrollingFrame = Instance.new("ScrollingFrame")
ContentScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ContentScrollingFrame.ScrollBarThickness = 0
ContentScrollingFrame.AnchorPoint = Vector2.new(0, 0)
ContentScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ContentScrollingFrame.BorderSizePixel = 0
ContentScrollingFrame.BackgroundTransparency = 1
ContentScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContentScrollingFrame.Parent = ContentArea

-- Content list layout
local ContentListLayout = Instance.new("UIListLayout")
ContentListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentListLayout.Padding = UDim.new(0, 10)
ContentListLayout.Parent = ContentScrollingFrame

-- Content padding
local ContentPadding = Instance.new("UIPadding")
ContentPadding.PaddingTop = UDim.new(0, 10)
ContentPadding.PaddingBottom = UDim.new(0, 10)
ContentPadding.PaddingLeft = UDim.new(0, 10)
ContentPadding.PaddingRight = UDim.new(0, 10)
ContentPadding.Parent = ContentScrollingFrame

-- Drag functionality
local function makeDraggable(frame)
    local UserInputService = game:GetService("UserInputService")
    
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Dragging = true
            DragStart = input.Position
            DragStartPosition = frame.Position
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
            local delta = input.Position - DragStart
            frame.Position = UDim2.new(DragStartPosition.X.Scale, DragStartPosition.X.Offset + delta.X, DragStartPosition.Y.Scale, DragStartPosition.Y.Offset + delta.Y)
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Dragging = false
        end
    end)
end

-- Make main frame draggable
makeDraggable(MainFrame)

-- Toggle UI visibility
local function toggleUI()
    isOpen = not isOpen
    ScreenGui.Enabled = isOpen
end

-- Exit button functionality
Exit_Button.MouseButton1Click:Connect(toggleUI)

-- Keybind functionality
local UserInputService = game:GetService("UserInputService")
local currentKeybind = "Insert"

local function setupKeybind(keybind)
    currentKeybind = keybind
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode[keybind] then
            toggleUI()
        end
    end)
end

-- Library functions
function library:CreateWindow(config)
    local library_config = config.library_config or {}
    
    -- Set library name
    if library_config.Cheat_Name then
        Dropdown_Name.Text = library_config.Cheat_Name
    end
    
    -- Set library icon
    if library_config.Cheat_Icon then
        Logo.Image = library_config.Cheat_Icon
    end
    
    -- Set accent color
    if library_config.AccentColor then
        local accentColor = ColorFromHex(library_config.AccentColor)
        -- Apply accent color to various elements
    end
    
    -- Setup keybind
    if library_config.interface_keybind then
        setupKeybind(library_config.interface_keybind)
    end
    
    currentWindow = {
        config = library_config,
        tabs = {}
    }
    
    return {
        CreateTab = function(tabName)
            return library:CreateTab(tabName)
        end
    }
end

function library:CreateTab(tabName)
    local tabFrame = Instance.new("TextButton")
    tabFrame.Name = tabName
    tabFrame.Size = UDim2.new(0, 100, 1, 0)
    tabFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    tabFrame.BorderSizePixel = 0
    tabFrame.Text = tabName
    tabFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabFrame.TextSize = 14
    tabFrame.Font = Enum.Font.Gotham
    tabFrame.Parent = TabContainer
    
    createCorner(tabFrame, 4)
    
    -- Tab content frame
    local tabContentFrame = Instance.new("Frame")
    tabContentFrame.Name = tabName .. "_Content"
    tabContentFrame.Size = UDim2.new(1, 0, 1, 0)
    tabContentFrame.BackgroundTransparency = 1
    tabContentFrame.Visible = false
    tabContentFrame.Parent = ContentScrollingFrame
    
    -- Tab content list layout
    local tabContentLayout = Instance.new("UIListLayout")
    tabContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabContentLayout.Padding = UDim.new(0, 10)
    tabContentLayout.Parent = tabContentFrame
    
    -- Tab switching functionality
    tabFrame.MouseButton1Click:Connect(function()
        -- Hide all tab contents
        for _, child in pairs(ContentScrollingFrame:GetChildren()) do
            if child:IsA("Frame") and child.Name:find("_Content") then
                child.Visible = false
            end
        end
        
        -- Reset all tab button colors
        for _, child in pairs(TabContainer:GetChildren()) do
            if child:IsA("TextButton") then
                child.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
                child.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
        end
        
        -- Show selected tab content
        tabContentFrame.Visible = true
        tabFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
        tabFrame.TextColor3 = Color3.fromRGB(110, 117, 244)
        
        currentTab = tabName
    end)
    
    -- Store tab reference
    if currentWindow then
        currentWindow.tabs[tabName] = {
            frame = tabFrame,
            content = tabContentFrame
        }
    end
    
    -- Show first tab by default
    if not currentTab then
        tabContentFrame.Visible = true
        tabFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
        tabFrame.TextColor3 = Color3.fromRGB(110, 117, 244)
        currentTab = tabName
    end
    
    return {
        CreateSection = function(sectionConfig)
            return library:CreateSection(sectionConfig, tabContentFrame)
        end
    }
end

function library:CreateSection(sectionConfig, parent)
    local position = sectionConfig.position or "left"
    local sectionText = sectionConfig.SectionText or "Section"
    
    local sectionFrame = Instance.new("Frame")
    sectionFrame.Name = sectionText .. "_Section"
    sectionFrame.Size = UDim2.new(0.48, 0, 0, 200)
    sectionFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    sectionFrame.BorderSizePixel = 0
    sectionFrame.Parent = parent
    
    createCorner(sectionFrame, 6)
    createStroke(sectionFrame, Color3.fromRGB(30, 30, 34), 1)
    
    -- Section header
    local sectionHeader = Instance.new("Frame")
    sectionHeader.Name = "Header"
    sectionHeader.Size = UDim2.new(1, 0, 0, 30)
    sectionHeader.BackgroundColor3 = Color3.fromRGB(30, 30, 34)
    sectionHeader.BorderSizePixel = 0
    sectionHeader.Parent = sectionFrame
    
    createCorner(sectionHeader, 6)
    
    -- Section title
    local sectionTitle = Instance.new("TextLabel")
    sectionTitle.Name = "Title"
    sectionTitle.Size = UDim2.new(1, -20, 1, 0)
    sectionTitle.Position = UDim2.new(0, 10, 0, 0)
    sectionTitle.BackgroundTransparency = 1
    sectionTitle.Text = sectionText
    sectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    sectionTitle.TextSize = 14
    sectionTitle.Font = Enum.Font.Gotham
    sectionTitle.TextXAlignment = Enum.TextXAlignment.Left
    sectionTitle.Parent = sectionHeader
    
    -- Section content area
    local sectionContent = Instance.new("ScrollingFrame")
    sectionContent.Name = "Content"
    sectionContent.Size = UDim2.new(1, -10, 1, -40)
    sectionContent.Position = UDim2.new(0, 5, 0, 35)
    sectionContent.BackgroundTransparency = 1
    sectionContent.BorderSizePixel = 0
    sectionContent.ScrollBarThickness = 0
    sectionContent.Parent = sectionFrame
    
    -- Section content layout
    local sectionContentLayout = Instance.new("UIListLayout")
    sectionContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    sectionContentLayout.Padding = UDim.new(0, 5)
    sectionContentLayout.Parent = sectionContent
    
    -- Section content padding
    local sectionContentPadding = Instance.new("UIPadding")
    sectionContentPadding.PaddingTop = UDim.new(0, 5)
    sectionContentPadding.PaddingBottom = UDim.new(0, 5)
    sectionContentPadding.Parent = sectionContent
    
    -- Position section based on position parameter
    if position == "right" then
        sectionFrame.Position = UDim2.new(0.52, 0, 0, 0)
    else
        sectionFrame.Position = UDim2.new(0, 0, 0, 0)
    end
    
    return {
        CreateToggleKeybind = function(config)
            return library:CreateToggleKeybind(config, sectionContent)
        end,
        CreateSlider = function(config)
            return library:CreateSlider(config, sectionContent)
        end,
        CreateColorpicker = function(config)
            return library:CreateColorpicker(config, sectionContent)
        end,
        CreateDropdown = function(config)
            return library:CreateDropdown(config, sectionContent)
        end,
        CreateMultiDropdown = function(config)
            return library:CreateMultiDropdown(config, sectionContent)
        end,
        CreateButton = function(config)
            return library:CreateButton(config, sectionContent)
        end,
        CreateToggleWithColor = function(config)
            return library:CreateToggleWithColor(config, sectionContent)
        end
    }
end

-- Placeholder functions for other components
function library:CreateToggleKeybind(config, parent)
    -- Placeholder function - does nothing for now
    return {}
end

function library:CreateSlider(config, parent)
    -- Placeholder function - does nothing for now
    return {}
end

function library:CreateColorpicker(config, parent)
    -- Placeholder function - does nothing for now
    return {}
end

function library:CreateDropdown(config, parent)
    -- Placeholder function - does nothing for now
    return {}
end

function library:CreateMultiDropdown(config, parent)
    -- Placeholder function - does nothing for now
    return {}
end

function library:CreateButton(config, parent)
    -- Placeholder function - does nothing for now
    return {}
end

function library:CreateToggleWithColor(config, parent)
    -- Placeholder function - does nothing for now
    return {}
end

-- Initialize the UI
ScreenGui.Enabled = true

return library
