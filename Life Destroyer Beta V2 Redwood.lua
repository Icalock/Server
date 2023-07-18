game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Welcome to Life Destroyer Beta UTG";
    Color =  Color3.new(1, 1, 0);
    Font = Enum.Font.GothamBold;
    FontSize = Enum.FontSize.Size24;
    })
    
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Thanks for using my UTG ! ";
    Color =  Color3.new(1, 1, 0);
    Font = Enum.Font.GothamBold;
    FontSize = Enum.FontSize.Size24;
    })
    
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Redwood Prison TM";
    Color =  Color3.new(1, 1, 0);
    Font = Enum.Font.GothamBold;
    FontSize = Enum.FontSize.Size24;
    })
    
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "No Blacklist, Free Spam and More, OP Scripts ";
    Color =  Color3.new(1, 1, 0);
    Font = Enum.Font.GothamBold;
    FontSize = Enum.FontSize.Size24;
    })
    
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Rank: Whitelisted";
    Color =  Color3.new(1, 1, 0);
    Font = Enum.Font.GothamBold;
    FontSize = Enum.FontSize.Size24;
    })
    
    local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Test%20Orion%20Changes",true))();
    OrionLib:MakeNotification({
        Name = "Life Destroyer Beta V2",
        Content = "Loading...",
        Image = "http://www.roblox.com/asset/?id=12597288571",
        Time = 5
    })
    wait(5)
    OrionLib:MakeNotification({
        Name = "Life Destroyer Beta V2",
        Content = "Welcome to Life Destroyer",
        Image = "http://www.roblox.com/asset/?id=12597288571",
        Time = 5
    })
    OrionLib:MakeNotification({
        Name = "Life Destroyer Beta V2",
        Content = "Game Detected: Redwood Prison",
        Image = "http://www.roblox.com/asset/?id=12597288571",
        Time = 5
    })
    local Window = OrionLib:MakeWindow({Name = "Life Destroyer Beta V2 - Redwood Prison", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    local Tab = Window:MakeTab({
        Name = "Home",
        Icon = "http://www.roblox.com/asset/?id=11247260342",
        PremiumOnly = false
    })
    local Section = Tab:AddSection({
        Name = "Status: Whitelisted"
    })
    local Section = Tab:AddSection({
        Name = "Welcome to Life Destroyer Beta V2"
    })
    local Tab = Window:MakeTab({
        Name = "Scripts",
        Icon = "http://www.roblox.com/asset/?id=11507089364",
        PremiumOnly = false
    })
    local Section = Tab:AddSection({
        Name = "Status: Whitelisted"
    })
    local Section = Tab:AddSection({
        Name = "Toggles"
    })
        
    Tab:AddToggle({
        Name = "Teamlock",
        Default = false,
        Callback = function(bool)
            local function teamlockLoop()
                while true do
                    if toggleEnabled then
                        local args = {
                            "requestTeam",
                            "police"
                        }
                     
                        workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                    end
                    wait()
                end
            end
            
            coroutine.wrap(teamlockLoop)()
        end    
    })
    Tab:AddToggle({
        Name = "AutoHostile",
        Default = false,
        Callback = function(bool)
            local function autoHostileLoop()
                while true do
                    if toggleEnabled then
                        local args = {
                            "becomeHostile"
                        }
                     
                        workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                    end
                    wait()
                end
            end
            
            coroutine.wrap(autoHostileLoop)()
        end    
    })
    local Section = Tab:AddSection({
	Name = "Local Player"
})
Tab:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(bool)
		    if bool then
        connection = game:GetService("RunService").Stepped:Connect(function()
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        end)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        game.Players.LocalPlayer.Character.Head.CanCollide = true
        game.Players.LocalPlayer.Character.Torso.CanCollide = true
    end
    local player = game.Players.LocalPlayer
local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")

local function handleHealthChanged(health)
    if health <= 0 then
        Toggle:Set(false)
    end
end

local function characterAdded(character)
    humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.HealthChanged:Connect(handleHealthChanged)
    end
end

player.CharacterAdded:Connect(characterAdded)
if humanoid then
    humanoid.HealthChanged:Connect(handleHealthChanged)
end

local loopEnabled = false
	end    
})
Tab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed Value",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end    
})
Tab:AddSlider({
	Name = "Jumppower",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jumppower Value",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end    
})
local Section = Tab:AddSection({
	Name = "Draw Laser"
})
Tab:AddTextbox({
	Name = "Target Player",
	Default = "player name here",
	TextDisappear = true,
	Callback = function(text)
		targetPlayer = text
	end	  
})
Tab:AddButton({
	Name = "Bring",
	Callback = function()
      		local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local Upsilon = require(workspace:WaitForChild("upsilonLibrary"))
    local targetPlayerName = targetPlayer
    
    if targetPlayerName == "" then
        
        return
    end
    
    wait(0.5)
    
    local playerModel = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
    if playerModel then
        playerModel:Destroy()
    end
    
    wait(0.5)
    
    local resources = workspace:FindFirstChild("resources")
    if not resources or not resources:FindFirstChild("RemoteEvent") then
        
        return
    end
    
    local remoteEvent = resources.RemoteEvent
    
    local ohString2 = "reloadMe"
    remoteEvent:FireServer(ohString2)
    
    wait(0.8)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition
    
    wait(0.5)
    
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if targetPlayer then
        local targetCharacter = targetPlayer.Character
        if targetCharacter then
            local targetTorso = targetCharacter:FindFirstChild("Torso")
            if targetTorso then
                Upsilon.InvokeServer("giveRiotShield", targetTorso)
                
                wait(0.5)
                
                ohString2 = "reloadMe"
                remoteEvent:FireServer(ohString2)
                
                wait(0.7)
                
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition
            end
        end
    end
  	end    
})
Tab:AddButton({
	Name = "Kill",
	Callback = function()
      		local player = game.Players:FindFirstChild(targetPlayer) 
    if player then
        for x = 1, 2 do
            local args = {
                [1] = "FireOtherClients",
                [2] = "drawLaser",
                [3] = Vector3.new(0, 0, 0),
                [4] = Vector3.new(0, 0, 0),
                [5] = {
                    ["Name"] = "Head",
                    ["CFrame"] = player.Character.Head.CFrame,
                    ["Material"] = Enum.Material.ForceField,
                    ["Parent"] = player.Character,
                    ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                    ["Transparency"] = 1
                }
            }

            workspace.resources.RemoteEvent:FireServer(unpack(args))
        end
    end
  	end    
})
Tab:AddButton({
	Name = "Goto",
	Callback = function()
      		    local player = game.Players:FindFirstChild(targetPlayer)
    if player then
        local character = player.Character
        if character then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootPart.CFrame
            end
        end
    end

  	end    
})
Tab:AddToggle({
	Name = "Bubble Shield",
	Default = false,
	Callback = function(bool)
        loopEnabled = bool
        if bool then
            if not Bubble then
                Bubble = Instance.new("Part")
                Bubble.Name = "Bubble"
                Bubble.Parent = Workspace
                Bubble.Size = Vector3.new(20, 20, 20)
                Bubble.CastShadow = true
                Bubble.CanCollide = false
                Bubble.Anchored = true
                Bubble.Shape = Enum.PartType.Ball
                Bubble.Color = Color3.fromRGB(17, 17, 17)
                Bubble.Material = Enum.Material.ForceField
                Bubble.Transparency = 0
    
                function Shield(part)
                    local properties = {
                        CanCollide = true,
                        Parent = Workspace,
                        Anchored = true,
                        BrickColor = part.BrickColor,
                        RotVelocity = part.RotVelocity,
                        Name = part.Name,
                        Position = part.Position,
                        Material = part.Material,
                        Shape = part.Shape,
                        Size = part.Size,
                        CastShadow = true,
                        Transparency = 1
                    }
    
                    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
                end
    
                local function RespawnBubble(character)
                    if Bubble then
                        Bubble:Destroy()
                        Bubble = nil
                    end
    
                    if character and loopEnabled then
                        wait(1)
                        Bubble = Instance.new("Part")
                        Bubble.Name = "Bubble"
                        Bubble.Parent = Workspace
                        Bubble.Size = Vector3.new(20, 20, 20)
                        Bubble.CastShadow = true
                        Bubble.CanCollide = false
                        Bubble.Anchored = true
                        Bubble.Shape = Enum.PartType.Ball
                        Bubble.Color = Color3.fromRGB(17, 17, 17)
                        Bubble.Material = Enum.Material.ForceField
                        Bubble.Transparency = 0
    
                        Bubble.CFrame = character.HumanoidRootPart.CFrame
                        Shield(Bubble)
                    end
                end
    
                RespawnBubble(game.Players.LocalPlayer.Character)
    
                game.Players.LocalPlayer.CharacterAdded:Connect(RespawnBubble)
    
                game.Players.LocalPlayer.CharacterRemoving:Connect(function(character)
                    if Bubble then
                        Bubble:Destroy()
                        Bubble = nil
                    end
                end)
            end
    
            while loopEnabled do
                wait()
                if Bubble and game.Players.LocalPlayer.Character then
                    Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    Shield(Bubble)
                end
            end
        else
            loopEnabled = false
            if Bubble then
                Bubble:Destroy()
                Bubble = nil
            end
        end
	end    
})
Tab:AddButton({
	Name = "Kill all",
	Callback = function()
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then  
                for x = 1, 2 do
                    local args = {
                        [1] = "FireOtherClients",
                        [2] = "drawLaser",
                        [3] = Vector3.new(0, 0, 0),
                        [4] = Vector3.new(0, 0, 0),
                        [5] = {
                            ["Name"] = "Head",
                            ["CFrame"] = player.Character.Head.CFrame,
                            ["Material"] = Enum.Material.ForceField,
                            ["Parent"] = player.Character,
                            ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                            ["Transparency"] = 1
                        }
                    }
            
                    workspace.resources.RemoteEvent:FireServer(unpack(args))
                end
            end
        end
        end
})
local Section = Tab:AddSection({
	Name = "Combat"
})
Tab:AddButton({
	Name = "Click Kill",
	Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)

        local lib = require(game:GetService("Workspace").upsilonLibrary)
        
        local mouse = game.Players.LocalPlayer:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Click Kill"
        
        local cooldown = 0.5
        local lastActivated = 0
        
        function CreateBubble(position)
            local Bubble = Instance.new("Part")
            Bubble.Parent = workspace
            Bubble.CastShadow = false
            Bubble.CanCollide = false
            Bubble.Anchored = true
            Bubble.Shape = Enum.PartType.Ball
            Bubble.BrickColor = BrickColor.new("Bright blue")
            Bubble.Material = Enum.Material.Neon
            Bubble.CFrame = CFrame.new(position)
            Bubble.Transparency = 0
        
            function Portal(part)
                local properties = {
                    CanCollide = false,
                    Parent = workspace,
                    Anchored = true,
                    BrickColor = part.BrickColor,
                    RotVelocity = part.RotVelocity,
                    Name = part.Name,
                    Position = part.Position,
                    CFrame = part.CFrame,
                    Material = part.Material,
                    Shape = part.Shape,
                    Size = part.Size,
                    CastShadow = false,
                    Transparency = 1
                }
        
                lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
            end
        
            local function animateBubble()
                Bubble.Size = Vector3.new(15, 15, 15)
                wait(0.1)
                Bubble.Size = Vector3.new(14, 14, 14)
                wait(0.1)
                Bubble.Size = Vector3.new(13, 13, 13)
                wait(0.1)
                Bubble.Size = Vector3.new(12, 12, 12)
                wait(0.1)
                Bubble.Size = Vector3.new(11, 11, 11)
                wait(0.1)
                Bubble.Size = Vector3.new(10, 10, 10)
                wait(0.1)
                Bubble.Size = Vector3.new(9, 9, 9)
                wait(0.1)
                Bubble.Size = Vector3.new(8, 8, 8)
                wait(0.1)
                Bubble.Size = Vector3.new(7, 7, 7)
                wait(0.1)
                Bubble.Size = Vector3.new(6, 6, 6)
                wait(0.1)
                Bubble.Size = Vector3.new(5, 5, 5)
                wait(0.1)
                Bubble.Size = Vector3.new(4, 4, 4)
                wait(0.1)
                Bubble.Size = Vector3.new(3, 3, 3)
                wait(0.1)
                Bubble.Size = Vector3.new(2, 2, 2)
                wait(0.1)
                Bubble.Size = Vector3.new(1, 1, 1)
                wait(0.1)
                Bubble:Destroy()
            end
        
            local function teleportBubble()
                while true do
                    Portal(Bubble)
                    if Bubble.Size.X <= 1 then
                        break
                    end
                    wait()
                end
            end
        
            spawn(teleportBubble)
            coroutine.wrap(animateBubble)()
        end
        
        function FireLaserOnPlayers(position)
            return coroutine.create(function()
                for _, player in ipairs(game.Players:GetPlayers()) do
                    if player ~= game.Players.LocalPlayer then
                        local distance = (player.Character.HumanoidRootPart.Position - position).Magnitude
                        if distance <= 15 then
                            for x = 1, 2 do
                                local args = {
                                    [1] = "FireOtherClients",
                                    [2] = "drawLaser",
                                    [3] = Vector3.new(0, 0, 0),
                                    [4] = Vector3.new(0, 0, 0),
                                    [5] = {
                                        ["Name"] = "Head",
                                        ["CFrame"] = player.Character.Head.CFrame,
                                        ["Material"] = Enum.Material.ForceField,
                                        ["Parent"] = player.Character,
                                        ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                                        ["Transparency"] = 1
                                    }
                                }
                                workspace.resources.RemoteEvent:FireServer(unpack(args))
                            end
                        end
                    end
                end
            end)
        end
        
        local function RunFireLaserOnPlayers(position)
            local coroutineFireLaser = FireLaserOnPlayers(position)
            coroutine.resume(coroutineFireLaser)
        end
        
        tool.Activated:Connect(function()
            local currentTime = tick()
            if currentTime - lastActivated >= cooldown then
                lastActivated = currentTime
                CreateBubble(mouse.Hit.Position)
                coroutine.wrap(RunFireLaserOnPlayers)(mouse.Hit.Position)
            end
        end)
        
        tool.Parent = game.Players.LocalPlayer.Backpack
  	end    
})
local Tab = Window:MakeTab({
	Name = "Others",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Maps & Structures"
})
Tab:AddButton({
	Name = "McDonalds Restaurant",
	Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Redwood-Prison-Mcdonalds-11764"))()
  	end    
})
Tab:AddButton({
	Name = "Jailbreak Map",
	Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Redwood-Prison-Jailbreak-map-11764"))()
  	end    
})