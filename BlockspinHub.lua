-- BLOCKSPIN HUB

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "BlockspinHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(260, 280)
frame.Position = UDim2.new(0.5, -130, 0.5, -140)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "BLOCKSPIN HUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.TextSize = 22
title.Parent = frame

local function createButton(name, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.85, 0, 0, 40)
    button.Position = position
    button.Text = name .. " : OFF"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Parent = frame

    local active = false

    button.MouseButton1Click:Connect(function()
        active = not active
        button.Text = name .. (active and " : ON" or " : OFF")
    end)
end

createButton("Server Hop", UDim2.new(0.075, 0, 0, 70))
createButton("Practice Aim", UDim2.new(0.075, 0, 0, 125))
createButton("Inventory ESP", UDim2.new(0.075, 0, 0, 180))
