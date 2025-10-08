local libary = {}
local tabs = {}
local sections = {left = {}, right = {}}
local Dragging = false
local DragStart = nil
local DragStartPosition = nil




local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.StarterGui

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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Header

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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = LogoContainer

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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Shadow

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

local Tab = Instance.new("TextLabel")
Tab.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.Text = "ExampleTab"
Tab.Name = "Tab"
Tab.Size = UDim2.new(0, 127, 0, 36)
Tab.BorderSizePixel = 0
Tab.TextSize = 16
Tab.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
Tab.Parent = Side_Bar

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 12)
UIPadding.PaddingBottom = UDim.new(0, 12)
UIPadding.PaddingRight = UDim.new(0, 40)
UIPadding.PaddingLeft = UDim.new(0, 40)
UIPadding.Parent = Tab

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Tab

local Tab = Instance.new("TextLabel")
Tab.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.Text = "ExampleTab"
Tab.Name = "Tab"
Tab.Position = UDim2.new(0, 0, 0.11675126850605011, 0)
Tab.Size = UDim2.new(0, 127, 0, 36)
Tab.BorderSizePixel = 0
Tab.TextSize = 16
Tab.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Tab.Parent = Side_Bar

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 12)
UIPadding.PaddingBottom = UDim.new(0, 12)
UIPadding.PaddingRight = UDim.new(0, 40)
UIPadding.PaddingLeft = UDim.new(0, 40)
UIPadding.Parent = Tab

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Tab

local Tab = Instance.new("TextLabel")
Tab.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.Text = "ExampleTab"
Tab.Name = "Tab"
Tab.Position = UDim2.new(0, 0, 0.23350253701210022, 0)
Tab.Size = UDim2.new(0, 127, 0, 36)
Tab.BorderSizePixel = 0
Tab.TextSize = 16
Tab.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Tab.Parent = Side_Bar

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 12)
UIPadding.PaddingBottom = UDim.new(0, 12)
UIPadding.PaddingRight = UDim.new(0, 40)
UIPadding.PaddingLeft = UDim.new(0, 40)
UIPadding.Parent = Tab

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Tab

local Tab = Instance.new("TextLabel")
Tab.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.Text = "ExampleTab"
Tab.Name = "Tab"
Tab.Position = UDim2.new(0, 0, 0.3502538204193115, 0)
Tab.Size = UDim2.new(0, 127, 0, 36)
Tab.BorderSizePixel = 0
Tab.TextSize = 16
Tab.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Tab.Parent = Side_Bar

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Tab

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 12)
UIPadding.PaddingBottom = UDim.new(0, 12)
UIPadding.PaddingRight = UDim.new(0, 40)
UIPadding.PaddingLeft = UDim.new(0, 40)
UIPadding.Parent = Tab

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
Container.CanvasPosition = Vector2.new(0, 140)
Container.BorderSizePixel = 0
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.Parent = Page

local Section_Left = Instance.new("Frame")
Section_Left.ClipsDescendants = true
Section_Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section_Left.Name = "Section_Left"
Section_Left.Position = UDim2.new(0.04660193994641304, 0, 0.03194103017449379, 0)
Section_Left.Size = UDim2.new(0, 242, 0, 70)
Section_Left.BorderSizePixel = 0
Section_Left.AutomaticSize = Enum.AutomaticSize.Y
Section_Left.BackgroundColor3 = Color3.fromRGB(21, 21, 23)
Section_Left.Parent = Container

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Section_Left

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Size = UDim2.new(0, 242, 0, 34)
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Header.Parent = Section_Left

local Holder = Instance.new("Frame")
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.AnchorPoint = Vector2.new(0.5, 0)
Holder.BackgroundTransparency = 1
Holder.Position = UDim2.new(0.5, 0, 1, 0)
Holder.Name = "Holder"
Holder.Size = UDim2.new(1, 1, 0.529411792755127, 1)
Holder.BorderSizePixel = 0
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.Parent = Header

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Holder

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
Toggle.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
Toggle.Parent = Toggle_Component

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

local Toggle_Name = Instance.new("TextLabel")
Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_Name.Text = "Example Toggle"
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

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingBottom = UDim.new(0, 12)
UIPadding.PaddingTop = UDim.new(0, 40)
UIPadding.Parent = Holder

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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Toggle

local Toggle_Name = Instance.new("TextLabel")
Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Toggle_Name.TextColor3 = Color3.fromRGB(103, 103, 104)
Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_Name.Text = "Example Toggle"
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

local Toggle_Name = Instance.new("TextLabel")
Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_Name.Text = "Example Toggle"
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

local Slider_Componenet = Instance.new("Frame")
Slider_Componenet.Name = "Slider_Componenet"
Slider_Componenet.BackgroundTransparency = 1
Slider_Componenet.Position = UDim2.new(0, 0, 1, 0)
Slider_Componenet.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider_Componenet.Size = UDim2.new(0, 243, 0, 38)
Slider_Componenet.BorderSizePixel = 0
Slider_Componenet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_Componenet.Parent = Holder

local Progress_BG = Instance.new("Frame")
Progress_BG.AnchorPoint = Vector2.new(0, 1)
Progress_BG.Name = "Progress_BG"
Progress_BG.Position = UDim2.new(0, 12, 1, 0)
Progress_BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress_BG.Size = UDim2.new(0, 222, 0, 15)
Progress_BG.BorderSizePixel = 0
Progress_BG.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Progress_BG.Parent = Slider_Componenet

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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Progress_Bar

local Slider_Name = Instance.new("TextLabel")
Slider_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Slider_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Slider_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider_Name.Text = "Example Slider"
Slider_Name.Name = "Slider_Name"
Slider_Name.Size = UDim2.new(0, 1, 0, 1)
Slider_Name.BackgroundTransparency = 1
Slider_Name.Position = UDim2.new(0, 13, 0, 0)
Slider_Name.BorderSizePixel = 0
Slider_Name.AutomaticSize = Enum.AutomaticSize.XY
Slider_Name.TextSize = 14
Slider_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_Name.Parent = Slider_Componenet

local Slider_Value = Instance.new("TextLabel")
Slider_Value.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Slider_Value.TextColor3 = Color3.fromRGB(255, 255, 255)
Slider_Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider_Value.Text = "1200"
Slider_Value.Name = "Slider_Value"
Slider_Value.AnchorPoint = Vector2.new(1, 0)
Slider_Value.Size = UDim2.new(0, 1, 0, 1)
Slider_Value.BackgroundTransparency = 1
Slider_Value.Position = UDim2.new(1, -13, 0, 0)
Slider_Value.BorderSizePixel = 0
Slider_Value.AutomaticSize = Enum.AutomaticSize.XY
Slider_Value.TextSize = 14
Slider_Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider_Value.Parent = Slider_Componenet

local MultiDropdown_Component = Instance.new("Frame")
MultiDropdown_Component.Name = "MultiDropdown_Component"
MultiDropdown_Component.BackgroundTransparency = 1
MultiDropdown_Component.Position = UDim2.new(0, 0, 1, 0)
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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Dropdown

local Option = Instance.new("TextLabel")
Option.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Option.TextColor3 = Color3.fromRGB(255, 255, 255)
Option.BorderColor3 = Color3.fromRGB(0, 0, 0)
Option.Text = "Option 1 , Option 2 , Option 3"
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
Dropdown_Name.Text = "Example MultiDropdown"
Dropdown_Name.Name = "Dropdown_Name"
Dropdown_Name.Size = UDim2.new(0, 1, 0, 1)
Dropdown_Name.BackgroundTransparency = 1
Dropdown_Name.Position = UDim2.new(0, 12, 0, 0)
Dropdown_Name.BorderSizePixel = 0
Dropdown_Name.AutomaticSize = Enum.AutomaticSize.XY
Dropdown_Name.TextSize = 14
Dropdown_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdown_Name.Parent = MultiDropdown_Component

local Dropdown_Component = Instance.new("Frame")
Dropdown_Component.Name = "Dropdown_Component"
Dropdown_Component.BackgroundTransparency = 1
Dropdown_Component.Position = UDim2.new(0, 0, 1, 0)
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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Dropdown

local Option = Instance.new("TextLabel")
Option.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Option.TextColor3 = Color3.fromRGB(255, 255, 255)
Option.BorderColor3 = Color3.fromRGB(0, 0, 0)
Option.Text = "Option 1"
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
Dropdown_Name.Text = "Example Dropdown"
Dropdown_Name.Name = "Dropdown_Name"
Dropdown_Name.Size = UDim2.new(0, 1, 0, 1)
Dropdown_Name.BackgroundTransparency = 1
Dropdown_Name.Position = UDim2.new(0, 12, 0, 0)
Dropdown_Name.BorderSizePixel = 0
Dropdown_Name.AutomaticSize = Enum.AutomaticSize.XY
Dropdown_Name.TextSize = 14
Dropdown_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdown_Name.Parent = Dropdown_Component

local Dropdown_Component = Instance.new("Frame")
Dropdown_Component.Name = "Dropdown_Component"
Dropdown_Component.BackgroundTransparency = 1
Dropdown_Component.Position = UDim2.new(0, 0, 1, 0)
Dropdown_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dropdown_Component.Size = UDim2.new(0, 243, 0, 53)
Dropdown_Component.BorderSizePixel = 0
Dropdown_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdown_Component.Parent = Holder

local Textbox = Instance.new("Frame")
Textbox.AnchorPoint = Vector2.new(0, 1)
Textbox.Name = "Textbox"
Textbox.Position = UDim2.new(0, 12, 1, 0)
Textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textbox.Size = UDim2.new(0, 222, 0, 30)
Textbox.BorderSizePixel = 0
Textbox.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Textbox.Parent = Dropdown_Component

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Textbox

local Icon = Instance.new("ImageLabel")
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.Name = "Icon"
Icon.AnchorPoint = Vector2.new(1, 0.5)
Icon.Image = "rbxassetid://74579954889308"
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(1, -10, 0.5, 0)

Icon.Size = UDim2.new(0, 14, 0, 14)
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Parent = Textbox

local Textinput = Instance.new("TextBox")
Textinput.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Textinput.TextColor3 = Color3.fromRGB(255, 255, 255)
Textinput.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textinput.Name = "Textinput"
Textinput.AnchorPoint = Vector2.new(0, 0.5)
Textinput.Size = UDim2.new(0, 1, 0, 1)
Textinput.BackgroundTransparency = 1
Textinput.Position = UDim2.new(0, 11, 0.5, 0)
Textinput.BorderSizePixel = 0
Textinput.AutomaticSize = Enum.AutomaticSize.XY
Textinput.TextSize = 14
Textinput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textinput.Parent = Textbox

local TextInput_Name = Instance.new("TextLabel")
TextInput_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
TextInput_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
TextInput_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextInput_Name.Text = "Example TextInput"
TextInput_Name.Name = "TextInput_Name"
TextInput_Name.Size = UDim2.new(0, 1, 0, 1)
TextInput_Name.BackgroundTransparency = 1
TextInput_Name.Position = UDim2.new(0, 12, 0, 0)
TextInput_Name.BorderSizePixel = 0
TextInput_Name.AutomaticSize = Enum.AutomaticSize.XY
TextInput_Name.TextSize = 14
TextInput_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextInput_Name.Parent = Dropdown_Component

local Button_Component = Instance.new("Frame")
Button_Component.Name = "Button_Component"
Button_Component.BackgroundTransparency = 1
Button_Component.Position = UDim2.new(0, 0, -7.757575988769531, 0)
Button_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_Component.Size = UDim2.new(0, 243, 0, 46)
Button_Component.BorderSizePixel = 0
Button_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_Component.Parent = Holder

local TextButton = Instance.new("TextButton")
TextButton.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "ExampleButton"
TextButton.AnchorPoint = Vector2.new(0, 0.5)
TextButton.Position = UDim2.new(0, 12, 0.5, 0)
TextButton.Size = UDim2.new(0, 222, 0, 35)
TextButton.BorderSizePixel = 0
TextButton.TextSize = 14
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
TextButton.Parent = Button_Component

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = TextButton

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
Toggle_Name.Text = "Example Colorpicker"
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
Colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Colorpicker.Parent = Colorpicker_Component

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Colorpicker

local Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(1, 0.5)
Frame.BackgroundTransparency = 0.949999988079071
Frame.Position = UDim2.new(1, 0, 0.5, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(0, 10, 0, 20)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Parent = Colorpicker

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Frame

local Frame = Instance.new("Frame")
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(0, 10, 0, 20)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Parent = Colorpicker

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Frame

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
Toggle.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
Toggle.Parent = Toggle_Component

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

local Toggle_Name = Instance.new("TextLabel")
Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_Name.Text = "Example Toggle"
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

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 6)
UIPadding.PaddingBottom = UDim.new(0, 6)
UIPadding.PaddingRight = UDim.new(0, 6)
UIPadding.PaddingLeft = UDim.new(0, 6)
UIPadding.Parent = Keybind

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Keybind

local Keybind_Component = Instance.new("Frame")
Keybind_Component.BackgroundTransparency = 1
Keybind_Component.Name = "Keybind_Component"
Keybind_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
Keybind_Component.Size = UDim2.new(0, 243, 0, 35)
Keybind_Component.BorderSizePixel = 0
Keybind_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybind_Component.Parent = Holder

local Keybind_Name = Instance.new("TextLabel")
Keybind_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Keybind_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybind_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Keybind_Name.Text = "Example Toggle"
Keybind_Name.Name = "Keybind_Name"
Keybind_Name.AnchorPoint = Vector2.new(0, 0.5)
Keybind_Name.Size = UDim2.new(0, 1, 0, 1)
Keybind_Name.BackgroundTransparency = 1
Keybind_Name.Position = UDim2.new(0, 12, 0.5, 0)
Keybind_Name.BorderSizePixel = 0
Keybind_Name.AutomaticSize = Enum.AutomaticSize.XY
Keybind_Name.TextSize = 14
Keybind_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybind_Name.Parent = Keybind_Component

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
Keybind.Parent = Keybind_Component

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 6)
UIPadding.PaddingBottom = UDim.new(0, 6)
UIPadding.PaddingRight = UDim.new(0, 6)
UIPadding.PaddingLeft = UDim.new(0, 6)
UIPadding.Parent = Keybind

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Keybind

local Section_Name = Instance.new("TextLabel")
Section_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Section_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Section_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section_Name.Text = "ExampleSection"
Section_Name.Name = "Section_Name"
Section_Name.AnchorPoint = Vector2.new(0, 0.5)
Section_Name.Size = UDim2.new(0, 1, 0, 1)
Section_Name.BackgroundTransparency = 1
Section_Name.Position = UDim2.new(0, 12, 0.5, 0)
Section_Name.BorderSizePixel = 0
Section_Name.AutomaticSize = Enum.AutomaticSize.XY
Section_Name.TextSize = 14
Section_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section_Name.Parent = Header

local Liner = Instance.new("Frame")
Liner.AnchorPoint = Vector2.new(0.5, 1)
Liner.Name = "Liner"
Liner.Position = UDim2.new(0.5, 0, 1, 0)
Liner.BorderColor3 = Color3.fromRGB(0, 0, 0)
Liner.Size = UDim2.new(1, 1, 0, 1)
Liner.BorderSizePixel = 0
Liner.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
Liner.Parent = Header

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Header

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Wraps = true
UIListLayout.Padding = UDim.new(0, 12)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.Parent = Container

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 12)
UIPadding.PaddingLeft = UDim.new(0, 6)
UIPadding.Parent = Container

local Section_Right = Instance.new("Frame")
Section_Right.ClipsDescendants = true
Section_Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section_Right.Name = "Section_Right"
Section_Right.Position = UDim2.new(0.04660193994641304, 0, 0.03194103017449379, 0)
Section_Right.Size = UDim2.new(0, 242, 0, 70)
Section_Right.BorderSizePixel = 0
Section_Right.AutomaticSize = Enum.AutomaticSize.Y
Section_Right.BackgroundColor3 = Color3.fromRGB(21, 21, 23)
Section_Right.Parent = Container

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Section_Right

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Size = UDim2.new(0, 242, 0, 34)
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Header.Parent = Section_Right

local Holder = Instance.new("Frame")
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.AnchorPoint = Vector2.new(0.5, 0)
Holder.BackgroundTransparency = 1
Holder.Position = UDim2.new(0.5, 0, 1, 0)
Holder.Name = "Holder"
Holder.Size = UDim2.new(1, 1, 0.529411792755127, 1)
Holder.BorderSizePixel = 0
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.Parent = Header

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Holder

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
Toggle.BackgroundColor3 = Color3.fromRGB(110, 117, 244)
Toggle.Parent = Toggle_Component

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

local Toggle_Name = Instance.new("TextLabel")
Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_Name.Text = "Example Toggle"
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

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingBottom = UDim.new(0, 12)
UIPadding.PaddingTop = UDim.new(0, 36)
UIPadding.Parent = Holder

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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Toggle

local Toggle_Name = Instance.new("TextLabel")
Toggle_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Toggle_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_Name.Text = "Example Toggle"
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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Header

local Section_Name = Instance.new("TextLabel")
Section_Name.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Section_Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Section_Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section_Name.Text = "ExampleSection"
Section_Name.Name = "Section_Name"
Section_Name.AnchorPoint = Vector2.new(0, 0.5)
Section_Name.Size = UDim2.new(0, 1, 0, 1)
Section_Name.BackgroundTransparency = 1
Section_Name.Position = UDim2.new(0, 12, 0.5, 0)
Section_Name.BorderSizePixel = 0
Section_Name.AutomaticSize = Enum.AutomaticSize.XY
Section_Name.TextSize = 14
Section_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section_Name.Parent = Header

local Liner = Instance.new("Frame")
Liner.AnchorPoint = Vector2.new(0.5, 1)
Liner.Name = "Liner"
Liner.Position = UDim2.new(0.5, 0, 1, 0)
Liner.BorderColor3 = Color3.fromRGB(0, 0, 0)
Liner.Size = UDim2.new(1, 1, 0, 1)
Liner.BorderSizePixel = 0
Liner.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
Liner.Parent = Header

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.Position = UDim2.new(0.7796047925949097, 0, 0.21368156373500824, 0)
Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
Container.Size = UDim2.new(0, 164, 0, 202)
Container.BorderSizePixel = 0
Container.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Container.Parent = ScreenGui

local Colorframe = Instance.new("Frame")
Colorframe.Name = "Colorframe"
Colorframe.Position = UDim2.new(0, 12, 0, 12)
Colorframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
Colorframe.Size = UDim2.new(0, 140, 0, 140)
Colorframe.BorderSizePixel = 0
Colorframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Colorframe.Parent = Container

local Picker = Instance.new("Frame")
Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
Picker.AnchorPoint = Vector2.new(0.5, 0.5)
Picker.Name = "Picker"
Picker.BackgroundTransparency = 1
Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
Picker.Size = UDim2.new(0, 7, 0, 7)
Picker.ZIndex = 50
Picker.BorderSizePixel = 0
Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker.Parent = Colorframe

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Parent = Picker

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 50)
UICorner.Parent = Picker

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Colorframe

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
}
UIGradient.Parent = Colorframe

local Value = Instance.new("ImageLabel")
Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
Value.Name = "Value"
Value.AnchorPoint = Vector2.new(0.5, 0.5)
Value.Image = "http://www.roblox.com/asset/?id=14684563800"
Value.BackgroundTransparency = 1
Value.Position = UDim2.new(0.5, 0, 0.5, 0)

Value.Size = UDim2.new(0, 140, 0, 140)
Value.BorderSizePixel = 0
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Value.Parent = Colorframe

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Value

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Container

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(25, 25, 25)
UIStroke.Parent = Container

local Hue = Instance.new("ImageButton")
Hue.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hue.Size = UDim2.new(0, 9, 0, 140)
Hue.Rotation = 90
Hue.Image = "http://www.roblox.com/asset/?id=14684557999"
Hue.Name = "Hue"
Hue.Position = UDim2.new(0.5, 0, 1, 34)

Hue.AnchorPoint = Vector2.new(0.5, 1)
Hue.BorderSizePixel = 0
Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hue.Parent = Container

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 30)
UICorner.Parent = Hue

local Picker = Instance.new("Frame")
Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
Picker.Rotation = 90
Picker.Name = "Picker"
Picker.Position = UDim2.new(1, 0, 0.5, 0)
Picker.AnchorPoint = Vector2.new(1, 0.5)
Picker.Size = UDim2.new(0, 9, 0, 13)
Picker.BorderSizePixel = 0
Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker.Parent = Hue

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Parent = Picker

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Picker

local Alpha = Instance.new("Frame")
Alpha.AnchorPoint = Vector2.new(0.5, 0)
Alpha.Name = "Alpha"
Alpha.Position = UDim2.new(0.5, 0, 0, 181)
Alpha.BorderColor3 = Color3.fromRGB(0, 0, 0)
Alpha.Size = UDim2.new(0, 140, 0, 9)
Alpha.BorderSizePixel = 0
Alpha.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Alpha.Parent = Container

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Alpha

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
}
UIGradient.Parent = Alpha

local Picker = Instance.new("Frame")
Picker.AnchorPoint = Vector2.new(1, 0.5)
Picker.Name = "Picker"
Picker.Position = UDim2.new(1, 0, 0.5, 0)
Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
Picker.Size = UDim2.new(0, 9, 0, 13)
Picker.BorderSizePixel = 0
Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker.Parent = Alpha

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Picker

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Parent = Picker

local Container = Instance.new("Frame")
Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
Container.Size = UDim2.new(0, 218, 0, 73)
Container.Name = "Container"
Container.Position = UDim2.new(0.3685533404350281, 0, 0.5695708990097046, 0)
Container.BorderSizePixel = 0
Container.ZIndex = 50
Container.AutomaticSize = Enum.AutomaticSize.XY
Container.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Container.Parent = ScreenGui

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Container

local Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.4828435778617859, 0, 0.1666666716337204, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(0, 212, 0, 20)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Frame.Parent = Container

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Combo 1"
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.Size = UDim2.new(0, 1, 0, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.03584229573607445, 0, 0.5, 0)
TextLabel.BorderSizePixel = 0
TextLabel.AutomaticSize = Enum.AutomaticSize.XY
TextLabel.TextSize = 16
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = Frame

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingBottom = UDim.new(0, 8)
UIPadding.PaddingTop = UDim.new(0, 5)
UIPadding.Parent = Container

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Container

local Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.4784541130065918, 0, 0.5, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(0, 210, 0, 20)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Frame.Parent = Container

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(110, 117, 244)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Combo 1"
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.Size = UDim2.new(0, 1, 0, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.03584229573607445, 0, 0.5, 0)
TextLabel.BorderSizePixel = 0
TextLabel.AutomaticSize = Enum.AutomaticSize.XY
TextLabel.TextSize = 16
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = Frame

local Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.4953276515007019, 0, 0.8333333134651184, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(0, 215, 0, 20)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Frame.Parent = Container

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Combo 1"
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.Size = UDim2.new(0, 1, 0, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.03584229573607445, 0, 0.5, 0)
TextLabel.BorderSizePixel = 0
TextLabel.AutomaticSize = Enum.AutomaticSize.XY
TextLabel.TextSize = 16
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = Frame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(30, 30, 34)
UIStroke.Parent = Container

ScreenGui.Enabled = true
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")



-- =============================
-- Minimal API: CreateWindow / CreateTab / CreateSection
-- =============================
do
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")

	local state = {
		tabs = {},
		activeTab = nil,
		sections = {}, -- array of {tabId=string, sectionFrame=Frame, holder=Frame}
	}

	local function hideAllSections()
		for _, item in ipairs(state.sections) do
			if item.sectionFrame then
				item.sectionFrame.Visible = false
			end
		end
	end

	local function activateTab(tabId)
		state.activeTab = tabId
		hideAllSections()
		for _, item in ipairs(state.sections) do
			if item.tabId == tabId and item.sectionFrame then
				item.sectionFrame.Visible = true
			end
		end
	end

	local function createTabButton(tabText)
		local btn = Instance.new("TextLabel")
		btn.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
		btn.TextColor3 = Color3.fromRGB(255, 255, 255)
		btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
		btn.Text = tabText or "Tab"
		btn.Name = "TabButton_" .. tostring(tabText)
		btn.Size = UDim2.new(0, 127, 0, 36)
		btn.BorderSizePixel = 0
		btn.TextSize = 16
		btn.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
		btn.Parent = Side_Bar

		local padding = Instance.new("UIPadding")
		padding.PaddingTop = UDim.new(0, 12)
		padding.PaddingBottom = UDim.new(0, 12)
		padding.PaddingRight = UDim.new(0, 40)
		padding.PaddingLeft = UDim.new(0, 40)
		padding.Parent = btn

		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(0, 2)
		corner.Parent = btn

		return btn
	end

	function libary:CreateWindow(cfg)
		cfg = cfg or {}
		local lc = cfg.library_config or {}

		-- header configuration
		if lc.Cheat_Name then
			Dropdown_Name.Text = tostring(lc.Cheat_Name)
		end
		if lc.Cheat_Icon then
			Logo.Image = tostring(lc.Cheat_Icon)
		end

		-- open/close keybind
		if lc.interface_keybind and Enum.KeyCode[lc.interface_keybind] then
			local keycode = Enum.KeyCode[lc.interface_keybind]
			UserInputService.InputBegan:Connect(function(input, gp)
				if not gp and input.KeyCode == keycode then
					MainFrame.Visible = not MainFrame.Visible
				end
			end)
		end

		-- exit button closes UI
		Exit_Button.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				MainFrame.Visible = false
			end
		end)

		local window = { _tabs = {} }

		function window:CreateTab(tabConfig)
			local tabText = tabConfig
			if typeof(tabConfig) == "table" then
				tabText = tabConfig.TabText or tabConfig[1]
			end
			tabText = tabText or "Tab"

			local id = "tab_" .. tostring(tabText)
			local btn = createTabButton(tabText)
			state.tabs[id] = { button = btn }

			btn.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					activateTab(id)
					TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(35, 35, 39)
					}):Play()
				end
			end)

			if not state.activeTab then
				activateTab(id)
			end

			local tabObj = { _id = id }
			function tabObj:CreateSection(secCfg)
				secCfg = secCfg or {}
				local position = (secCfg.position == "right") and "Right" or "Left"
				local sectionFrame = Instance.new("Frame")
				sectionFrame.ClipsDescendants = true
				sectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				sectionFrame.Name = "Section_" .. position .. "_" .. tostring(secCfg.SectionText or "")
				sectionFrame.Position = UDim2.new(0.0466, 0, 0.0319, 0)
				sectionFrame.Size = UDim2.new(0, 242, 0, 70)
				sectionFrame.BorderSizePixel = 0
				sectionFrame.AutomaticSize = Enum.AutomaticSize.Y
				sectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 23)
				sectionFrame.Visible = (state.activeTab == id)
				sectionFrame.Parent = Container

				local corner = Instance.new("UICorner")
				corner.CornerRadius = UDim.new(0, 4)
				corner.Parent = sectionFrame

				local header = Instance.new("Frame")
				header.Name = "Header"
				header.BorderColor3 = Color3.fromRGB(0, 0, 0)
				header.Size = UDim2.new(0, 242, 0, 34)
				header.BorderSizePixel = 0
				header.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
				header.Parent = sectionFrame

				local holder = Instance.new("Frame")
				holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
				holder.AnchorPoint = Vector2.new(0.5, 0)
				holder.BackgroundTransparency = 1
				holder.Position = UDim2.new(0.5, 0, 1, 0)
				holder.Name = "Holder"
				holder.Size = UDim2.new(1, 1, 0.529, 1)
				holder.BorderSizePixel = 0
				holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				holder.Parent = header

				local list = Instance.new("UIListLayout")
				list.Padding = UDim.new(0, 4)
				list.SortOrder = Enum.SortOrder.LayoutOrder
				list.Parent = holder

				local title = Instance.new("TextLabel")
				title.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				title.TextColor3 = Color3.fromRGB(255, 255, 255)
				title.BorderColor3 = Color3.fromRGB(0, 0, 0)
				title.Text = tostring(secCfg.SectionText or "Section")
				title.Name = "Section_Name"
				title.AnchorPoint = Vector2.new(0, 0.5)
				title.Size = UDim2.new(0, 1, 0, 1)
				title.BackgroundTransparency = 1
				title.Position = UDim2.new(0, 12, 0.5, 0)
				title.BorderSizePixel = 0
				title.AutomaticSize = Enum.AutomaticSize.XY
				title.TextSize = 14
				title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				title.Parent = header

				table.insert(state.sections, { tabId = id, sectionFrame = sectionFrame, holder = holder })

				local sectionObj = {}
				sectionObj._frame = sectionFrame
				sectionObj._holder = holder
				function sectionObj:CreateToggle(_) return {} end
				function sectionObj:CreateSlider(_) return {} end
				function sectionObj:CreateDropdown(_) return {} end
				function sectionObj:CreateMultiDropdown(_) return {} end
				function sectionObj:CreateButton(_) return {} end
				function sectionObj:CreateColorpicker(_) return {} end
				function sectionObj:CreateToggleWithColor(_) return {} end
				function sectionObj:CreateToggleKeybind(_) return {} end
				return sectionObj
			end

			return tabObj
		end

		return window
	end
end

return libary
