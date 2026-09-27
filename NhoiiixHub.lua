-- // Notification khi kích hoạt
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NhoiiixHub",
    Text = "Success!",
    Icon = "rbxassetid://9681970193",
    Duration = 10
})
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local old = playerGui:FindFirstChild("NhoiiixHub")
if old then
    old:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NhoiiixHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = playerGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 900, 0, 560)
Main.Position = UDim2.new(0.5, -450, 0.5, -280)
Main.BackgroundColor3 = Color3.fromRGB(31,31,31)
Main.BorderSizePixel = 0
Main.Parent = ScreenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0,12)
mainCorner.Parent = Main

local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1,0,0,65)
TopBar.BackgroundColor3 = Color3.fromRGB(37,37,37)
TopBar.BorderSizePixel = 0
TopBar.Parent = Main

local topCorner = Instance.new("UICorner")
topCorner.CornerRadius = UDim.new(0,12)
topCorner.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,-150,1,0)
Title.Position = UDim2.new(0,25,0,0)
Title.BackgroundTransparency = 1
Title.Text = "Nhoiiix Hub"
Title.TextColor3 = Color3.fromRGB(225,225,225)
Title.TextSize = 22
Title.Font = Enum.Font.GothamMedium
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TopBar

local Minimize = Instance.new("TextButton")
Minimize.Size = UDim2.new(0,50,0,50)
Minimize.Position = UDim2.new(1,-110,0,8)
Minimize.BackgroundTransparency = 1
Minimize.Text = "—"
Minimize.TextColor3 = Color3.fromRGB(190,190,190)
Minimize.TextSize = 25
Minimize.Font = Enum.Font.GothamBold
Minimize.Parent = TopBar

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0,50,0,50)
Close.Position = UDim2.new(1,-55,0,8)
Close.BackgroundTransparency = 1
Close.Text = "×"
Close.TextColor3 = Color3.fromRGB(190,190,190)
Close.TextSize = 30
Close.Font = Enum.Font.Gotham
Close.Parent = TopBar

local Sidebar = Instance.new("Frame")
Sidebar.Size = UDim2.new(0,290,1,-65)
Sidebar.Position = UDim2.new(0,0,0,65)
Sidebar.BackgroundColor3 = Color3.fromRGB(28,28,28)
Sidebar.BorderSizePixel = 0
Sidebar.Parent = Main

local sidePadding = Instance.new("UIPadding")
sidePadding.PaddingTop = UDim.new(0,20)
sidePadding.PaddingLeft = UDim.new(0,15)
sidePadding.PaddingRight = UDim.new(0,15)
sidePadding.Parent = Sidebar

local sideLayout = Instance.new("UIListLayout")
sideLayout.Padding = UDim.new(0,8)
sideLayout.SortOrder = Enum.SortOrder.LayoutOrder
sideLayout.Parent = Sidebar

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1,-290,1,-65)
Content.Position = UDim2.new(0,290,0,65)
Content.BackgroundColor3 = Color3.fromRGB(33,33,33)
Content.BorderSizePixel = 0
Content.Parent = Main

local contentPadding = Instance.new("UIPadding")
contentPadding.PaddingTop = UDim.new(0,20)
contentPadding.PaddingLeft = UDim.new(0,20)
contentPadding.PaddingRight = UDim.new(0,20)
contentPadding.Parent = Content

local contentLayout = Instance.new("UIListLayout")
contentLayout.Padding = UDim.new(0,10)
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
contentLayout.Parent = Content

local function clearContent()
    for _,v in ipairs(Content:GetChildren()) do
        if not v:IsA("UIListLayout") and not v:IsA("UIPadding") then
            v:Destroy()
        end
    end
end

local function addHeader(text)
    local x = Instance.new("TextLabel")
    x.Size = UDim2.new(1,0,0,55)
    x.BackgroundTransparency = 1
    x.Text = text
    x.TextColor3 = Color3.fromRGB(235,235,235)
    x.TextSize = 28
    x.Font = Enum.Font.GothamBold
    x.TextXAlignment = Enum.TextXAlignment.Left
    x.Parent = Content
end

local function addInfo(text)
    local x = Instance.new("TextLabel")
    x.Size = UDim2.new(1,0,0,35)
    x.BackgroundTransparency = 1
    x.Text = text
    x.TextColor3 = Color3.fromRGB(155,155,155)
    x.TextSize = 16
    x.Font = Enum.Font.Gotham
    x.TextXAlignment = Enum.TextXAlignment.Left
    x.Parent = Content
end

local function addButton(text, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1,0,0,55)
    b.BackgroundColor3 = Color3.fromRGB(42,42,42)
    b.BorderSizePixel = 0
    b.Text = text .. "                                      ›"
    b.TextColor3 = Color3.fromRGB(220,220,220)
    b.TextSize = 17
    b.Font = Enum.Font.GothamMedium
    b.TextXAlignment = Enum.TextXAlignment.Left
    b.AutoButtonColor = false
    b.Parent = Content

    local p = Instance.new("UIPadding")
    p.PaddingLeft = UDim.new(0,20)
    p.Parent = b

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,8)
    c.Parent = b

    b.MouseEnter:Connect(function()
        b.BackgroundColor3 = Color3.fromRGB(52,52,52)
    end)

    b.MouseLeave:Connect(function()
        b.BackgroundColor3 = Color3.fromRGB(42,42,42)
    end)

    b.Activated:Connect(callback or function() end)
    return b
end

local function makeMenu(text, icon)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1,0,0,58)
    b.BackgroundColor3 = Color3.fromRGB(32,32,32)
    b.BorderSizePixel = 0
    b.Text = "   "..icon.."   "..text
    b.TextColor3 = Color3.fromRGB(210,210,210)
    b.TextSize = 16
    b.Font = Enum.Font.GothamMedium
    b.TextXAlignment = Enum.TextXAlignment.Left
    b.AutoButtonColor = false
    b.Parent = Sidebar

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,8)
    c.Parent = b
    return b
end

local function selectMenu(selected)
    for _,v in ipairs(Sidebar:GetChildren()) do
        if v:IsA("TextButton") then
            v.BackgroundColor3 = Color3.fromRGB(32,32,32)
        end
    end
    selected.BackgroundColor3 = Color3.fromRGB(45,45,45)
end

local function showBloxFruit()
    clearContent()
    addHeader("Script Blox Fruit")
    addInfo("Danh sách hub")

    addButton("Leady Hub", function()
        print("Leady Hub")
    end)

    addButton("LinkHive Hub", function()
        print("LinkHive Hub")
    end)

    addButton("HOHO Hub", function()
        print("HOHO Hub")
    end)

    addButton("GangTen Hub", function()
        print("GangTen Hub")
    end)

    addButton("Lotus Hub", function()
        print("Lotus Hub")
    end)
end

local function showEgg()
    clearContent()
    addHeader("Script Steal A Egg")
    addInfo("Danh sách công cụ")

    addButton("Egg Hub", function()
        print("Egg Hub")
    end)

    addButton("Auto Farm Egg", function()
        print("Auto Farm Egg")
    end)
end

local function showPVP()
    clearContent()
    addHeader("Script PVP")
    addInfo("Danh sách công cụ PVP")

    addButton("PVP Hub", function()
        print("PVP Hub")
    end)

    addButton("Combat UI", function()
        print("Combat UI")
    end)
end

local function showInfo()
    clearContent()
    addHeader("Thông tin")
    addInfo("Nhoiiix Hub")
    addInfo("UI Version 1.0")
    addInfo("Created for Roblox Studio")
end

local infoButton = makeMenu("Thông tin","ⓘ")
local bloxButton = makeMenu("Script Blox Fruit","♡")
local eggButton = makeMenu("Script Steal A Egg","○")
local pvpButton = makeMenu("Script PVP","⚔")

infoButton.Activated:Connect(function()
    selectMenu(infoButton)
    showInfo()
end)

bloxButton.Activated:Connect(function()
    selectMenu(bloxButton)
    showBloxFruit()
end)

eggButton.Activated:Connect(function()
    selectMenu(eggButton)
    showEgg()
end)

pvpButton.Activated:Connect(function()
    selectMenu(pvpButton)
    showPVP()
end)

selectMenu(bloxButton)
showBloxFruit()

Close.Activated:Connect(function()
    ScreenGui:Destroy()
end)

local minimized = false

Minimize.Activated:Connect(function()
    minimized = not minimized

    if minimized then
        Sidebar.Visible = false
        Content.Visible = false
        Main.Size = UDim2.new(0,900,0,65)
    else
        Sidebar.Visible = true
        Content.Visible = true
        Main.Size = UDim2.new(0,900,0,560)
    end
end)

-- Drag bằng chuột hoặc cảm ứng
local dragging = false
local dragStart
local startPos

TopBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true
        dragStart = input.Position
        startPos = Main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then
        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
