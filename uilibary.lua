local Library = {}

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local function keycodeFrom(value)
	if typeof(value) == "EnumItem" and value.EnumType == Enum.KeyCode then
		return value
	end
	if typeof(value) == "string" then
		local upper = string.upper(value)
		return Enum.KeyCode[upper]
	end
	return Enum.KeyCode.RightShift
end

local function fromHex(hex)
	hex = hex:gsub("#", "")
	local r = tonumber(hex:sub(1, 2), 16) or 110
	local g = tonumber(hex:sub(3, 4), 16) or 117
	local b = tonumber(hex:sub(5, 6), 16) or 244
	return Color3.fromRGB(r, g, b)
end

function Library:CreateWindow(options)
	options = options or {}
	local cfg = options.library_config or {}
	local cheatName = cfg.Cheat_Name or "Library"
	local cheatIcon = cfg.Cheat_Icon or "rbxassetid://0"
	local accent = fromHex(cfg.AccentColor or "#6e75f4")
	local toggleKey = keycodeFrom(cfg.interface_keybind or "RightShift")

	local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "FLYUILibrary"
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.ResetOnSpawn = false
	screenGui.Enabled = true
	screenGui.Parent = playerGui

	local main = Instance.new("Frame")
	main.Name = "MainFrame"
	main.AnchorPoint = Vector2.new(0.5, 0.5)
	main.Position = UDim2.new(0.5, 0, 0.5, 0)
	main.Size = UDim2.new(0, 660, 0, 456)
	main.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
	main.BorderSizePixel = 0
	main.Parent = screenGui

	local mainCorner = Instance.new("UICorner")
	mainCorner.CornerRadius = UDim.new(0, 6)
	mainCorner.Parent = main

	local header = Instance.new("Frame")
	header.Name = "Header"
	header.Size = UDim2.new(1, 0, 0, 49)
	header.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
	header.BorderSizePixel = 0
	header.Parent = main

	local headerCorner = Instance.new("UICorner")
	headerCorner.CornerRadius = UDim.new(0, 6)
	headerCorner.Parent = header

	local headerLine = Instance.new("Frame")
	headerLine.Name = "Liner"
	headerLine.AnchorPoint = Vector2.new(0.5, 1)
	headerLine.Position = UDim2.new(0.5, 0, 1, 0)
	headerLine.Size = UDim2.new(1, 1, 0, 1)
	headerLine.BorderSizePixel = 0
	headerLine.BackgroundColor3 = Color3.fromRGB(35, 35, 39)
	headerLine.Parent = header

	local logoWrap = Instance.new("Frame")
	logoWrap.Name = "LogoContainer"
	logoWrap.Size = UDim2.new(0, 90, 0, 49)
	logoWrap.BackgroundTransparency = 1
	logoWrap.Parent = main

	local logo = Instance.new("ImageLabel")
	logo.Name = "Logo"
	logo.BackgroundTransparency = 1
	logo.AnchorPoint = Vector2.new(0, 0.5)
	logo.Position = UDim2.new(0, 15, 0.5, 0)
	logo.Size = UDim2.new(0, 28, 0, 28)
	logo.Image = cheatIcon
	logo.Parent = logoWrap

	local title = Instance.new("TextLabel")
	title.Name = "Title"
	title.BackgroundTransparency = 1
	title.AnchorPoint = Vector2.new(0, 0)
	title.Position = UDim2.new(0, 50, 0, 0)
	title.Size = UDim2.new(0, 1, 1, 0)
	title.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	title.TextSize = 18
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Text = cheatName
	title.Parent = header

	local sideBar = Instance.new("Frame")
	sideBar.Name = "Side_Bar"
	sideBar.BackgroundTransparency = 1
	sideBar.Size = UDim2.new(0, 143, 0, 406)
	sideBar.Position = UDim2.new(0, 0, 0, 50)
	sideBar.Parent = main

	local sideList = Instance.new("UIListLayout")
	sideList.SortOrder = Enum.SortOrder.LayoutOrder
	sideList.Padding = UDim.new(0, 10)
	sideList.Parent = sideBar

	local sidePad = Instance.new("UIPadding")
	sidePad.PaddingTop = UDim.new(0, 12)
	sidePad.PaddingLeft = UDim.new(0, 12)
	sidePad.Parent = sideBar

	local pages = Instance.new("Frame")
	pages.Name = "Pages"
	pages.BackgroundTransparency = 1
	pages.AnchorPoint = Vector2.new(1, 1)
	pages.Position = UDim2.new(1, 0, 1, -1)
	pages.Size = UDim2.new(0, 515, 0, 407)
	pages.Parent = main

	local dragging = false
	local dragOffset

	header.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragOffset = input.Position - main.AbsolutePosition
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local newPos = input.Position - dragOffset
			main.Position = UDim2.fromOffset(newPos.X, newPos.Y)
		end
	end)

	UserInputService.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if input.KeyCode == toggleKey then
			screenGui.Enabled = not screenGui.Enabled
		end
	end)

	local window = {}
	window._screenGui = screenGui
	window._main = main
	window._header = header
	window._sideBar = sideBar
	window._pages = pages
	window._tabs = {}

	function window:CreateTab(tabName)
		tabName = tabName or "Tab"
		local button = Instance.new("TextButton")
		button.Name = "TabButton"
		button.Text = tabName
		button.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
		button.TextSize = 16
		button.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
		button.TextColor3 = Color3.fromRGB(255, 255, 255)
		button.Size = UDim2.new(0, 127, 0, 36)
		button.BorderSizePixel = 0
		button.Parent = sideBar

		local bPad = Instance.new("UIPadding")
		bPad.PaddingTop = UDim.new(0, 12)
		bPad.PaddingBottom = UDim.new(0, 12)
		bPad.PaddingLeft = UDim.new(0, 40)
		bPad.PaddingRight = UDim.new(0, 40)
		bPad.Parent = button

		local bCorner = Instance.new("UICorner")
		bCorner.CornerRadius = UDim.new(0, 2)
		bCorner.Parent = button

		local page = Instance.new("ScrollingFrame")
		page.Name = "Page"
		page.Visible = false
		page.BackgroundTransparency = 1
		page.Size = UDim2.new(1, 0, 1, 0)
		page.ScrollBarThickness = 0
		page.Parent = pages

		local content = Instance.new("Frame")
		content.Name = "Content"
		content.BackgroundTransparency = 1
		content.Size = UDim2.new(1, 0, 1, 0)
		content.Parent = page

		local contentList = Instance.new("UIListLayout")
		contentList.FillDirection = Enum.FillDirection.Horizontal
		contentList.SortOrder = Enum.SortOrder.LayoutOrder
		contentList.Padding = UDim.new(0, 12)
		contentList.Parent = content

		local contentPad = Instance.new("UIPadding")
		contentPad.PaddingTop = UDim.new(0, 12)
		contentPad.PaddingLeft = UDim.new(0, 6)
		contentPad.Parent = content

		local tab = {}
		tab._button = button
		tab._page = page
		tab._content = content
		tab._sections = { left = nil, right = nil }

		local function activate()
			for _, t in ipairs(window._tabs) do
				t._page.Visible = false
				t._button.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
			end
			page.Visible = true
			button.BackgroundColor3 = accent
		end

		button.MouseButton1Click:Connect(activate)

		function tab:CreateSection(props)
			props = props or {}
			local position = (props.position or "left"):lower()
			local sectionText = props.SectionText or "Section"

			local sectionFrame = Instance.new("Frame")
			sectionFrame.Size = UDim2.new(0, 242, 0, 70)
			sectionFrame.AutomaticSize = Enum.AutomaticSize.Y
			sectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 23)
			sectionFrame.BorderSizePixel = 0

			local sectionCorner = Instance.new("UICorner")
			sectionCorner.CornerRadius = UDim.new(0, 4)
			sectionCorner.Parent = sectionFrame

			local headerFrame = Instance.new("Frame")
			headerFrame.Name = "Header"
			headerFrame.Size = UDim2.new(0, 242, 0, 34)
			headerFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
			headerFrame.BorderSizePixel = 0
			headerFrame.Parent = sectionFrame

			local headerCorner2 = Instance.new("UICorner")
			headerCorner2.CornerRadius = UDim.new(0, 4)
			headerCorner2.Parent = headerFrame

			local nameLabel = Instance.new("TextLabel")
			nameLabel.Name = "Section_Name"
			nameLabel.BackgroundTransparency = 1
			nameLabel.Position = UDim2.new(0, 12, 0, 0)
			nameLabel.Size = UDim2.new(0, 1, 1, 0)
			nameLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
			nameLabel.TextSize = 14
			nameLabel.TextXAlignment = Enum.TextXAlignment.Left
			nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			nameLabel.Text = sectionText
			nameLabel.Parent = headerFrame

			local holder = Instance.new("Frame")
			holder.Name = "Holder"
			holder.AnchorPoint = Vector2.new(0.5, 0)
			holder.Position = UDim2.new(0.5, 0, 1, 0)
			holder.Size = UDim2.new(1, 1, 0, 1)
			holder.BackgroundTransparency = 1
			holder.Parent = headerFrame

			local list = Instance.new("UIListLayout")
			list.SortOrder = Enum.SortOrder.LayoutOrder
			list.Padding = UDim.new(0, 4)
			list.Parent = holder

			sectionFrame.Parent = tab._content

			local section = {}
			section._frame = sectionFrame
			section._holder = holder

			function section:CreateToggleKeybind() return {} end
			function section:CreateSlider() return {} end
			function section:CreateColorpicker() return {} end
			function section:CreateDropdown() return {} end
			function section:CreateMultiDropdown() return {} end
			function section:CreateButton() return {} end
			function section:CreateToggleWithColor() return {} end

			if position == "left" then
				tab._sections.left = section
			else
				tab._sections.right = section
			end

			return section
		end

		table.insert(window._tabs, tab)
		if #window._tabs == 1 then
			page.Visible = true
			button.BackgroundColor3 = accent
		end

		return tab
	end

	return window
end

_G = _G or {}
_G.library = Library
_G.libary = Library

return Library
