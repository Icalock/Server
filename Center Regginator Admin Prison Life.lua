-- Made
--     By
-- ShadeDev
local maingui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local DragLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local close = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local luahammer = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local neongreensword = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local thomas = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local bombvest = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local xester = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local night = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Label = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local Label_2 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local Label_3 = Instance.new("TextLabel")
local UICorner_12 = Instance.new("UICorner")
local grabv1 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local message = Instance.new("TextBox")
local UICorner_14 = Instance.new("UICorner")
local send = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")

--Properties:

maingui.Name = "maingui"
maingui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
maingui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
maingui.ResetOnSpawn = false

main.Name = "main"
main.Parent = maingui
main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.238076642, 0, 0.173437506, 0)
main.Size = UDim2.new(0, 599, 0, 387)

DragLabel.Name = "DragLabel"
DragLabel.Parent = main
DragLabel.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
DragLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
DragLabel.BorderSizePixel = 0
DragLabel.Position = UDim2.new(0.180300504, 0, 0.0232558139, 0)
DragLabel.Size = UDim2.new(0, 383, 0, 29)
DragLabel.Font = Enum.Font.SourceSansBold
DragLabel.Text = "Center Regginator Admin - Prison LIfe - Drag Here     "
DragLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DragLabel.TextSize = 14.000

UICorner.Parent = DragLabel

ImageLabel.Parent = DragLabel
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 2.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0731070489, 0, 0.137931034, 0)
ImageLabel.Size = UDim2.new(0, 19, 0, 20)
ImageLabel.Image = "http://www.roblox.com/asset/?id=11507046652"

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.943026781, 0, 0.0387596898, 0)
close.Size = UDim2.new(0, 17, 0, 17)
close.Font = Enum.Font.SourceSans
close.Text = ""
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 50)
UICorner_2.Parent = close

luahammer.Name = "luahammer"
luahammer.Parent = main
luahammer.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
luahammer.BorderColor3 = Color3.fromRGB(0, 0, 0)
luahammer.BorderSizePixel = 0
luahammer.Position = UDim2.new(0.0550918207, 0, 0.165374681, 0)
luahammer.Size = UDim2.new(0, 200, 0, 50)
luahammer.Font = Enum.Font.SourceSansBold
luahammer.Text = "Lua Hammer"
luahammer.TextColor3 = Color3.fromRGB(255, 255, 255)
luahammer.TextSize = 14.000
luahammer.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Lua%20Hammer.txt",true))();
end)

UICorner_3.Parent = luahammer

UICorner_4.Parent = main

neongreensword.Name = "neongreensword"
neongreensword.Parent = main
neongreensword.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
neongreensword.BorderColor3 = Color3.fromRGB(0, 0, 0)
neongreensword.BorderSizePixel = 0
neongreensword.Position = UDim2.new(0.0550918207, 0, 0.322997421, 0)
neongreensword.Size = UDim2.new(0, 200, 0, 50)
neongreensword.Font = Enum.Font.SourceSansBold
neongreensword.Text = "Neon Green Sword"
neongreensword.TextColor3 = Color3.fromRGB(255, 255, 255)
neongreensword.TextSize = 14.000
neongreensword.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Neon%20Green%20Sword.txt",true))();
end)

UICorner_5.Parent = neongreensword

thomas.Name = "thomas"
thomas.Parent = main
thomas.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
thomas.BorderColor3 = Color3.fromRGB(0, 0, 0)
thomas.BorderSizePixel = 0
thomas.Position = UDim2.new(0.577629387, 0, 0.165374681, 0)
thomas.Size = UDim2.new(0, 200, 0, 50)
thomas.Font = Enum.Font.SourceSansBold
thomas.Text = "Thomas"
thomas.TextColor3 = Color3.fromRGB(255, 255, 255)
thomas.TextSize = 14.000
thomas.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Thomas%20The%20Dank%20Engine.txt",true))();
end)

UICorner_6.Parent = thomas

bombvest.Name = "bombvest"
bombvest.Parent = main
bombvest.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
bombvest.BorderColor3 = Color3.fromRGB(0, 0, 0)
bombvest.BorderSizePixel = 0
bombvest.Position = UDim2.new(0.577629387, 0, 0.322997421, 0)
bombvest.Size = UDim2.new(0, 200, 0, 50)
bombvest.Font = Enum.Font.SourceSansBold
bombvest.Text = "Bomb Vest"
bombvest.TextColor3 = Color3.fromRGB(255, 255, 255)
bombvest.TextSize = 14.000
bombvest.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/bomb%20vest.txt",true))();
end)


UICorner_7.Parent = bombvest

xester.Name = "xester"
xester.Parent = main
xester.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
xester.BorderColor3 = Color3.fromRGB(0, 0, 0)
xester.BorderSizePixel = 0
xester.Position = UDim2.new(0.0550918207, 0, 0.470284224, 0)
xester.Size = UDim2.new(0, 200, 0, 50)
xester.Font = Enum.Font.SourceSansBold
xester.Text = "Xester"
xester.TextColor3 = Color3.fromRGB(255, 255, 255)
xester.TextSize = 14.000
xester.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Xester%20FD.txt",true))();
end)

UICorner_8.Parent = xester

night.Name = "night"
night.Parent = main
night.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
night.BorderColor3 = Color3.fromRGB(0, 0, 0)
night.BorderSizePixel = 0
night.Position = UDim2.new(0.577629387, 0, 0.470284224, 0)
night.Size = UDim2.new(0, 200, 0, 50)
night.Font = Enum.Font.SourceSansBold
night.Text = "Nightwing Plasma Cutters"
night.TextColor3 = Color3.fromRGB(255, 255, 255)
night.TextSize = 14.000
night.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Nightwing%20Plasma%20Cutters.txt",true))();
end)

UICorner_9.Parent = night

Label.Name = "Label"
Label.Parent = main
Label.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Label.BackgroundTransparency = 2.000
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0.88647747, 0, 0.844961226, 0)
Label.Size = UDim2.new(0, 51, 0, 29)
Label.Font = Enum.Font.SourceSansBold
Label.Text = "Made"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 14.000

UICorner_10.Parent = Label

Label_2.Name = "Label"
Label_2.Parent = main
Label_2.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Label_2.BackgroundTransparency = 2.000
Label_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label_2.BorderSizePixel = 0
Label_2.Position = UDim2.new(0.903171957, 0, 0.873385012, 0)
Label_2.Size = UDim2.new(0, 51, 0, 29)
Label_2.Font = Enum.Font.SourceSansBold
Label_2.Text = "By"
Label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Label_2.TextSize = 14.000

UICorner_11.Parent = Label_2

Label_3.Name = "Label"
Label_3.Parent = main
Label_3.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Label_3.BackgroundTransparency = 2.000
Label_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label_3.BorderSizePixel = 0
Label_3.Position = UDim2.new(0.878130198, 0, 0.901808798, 0)
Label_3.Size = UDim2.new(0, 61, 0, 29)
Label_3.Font = Enum.Font.SourceSansBold
Label_3.Text = "ShadeDev"
Label_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Label_3.TextSize = 14.000

UICorner_12.Parent = Label_3

grabv1.Name = "grabv1"
grabv1.Parent = main
grabv1.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
grabv1.BorderColor3 = Color3.fromRGB(0, 0, 0)
grabv1.BorderSizePixel = 0
grabv1.Position = UDim2.new(0.0550918207, 0, 0.627906978, 0)
grabv1.Size = UDim2.new(0, 200, 0, 50)
grabv1.Font = Enum.Font.SourceSansBold
grabv1.Text = "Grab V1"
grabv1.TextColor3 = Color3.fromRGB(255, 255, 255)
grabv1.TextSize = 14.000
grabv1.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/grabknife%20v1.txt",true))();
end)

UICorner_13.Parent = grabv1

message.Name = "message"
message.Parent = main
message.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
message.BorderColor3 = Color3.fromRGB(0, 0, 0)
message.BorderSizePixel = 0
message.Position = UDim2.new(0.288814694, 0, 0.870801032, 0)
message.Size = UDim2.new(0, 196, 0, 29)
message.Font = Enum.Font.SourceSansBold
message.PlaceholderText = "Comment Here"
message.Text = ""
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextSize = 14.000

UICorner_14.Parent = message

send.Name = "send"
send.Parent = main
send.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
send.BorderColor3 = Color3.fromRGB(0, 0, 0)
send.BorderSizePixel = 0
send.Position = UDim2.new(0.626043379, 0, 0.873385012, 0)
send.Size = UDim2.new(0, 69, 0, 28)
send.Font = Enum.Font.SourceSansBold
send.Text = "Send"
send.TextColor3 = Color3.fromRGB(255, 255, 255)
send.TextSize = 14.000

UICorner_15.Parent = send

-- Scripts:

local function HIHCBNM_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(HIHCBNM_fake_script)()
local function SBEH_fake_script() -- main.Dragify 
	local script = Instance.new('LocalScript', main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.50
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(SBEH_fake_script)()
