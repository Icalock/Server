
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
Text = "No Blacklist, Free Spam and More ";
Color =  Color3.new(1, 1, 0);
Font = Enum.Font.GothamBold;
FontSize = Enum.FontSize.Size24;
})

game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Rank: Creator";
Color =  Color3.new(1, 1, 0);
Font = Enum.Font.GothamBold;
FontSize = Enum.FontSize.Size24;
})

shared.noclip = false
local stuff = {}


if not game:IsLoaded() then 
    game.Loaded:Wait()
end

local targetPlayer = game.Players.LocalPlayer
local teamFu = "Fugitives"
local teamPo = "Police"
local teamPr = "Prisoners"
local teamCh = "Choosing"

      
      
lp = game.Players.LocalPlayer
doorspamming = false
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Test%20Orion%20Changes",true))();
OrionLib:MakeNotification({
	Name = "Life Destroyer Beta UTG",
	Content = "Loading...",
	Image = "http://www.roblox.com/asset/?id=11507046652",
	Time = 5
})
wait(5)
OrionLib:MakeNotification({
	Name = "Life Destroyer Beta UTG",
	Content = "Welcome to Life Destroyer",
	Image = "http://www.roblox.com/asset/?id=11507046652",
	Time = 5
})
OrionLib:MakeNotification({
	Name = "Life Destroyer Beta UTG",
	Content = "Game Detected: Redwood Prison",
	Image = "http://www.roblox.com/asset/?id=11507046652",
	Time = 5
})
local Main = OrionLib:MakeWindow({Name = "Life Destroyer Beta UTG - Redwood Prison", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Main:MakeTab({
	Name = "Main",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local A = Main:MakeTab({
	Name = "Archived Stuff",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local G= Main:MakeTab({
	Name = "Teleports",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local L= Main:MakeTab({
	Name = "Blocks",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local M= Main:MakeTab({
	Name = "More",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local C= Main:MakeTab({
	Name = "Colorpicker",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local P= Main:MakeTab({
	Name = "VIP",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local Pl= Main:MakeTab({
	Name = "Prison Stuff",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local O= Main:MakeTab({
	Name = "Other Games",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local Ow= Main:MakeTab({
	Name = "Owner",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local  Mod= Main:MakeTab({
	Name = "Moderator",
	Icon = "http://www.roblox.com/asset/?id=11507046652",
	PremiumOnly = false
})
local Section = A:AddSection({
	Name = "added darkcraps gui to make him mad lol"
})
local Section = G:AddSection({
	Name = "All VIP Features"
})
local Section = Tab:AddSection({
	Name = "Status: Creator"
})
function doorSpam()
    wait()
    for _,doors in next, workspace.AllDoors:GetChildren() do --loop through doors
        game:GetService("Workspace").resources.RemoteEvent:FireServer("updateDoorSystem", doors) --main remote
    end
end
local Section =  Tab:AddSection({
	Name = "Antis/Prison Stuff"
})
Tab:AddButton({
	Name = "DoorSpam On",
	Callback = function()
        doorspamming=true
  	end    
})
Tab:AddButton({
	Name = "DoorSpam Off",
	Callback = function()
        doorspamming=false
  	end    
})
Tab:AddButton({
	Name = "Anti-Delay/Void",
	Callback = function() 
while wait (0) do
local args = {
					[1] = "resetNetworkOwnership",
					[2] = game.Players.LocalPlayer.Character.HumanoidRootPart,
					[3] = false

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
end    
})
Tab:AddButton({
	Name = "Anti-Delay/Void V2",
	Callback = function() 
while wait (0) do
local args = {
					[1] = "resetNetworkOwnership",
					[2] = game.Players.LocalPlayer.Character.HumanoidRootPart,
					[3] = false

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
local args = {
					[1] = "resetNetworkOwnership",
					[2] = game.Players.LocalPlayer.Character.HumanoidRootPart,
					[3] = false

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
end    
})
Tab:AddButton({
	Name = "anti crash ",
	Callback = function()
local Players = game:GetService("Players")

while true do
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        if character then
            local robberSpawn = character:FindFirstChild("robber spawn")
            if robberSpawn then
                robberSpawn:Destroy()
            end
        end
    end
    wait()
end
end    
})
Tab:AddButton({
	Name = "Toggle Shields",
	Callback = function() workspace.resources.RemoteEvent:FireServer("toggleShield",workspace.RiotShield)
  	end    
})
local Section =  Tab:AddSection({
	Name = "Functions To Other People"
})
Tab:AddTextbox({
    Name = "Boldify",
    Default = "plr",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(10, 1, 10)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Profly(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = "removeHats",
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
			Bubble.Position = Player.Character.Head.Position + Vector3.new(0,-5,0)
 
			Profly(Bubble)
		
        end    
})
Tab:AddTextbox({
    Name = "Give Shield",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local RemoteEvent = workspace.resources.RemoteEvent

local InfoTable = {
    ["CanCollide"] = false; 
    ["Size"] = Vector3.new(20,20,20); 
    ["Color"] = Color3.fromRGB(0, 0, 0); 
    ["Material"] = Enum.Material.ForceField; 
    ["Shape"] = "Ball"; 
    ["Parent"] = workspace
}

while task.wait() do
    local Pos1 = Player.Character.Torso.Position * 1.5
    local Pos2 = Player.Character.Torso.Position * 0.5
    require(workspace.upsilonLibrary).FireOtherClients("drawLaser", Pos1, Pos2, InfoTable)
    firesignal(RemoteEvent.OnClientEvent, "drawLaser", Pos1, Pos2, InfoTable)
end
end
})
Tab:AddTextbox({
    Name = "Gift Anti-Delay",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
while wait (0) do
local Player = game.Players[Value]
local args = {
					[1] = "resetNetworkOwnership",
					[2] = Player.Character.HumanoidRootPart,
					[3] = false

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
end
})
Tab:AddTextbox({
    Name = "God",
    Default = "",
    TextDisappear = false,
    Callback = function(Value) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players[Value].Character.Humanoid.LeftLeg.CFrame
          for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid,-99999999999999999999);
	end
        end
})
Tab:AddTextbox({
    Name = "Give Profly",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(10, 1, 10)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Profly(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = Player.Character.Head.Position + Vector3.new(0,-5,0)
 
			Profly(Bubble)
		end
end
})
Tab:AddTextbox({
    Name = "Give Halo",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(1, 10, 10)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Halo(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
          ["Orientation"] = Vector3.new(0, 0, 90),
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = Player.Character.Head.Position + Vector3.new(0,4,0)
 
			Halo(Bubble)
		end
end
})
Tab:AddTextbox({
    Name = "Kill",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
    local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
local Upsilon = require(workspace.upsilonLibrary) Upsilon.InvokeServer("giveRiotShield",Player.Character.Head)
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
end
})
Tab:AddTextbox({
    Name = "Freeze",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
    local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary) Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
local Player = game.Players[Value]
local args = {
					[1] = "resetNetworkOwnership",
					[2] = Player.Character.HumanoidRootPart,
					[3] = false

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
				wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
						end
    end
wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.Ice
		Bubble.Transparency = 0
 
 
		function Aaa(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 0
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
 
			Aaa(Bubble)
		end
end
})
Tab:AddTextbox({
    Name = "Give Shadow Clones",
    Default = "lol8267vr",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local BubbleS = Instance.new("Part")
local Bubble6 = Instance.new("Part")
local Bubble7 = Instance.new("Part")
local Bubble8 = Instance.new("Part")
local Bubble9 = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
local Bubble4 = Instance.new("Part")
local Bubble5 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2, 1,1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(0,0,5)

     BubbleS.Parent = Workspace
		BubbleS.Size = Vector3.new(2, 1,1)
		BubbleS.CastShadow = false
		BubbleS.CanCollide = true
		BubbleS.Anchored = true
		BubbleS.Material = Enum.Material.Neon
		BubbleS.Transparency = 0
		BubbleS.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(5,0,5)

Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(1, 2,1)
		Bubble6.CastShadow = false
		Bubble6.CanCollide = true
		Bubble6.Anchored = true
		Bubble6.Material = Enum.Material.Neon
		Bubble6.Transparency = 0
Bubble6.Parent = Workspace


Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(1, 2,1)
		Bubble7.CastShadow = false
		Bubble7.CanCollide = true
		Bubble7.Anchored = true
		Bubble7.Material = Enum.Material.Neon
		Bubble7.Transparency = 0

Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(3.5, 2,1)
		Bubble8.CastShadow = false
		Bubble8.CanCollide = true
		Bubble8.Anchored = true
		Bubble8.Material = Enum.Material.Neon
		Bubble8.Transparency = 0


		Bubble9.Parent = Workspace
		Bubble9.Size = Vector3.new(1.5, 4,1)
		Bubble9.CastShadow = false
		Bubble9.CanCollide = true
		Bubble9.Anchored = true
		Bubble9.Material = Enum.Material.Neon
		Bubble9.Transparency = 0

		function Clone(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(2, 2,1)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
		Bubble2.Anchored = true
		Bubble2.Material = Enum.Material.Neon
		Bubble2.Transparency = 0
     Bubble2.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,0,5)

		function Thing(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
local lib = require(game:GetService("Workspace").upsilonLibrary)
		Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(1, 2,1)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
		Bubble3.Material = Enum.Material.Neon
		Bubble3.Transparency = 0
      Bubble3.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(1,0,5)

		function arm(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end

		Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(1, 2,1)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = true
		Bubble4.Anchored = true
		Bubble4.Material = Enum.Material.Neon
		Bubble4.Transparency = 0
    Bubble4.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(-1,0,5)


		function Body(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
		Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(1.5, 4,1)
		Bubble5.CastShadow = false
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
     Bubble5.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,-3,5)

		function Limbs(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
while wait (0) do
	Bubble.Position = Player.Character.Head.Position+ Vector3.new(0,0,5)
	BubbleS.Position = Player.Character.Head.Position+ Vector3.new(5,0,5)
	Bubble6.Position = Player.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble7.Position = Player.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble8.Position =  Player.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble9.Position =  Player.Character.Torso.Position+ Vector3.new(5,-2,5)
Bubble2.Position =  Player.Character.Torso.Position+ Vector3.new(0,0,5)
Bubble3.Position =  Player.Character.Torso.Position+ Vector3.new(1,0,5)
Bubble4.Position = 
Player.Character.Torso.Position+ Vector3.new(-1,0,5)
Bubble5.Position = 
Player.Character.Torso.Position+ Vector3.new(0,-3,5)
			Clone(Bubble)
			 Clone(BubbleS)
			 Clone(Bubble6)
			 Clone(Bubble7)
			 Clone(Bubble8)
			 Clone(Bubble9)
         Thing(Bubble2)
         arm(Bubble3)
         Body(Bubble4)
         Limbs(Bubble5)
end
end
})
Tab:AddButton({
    Name = "Fall All",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Size = Vector3.new(9999, 270,9999)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
   Bubble.Transparency = 1
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Size"] = part.Size,
				["CastShadow"] = true,
       		["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shield(Bubble)
	end
})

Tab:AddButton({
	Name = "Hostile All",
	Callback = function() 
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(8000,8000,8000)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(8000,8000,8000)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "heliBarrier",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
end
})
Tab:AddButton({
    Name = "Push All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local laser = Instance.new("Part")
				laser.Parent = Workspace
				function createlaser(part,start,endpos)
					local properties = {
						["Shape"] = Enum.PartType.Ball,
               ["Size"] = Vector3.new(50, 8, 8),
						["Color"] = LaserESPColor,
               ["CanCollide"] = true,
						["Material"] = Enum.Material.Neon,
						["Parent"] = Workspace,
						["Reflectance"] = 0.5
					}
		firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)							lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
for i = 1, 1 do  
					for _,v in pairs(game.Players:GetPlayers()) do						createlaser(laser,game.Players.LocalPlayer.Character.Torso.Position,v.Character.Torso.Position)
					end
	
	wait(0)
	
	end
	end
})
Tab:AddButton({
    Name = "Fat All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local players = game:GetService("Players")
local characterShields = {}

local function createShield(player)
    local character = player.Character
    local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

    if not torso then
        return
    end

    local shield = Instance.new("Part")
    shield.Parent = Workspace
    shield.Size = Vector3.new(3, 2, 2)
    shield.BrickColor = BrickColor.new(Color3.new(0, 0, 1)) -- Start with red color
    shield.Material = Enum.Material.Metal
    shield.Transparency = 0
    shield.Anchored = true
    shield.CastShadow = false
    shield.CanCollide = false

    characterShields[player] = shield

    local hue = 0
    local targetHue = 0
    local colorChangeSpeed = 0.15

    game:GetService("RunService").Heartbeat:Connect(function()
        if not player.Character or not player.Character:FindFirstChild("Torso") then
            return
        end
        local targetCFrame = player.Character.Torso.CFrame
        shield.CFrame = targetCFrame
        hue = hue + (targetHue - hue) * colorChangeSpeed
        color = Color3.fromRGB(255, 255, 255)
        color = Color3.fromRGB(255, 255, 255)
        shield.BrickColor = BrickColor.new(0)
        if math.abs(targetHue - hue) < colorChangeSpeed then
            targetHue = targetHue + 60 
            if targetHue > 360 then
                targetHue = 60
            end
        end
        local properties = {
            ["CanCollide"] = false,
            ["Parent"] = Workspace,
            ["Anchored"] = true,
            ["BrickColor"] = shield.BrickColor,
            ["Position"] = shield.Position,
            ["Material"] = shield.Material,
            ["Shape"] = shield.Shape,
            ["Size"] = shield.Size,
            ["CastShadow"] = false,
            ["Transparency"] = 0
        }
        lib.FireOtherClients("drawLaser", shield.Position, shield.Position, properties)
    end)
end

local function removeShield(player)
    if characterShields[player] then
        characterShields[player]:Destroy()
        characterShields[player] = nil
    end
end

players.PlayerAdded:Connect(function(player)
    createShield(player)
end)

players.PlayerRemoving:Connect(function(player)
    removeShield(player)
end)

for _, player in ipairs(players:GetPlayers()) do
    createShield(player)
end
end
})
Tab:AddButton({
    Name = "Air All",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(7000, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = false
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 100
 
 
		function Air(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = false,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Air(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Tase All",
    Callback = function()
  for i,v in pairs(game.Players:GetPlayers()) do
local ohString1 = "taseNew"
			local ohInstance2 = v
			local ohVector33 = Vector3.one*0/0
			local ohVector34 = Vector3.one*0/0
			workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohVector33, ohVector34)
		end
    end
})
Tab:AddButton({
    Name = "Fling All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
        Sand.Velocity = Vector3.new(0,250,0)
			Sand.Size = Vector3.new(8000,0.5,8000)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(8000,0.5,8000)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
        Bubble.Velocity = Vector3.new(0,250,0)
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = true,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
             ["Velocity"] = part.Velocity,
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
             ["Velocity"] = part.Velocity,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
	end
})
Tab:AddButton({
    Name = "Hurt All",
    Callback = function()
        wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

local c = workspace.CurrentCamera
local lplr = game.Players.LocalPlayer
function a(p)
if p and p.Character then
pcall(function()
local t = p.Character.PrimaryPart.CFrame * Vector3.new(0, -0.25, 0)
c.CFrame = CFrame.new(c.Focus.p, t) * CFrame.new(0, 0, 0.5)
end)
end
end
for i=1,1 do
wait(0.3)
for _,v in pairs(game.Players:GetPlayers()) do
pcall(function()
for i=1,1 do
wait(0.3)

lplr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame - v.Character.HumanoidRootPart.CFrame.LookVector*4
a(v)
wait()
end
end)
end
end
while wait (0) do
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 15);
end
end
	end
})
Tab:AddButton({
    Name = "Change Spawns To Cake Room",
    Callback = function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(95.13085174560547, 1, 67.6552734375))

wait(1)
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("SpawnLocation") then
							workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", v)
					end
					for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
    end
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.97287, 3.5, -309.917053, -0.998034716, -5.14503162e-10, 0.0626633987, -4.24087127e-10, 1, 1.45618451e-09, -0.0626633987, 1.42674794e-09, -0.998034716)
end
})
local Section = Tab:AddSection({
	Name = "Player"
})
Tab:AddButton({
    Name = "Become Brick Wall",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(25, 25, 3)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("12")
		Bubble.Material = Enum.Material.Brick
		Bubble.Transparency = 0
 
 
		function WallBrick(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000001) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			WallBrick(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Long Arm",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
  
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(10, 3, 3)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.Color = Color3.fromRGB(255, 255, 255)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Arm(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
          ["Orientation"] = Vector3.new(0, 0, 90),
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Arm(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Push Troll",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Size = Vector3.new(35, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 100
 
 
		function Troll(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = false,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] =part.Transparency
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Troll(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Become Egg",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Material = Enum.Material.SmoothPlastic
		Bubble.Transparency = 0
 
 
		function Egg(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Egg(Bubble)
		end
	end
})
Tab:AddButton({
	Name = "Fast Respawn",
	Callback = function()
while wait (0) do game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
local ohString1 = "reloadMe"
workspace.resources.RemoteEvent:FireServer(ohString1)
end)
end
  	end    
})
Tab:AddButton({
	Name = "Click tp",
	Callback = function() loadstring(game:HttpGet(('https://pastebin.com/raw/ty2bXGHL'),true))()
  	end    
})


Tab:AddButton({
	Name = "Give ice a shield! = )",
	Callback = function() 
local Player = game.Players["icedragon454"]
local RemoteEvent = workspace.resources.RemoteEvent

local InfoTable = {
    ["CanCollide"] = false; 
    ["Size"] = Vector3.new(20,20,20); 
    ["Color"] = Color3.fromRGB(0, 255, 255); 
    ["Material"] = Enum.Material.ForceField; 
    ["Shape"] = "Ball"; 
    ["Parent"] = workspace
}

while task.wait() do
    local Pos1 = Player.Character.Torso.Position * 1.5
    local Pos2 = Player.Character.Torso.Position * 0.5
    require(workspace.upsilonLibrary).FireOtherClients("drawLaser", Pos1, Pos2, InfoTable)
    firesignal(RemoteEvent.OnClientEvent, "drawLaser", Pos1, Pos2, InfoTable)
end
  	end    
})

Tab:AddButton({
	Name = "FE Dab",
	Callback = function() AnimationId = "248263260"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
  	end    
})
Tab:AddButton({
	Name = "Anti Kick",
	Callback = function()
while wait (0) do 
game.Workspace.resources.RemoteEvent:FireServer("becomeHostile") 
end
  	end    
})


Tab:AddButton({
	Name = "Rain Server",
	Callback = function()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "Credits go to griff for this feature";
})
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(234.879791, 6.51001406, 114.656578, 0.999789536, 1.39631933e-08, -0.0205145273, -1.38724676e-08, 1, 4.56482674e-09, 0.0205145273, -4.27927915e-09, 0.999789536)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = "70"
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = "70"
local riotshields = 0
local s_riotshields = Instance.new('Folder', game.Players.LocalPlayer.Character)

s_riotshields.Name = 'StoredRiotShields'

while wait(0.001) do
    if riotshields == 999999 then
        warn('Breaking!')
        break
    end
    riotshields = riotshields + 9999999
    local A_1 = "giveRiotShield"
    local A_2 = game:GetService("Workspace").RiotShield
    local Event = game:GetService("Workspace").resources.RemoteFunction
    Event:InvokeServer(A_1, A_2)

    local plr = game.Players.LocalPlayer
    local char = plr.Character
    
    for i,v in pairs(char:GetChildren()) do
        if v:IsA('Part') and v.Name == 'RiotShield' then
            local D_1 = Instance.new('Decal', v)
            D_1.Texture = '7464536663'
            v.Mesh:Destroy()
            v.Parent = s_riotshields
            --v.ClickDetector:Destroy()
            char.Humanoid.Died:Connect(function()
                v:Destroy()
            end)
        end
    end
 
    for i,v in pairs(char['Left Arm']:GetChildren()) do
        if v:IsA('Weld') then
            v:Destroy()
        end
    end
end

  	end    
})
Tab:AddButton({
	Name = "Choosing",
	Callback = function()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "Give credits for this few to hack";
})
local LocalPlayer = game.Players.LocalPlayer
local RemoteEvent = workspace.resources.RemoteEvent

RemoteEvent:FireServer("choiceResult", "returnToMenu", true)
RemoteEvent:FireServer("reloadMe")
LocalPlayer.CharacterAppearanceLoaded:Wait()
task.wait(2)
workspace.CurrentCamera.CameraType = Enum.CameraType.Custom 
workspace.CurrentCamera.CameraSubject = LocalPlayer
task.wait(1.45)
LocalPlayer.PlayerGui.GUI.roleChoose.Visible = false
Old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
task.wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Old
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.10489082, 4, -15.8136148)
  	end    
})

Tab:AddButton({
	Name = "Click Fling",
	Callback = function()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "Credits go to griff for this feature";
})
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Accessory" then v.Parent = workspace
    end
    end
    gh = game.Players.LocalPlayer.Name
    game.Workspace[gh]:Destroy()
    wait(2)
       spawn(function()
       while wait() do
           sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
           sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
       end
    end)
       for i,d in pairs(workspace:GetChildren()) do
         if d:IsA("Accessory") then 
    local temp = Instance.new("BodyPosition")
    temp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    temp.Parent = d.Handle
     spawn(function()
       while wait() do
           sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
           sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
       end
    end)
    local temp1 = Instance.new("BodyThrust")
    temp1.Location = Vector3.new(5,0,0)
    temp1.Force = Vector3.new(10000,10000,10000)
    temp1.Parent = d.Handle
    d.Handle.CanCollide = true
    game:GetService("RunService").RenderStepped:Connect(function()
    d.Handle.Position = game.Players.LocalPlayer:GetMouse().Hit.p + Vector3.new(0,2,0)
    temp.Position = game.Players.LocalPlayer:GetMouse().Hit.p + Vector3.new(0,2,0)
    end)
    end
    end
  	end    
})
Tab:AddButton({
	Name = "Fe Dancing Rick Astley+Stage",
	Callback = function()
Workspace.resources.RemoteEvent:FireServer("wearPants", "rbxassetid://7004236137")
Workspace.resources.RemoteEvent:FireServer("wearShirt", "rbxassetid://7170545431")

AnimationId = "248263260"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)

local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(20, 7, 20)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1003")
		Bubble.Material = Enum.Material.SmoothPlastic
		Bubble.Transparency = 0
 
 
		function Stage(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = 
 Vector3.new(139.55001831054688, 1, -200.78457641601562)
			Stage(Bubble)
		end
end
})
Tab:AddButton({
    Name = "Bubble Shield",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shield(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Shadow Clones",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local BubbleS = Instance.new("Part")
local Bubble6 = Instance.new("Part")
local Bubble7 = Instance.new("Part")
local Bubble8 = Instance.new("Part")
local Bubble9 = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
local Bubble4 = Instance.new("Part")
local Bubble5 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2, 1,1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(0,0,5)

     BubbleS.Parent = Workspace
		BubbleS.Size = Vector3.new(2, 1,1)
		BubbleS.CastShadow = false
		BubbleS.CanCollide = true
		BubbleS.Anchored = true
		BubbleS.Material = Enum.Material.Neon
		BubbleS.Transparency = 0
		BubbleS.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(5,0,5)

Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(1, 2,1)
		Bubble6.CastShadow = false
		Bubble6.CanCollide = true
		Bubble6.Anchored = true
		Bubble6.Material = Enum.Material.Neon
		Bubble6.Transparency = 0
Bubble6.Parent = Workspace


Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(1, 2,1)
		Bubble7.CastShadow = false
		Bubble7.CanCollide = true
		Bubble7.Anchored = true
		Bubble7.Material = Enum.Material.Neon
		Bubble7.Transparency = 0

Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(3.5, 2,1)
		Bubble8.CastShadow = false
		Bubble8.CanCollide = true
		Bubble8.Anchored = true
		Bubble8.Material = Enum.Material.Neon
		Bubble8.Transparency = 0


		Bubble9.Parent = Workspace
		Bubble9.Size = Vector3.new(1.5, 4,1)
		Bubble9.CastShadow = false
		Bubble9.CanCollide = true
		Bubble9.Anchored = true
		Bubble9.Material = Enum.Material.Neon
		Bubble9.Transparency = 0

		function Clone(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(2, 2,1)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
		Bubble2.Anchored = true
		Bubble2.Material = Enum.Material.Neon
		Bubble2.Transparency = 0
     Bubble2.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,0,5)

		function Thing(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
local lib = require(game:GetService("Workspace").upsilonLibrary)
		Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(1, 2,1)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
		Bubble3.Material = Enum.Material.Neon
		Bubble3.Transparency = 0
      Bubble3.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(1,0,5)

		function arm(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end

		Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(1, 2,1)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = true
		Bubble4.Anchored = true
		Bubble4.Material = Enum.Material.Neon
		Bubble4.Transparency = 0
    Bubble4.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(-1,0,5)


		function Body(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
		Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(1.5, 4,1)
		Bubble5.CastShadow = false
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
     Bubble5.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,-3,5)

		function Limbs(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
while wait (0) do
	Bubble.Position = game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(0,0,5)
	BubbleS.Position = game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(5,0,5)
	Bubble6.Position = game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble7.Position = game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble8.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble9.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,-2,5)
Bubble2.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,0,5)
Bubble3.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(1,0,5)
Bubble4.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(-1,0,5)
Bubble5.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,-3,5)
			Clone(Bubble)
			 Clone(BubbleS)
			 Clone(Bubble6)
			 Clone(Bubble7)
			 Clone(Bubble8)
			 Clone(Bubble9)
         Thing(Bubble2)
         arm(Bubble3)
         Body(Bubble4)
         Limbs(Bubble5)
end
end
})
Tab:AddButton({
    Name = "Bubble Shield Big",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(15, 15, 15)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function ShieldBig(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			ShieldBig(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Bypass Darkone bring",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Size = Vector3.new(0, 0, 0)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
		while task.wait(0.01) do
			Bubble.CFrame = 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.10489082, 4, -15.8136148)
			Shield(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Human heli!",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(4, 2, 2)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shield(Bubble)
		end
	end
})

Tab:AddButton({
    Name = "Big Bubble (1st Layer)",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shieldb(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shieldb(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Big Bubble (layer 2)",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(10, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shieldbb(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shieldbb(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Big Bubble (layer 3)",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(12, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shieldbbb(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shieldbbb(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Big Bubble (layer 4)",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(14, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shieldbbbb(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shieldbbbb(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Big Bubble (layer 5)",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(16, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shieldbbbbb(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shieldbbbbb(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "FF",
    Callback = function()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "This Feature Is FE";
})
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("42")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function ff(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			ff(Bubble)
		end
	end
})

Tab:AddButton({
    Name = "Kill Auara",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/gCaXHreH"))()
end
})
Tab:AddButton({
    Name = "Rainbow shield",
    Callback = function()
    game.StarterGui:SetCore("SendNotification", {
Title = "Credis";
Text = "NamelesL1";
})
local lib = require(game:GetService("Workspace").upsilonLibrary)
local player = game.Players.LocalPlayer
local character = player.Character
local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

local shield = nil
local moveSpeed = 75 -- adjust this value to control the speed of the shield's movement
local color = Color3.new(1, 0, 0) 
local hue = 0
local targetHue = 0
local colorChangeSpeed = 0.50 -- adjust this value to control the speed of the color change

function Shield(part)
    local properties = {
        ["CanCollide"] = true,
        ["Parent"] = Workspace,
        ["Anchored"] = true,
        ["BrickColor"] = part.BrickColor,
        ["RotVelocity"] = part.RotVelocity,
        ["Name"] = part.Name,
        ["Position"] = part.Position,
        ["Material"] = part.Material,
        ["Shape"] = part.Shape,
        ["Size"] = part.Size,
        ["CastShadow"] = false,
        ["Transparency"] = 1
    }

    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
end

local function onCharacterAdded(character)
    torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

    if torso then
        shield = Instance.new("Part")
        shield.Parent = Workspace
        shield.Shape = Enum.PartType.Ball
        shield.Size = Vector3.new(20, 20, 20)
        shield.BrickColor = BrickColor.new(color)
        shield.Material = Enum.Material.ForceField
        shield.Transparency = 0
        shield.Anchored = true
        shield.CastShadow = false
        shield.CanCollide = false

        game:GetService("RunService").Heartbeat:Connect(function()
            local targetCFrame = torso.CFrame
            shield.CFrame = targetCFrame
            Shield(shield)
            
            hue = hue + (targetHue - hue) * colorChangeSpeed
            color = Color3.fromHSV(hue/360, 1, 1)
            color = Color3.new(math.clamp(color.r, 0, 1), math.clamp(color.g, 0, 1), math.clamp(color.b, 0, 1))
            shield.BrickColor = BrickColor.new(color)
            
           
            if math.abs(targetHue - hue) < colorChangeSpeed then
                targetHue = targetHue + 60 
                if targetHue > 360 then
                    targetHue = 60 
                end
            end
        end)
    end
end

local function onCharacterRemoving(character)
    if shield then
        shield:Destroy()
        shield = nil
    end
end

player.CharacterAdded:Connect(function(character)
    wait(0.5) 
    onCharacterAdded(character)
end)
player.CharacterRemoving:Connect(onCharacterRemoving)

if character then
    wait(0.5) 
    onCharacterAdded(character)
end
end
})
Tab:AddButton({
    Name = "Become Car Tire",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
        
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(5, 20, 20)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.Color = Color3.fromRGB(0, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
		function Tire(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.Humanoid.RightLeg.CFrame
 
			Tire(Bubble)
		end
	end
})

local Section = Tab:AddSection({
	Name = "Map Stuff"
})
Tab:AddButton({
    Name = "Big Orb",
    Callback = function()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = " this feature is buggy";
})
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(111, 111, 111)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = false
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(255, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function BigOrb(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = false,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000001) do
			Bubble.CFrame = 
CFrame.new(77.9487762, 196.998978, -99.9687805, 0.999772072, 0.00822155271, -0.0197016411, -3.59711194e-08, 0.922868967, 0.385114104, 0.0213482697, -0.385026336, 0.922658622)
 Bubble.Size = Vector3.new(222,  222, 222)
wait(0.1)
Bubble.Size = Vector3.new(333,  333, 333)
wait(0.1)
Bubble.Size = Vector3.new(444,  444, 444)
wait(0.1)
Bubble.Size = Vector3.new(555,  555, 555)
wait(0.1)
Bubble.Size = Vector3.new(444,  444, 444)
wait(0.1)
Bubble.Size = Vector3.new(333,  333, 333)
wait(0.1)
Bubble.Size = Vector3.new(222,  222, 222)
wait(0.1)
Bubble.Size = Vector3.new(111, 111, 111)

			BigOrb(Bubble)
		end
	end
})

	
Tab:AddButton({
    Name = "Mess Map",
    Callback = function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "You must fly for this feature";
})
        local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(200, 200, 200)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
 
			Shield(Bubble)
		end
	end
})

Tab:AddButton({
    Name = "Block Fugitives",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
 Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(45, 45, 55)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("217")
		Bubble.Material = Enum.Material.WoodPlanks
		Bubble.Transparency = 0
 
 
		function Block(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = CFrame.new(-616.786621, -24.7896214, -328.400146)
 
			Block(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Block Helicopters",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
 Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(200, 200, 200)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("1031")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function No(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(261.958374, 6.91001606, 113.120659)
 
			No(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Trump Wall",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(80, 80, 2)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("0")
		Bubble.Material = Enum.Material.Brick
		Bubble.Transparency = 0
 
 
		function Trump(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(148, 5, -420)
			Trump(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Hitler Wall + Message",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/KWtT9jRv"))()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(40, 40, 2)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("27")
		Bubble.Material = Enum.Material.DiamondPlate
		Bubble.Transparency = 0
 
 
		function Censored(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000001) do
			Bubble.Position = 
 Vector3.new(149.8699951171875, 11.5, -328.3299865722656)


			Censored(Bubble)
		end
	end
})

Tab:AddButton({
    Name = "Sand Dimension",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(5, 250, 250)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.BrickColor = BrickColor.new("5")
		Bubble.Material = Enum.Material.Sand
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
          ["Orientation"] = Vector3.new(0, 0, 90),
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
		while wait (0) do	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 end

		while task.wait(0.0000000000001) do
			Bubble.Position = Vector3.new(135.50791931152344, 1, -227.87445068359375) + Vector3.new(0,160,0)
 
			Shield(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Red Land",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(3000, 30, 3000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.Color = Color3.fromRGB(255, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Land(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.00000000001) do
			Bubble.CFrame = CFrame.new(-943.46,94.13,2063.63)
 
			Land(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Green Sky",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(9999, 150, 9999)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("1020")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Sky(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000001) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
			Sky(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Toggle Collisions",
    Callback = function()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "This will help if you support me";
})
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		Bubble.Size = Vector3.new(9999, 281, 9999)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("0")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 1
 
 
		function Toggle(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
			Toggle(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Mud Prison",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		Bubble.Size = Vector3.new(8000, 50, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("217")
		Bubble.Material = Enum.Material.Slate
		Bubble.Transparency = 0
 
 
		function Mud(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000001) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			Mud(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Hell",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',"Welcome to Hell")
lib.FireOtherClients("displayChoice",'returnToMenu',"Welcome to Hell")	
		local Bubble = Instance.new("Part")
    local Bubble2 = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 80, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
    Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
     Bubble.Color = Color3.fromRGB(255, 0, 0)
		Bubble.Material = Enum.Material.CrackedLava
		Bubble.Transparency = 0
 

Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(9999, 100, 9999)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = false
     Bubble2.Color = Color3.fromRGB(255, 0, 0)
		Bubble2.Anchored = true
		Bubble2.Material = Enum.Material.Neon
    Bubble2.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
		Bubble2.Transparency = 0
 
 
		function Hell(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
           ["BrickColor"] = part.BrickColor,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
 while wait (0) do
			Hell(Bubble)
      Hell(Bubble2)
		end
	end
})
Tab:AddButton({
    Name = "Flood Prison",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		local Bubble2 = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 60, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.Sand
      Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
		Bubble.Transparency = 0
 
 Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(9999, 100, 9999)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = false
     Bubble2.Color = Color3.fromRGB(109, 110, 108)
		Bubble2.Anchored = true
		Bubble2.Material = Enum.Material.Neon
    Bubble2.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
		Bubble2.Transparency = 0
 
 
		function Flood(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
Bubble.Size = Vector3.new(8000, 0.5, 8000)
wait (0.1)
Bubble.Size = Vector3.new(8000, 10, 8000)
Bubble.Size = Vector3.new(8000, 15, 8000)
Bubble.Size = Vector3.new(8000, 20, 8000)
Bubble.Size = Vector3.new(8000, 25, 8000)
Bubble.Size = Vector3.new(8000, 30, 8000)
Bubble.Size = Vector3.new(8000, 35, 8000)
Bubble.Size = Vector3.new(8000, 40, 8000)
Bubble.Size = Vector3.new(8000, 45, 8000)
Bubble.Size = Vector3.new(8000, 50, 8000)
Bubble.Size = Vector3.new(8000, 55, 8000)
Bubble.Size = Vector3.new(8000, 60, 8000)
			while wait (0) do
			Flood(Bubble)
			Flood(Bubble2)
		end
	end
})
Tab:AddButton({
    Name = "Quick sand",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.Sand
			Sand.BrickColor = BrickColor.new("Pastel yellow")
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(0.5,12,12)
			local Bubble = Instance.new("Part",char)
			Bubble.Size = Vector3.new(7,7,7)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "zapChain",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
			
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
	require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			while wait (0) do
				createsit(Bubble)
			end

			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
	end
})
Tab:AddButton({
    Name = "Piss",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(800, -5, 800)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.Color = Color3.fromRGB(255, 255, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Bruh(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			Bruh(Bubble)
		end
	end
})



Tab:AddButton({
    Name = "Doomsday",
    Callback = function()
doorspamming=true
        for i,v in pairs(game.Players:GetChildren())do
			local lib = require(game:GetService("Workspace").upsilonLibrary)

firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',"1x1x1x1:DoOmSdAy Is HeRe")
lib.FireOtherClients("displayChoice",'returnToMenu',"1x1x1x1DoOmSdAy Is HeRe")
        end
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 150, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Doom(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000001) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
			Doom(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Block Armory",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
       
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(80, 80, 80)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("217")
		Bubble.Material = Enum.Material.WoodPlanks
		Bubble.Transparency = 0
 
 
		function Armory(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = CFrame.new(128.95, 10.166, 9.737)
 
			Armory(Bubble)
		end
	end
})
Tab:AddButton({
    Name = "Safe Zone",
    Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Size = Vector3.new(700, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("195")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Safe(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Safe(Bubble)
		end
	end
})

Tab:AddButton({
    Name = "Prison Life Gunv3testsave Map",
    Callback = function()
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=1834260975")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=686769710")
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 170, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Transparency = 0
 
 
		function Pl(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000001) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			Pl(Bubble)
		end
	end
})



Tab:AddButton({
    Name = "Nuke",
    Callback = function()
Decorations = game:GetObjects("rbxassetid://11558880412")[1]
				Decorations.Parent = workspace
				for i,v in pairs(Decorations:GetDescendants()) do
					if v:IsA("Part") then -- and not v:IsA("UnionOperation") and not v:IsA("MeshPart") and not v:IsA("Wedge")
						if v:FindFirstChildOfClass("SpecialMesh") or v:FindFirstChildOfClass("BlockMesh") then
							v:Destroy()
						end
						v.Anchored = true
					end
				end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-161.059, 320.076, 1058.408)
local s = Instance.new("Sound")

	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=6525690145"
	s.Volume = 1
	s.Pitch = 0.9
	s.Looped = false
	s.archivable = false

	s.Parent = game.Workspace

	wait(1)

	s:play()
local lib = require(game:GetService("Workspace").upsilonLibrary)
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',"Attention Players A Nuke Has Been Launched!")
lib.FireOtherClients("displayChoice",'returnToMenu',"Attention Players A Nuke Has Been Launched!")
local args = {
    [1] = "[Nuke Launch:10 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait (1)
local args = {
    [1] = "[Nuke Launch: 9 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
local args = {
    [1] = "[Nuke Launch:8 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait(1)
local args = {
    [1] = "[Nuke Launch:7 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait(1)
local args = {
    [1] = "[Nuke Launch:6 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait (1)
local args = {
    [1] = "[Nuke Launch:5 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait (1)
local args = {
    [1] = "[Nuke Launch:4 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait(1)
local args = {
    [1] = "[Nuke Launch:3 sec]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait(1)
local args = {
    [1] = "[Nuke Launch:2 sec ]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait(1)
local args = {
    [1] = "[Nuke Launch:1 sec ]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
local args = {
    [1] = "[Nuke Launch: Success ! ]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
wait (1)
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createSkyart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(8000, 100, 8000)
    pa.CFrame = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
    pa.BrickColor = BrickColor.new("1009")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]


    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8000, 100, 8000),
        ["CFrame"] = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808),
        ["BrickColor"] = BrickColor.new("1009"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
local lib = require(game:GetService("Workspace").upsilonLibrary)
    local paa = Instance.new("Part")
    paa.Parent = Workspace
    paa.TopSurface = "Smooth"
    paa.Material = Enum.Material.Neon
    paa.Reflectance = 0
    paa.CanCollide = true
    paa.Anchored = true
    paa.Size = Vector3.new(8000, 100, 8000)
    paa.CFrame = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
    paa.BrickColor = BrickColor.new("1009")
    paa.Transparency = transparency
    paa.Parent = Workspace["Secret Agent Shades"]


    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8000, 100, 8000),
        ["CFrame"] = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808),
        ["BrickColor"] = BrickColor.new("1009"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
wait(0.1)
    paa:Destroy()
end
    checkHat()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSkyart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
wait (1)
local lib = require(game:GetService("Workspace").upsilonLibrary)
    for i,v in pairs(game.Players:GetPlayers()) do lib.FireOtherClients("drawLaser",Vector3.new(), Vector3.new(),{["Name"] = "Head",["Parent"] = v.Character})
end
wait (1)
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Size = Vector3.new(1000000, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
    Bubble.Parent = Workspace 
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("1009")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Nuke(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
			Nuke(Bubble)
		end
	end
})
local Section = Tab:AddSection({
	Name = "Utility/Other Stuff"
})
Tab:AddButton({
	Name = "SilentAim",
	Callback = function()
			loadstring(uaim)()
    end
})
Tab:AddButton({
	Name = "Shades",
	Callback = function()	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
    end
})
Tab:AddButton({
	Name = "Jump",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = "200"
    end
})
Tab:AddButton({
	Name = "Btools",
	Callback = function()
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 3
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
    end
})

Tab:AddButton({
	Name = "SEX",
	Callback = function()
    for i,v in pairs(game.Players:GetChildren())do
			local lib = require(game:GetService("Workspace").upsilonLibrary)

firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',"sex")
lib.FireOtherClients("displayChoice",'returnToMenu',"sex")
        end
  	end    
})

Tab:AddButton({
	Name = "CEX",
	Callback = function()
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',"CEX")
lib.FireOtherClients("displayChoice",'returnToMenu',"CEX")
end
})
Tab:AddButton({
	Name = "Give Dragunov",
	Callback = function() 
	local t = {
		"M14"
	}
	
	local function get(n)
		for i,v in pairs(workspace:GetChildren()) do
			if v.Name == n and v:FindFirstChild("gunGiver") then
			   return v;
			end
		end
	end
	
	local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	
	for i,v in pairs(t) do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = get(v).CFrame;
		workspace.resources.RemoteFunction:InvokeServer("giveItemFromGunGiver", get(v));
workspace.resources.RemoteFunction:InvokeServer("giveItemFromGunGiver", get(v));
workspace.resources.RemoteFunction:InvokeServer("giveItemFromGunGiver", get(v));
	end	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old;
loadstring(game:HttpGet("https://pastebin.com/raw/a6Rttv4Z"))()
end
})
Tab:AddButton({
	Name = "Give All Guns",
	Callback = function() 
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "pistol"
tool.Activated:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 12);
end
workspace.resources.RemoteEvent:FireServer("becomeHostile");	
function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Reflectance"] = 0,
						["CanCollide"] = false,
               ["Name"] = "zapChain",
						["Size"] = Vector3.new(0.3, 0.3, dist),
						["Parent"] = Workspace
					}
					
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
						createshooty(ray, game.Players.LocalPlayer.Character.Torso.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
end)
tool.Parent = game.Players.LocalPlayer.Backpack
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "shotgun"
tool.Activated:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 15);
end
workspace.resources.RemoteEvent:FireServer("becomeHostile");	
function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Reflectance"] = 0,
						["CanCollide"] = false,
               ["Name"] = "zapChain",
						["Size"] = Vector3.new(0.3, 0.3, dist),
						["Parent"] = Workspace
					}
					
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
						createshooty(ray, game.Players.LocalPlayer.Character.Torso.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
end)
tool.Parent = game.Players.LocalPlayer.Backpack
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "auto"
tool.Activated:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 15);
end
workspace.resources.RemoteEvent:FireServer("becomeHostile");	
function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Reflectance"] = 0,
						["CanCollide"] = false,
               ["Name"] = "zapChain",
						["Size"] = Vector3.new(0.3, 0.3, dist),
						["Parent"] = Workspace
					}
					
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
						createshooty(ray, game.Players.LocalPlayer.Character.Torso.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
end)
tool.Parent = game.Players.LocalPlayer.Backpack
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "dmr"
tool.Activated:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 15);
end
workspace.resources.RemoteEvent:FireServer("becomeHostile");	
function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Reflectance"] = 0,
						["CanCollide"] = false,
               ["Name"] = "zapChain",
						["Size"] = Vector3.new(0.3, 0.3, dist),
						["Parent"] = Workspace
					}
					
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
						createshooty(ray, game.Players.LocalPlayer.Character.Torso.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
end)
tool.Parent = game.Players.LocalPlayer.Backpack
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "smg"
tool.Activated:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 15);
end
workspace.resources.RemoteEvent:FireServer("becomeHostile");	
function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Reflectance"] = 0,
						["CanCollide"] = false,
               ["Name"] = "zapChain",
						["Size"] = Vector3.new(0.3, 0.3, dist),
						["Parent"] = Workspace
					}
					
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
						createshooty(ray, game.Players.LocalPlayer.Character.Torso.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
end)
tool.Parent = game.Players.LocalPlayer.Backpack
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Shank"
tool.Parent = game.Players.LocalPlayer.Backpack
local args = {
    [1] = "requestTeam",
    [2] = "police"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
local args = {
    [1] = "giveItemApproved",
    [2] = "Taser"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
local args = {
    [1] = "giveItemApproved",
    [2] = "BeretaM9"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

local args = {
    [1] = "giveItemApproved",
    [2] = "Handcuffs"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
wait (1)
local args = {
    [1] = "requestTeam",
    [2] = "prisoners"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
loadstring(game:HttpGet('https://pastebin.com/raw/BQsnqaS4'))()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "Change Your Team back After";
})
local t = {
		"L86A2",
		"M16",
		"Beretta M9",
		"M16",
		"SPAS-12",
		"Beretta M9",
		"M98B",
		"UMP-45",
		"M60",
		"M1014",
		"AK47",
		"Beretta M9",
		"Hammer",
		"Fake ID Card",
		"SPAS-12",
		"S&W 638",
		"ACR",
		"Revolver",
		"Makarov",
		"AK47-U",
		"Parachute"
	}
	
	local function get(n)
		for i,v in pairs(workspace:GetChildren()) do
			if v.Name == n and v:FindFirstChild("gunGiver") then
			   return v;
			end
		end
	end
	
	local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	
	for i,v in pairs(t) do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = get(v).CFrame;
		workspace.resources.RemoteFunction:InvokeServer("giveItemFromGunGiver", get(v));
workspace.resources.RemoteFunction:InvokeServer("giveItemFromGunGiver", get(v));
workspace.resources.RemoteFunction:InvokeServer("giveItemFromGunGiver", get(v));
	end	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old;
game.Players.LocalPlayer.Backpack.Makarov.Name = "Minigun"
end
})

Tab:AddButton({
	Name = "Give Gamepasses",
	Callback = function() 
loadstring(game:HttpGet('https://pastebin.com/raw/BQsnqaS4'))()
end
})
Tab:AddButton({
	Name = "Fly",
	Callback = function() 
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end
})



Tab:AddButton({
	Name = "Arrest Auara",
	Callback = function()
    for i = 1, 1000000000000000000 do  
	
	for _, v in pairs(game.Players:GetChildren()) do
	game.Workspace.resources.RemoteEvent:FireServer("cuff", v) 
	end
	
	wait(0)
	
	end
end
})
Tab:AddButton({
	Name = "Anti Kick",
	Callback = function()
for i = 1,1000000000000000000000 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do	
workspace.resources.RemoteEvent:FireServer("becomeHostile")
     end
	
	wait(0)
	
	end
 
end
})
Tab:AddButton({
	Name = "Loop Reload ",
	Callback = function()
    for i = 1, 10000000000000000000000 do  
	
	for _, v in pairs(game.Players:GetChildren()) do
	game.Workspace.resources.RemoteEvent:FireServer("reloadMe") 
	end
	
	wait(0)
	
	end
end
})
Tab:AddButton({
	Name = "anti stuff ",
	Callback = function()
    getconnections(RemoteEvent.OnClientEvent)[1]:Disable()
end
})
Tab:AddButton({
	Name = "Loop cop ",
	Callback = function()
    for i = 1, 10000000000000000000000 do  
	
	for _, v in pairs(game.Players:GetChildren()) do
local team = "police"
game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", team)
	end
	
	wait(0)
	
	end
end
})
Tab:AddButton({
	Name = "Cuff Fugitives",
	Callback = function()
	local Player = game.Players.LocalPlayer
wait(0.5)
for i,v in pairs(game.Teams.Fugitives:GetPlayers()) do
repeat
wait()
Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
until v.Team.Name ~= "Fugitives"
end
end
})

Tab:AddButton({
	Name = "fugitive",
	Callback = function()
    local old = game.Players.LocalPlayer.Character.PrimaryPart.CFrame 
        local new = game:GetService("Workspace")["robber spawn"].CFrame 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = new
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
end
})
Tab:AddButton({
	Name = "MapFuck",
	Callback = function()  
game.workspace.ventOpening:remove()
game.workspace.AllDoors:remove()
end
})
Tab:AddButton({
	Name = "Speed",
	Callback = function()  
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = "60"
end
})
Tab:AddButton({
	Name = "Cops",
	Callback = function()  
local team = "police"
game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", team)
end
})
Tab:AddButton({
	Name = "Prisoners",
	Callback = function()  
local team = "prisoners"
game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", team)
end
})
Tab:AddButton({
	Name = "Atv Clothes",
	Callback = function()  
game.Workspace.resources.RemoteEvent:FireServer("removeHats")
		wait(0.5)
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
Workspace.resources.RemoteEvent:FireServer("wearPants", "rbxassetid://566262750")
Workspace.resources.RemoteEvent:FireServer("wearShirt", "rbxassetid://229581928")
Workspace.resources.RemoteEvent:FireServer("wearHat", Workspace.troopHat)
end
})
Tab:AddButton({
	Name = "Give Shield",
	Callback = function()  
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
end
})
Tab:AddButton({
	Name = "Prison Life Swat",
	Callback = function()  
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=1834260975")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=686769710")
end
})
Tab:AddButton({
	Name = "Pilot Clothes",
	Callback = function()  
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=236886923")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=454772491")
end
})
Tab:AddButton({
	Name = "FBI Skin",
	Callback = function() 
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=1931228554")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=1931229502")
end
})
Tab:AddButton({
	Name = "Hacker Skin",
	Callback = function() 
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=3130724146")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=3739695749")
end
})
Tab:AddButton({
	Name = "Citizen Skin",
	Callback = function() 
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=1149750541")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=1146539791")
end
})
Tab:AddButton({
	Name = "Snow Spec Ops Soldier Skin",
	Callback = function() 
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=798377563")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=1476708142")
end
})
Tab:AddButton({
	Name = "Shirt tie Skin",
	Callback = function() 
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=7279742828")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=7279718076")
end
})
Tab:AddButton({
	Name = "Hoodie Skin",
	Callback = function() 
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=133708636")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=6572799586")
end
})
Tab:AddButton({
	Name = "Millitary Skin",
	Callback = function()
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=8030819070")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=975884424")
end
})
Tab:AddButton({
	Name = "Shadow Skin",
	Callback = function()
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=5657499031")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=5657500425")
end
})
Tab:AddButton({
	Name = "Chill Skin",
	Callback = function()
game.Workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",Workspace.RiotShield)
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=11404691899")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=6750819573")
end
})
Tab:AddButton({
	Name = "Give Cop Items",
	Callback = function() 
local args = {
    [1] = "requestTeam",
    [2] = "police"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
local args = {
    [1] = "giveItemApproved",
    [2] = "Taser"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
local args = {
    [1] = "giveItemApproved",
    [2] = "BeretaM9"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

local args = {
    [1] = "giveItemApproved",
    [2] = "Handcuffs"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
wait (1)
local args = {
    [1] = "requestTeam",
    [2] = "prisoners"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
end
})

Tab:AddTextbox({
    Name = "Broadcast Message",
    Default = "default box input",
    TextDisappear = true,
    Callback = function(Value)
        for i,v in pairs(game.Players:GetChildren())do
            local lib = require(game:GetService("Workspace").upsilonLibrary)

firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',Value)
lib.FireOtherClients("displayChoice",'returnToMenu',Value)
        end
    end
})
Tab:AddButton({
    Name = "Halo",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
		wait(0)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(1, 10, 10)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.Color = Color3.fromRGB(255, 255, 255)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
          ["Orientation"] = Vector3.new(0, 0, 90),
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,4,0)
 
			Shield(Bubble)
		end
	end
})

Tab:AddTextbox({
    Name = "Change Cafateria Message",
    Default = "Message",
    TextDisappear = true,
    Callback = function(Value)
workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer("attemptChangeMOTD")
workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer("updateMOTD",Value)
	end
})
Tab:AddButton({
	Name = "Build",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lol8267vr/building-/main/Redwood_Prison_FE_Blocks_1%20(1).txt"))()
	end
})
Tab:AddButton({
	Name = "Send Guns To Other Players ",
    Callback = function()	loadstring(game:HttpGet(('https://pastebin.com/raw/Ehrgn9Ut'),true))()
        end
})
Tab:AddButton({
	Name = "Grab Fugitive Part",
    Callback = function()	workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
        end
})
Tab:AddButton({
	Name = "Grab Hat remover",
    Callback = function()	workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["removeHats"])
        end
})
Tab:AddButton({
	Name = "Spawn Fake id",
    Callback = function()	workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["Fake ID Card"])
        end
})
Tab:AddButton({
	Name = "Drop Hats",
    Callback = function()	
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Accessory") then
						workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",v.Handle)
						workspace.resources.RemoteEvent:FireServer("toggleShield",workspace.RiotShield)
					end
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
						end
					end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("BasePart") and v.Name == "Handle" then
						v:FindFirstChildOfClass("Weld"):Destroy()
						if Blockify then
							v:FindFirstChildOfClass("SpecialMesh"):Destroy()
						end
						v.Name = "OldHandle"
					end
					if v.Name == "RiotShield" then
						v:Destroy()
					end
				end
        end
})
Tab:AddButton({
	Name = "Make Choosing Team Prisoners",
    Callback = function()	local Player = game.Players.LocalPlayer
wait(0.5)
for i,v in pairs(game.Teams.Choosing:GetPlayers()) do
repeat
wait()
Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
until v.Team.Name ~= "Choosing"
end
        end
})
Tab:AddButton({
	Name = "Gun Reload",
    Callback = function()	
local player = game.Players.LocalPlayer.Character.Torso.Position
	local ammoCrate = workspace.ammoCrate
	ammoCrate.CanCollide = false
	ammoCrate.Transparency = 1
	ammoCrate:ClearAllChildren()
	ammoCrate.Position = player
        end
})
Tab:AddButton({
	Name = "McDonald's Employee",
	Callback = function()
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=5898757723")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=129459076")
loadstring(game:HttpGet("https://pastebin.com/raw/cHf3QzZR"))()
end
})
Tab:AddButton({
	Name = "Give Fun Kit",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPcbPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(10, 10, 10)
    pa.CFrame = cframe
    pa.Color = Color3.new(math.random(225),math.random(225),math.random(225))
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
    pa.Shape = Enum.PartType.Cylinder

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(10, 10, 10),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Cylinder,
        ["Color"] = Color3.new(math.random(225),math.random(225),math.random(225)),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.7)
    pa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "CYLINDER"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPcbPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPatPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(10, 10, 10)
    pa.CFrame = cframe
    pa.Color = Color3.new(math.random(225),math.random(225),math.random(225))
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
    pa.Shape = Enum.PartType.Ball

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(10, 10, 10),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Ball,
        ["Color"] = Color3.new(math.random(225),math.random(225),math.random(225)),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.7)
    pa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "SPHERE"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPatPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPabPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(10, 10, 10)
    pa.CFrame = cframe
    pa.Color = Color3.new(math.random(225),math.random(225),math.random(225))
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
    pa.Shape = Enum.PartType.Block

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(10, 10, 10),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Block,
        ["Color"] = Color3.new(math.random(225),math.random(225),math.random(225)),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.7)
    pa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "BLOCK"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPabPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end
})
Tab:AddButton({
    Name = "Night Sky",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(9999, 180, 9999)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("26")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000001) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
			Shield(Bubble)
		end
	end
})
Tab:AddButton({
	Name = "Box Boy",
    Callback = function()	
local lib = require(game:GetService("Workspace").upsilonLibrary)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(4, 4, 4)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Transparency = 0
     Bubble.Material = Enum.Material.WoodPlanks
     Bubble.BrickColor = BrickColor.new("25")
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
          ["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shield(Bubble)
		end
        end
})
Tab:AddButton({
	Name = "Annoy Prisoners",
    Callback = function()	
local Player = game.Players.LocalPlayer
wait(0.5)
for i,v in pairs(game.Teams.Prisoners:GetPlayers()) do
repeat
wait()
Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
until v.Team.Name ~= "Prisoners"
end
        end
})
Tab:AddButton({
	Name = "Annoy Cops",
    Callback = function()	
local Player = game.Players.LocalPlayer
wait(0.5)
for i,v in pairs(game.Teams.Police:GetPlayers()) do
repeat
wait()
Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
until v.Team.Name ~= "Police"
end
        end
})

Tab:AddButton({
	Name = "Op Guns",
	Callback = function()
        local stats = require(game:GetService("ReplicatedStorage").ItemStats)

		stats.M98B.fireType = "automatic"
		stats.M98B.coolDown = 0
		stats.M98B.reloadTime = 0
		stats.M98B.maxAmmo = 9999999999999999
		stats.M98B.maxExAmmo = 9999999999999999999999999999999
		stats.M98B.range = 9999999999
		
		stats["Beretta M9"].fireType = "automatic"
		stats["Beretta M9"].coolDown = 0
		stats["Beretta M9"].reloadTime = 0
		stats["Beretta M9"].maxAmmo = 9999999999999999
		stats["Beretta M9"].maxExAmmo = 9999999999999999999999999999999
		stats["Beretta M9"].range = 9999999999
		
		stats.AK47.fireType = "automatic"
		stats.AK47.coolDown = 0
		stats.AK47.reloadTime = 0
		stats.AK47.maxAmmo = 9999999999999999
		stats.AK47.maxExAmmo = 9999999999999999999999999999999
		stats.AK47.range = 9999999999
		
		stats["S&W 638"].fireType = "automatic"
		stats["S&W 638"].coolDown = 0
		stats["S&W 638"].reloadTime = 0
		stats["S&W 638"].maxAmmo = 9999999999999999
		stats["S&W 638"].maxExAmmo = 9999999999999999999999999999999
		stats["S&W 638"].range = 9999999999
		
		stats.M1014.fireType = "automatic"
		stats.M1014.coolDown = 0
		stats.M1014.reloadTime = 0
		stats.M1014.maxAmmo = 9999999999999999
		stats.M1014.maxExAmmo = 9999999999999999999999999999999
		stats.M1014.range = 9999999999
		
		stats["AK47-U"].fireType = "automatic"
		stats["AK47-U"].coolDown = 0
		stats["AK47-U"].reloadTime = 0
		stats["AK47-U"].maxAmmo = 9999999999999999
		stats["AK47-U"].maxExAmmo = 9999999999999999999999999999999
		stats["AK47-U"].range = 9999999999
		
		stats.Taser.fireType = "automatic"
		stats.Taser.coolDown = 0
		stats.Taser.reloadTime = 0
		stats.Taser.maxAmmo = 9999999999999999
		stats.Taser.maxExAmmo = 9999999999999999999999999999999
		stats.Taser.range = 9999999999
		
		
		
		stats.M16.fireType = "automatic"
		stats.M16.coolDown = 0
		stats.M16.reloadTime = 0
		stats.M16.maxAmmo = 9999999999999999
		stats.M16.maxExAmmo = 9999999999999999999999999999999
		stats.M16.range = 9999999999

stats.Dragunov.fireType = "automatic"
		stats.Dragunov.coolDown = 0
		stats.Dragunov.reloadTime = 0
		stats.Dragunov.maxAmmo = 9999999999999999
		stats.Dragunov.maxExAmmo = 9999999999999999999999999999999
		stats.Dragunov.range = 9999999999
		
		stats["SPAS-12"].fireType = "automatic"
		stats["SPAS-12"].coolDown = 0
		stats["SPAS-12"].reloadTime = 0
		stats["SPAS-12"].maxAmmo = 9999999999999999
		stats["SPAS-12"].maxExAmmo = 9999999999999999999999999999999
		stats["SPAS-12"].range = 9999999999
		
		stats.M60.fireType = "automatic"
		stats.M60.coolDown = 0
		stats.M60.reloadTime = 0
		stats.M60.maxAmmo = 9999999999999999
		stats.M60.maxExAmmo = 9999999999999999999999999999999
		stats.M60.range = 9999999999
		
		stats["UMP-45"].fireType = "automatic"
		stats["UMP-45"].coolDown = 0
		stats["UMP-45"].reloadTime = 0
		stats["UMP-45"].maxAmmo = 9999999999999999
		stats["UMP-45"].maxExAmmo = 9999999999999999999999999999999
		stats["UMP-45"].range = 9999999999
		
		stats.ACR.fireType = "automatic"
		stats.ACR.coolDown = 0
		stats.ACR.reloadTime = 0
		stats.ACR.maxAmmo = 9999999999999999
		stats.ACR.maxExAmmo = 9999999999999999999999999999999
		stats.ACR.range = 9999999999
		
		stats.Revolver.fireType = "automatic"
		stats.Revolver.coolDown = 0
		stats.Revolver.reloadTime = 0
		stats.Revolver.maxAmmo = 9999999999999999
		stats.Revolver.maxExAmmo = 9999999999999999999999999999999
		stats.Revolver.range = 9999999999
		
		stats.Makarov.fireType = "automatic"
		stats.Makarov.coolDown = 0
		stats.Makarov.reloadTime = 0
		stats.Makarov.maxAmmo = 9999999999999999
		stats.Makarov.maxExAmmo = 9999999999999999999999999999999
		stats.Makarov.range = 9999999999
		
		stats.L86A2.fireType = "automatic"
		stats.L86A2.coolDown = 0
		stats.L86A2.reloadTime = 0
		stats.L86A2.maxAmmo = 9999999999999999
		stats.L86A2.maxExAmmo = 9999999999999999999999999999999
		stats.L86A2.range = 9999999999
		
		stats.M14.fireType = "automatic"
		stats.M14.coolDown = 0
		stats.M14.reloadTime = 0
		stats.M14.maxAmmo = 9999999999999999
		stats.M14.maxExAmmo = 9999999999999999999999999999999
		stats.M14.range = 9999999999
    end
})
A:AddButton({
    Name = "Daniels Epik Gui",
    Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/8F8Ep6th'),true))()
end
})
A:AddButton({
    Name = "RedwoodPrison Panel",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/Saikn6jA"))()
end
})
A:AddButton({
    Name = "XI RedWoodPrison",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/LTkcks1b"))()
end
})
A:AddButton({
    Name = "Random Doorspammer",
    Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/PdSvgbEY'),true))()
end
})
A:AddButton({
    Name = "Random Teleport Gui",
    Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/fCU84Cwz'),true))()
end
})
A:AddButton({
    Name = "Arrest Crims Gui",
    Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/cXqYn3QP'),true))()
end
})
A:AddButton({
    Name = "Darkcringes old gui",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/uBh1AcGR"))()
end
})
A:AddButton({
	Name = "Azurite hub Bubble Shield inner",
	Callback = function()  
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(90, 0, 255)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shield(Bubble)
end
end
})
A:AddButton({
	Name = "Azurite hub Bubble Shield Outer",
	Callback = function()  
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(15, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Color = Color3.fromRGB(155, 155, 255)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shield(Bubble)
end
end
})
G:AddButton({
	Name = "Office (Spawn it)",
	Callback = function()  
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-161.059, 320.076, 1058.408)
end
})
G:AddButton({
	Name = "Armory",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.3022766, 3.5, -69.2801743, -0.999978244, 0.0012423367, 0.00648021512, 0.00118129095, 0.999954998, -0.00941567123, -0.00649162102, -0.00940781087, -0.999934673)
  	end    
})

G:AddButton({
	Name = "Front of Prison",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.97287, 3.5, -309.917053, -0.998034716, -5.14503162e-10, 0.0626633987, -4.24087127e-10, 1, 1.45618451e-09, -0.0626633987, 1.42674794e-09, -0.998034716)
  	end    
})

G:AddButton({
	Name = "Cake Room",
	Callback = function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(108.500664, 4, -27.2045383))
end    
})

G:AddButton({
	Name = "Helipad",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(234.879791, 6.51001406, 114.656578, 0.999789536, 1.39631933e-08, -0.0205145273, -1.38724676e-08, 1, 4.56482674e-09, 0.0205145273, -4.27927915e-09, 0.999789536)
  	end    
})

G:AddButton({
	Name = "Fugitives Base",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-616.698486, -24.7896271, -332.467926, 0.0208673105, 2.37343176e-08, 0.999782264, 2.69389826e-08, 1, -2.43017535e-08, -0.999782264, 2.74402279e-08, 0.0208673105)
  	end    
})

G:AddButton({
	Name = "WaterFall",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(615.167114, 7.11496067, -225.977829, -0.0468960628, 3.87982269e-09, 0.998899758, 4.28813651e-09, 1, -3.68277764e-09, -0.998899758, 4.11071088e-09, -0.0468960628)
  	end    
})


G:AddButton({
	Name = "J Block",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5.8536725, 3.99999928, 66.3490524, 0.999609888, 5.56467619e-08, -0.0279304534, -5.76155657e-08, 1, -6.96847806e-08, 0.0279304534, 7.12668253e-08, 0.999609888)
  	end    
})


G:AddButton({
	Name = "Fake Id Card",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-429.96051, -23.9986725, -517.8479, 0.201170862, -2.35226474e-11, -0.979556143, -1.43743124e-08, 1, -2.97605762e-09, 0.979556143, 1.46791423e-08, 0.201170862)
  	end    
})
L:AddButton({
    Name = "Lock J Block",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(20, 20, 1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1003")
		Bubble.Material = Enum.Material.Foil
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = 
Vector3.new(-5.130000114440918, 6.5, -53.68000030517578)
 
			Shield(Bubble)
		end
	end
})
L:AddButton({
    Name = "Lock Main Prison Door",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(26, 26, 1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1003")
		Bubble.Material = Enum.Material.Foil
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = 
 Vector3.new(124.94999694824219, 7.630000114440918, -163)



 
			Shield(Bubble)
		end
	end
})
L:AddButton({
    Name = "Gate 1",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(40, 40, 1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1003")
		Bubble.Material = Enum.Material.Foil
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = 
 Vector3.new(149.8699951171875, 11.5, -328.3299865722656)


			Shield(Bubble)
		end
	end
})
L:AddButton({
    Name = "Gate 2",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(40, 40, 1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1003")
		Bubble.Material = Enum.Material.Foil
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = 
    Vector3.new(149.8699951171875, 11.5, -423.3299865722656)




			Shield(Bubble)
		end
	end
})
L:AddButton({
    Name = "Armory",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(20, 20, 1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1003")
		Bubble.Material = Enum.Material.Foil
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = 
   Vector3.new(79.44999694824219, 7.090000152587891, -72)





			Shield(Bubble)
		end
	end
})
local Section = M:AddSection({
	Name = "Extra Map Stuff"
})
M:AddButton({
    Name = "Freeze Sky",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(999, 100, 9999)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.SmoothPlastic
		Bubble.Transparency = 0
 
 
		function Ice(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000001) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
			Ice(Bubble)
		end
	end
})
M:AddButton({
    Name = "Freeze Inside Prison",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(330, 1, 330)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.SmoothPlastic
		Bubble.Transparency = 0
 
 
		function cold(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.00000000000001) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			cold(Bubble)
		end
	end
})
M:AddButton({
    Name = "Freeze  Prison",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(330, 70, 330)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.SmoothPlastic
		Bubble.Transparency = 0
 
 
		function freex(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000001) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			freex(Bubble)
		end
	end
})
M:AddButton({
    Name = "Freeze prison whole",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(800, 1, 800)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.SmoothPlastic
		Bubble.Transparency = 0
 
 
		function whole(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000001) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			whole(Bubble)
		end
	end
})
M:AddButton({
    Name = "Freeze Map",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(9999, 250, 9999)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.SmoothPlastic
		Bubble.Transparency = 0
 
 
		function yes(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000001) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			yes(Bubble)
		end
	end
})
M:AddButton({
	Name = "Storm Prison",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
	local B = Instance.new("Part")
local u = Instance.new("Part")
 local b = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 200, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("1019")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
       Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
B.Parent = Workspace
		B.Size = Vector3.new(1, 5000, 1)
		B.CastShadow = false
		B.CanCollide = true
		B.Anchored = true
     B.BrickColor = BrickColor.new("1019")
		B.Material = Enum.Material.Neon
      B.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
		B.Transparency = 0
 
u.Parent = Workspace
		u.Size = Vector3.new(1, 5000, 1)
		u.CastShadow = false
		u.CanCollide = true
		u.Anchored = true
       u.CFrame = 
CFrame.new(102.768036, 4, 2.36553288)
     u.BrickColor = BrickColor.new("1019")
		u.Material = Enum.Material.Neon
		u.Transparency = 0

b.Parent = Workspace
	b.Size = Vector3.new(1, 5000, 1)
		b.CastShadow = false
		b.CanCollide = true
		b.Anchored = true
      b.CFrame = 
 CFrame.new(149.97287, 3.5, -309.917053, -0.998034716, -5.14503162e-10, 0.0626633987, -4.24087127e-10, 1, 1.45618451e-09, -0.0626633987, 1.42674794e-09, -0.998034716)
     b.BrickColor = BrickColor.new("1019")
		b.Material = Enum.Material.Neon
	  b.Transparency = 0
 
function storm(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while wait (0) do
	      storm(Bubble)
         storm(B)
         storm(u)
         storm(b)
		end
	end
})

M:AddButton({
	Name = "Reddify floor",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2000, 0.5, 2000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
     Bubble.Position = 
     Vector3.new(-76.931640625, 1, -334.20574951171875)


			Shield(Bubble)
		end
end    
})
M:AddButton({
	Name = "yellowify floor",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2000, 0.5, 2000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1009")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.00000000000000001) do
     Bubble.Position = 
     Vector3.new(-76.931640625, 1, -334.20574951171875)


			Shield(Bubble)
		end
end    
})
M:AddButton({
	Name = "Greenify floor",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2000, 0.5, 2000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1020")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000000000001) do
			Bubble.Position = 
     Vector3.new(-76.931640625, 1, -334.20574951171875)

			Shield(Bubble)
		end
end    
})
M:AddButton({
	Name = "Blueify floor",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2000, 0.5, 2000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1013")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
     Vector3.new(-76.931640625, 1, -334.20574951171875)

			Shield(Bubble)
		end
end    
})
M:AddButton({
	Name = "Sandstorm Prison ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
	local Bubbl = Instance.new("Part")
local Bubb = Instance.new("Part")
 local Bub = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2000, 0.5, 2000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("1029")
		Bubble.Material = Enum.Material.Sand
		Bubble.Transparency = 0
	    Bubble.Position = 
     Vector3.new(-76.931640625, 1, -334.20574951171875)
 
 
 
Bubbl.Parent = Workspace
		Bubbl.Size = Vector3.new(8, 8, 8)
		Bubbl.CastShadow = true
		Bubbl.CanCollide = true
		Bubbl.Anchored = true
		Bubbl.Shape = Enum.PartType.Ball
		Bubbl.BrickColor = BrickColor.new("21")
		Bubbl.Material = Enum.Material.ForceField
		Bubbl.Transparency = 0
 
Bubb.Parent = Workspace
		Bubb.Size = Vector3.new(8, 8, 8)
		Bubb.CastShadow = true
		Bubb.CanCollide = true
		Bubb.Anchored = true
		Bubb.Shape = Enum.PartType.Ball
		Bubb.BrickColor = BrickColor.new("21")
		Bubb.Material = Enum.Material.ForceField
		Bubb.Transparency = 0
 
         Bub.Parent = Workspace
		Bub.Size = Vector3.new(8, 8, 8)
		Bub.CastShadow = true
		Bub.CanCollide = true
		Bub.Anchored = true
		Bub.Shape = Enum.PartType.Ball
		Bub.BrickColor = BrickColor.new("21")
		Bub.Material = Enum.Material.ForceField
		Bub.Transparency = 0
 

function sand(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while wait (0) do
	      sand(Bubble)
         sand(Bubbl)
         sand(Bubb)
         sand(Bub)
		end
end    
})
M:AddButton({
    Name = "Load F Word",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		local Bubbl = Instance.new("Part")
		local Bubb = Instance.new("Part")
		local Bub = Instance.new("Part")
		local Bu = Instance.new("Part")
		local Bubble1 = Instance.new("Part")
		local Bubble2 = Instance.new("Part")
		local Bubble3 = Instance.new("Part")
		local Bubble4 = Instance.new("Part")
		local Bubble5 = Instance.new("Part")
		local Bubble6 = Instance.new("Part")
		local Bubble7 = Instance.new("Part")
		local Bubble8 = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(85, 12, 2)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new(1004)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
		Bubble.Position = 
Vector3.new(10, 37, -857.2476806640625)

         Bubbl.Parent = Workspace
		Bubbl.Size = Vector3.new(14, 108, 2)
		Bubbl.CastShadow = false
		Bubbl.CanCollide = true
		Bubbl.Anchored = true
     Bubbl.BrickColor = BrickColor.new(1004)
		Bubbl.Material = Enum.Material.Neon
		Bubbl.Transparency = 0
        Bubbl.Position = 
Vector3.new(40, 85, -857.2476806640625)

 
 
Bubb.Parent = Workspace
		Bubb.Size = Vector3.new(14, 108, 2)
		Bubb.Position = 
Vector3.new(100, 82, -857.2476806640625)
		Bubb.CastShadow = false
		Bubb.CanCollide = true
		Bubb.Anchored = true
     Bubb.BrickColor = BrickColor.new(1004)
		Bubb.Material = Enum.Material.Neon
		Bubb.Transparency = 0
 
 Bub.Parent = Workspace
		Bub.Size = Vector3.new(79, 12, 2)
		Bub.CastShadow = false
		Bub.CanCollide = true
        Bub.Position = 
Vector3.new(120, 37, -857.2476806640625)
		Bub.Anchored = true
     Bub.BrickColor = BrickColor.new(1004)
		Bub.Material = Enum.Material.Neon
		Bub.Transparency = 0
		
		Bu.Parent = Workspace
		Bu.Size = Vector3.new(79, 12, 2)
		Bu.CastShadow = false
		Bu.CanCollide = true
		Bu.Anchored = true
     Bu.BrickColor = BrickColor.new(1004)
		Bu.Material = Enum.Material.Neon
		Bu.Transparency = 0
         Bu.Position = 
Vector3.new(120, 120, -857.2476806640625)
 
 Bubble1.Parent = Workspace
		Bubble1.Size = Vector3.new(14, 108, 2)
		Bubble1.CastShadow = false
		Bubble1.CanCollide = true
		Bubble1.Anchored = true
     Bubble1.BrickColor = BrickColor.new(1004)
		Bubble1.Material = Enum.Material.Neon
		Bubble1.Transparency = 0
		Bubble1.Position = 
Vector3.new(190, 80, -857.2476806640625)


Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(79, 12, 2)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
		Bubble2.Anchored = true
     Bubble2.BrickColor = BrickColor.new(1004)
		Bubble2.Material = Enum.Material.Neon
		Bubble2.Transparency = 0
		Bubble2.Position = 
Vector3.new(220, 70, -857.2476806640625)
 
 
 Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(79, 12, 2)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
     Bubble3.BrickColor = BrickColor.new(1004)
		Bubble3.Material = Enum.Material.Neon
		Bubble3.Transparency = 0
		Bubble3.Position = 
Vector3.new(220, 110, -857.2476806640625)
 
 Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(15, 17, 2)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = true
		Bubble4.Anchored = true
     Bubble4.BrickColor = BrickColor.new(1004)
		Bubble4.Material = Enum.Material.Neon
		Bubble4.Transparency = 0
		Bubble4.Position = 
Vector3.new(-121.96693420410156, 82, -857.2476806640625)

Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(14, 108, 2)
		Bubble5.CastShadow = false
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
     Bubble5.BrickColor = BrickColor.new(1004)
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
        Bubble5.Position = 
Vector3.new(-121.96693420410156, 82, -857.2476806640625)

 Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(59, 12, 2)
		Bubble6.CastShadow = false
		Bubble6.CanCollide = true
		Bubble6.Anchored = true
     Bubble6.BrickColor = BrickColor.new(1004)
		Bubble6.Material = Enum.Material.Neon
		Bubble6.Transparency = 0
		Bubble6.Position = 
Vector3.new(-99.46693420410156, 93, -857.2476806640625)

		Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(59, 12, 2)
		Bubble7.CastShadow = false
		Bubble7.CanCollide = true
		Bubble7.Anchored = true
     Bubble7.BrickColor = BrickColor.new(1004)
		Bubble7.Material = Enum.Material.Neon
		Bubble7.Transparency = 0
		Bubble7.Position = 
Vector3.new(-99.46693420410156, 130, -857.2476806640625)
		
		
		Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(14, 108, 2)
		Bubble8.CastShadow = false
		Bubble8.CanCollide = true
		Bubble8.Anchored = true
     Bubble8.BrickColor = BrickColor.new(1004)
		Bubble8.Material = Enum.Material.Neon
		Bubble8.Transparency = 0
		Bubble8.Position = 
Vector3.new(-41.970001220703125, 85, -857.2476806640625)

 
		function Word(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while wait (0) do
			Word(Bubble)
			Word(Bubbl)
			Word(Bubb)
			Word(Bub)
			Word(Bu)
			Word(Bubble1)
			Word(Bubble2)
			Word(Bubble3)
			Word(Bubble4)
			Word(Bubble5)
			Word(Bubble6)
			Word(Bubble7)
			Word(Bubble8)
		end
	end
})

M:AddButton({
    Name = "Vomit",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(25, 3, 25)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("1020")
		Bubble.Material = Enum.Material.Slate
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(158.782074,66.6319733,-286.782135,0.997145176,-0.0387713499,0.064793691,3.22832214e-08,0.858104825,0.513474584)
 
			Shield(Bubble)
		end
	end
})
M:AddButton({
    Name = "Vomit Shield",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(20, 20, 20)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
     Bubble.BrickColor = BrickColor.new("1020")
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Material = Enum.Material.Slate
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			Shield(Bubble)
		end
	end
})
M:AddButton({
    Name = "Vomit Map",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(800, -5, 800)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.Color = Color3.fromRGB(0, 255, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			Shield(Bubble)
		end
	end
})
M:AddButton({
    Name = "Lava Map",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(800, -5, 800)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.Color = Color3.fromRGB(170, 85, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			Shield(Bubble)
		end
	end
})
M:AddButton({
    Name = "Poop Map",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(800, -5, 800)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.Color = Color3.fromRGB(98, 71, 50)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			Shield(Bubble)
		end
	end
})
M:AddButton({
    Name = "Profly",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(10, 1, 10)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Color = Color3.fromRGB(255, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Fly(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-5,0)
 
			Fly(Bubble)
		end
	end
})
M:AddButton({
    Name = "GodWalk",
    Callback = function()
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(3, 10, 10)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.Color = Color3.fromRGB(255, 0, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Walk(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
          ["Orientation"] = Vector3.new(0, 0, 90),
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-6,0)
 
			Walk(Bubble)
		end
	end
})
M:AddButton({
    Name = "Load L",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
   local L = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(14, 108, 2)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new(1020)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
Bubble.Position = 
Vector3.new(100, 82, -857.2476806640625)

 L.Parent = Workspace
		L.Size = Vector3.new(79, 12, 2)
		L.CastShadow = false
		L.CanCollide = true
		L.Anchored = true
     L.BrickColor = BrickColor.new(1020)
		L.Material = Enum.Material.Neon
		L.Transparency = 0
      L.Position = 
Vector3.new(120, 37, -857.2476806640625)

 
		function Spawn(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
			while wait (0) do
			Spawn(Bubble)
       Spawn(L)
		end
	end

})

local Section = M:AddSection({
	Name = "Tools"
})
M:AddButton({
	Name = "Click Cuff",
	Callback = function() 
local btool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
        local SelectionBox = Instance.new("SelectionBox",game.Workspace)
        SelectionBox.Name = "oof"
        SelectionBox.LineThickness = 0.05
        SelectionBox.Adornee = nil
        SelectionBox.Color3 = Color3.fromRGB(255,255,0)
        SelectionBox.Visible = false
        btool.Name = "Click Cuff"
        btool.RequiresHandle = false
        local IsEquipped = false
        local Mouse = game.Players.LocalPlayer:GetMouse()
 
        btool.Equipped:connect(function()
            IsEquipped = true
            SelectionBox.Visible = true
            SelectionBox.Adornee = nil
        end)
 
        btool.Unequipped:connect(function()
            IsEquipped = false
            SelectionBox.Visible = false
            SelectionBox.Adornee = nil
        end)
 
 
        btool.Activated:connect(function()
        if IsEquipped then
            for _, v in pairs(game.Players:GetChildren()) do game.Workspace.resources.RemoteEvent:FireServer("cuff", v) end
            end
        end)
 
        while true do
            SelectionBox.Adornee = Mouse.Target or nil
            wait(0.1)
        end
  	end    
})
M:AddButton({
	Name = "TNT tool",
	Callback = function()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "TNT Tool"
tool.Activated:connect(function()
for i,v in pairs(game.Players:GetChildren())do
			local lib = require(game:GetService("Workspace").upsilonLibrary)

firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',"A TN T has been Placed you have 10 sec to sit")
lib.FireOtherClients("displayChoice",'returnToMenu',"A TNT has been Placed you have 10 sec to sit")
        end
wait(10)
local lib = require(game:GetService("Workspace").upsilonLibrary)
     game.Players.LocalPlayer.Character.Humanoid.Health = 100	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(9999, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("1017")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(10)
game.Players.LocalPlayer.Character.Humanoid.Health = 0 
			Shield(Bubble)
	end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
  	end    
})
M:AddButton({
	Name = "Jump Others tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPaintPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local paint = Instance.new("Part")
    paint.Parent = Workspace
    paint.TopSurface = "Smooth"
    paint.Material = material
    paint.Reflectance = 0
    paint.CanCollide = true
    paint.Anchored = true
    paint.Size = size
    paint.CFrame = cframe
    paint.Color = color
    paint.Transparency = transparency
    paint.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = material,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = size,
        ["CFrame"] = cframe,
        ["Color"] = color,
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

    paint:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Jump tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()

    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPaintPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Click Fling tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createFlingPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local paint = Instance.new("Part")
    paint.Parent = Workspace
    paint.Reflectance = 0
    paint.CanCollide = true
    paint.Anchored = true
    paint.Size = Vector3.new(20, 20, 20)
    paint.CFrame = cframe
    paint.Transparency = transparency
    paint.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"]  = Vector3.new(20, 20, 20),
        ["Velocity"]  = Vector3.new(2000000, 0, 0),
        ["CFrame"] = cframe,
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait (0.1)
    paint:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Click Fling"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()

    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createFlingPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Mud tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPaPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Slate
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(1, 30, 30)
    pa.CFrame = cframe
    pa.BrickColor = BrickColor.new("217")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
    pa.Shape = Enum.PartType.Cylinder
    pa.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Slate,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(1, 30, 30),
        ["CFrame"] = cframe,
        ["Shape"] =Enum.PartType.Cylinder,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["BrickColor"] = BrickColor.new("217"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(1)
    pa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Mud tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPaPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "String tool",
	Callback = function()
function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Material"] = Enum.Material.Plastic,
						["Reflectance"] = 0,
						["CanCollide"] = true,
						["Size"] = Vector3.new(0.1, 0.1, dist),
						["Parent"] = Workspace
					}
					
			while wait (0) do	firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
                end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
				local tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
				tool.Name = "String Tool"
				tool.RequiresHandle = false

				local doing = false

				tool.Activated:Connect(function()
					doing = true
					while doing do
						createshooty(ray, game.Players.LocalPlayer.Character.Torso.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
					end
				end)

				tool.Deactivated:Connect(function()
					doing = false
				end)
end    
})
M:AddButton({
	Name = "Line tool",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Line Tool"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = Vector3.new(pos.X,pos.Y,pos.Z)
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
local part = Instance.new("Part")
part.Size = Vector3.new(0.3,50,0.3)
part.Position = pos
part.Material = Enum.Material.Neon
part.Anchored = true
part.CanCollide = true
part.Parent = workspace
CreatePermPart(part,game.Workspace)

local part = Instance.new("Part")
part.Size = Vector3.new(0.3,50,0.3)
part.Position = pos
part.Parent = workspace
part.CanCollide = true
part.Material = Enum.Material.Neon
part.Anchored = true
CreatePermPart(part,game.Workspace)
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})
M:AddButton({
	Name = "Bridge tool",
	Callback = function()
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.RequiresHandle = false
tool.Name = "Bridge"
tool.CanBeDropped = false

local pos1 = nil
local pos2 = nil
local bridgesize = 10
local mouse = game.Players.LocalPlayer:GetMouse()
local isEquipped = false
local isSettingPos = false
local bridgeEnabled = false
local dist = 0

function asdf(origin, target, properties)
local lib = require(game:GetService("Workspace").upsilonLibrary)
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",origin, target, properties)
lib.FireOtherClients("drawLaser", origin, target, properties)
end

mouse.KeyDown:Connect(function(k)
if not isEquipped then return end
key = k:lower()
if key == "e" then
if bridgesize <= 5 then return end
bridgesize = bridgesize - 1
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Information";
Text = "New size: " .. bridgesize;
})
print(bridgesize)
end
if key == "r" then
if bridgesize >= 25 then return end
bridgesize = bridgesize + 1
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Information";
Text = "New size: " .. bridgesize;
})
print(bridgesize)
end
if key == "t" then
bridgeEnabled = false
isSettingPos = false
pos1 = nil
pos2 = nil
bridgesize = 10
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Information";
Text = "Values reset to default.";
})
end
end)


tool.Equipped:Connect(function()
isEquipped = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Information";
Text = "Click to set positions, Press R to increase width, E to decrease width and Press T to reset.";
})
end)

tool.Unequipped:Connect(function()
isEquipped = false
end)



tool.Activated:Connect(function()
if not isSettingPos then
pos1 = mouse.hit
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Information";
Text = "Position 1 saved, click again for position 2.";
})
isSettingPos = true
else
pos2 = mouse.hit
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Information";
Text = "Position 2 saved, creating bridge...";
})
isSettingPos = false
bridgeEnabled = true
dist = (pos1.p-pos2.p).magnitude
end
end)

while true do
wait(.1)
if bridgeEnabled then
asdf(pos1.p, pos2.p, {
["CanCollide"] = true,
["Size"] = Vector3.new(bridgesize, 1, dist),
["CFrame"] = CFrame.new(pos1.p, pos2.p) * CFrame.new(0,0, -dist/2) * CFrame.Angles(0,0,0),
})
end
end
end    
})
M:AddButton({
	Name = "Speed Pads",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createSpeedPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local le = Instance.new("Part")
    le.Parent = Workspace
    le.TopSurface = "Smooth"
    le.Material = Enum.Material.DiamondPlate
    le.Reflectance = 0
    le.CanCollide = true
    le.Anchored = true
    le.Velocity = Vector3.new(1000, 0, 0)
    le.Size = Vector3.new(10, 1, 10)
    le.CFrame = cframe
    le.BrickColor = BrickColor.new("27")
    le.Transparency = transparency
    le.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.DiamondPlate,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(10, 1, 10),
        ["BrickColor"] = BrickColor.new("27"),
        ["Velocity"] = Vector3.new(10000, 0, 0),
        ["CFrame"] = cframe,
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }
    while wait(0.000000000000001) do
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

end 
end
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Speed Pads"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
while wait(0.000000000000001) do
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0.00001, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSpeedPart(mouse.Target, mouse.Target.Size + Vector3.new(0.000, 0.000, 0.000), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end
end)
end    
})
M:AddButton({
	Name = "Hammer tool",
	Callback = function()
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			local Handle = Instance.new("Part",Tool)
			local Part2 = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
            local SwingSound = Instance.new("Sound",Handle)
			Tool.Name = "FE Hammer"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(0.2, 5, 0.19)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("0")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Neon
			Handle.TopSurface = Enum.SurfaceType.Smooth
			Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
			Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
			Part2.Color = Color3.fromRGB(255, 0, 0)
			Part2.Size = Vector3.new(2, 2, 5)
			Part2.BottomSurface = Enum.SurfaceType.Smooth
			Part2.BrickColor = BrickColor.new("1032")
			Part2.CanCollide = false
			Part2.Material = Enum.Material.Neon
			Part2.TopSurface = Enum.SurfaceType.Smooth
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
			SwingSound.SoundId = "rbxassetid://605565775"

local lib = require(game:GetService("Workspace").upsilonLibrary)

			function sword(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

		lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
			
			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

			Tool.Equipped:Connect(function()
				if not ToolEquipped then
                  ToolEquipped = true
                 while wait (0) do
                    sword(Handle)
                    sword(Part2)
					ToolEquipped = true
                   end
				end
			end)
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            
					ToolActive = true
                 
					AnimationId = "218504594"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Ball
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(20,20,20)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(20,20,20)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "zapChain",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Name"] = "removeHats",
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)


					SwingSound.PlaybackSpeed = (math.random(6, 11) / 10)
					SwingSound:Play()
					wait(0.7)
					ToolActive = false
				end
			end)
end    
})
M:AddButton({
	Name = "Fe Sword",
	Callback = function()
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			local Handle = Instance.new("Part",Tool)
			local Part2 = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
            local SwingSound = Instance.new("Sound",Handle)
			Tool.Name = "FE Sword"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(0.2, 1.3, 0.19)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Neon
			Handle.TopSurface = Enum.SurfaceType.Smooth
			Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
			Part2.Orientation = Vector3.new(0, 90, -90)
			Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
			Part2.Rotation = Vector3.new(-90, 90, 0)
			Part2.Color = Color3.fromRGB(255, 0, 0)
			Part2.Size = Vector3.new(5, 0.2, 0.2)
			Part2.BottomSurface = Enum.SurfaceType.Smooth
			Part2.BrickColor = BrickColor.new("Really red")
			Part2.CanCollide = true
			Part2.Material = Enum.Material.Neon
			Part2.TopSurface = Enum.SurfaceType.Smooth
			Part2.Shape = Enum.PartType.Cylinder
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
			SwingSound.SoundId = "rbxassetid://605565775"

local lib = require(game:GetService("Workspace").upsilonLibrary)
             function sword(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
		

			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

			Tool.Equipped:Connect(function()
				if not ToolEquipped then
					ToolEquipped = true
                 while wait (0) do
                   sword(Handle)
					sword(Part2)
				end
               end
			end)
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            
					ToolActive = true
             
                 
					AnimationId = "218504594"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
SwingSound.PlaybackSpeed = (math.random(6, 11) / 10)
					SwingSound:Play()
					wait(0.7)
					ToolActive = false
				end
			end)
end    
})
M:AddButton({
	Name = "Sword tool (Green)",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/dRcMi0ha"))()
end    
})
M:AddButton({
	Name = "Sword tool Purple",
	Callback = function()
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			local Handle = Instance.new("Part",Tool)
			local Part2 = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
            local SwingSound = Instance.new("Sound",Handle)
			Tool.Name = "FE Sword"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(0.2, 1.3, 0.19)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Neon
			Handle.TopSurface = Enum.SurfaceType.Smooth
			Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
			Part2.Orientation = Vector3.new(0, 90, -90)
			Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
			Part2.Rotation = Vector3.new(-90, 90, 0)
			Part2.Color = Color3.fromRGB(255, 0, 0)
			Part2.Size = Vector3.new(5, 0.2, 0.2)
			Part2.BottomSurface = Enum.SurfaceType.Smooth
			Part2.BrickColor = BrickColor.new("1031")
			Part2.CanCollide = true
			Part2.Material = Enum.Material.Neon
			Part2.TopSurface = Enum.SurfaceType.Smooth
			Part2.Shape = Enum.PartType.Cylinder
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
			SwingSound.SoundId = "rbxassetid://605565775"

local lib = require(game:GetService("Workspace").upsilonLibrary)
             function sword(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
		

			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

			Tool.Equipped:Connect(function()
				if not ToolEquipped then
					ToolEquipped = true
                 while wait (0) do
                   sword(Handle)
					sword(Part2)
				end
               end
			end)
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            
					ToolActive = true
             
                 
					AnimationId = "218504594"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
SwingSound.PlaybackSpeed = (math.random(6, 11) / 10)
					SwingSound:Play()
					wait(0.7)
					ToolActive = false
				end
			end)
end    
})
M:AddButton({
	Name = "Blank map tool",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary) game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
			function createneon(part,Size,CFrame,Material,e,Transparency)
local pn = Instance.new("Part")
    pn.TopSurface = "Smooth"
    pn.Material = Enum.Material.Neon
    pn.Reflectance = 0
    pn.CanCollide = true
    pn.Anchored = true
    pn.Size = Size
    pn.CFrame = CFrame
    pn.Transparency = transparency
    pn.Parent = Workspace["Secret Agent Shades"]

				local properties = {
					["TopSurface"] = DiscordInvite,
					["Material"] = Enum.Material.Neon,
					["Reflectance"] = 0,
					["CanCollide"] = true,
					["Anchored"] = true,
					["Size"] = Size,
					["CFrame"] = CFrame,
					["Transparency"] = Transparency,
					["Parent"] = Workspace["Secret Agent Shades"]
				}
				while wait (0) do
                while wait (0) do	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
end
end
			local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			tool.Name = "Neonify Map"
			tool.Parent = game.Players.LocalPlayer.Backpack
			local Player = Game.Players.LocalPlayer
			local Mouse = Player:GetMouse()
			tool.RequiresHandle = false
			tool.Activated:connect(function()
				if Mouse.Target:IsA("BasePart") then
					local paint = Instance.new("Part")
					paint.Parent = Workspace
					createneon(paint,Mouse.Target.Size+Vector3.new(0.005,0.005,0.005),Mouse.Target.CFrame,Mouse.Target.Material,Mouse.Target.BrickColor,Mouse.Target.Transparency)
					pn:Destroy()
				end
			end)
end    
})
M:AddButton({
    Name = "Freeze Tool",
    Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createIcePart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Ice
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(6, 6, 6)
    pa.CFrame = cframe
    pa.BrickColor = BrickColor.new("23")
    pa.Transparency = transparency
    pa.Velocity = Vector3.new(-999,0,0)
    pa.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Ice,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Velocity"] = Vector3.new(-999,0,0),
        ["Size"] = Vector3.new(6, 6, 6),
        ["CFrame"] = cframe,
        ["BrickColor"] = BrickColor.new("23"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    while wait (0) do
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
end
end
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Freeze tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createIcePart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Click Kill",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Kill"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 999999);
end
local old = game.Players.LocalPlayer.Character.PrimaryPart.CFrame 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})
M:AddButton({
	Name = "Neonify Map",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary) game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
			function createneon(part,Size,CFrame,Material,e,Transparency)
local pn = Instance.new("Part")
    pn.TopSurface = "Smooth"
    pn.Material = Enum.Material.Neon
    pn.Reflectance = 0
    pn.CanCollide = true
    pn.Anchored = true
    pn.Size = Size
    pn.CFrame = CFrame
    pn.Color = Color3.new(math.random(225),math.random(225),math.random(225))
    pn.Transparency = transparency
    pn.Parent = Workspace["Secret Agent Shades"]

				local properties = {
					["TopSurface"] = DiscordInvite,
					["Material"] = Enum.Material.Neon,
					["Reflectance"] = 0,
					["CanCollide"] = true,
					["Anchored"] = true,
					["Size"] = Size,
					["CFrame"] = CFrame,
					["Color"] = Color3.new(math.random(225),math.random(225),math.random(225)),
					["Transparency"] = Transparency,
					["Parent"] = Workspace["Secret Agent Shades"]
				}
				while wait (0) do
                while wait (0) do	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
end
end
			local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			tool.Name = "Neonify Map"
			tool.Parent = game.Players.LocalPlayer.Backpack
			local Player = Game.Players.LocalPlayer
			local Mouse = Player:GetMouse()
			tool.RequiresHandle = false
			tool.Activated:connect(function()
				if Mouse.Target:IsA("BasePart") then
					local paint = Instance.new("Part")
					paint.Parent = Workspace
					createneon(paint,Mouse.Target.Size+Vector3.new(0.005,0.005,0.005),Mouse.Target.CFrame,Mouse.Target.Material,Mouse.Target.BrickColor,Mouse.Target.Transparency)
					pn:Destroy()
				end
			end)
end    
})
M:AddButton({
	Name = "Turret tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createShootPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local t = Instance.new("Part")
    local u = Instance.new("Part")
    local r = Instance.new("Part")
    local pa = Instance.new("Part")
    t.Parent = Workspace
    t.TopSurface = "Smooth"
    t.Material = Enum.Material.DiamondPlate
    t.Reflectance = 0
    t.CanCollide = true
    t.Anchored = true
    t.Size = Vector3.new(20, 10, 20)
    t.CFrame = cframe
    t.BrickColor = BrickColor.new("224")
    t.Transparency = transparency
    t.Parent = Workspace["Secret Agent Shades"]
    t.Shape = Enum.PartType.Cylinder
    t.Orientation = Vector3.new(0, 0, 90)

    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.DiamondPlate,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Shape"] = Enum.PartType.Cylinder,
        ["Size"] = Vector3.new(20, 10, 20),
        ["CFrame"] = cframe,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["Shape"] = Enum.PartType.Cylinder,
        ["Name"] = "zapChain",
        ["BrickColor"] = BrickColor.new("224"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    while wait (0) do
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
end

    u.Parent = Workspace
    u.TopSurface = "Smooth"
    u.Material = Enum.Material.DiamondPlate
    u.Reflectance = 0
    u.CanCollide = true
    u.Anchored = true
    u.Size = Vector3.new(20, 10, 20)
    u.CFrame = cframe
    u.BrickColor = BrickColor.new("224")
    u.Transparency = transparency
    u.Parent = Workspace["Secret Agent Shades"]
    u.Shape = Enum.PartType.Cylinder
    u.Orientation = Vector3.new(0, 0, 90)

local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.DiamondPlate,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(20, 10, 20),
        ["CFrame"] = cframe,
        ["Name"] = "zapChain",
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["Shape"] = Enum.PartType.Cylinder,
        ["BrickColor"] = BrickColor.new("224"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }


while wait (0) do
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
end
r.Parent = Workspace
    r.TopSurface = "Smooth"
    r.Material = Enum.Material.DiamondPlate
    r.Reflectance = 0
    r.CanCollide = true
    r.Anchored = true
    r.Size = Vector3.new(20, 10, 20)
    r.CFrame = cframe
    r.BrickColor = BrickColor.new("224")
    r.Transparency = transparency
    r.Parent = Workspace["Secret Agent Shades"]
    r.Shape = Enum.PartType.Cylinder
    r.Orientation = Vector3.new(0, 0, 90)

local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.DiamondPlate,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(20, 10, 20),
        ["CFrame"] = cframe,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["Shape"] = Enum.PartType.Cylinder,
        ["Name"] = "zapChain",
        ["BrickColor"] = BrickColor.new("224"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }
while wait (0) do
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
end
local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.Material = Enum.Material.DiamondPlate
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Anchored = true
    pa.Size = Vector3.new(45, 1, 45)
    pa.CFrame = cframe
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
    pa.Shape = Enum.PartType.Cylinder
    pa.Orientation = Vector3.new(0, 0, 90)
    pa.BrickColor = BrickColor.new("27")

    local properties = {
        ["Material"] = Enum.Material.DiamondPlate,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = false,
        ["Anchored"] = true,
        ["BrickColor"] = BrickColor.new("27"),
        ["Size"] = Vector3.new(45, 1, 45),
        ["CFrame"] = cframe,
        ["Transparency"] = transparency,
        ["Shape"] = Enum.PartType.Cylinder,
       ["Orientation"] = Vector3.new(0, 0, 90),
        ["Shape"] = Enum.PartType.Cylinder,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }
while wait (0) do
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
end
end


local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Turret tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createShootPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Spawn Signs",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Signs"
tool.Activated:connect(function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local Bubble2 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(0.3, 10,0.3)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.Material = Enum.Material.WoodPlanks
     Bubble.BrickColor = BrickColor.new("217")
		Bubble.Transparency = 0
     Bubble.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(0,0,0)
      Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(1, 8,4)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
		Bubble2.Anchored = true
		Bubble2.Transparency = 0
      Bubble2.BrickColor = BrickColor.new("1004")
     Bubble2.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,8,0)
     


		function Sign(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
           ["Rotation"] = part.Rotation,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end


while wait (0) do
Sign(Bubble)
Sign(Bubble2)
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})
M:AddButton({
	Name = "Zombies",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Zombies"
tool.Activated:connect(function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
local Bubble4 = Instance.new("Part")
local Bubble5 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2, 1,1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
      Bubble.Name = "zapChain"
     Bubble.BrickColor = BrickColor.new("313")
		Bubble.Transparency = 0
     Bubble.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(0,0,5)
      Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(2, 2,1)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
      Bubble2.Name =  "zapChain"
		Bubble2.Anchored = true
		Bubble2.Transparency = 0
      Bubble2.BrickColor = BrickColor.new("217")
     Bubble2.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,0,5)
     Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(1, 2,1)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
    Bubble3.Name =  "zapChain"
		Bubble3.Transparency = 0
     Bubble3.BrickColor = BrickColor.new("313")
      Bubble3.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(1,0,5)
    Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(1, 2,1)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = true
		Bubble4.Anchored = true
		Bubble4.Transparency = 0
     Bubble4.Name =  "zapChain"
    Bubble4.BrickColor = BrickColor.new("313")
    Bubble4.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(-1,0,5)
Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(1.5, 4,1)
		Bubble5.CastShadow = false
    Bubble5.Name =  "zapChain"
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
     Bubble5.BrickColor = BrickColor.new("1003")
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
     Bubble5.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,-3,5)




		function Zombie(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end

while wait (0) do
Zombie(Bubble)
Zombie(Bubble2)
Zombie(Bubble3)
Zombie(Bubble4)
Zombie(Bubble5)
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})
M:AddButton({
	Name = "Laser tool",
	Callback = function()
local hue = 0
local targetHue = 60
local colorChangeSpeed = 1
local color = Color3.new()

local function colorLoop()
    while true do
        hue = hue + (targetHue - hue) * colorChangeSpeed
        color = Color3.fromHSV(hue / 360, 1, 1)
        color = Color3.new(math.clamp(color.r, 0, 1), math.clamp(color.g, 0, 1), math.clamp(color.b, 0, 1))

        if math.abs(targetHue - hue) < colorChangeSpeed then
            targetHue = targetHue + 60
            if targetHue > 360 then
                targetHue = 60
            end
        end
        wait()
    end
end

coroutine.wrap(colorLoop)()
function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Material"] = Enum.Material.Neon,  
						["BrickColor"] = BrickColor.new(color),
						["Reflectance"] = 0,
						["CanCollide"] = false,
						["Size"] = Vector3.new(0.1, 0.1, dist),
						["Parent"] = Workspace
					}
					
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
				local tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
				tool.Name = "Beams!!"
				tool.RequiresHandle = false

				

				tool.Activated:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
						createshooty(ray, game.Players.LocalPlayer.Character.Head.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
											local s = Instance.new("Sound")
 
	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=2578125671"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.archivable = false
 
	s.Parent = game.Workspace
 
	wait(1)
 
	s:play()
				end)
end    
})
M:AddButton({
	Name = "C4 tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createC4art(part, size, cframe, material, color, transparency)
wait (0.4)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local g = Instance.new("Part")
    g.Parent = Workspace
    g.TopSurface = "Smooth"
    g.Material = Enum.Material.Ice
    g.Reflectance = 0
    g.CanCollide = true
    g.Anchored = true
    g.Size = Vector3.new(2, 2, 5)
    g.CFrame = cframe
    g.BrickColor = BrickColor.new("28")
    g.Transparency = transparency
    g.Parent = Workspace["Secret Agent Shades"]
    g.Shape = Enum.PartType.Block
    g.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Ice,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(2, 2, 5),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Block,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["BrickColor"] = BrickColor.new("28"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(1)
    g:Destroy()
end

function createCPart(part, size, cframe, material, color, transparency)
wait (0.4)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local g = Instance.new("Part")
    g.Parent = Workspace
    g.TopSurface = "Smooth"
    g.Material = Enum.Material.Neon
    g.Reflectance = 0
    g.CanCollide = false
    g.Anchored = true
    g.Size = Vector3.new(15, 15, 15)
    g.Velocity = Vector3.new(0, 8000, 0)
    g.CFrame = cframe
    g.BrickColor = BrickColor.new("133")
    g.Transparency = transparency
    g.Parent = Workspace["Secret Agent Shades"]
    g.Shape = Enum.PartType.Ball
    g.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(15, 15, 15),
        ["Velocity"] = Vector3.new(0, 8000, 0),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Ball,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.7)
    g:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "C4 Tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
checkHat()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
      createC4art(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
end
    checkHat()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createCPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Bomb tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createBombPart(part, size, cframe, material, color, transparency)
wait(3)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
wait (5)
    local p = Instance.new("Part")
    p.Parent = Workspace
    p.TopSurface = "Smooth"
    p.Material = Enum.Material.Neon
    p.Reflectance = 0
    p.CanCollide = true
    p.Anchored = true
    p.Size = Vector3.new(255, 255, 255)
    p.CFrame = cframe
    p.BrickColor = BrickColor.new("193")
    p.Transparency = transparency
    p.Parent = Workspace["Secret Agent Shades"]
    p.Shape = Enum.PartType.Ball
    p.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(255, 255, 255),
        ["CFrame"] = cframe,
        ["Shape"] =Enum.PartType.Ball,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["BrickColor"] = BrickColor.new("193"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

    p:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Bomb tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createBombPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Smoke Bombs tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPainPart(part, size, cframe, material, color, transparency)
wait(1)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local paint = Instance.new("Part")
    pain.Parent = Workspace
    pain.TopSurface = "Smooth"
    pain.Material = Enum.Material.Granite
    pain.Reflectance = 0
    pain.CanCollide = true
    pain.Anchored = true
    pain.Size = Vector3.new(50, 50, 50)
    pain.CFrame = cframe
    pain.Transparency = transparency
    pain.Parent = Workspace["Secret Agent Shades"]
    pain.Shape = Enum.PartType.Ball
    pain.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Granite,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(50, 50, 50),
        ["CFrame"] = cframe,
        ["Shape"] =Enum.PartType.Ball,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

    paint:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Smoke Bombs"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPainPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Boulder tool",
	Callback = function()
local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()
    local tool = Instance.new("Tool", plr.Backpack)
    tool.Name = "Bolder Spawn"
    tool.CanBeDropped = false
    tool.RequiresHandle = false
    tool.Activated:connect(function()



local i = Instance.new("Part")
i.Parent = game.Workspace
i.Anchored = false
i.CanCollide= true
i.Name = "Bolder"
i.BrickColor = BrickColor.new("217")
i.CFrame = CFrame.new(139.42, 624, -703.26)
i.Size = Vector3.new(100, 100, 100)
i.Shape = Enum.PartType.Ball
i.Material = Enum.Material.Slate

local pos = mouse.Hit+Vector3.new(0, 160, 0)
            pos = Vector3.new(pos.X, pos.Y, pos.Z)

i.Position = pos


_G.Bolder = true
while _G.Bolder == true do
    wait()
if game.Players.LocalPlayer.Character:FindFirstChild("Bolder Spawn") or
game.Players.LocalPlayer.Backpack:FindFirstChild("Bolder Spawn")then
local p = i.Position
local tbl = {
    ["CanCollide"] = true,
  
    ["Parent"] = workspace,
    ["Anchored"] = true,
    ["Name"] = "Bolder",
    ["CastShadow"] = false,
    ["Transparency"] = 1,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = p,
    ["BrickColor"] = i.BrickColor,
    ["Material"] = Enum.Material.Slate,
    ["Shape"] = Enum.PartType.Ball,
    ["Size"] = i.Size,
  ["Rotation"] = i.Rotation,
}

workspace.resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", p, p,  tbl)
else


_G.Bolder = false
while _G.Bolder == true do
 
wait()
end
end
end

end)
	end    
})
M:AddButton({
	Name = "Grenade tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createGrenadePart(part, size, cframe, material, color, transparency)
wait(5)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local g = Instance.new("Part")
    g.Parent = Workspace
    g.TopSurface = "Smooth"
    g.Material = Enum.Material.Neon
    g.Reflectance = 0
    g.CanCollide = true
    g.Anchored = true
    g.Size = Vector3.new(150, 150, 150)
    g.CFrame = cframe
    g.BrickColor = BrickColor.new("21")
    g.Transparency = transparency
    g.Parent = Workspace["Secret Agent Shades"]
    g.Shape = Enum.PartType.Ball
    g.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(150, 150, 150),
        ["CFrame"] = cframe,
        ["Name"] = "zapChain",
        ["Shape"] =Enum.PartType.Ball,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["BrickColor"] = BrickColor.new("21"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.5)
    g:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Grenade"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
 AnimationId = "204062532"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)   
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createGrenadePart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
M:AddButton({
	Name = "Army tool",
	Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createSpeedPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local le = Instance.new("Part")
    le.Parent = Workspace
    le.TopSurface = "Smooth"
    le.Material = Enum.Material.DiamondPlate
    le.Reflectance = 0
    le.CanCollide = true
    le.Anchored = true
    le.Size = Vector3.new(1, 30, 70)
    le.CFrame = cframe
    le.BrickColor = BrickColor.new("1021")
    le.Transparency = transparency
    le.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.DiamondPlate,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(1, 30, 70),
        ["BrickColor"] = BrickColor.new("1021"),
        ["CFrame"] = cframe,
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }
    while wait(0.000000000000001) do
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

end 
end
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Wall"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
while wait(0.000000000000001) do
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0.00001, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSpeedPart(mouse.Target, mouse.Target.Size + Vector3.new(0.000, 0.000, 0.000), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end
end)
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createSpeePart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local le = Instance.new("Part")
    le.Parent = Workspace
    le.TopSurface = "Smooth"
    le.Material = Enum.Material.Fabric
    le.Reflectance = 0
    le.CanCollide = true
    le.Anchored = true
    le.Size = Vector3.new(10, 1, 10)
    le.CFrame = cframe
    le.BrickColor = BrickColor.new("323")
    le.Transparency = transparency
    le.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Fabric,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(10, 1, 10),
        ["BrickColor"] = BrickColor.new("323"),
        ["CFrame"] = cframe,
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }
    while wait(0.000000000000001) do
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

end 
end
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Roof"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
while wait(0.000000000000001) do
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSpeePart(mouse.Target, mouse.Target.Size + Vector3.new(0.000, 0.000, 0.000), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end
end)
loadstring(game:HttpGet("https://pastebin.com/raw/3sBBKgKC"))()
end    
})
M:AddButton({
	Name = "Smite tool",
	Callback = function()
game.StarterGui:SetCore("SendNotification", {
Title = "Hey";
Text = "This kills Opposites";
})
local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Smite"

local cooldown = 0.5 
local lastActivated = tick() 

tool.Activated:Connect(function()
   
    if tick() - lastActivated >= cooldown then
        lastActivated = tick() 
        
        previousPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        previousLookVector = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector
        previousCameraPosition = game.Workspace.CurrentCamera.CFrame.Position
        
local pos = mouse.Hit+Vector3.new(0,5,0)
pos = Vector3.new(pos.X,pos.Y,pos.Z)
local s = Instance.new("Sound")

	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=1585579724"
	s.Volume = 10
	s.Pitch = 1
	s.Looped = false
	s.archivable = false

	s.Parent = game.Workspace

	wait(0.1)

	s:play()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
local Bubble4 = Instance.new("Part")
local Bubble5 = Instance.new("Part")
local Bubble6 = Instance.new("Part")
local Bubble7 = Instance.new("Part")
local Bubble8 = Instance.new("Part")
local Bubble9 = Instance.new("Part")
local Bubble10 = Instance.new("Part")
local Bubble11 = Instance.new("Part")
local Bubble12 = Instance.new("Part")
local Bubble13 = Instance.new("Part")
local Blade = Instance.new("Part")
local Blade1 = Instance.new("Part")
local Blade2 = Instance.new("Part")
local Blade3 = Instance.new("Part")
local Blade4 = Instance.new("Part")
local Blade5 = Instance.new("Part")
local Blade6 = Instance.new("Part")
local Blade7 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(0.3, 600,0.3)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
        Bubble.Rotation = Vector3.new(0, 0, 15)
		Bubble.Anchored = true
     Bubble.Material = Enum.Material.Neon
     Bubble.BrickColor = BrickColor.new("1009")
		Bubble.Transparency = 0
     Bubble.Position =  pos+ Vector3.new(0,0,5)
      Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(0.3, 600,0.3)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
      Bubble2.Material =  Enum.Material.Neon
		Bubble2.Anchored = true
		Bubble2.Transparency = 0
      Bubble2.BrickColor = BrickColor.new("1009")
      Bubble2.Rotation = Vector3.new(-15, 0, -15)
     Bubble2.Position =  pos+ Vector3.new(0,0,5)
     Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(0.3, 600,0.3)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
    Bubble3.Material =  Enum.Material.Neon
		Bubble3.Transparency = 0
      Bubble3.Rotation = Vector3.new(0, 0, 15)
     Bubble3.BrickColor = BrickColor.new("1009")
      Bubble3.Position =  pos+ Vector3.new(5,0,0)
    Bubble4.Parent = Workspace
    Bubble4.Rotation = Vector3.new(0, 15, 0)
		Bubble4.Size = Vector3.new(0.3, 600,0.3)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = true
		Bubble4.Anchored = true
		Bubble4.Transparency = 0
     Bubble4.Material  =  Enum.Material.Neon
    Bubble4.BrickColor = BrickColor.new("1009")
    Bubble4.Position = pos+ Vector3.new(5,0,0)
Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(0.3, 600,0.3)
		Bubble5.CastShadow = false
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
     Bubble5.BrickColor = BrickColor.new("1009")
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
     Bubble5.Rotation = Vector3.new(-15, 0, 0)
     Bubble5.Position = 
pos+ Vector3.new(0,0,2)

Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(0.3, 600,0.3)
		Bubble6.CastShadow = false
		Bubble6.CanCollide = true
		Bubble6.Anchored = true
     Bubble6.BrickColor = BrickColor.new("1009")
		Bubble6.Material = Enum.Material.Neon
		Bubble6.Transparency = 0
     Bubble6.Rotation = Vector3.new(-15, 0, 0)
     Bubble6.Position = 
pos+ Vector3.new(0,0,14)

Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(0.3, 600,0.3)
		Bubble7.CastShadow = false
		Bubble7.CanCollide = true
		Bubble7.Anchored = true
     Bubble7.BrickColor = BrickColor.new("1009")
		Bubble7.Material = Enum.Material.Neon
		Bubble7.Transparency = 0
     Bubble7.Rotation = Vector3.new(15, 0, 15)
     Bubble7.Position = 
pos+ Vector3.new(0,0,14)


Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(0.3, 600,0.3)
		Bubble8.CastShadow = false
		Bubble8.CanCollide = true
		Bubble8.Anchored = true
     Bubble8.BrickColor = BrickColor.new("1009")
		Bubble8.Material = Enum.Material.Neon
		Bubble8.Transparency = 0
     Bubble8.Rotation = Vector3.new(0, 0, 15)
     Bubble8.Position = 
pos+ Vector3.new(0,0,7)


Bubble9.Parent = Workspace
		Bubble9.Size = Vector3.new(0.3, 600,0.3)
		Bubble9.CastShadow = false
		Bubble9.CanCollide = true
		Bubble9.Anchored = true
     Bubble9.BrickColor = BrickColor.new("1009")
		Bubble9.Material = Enum.Material.Neon
		Bubble9.Transparency = 0
     Bubble9.Rotation = Vector3.new(-15, 0, -15)
     Bubble9.Position = 
pos+ Vector3.new(0,0,-3)

Bubble10.Parent = Workspace
		Bubble10.Size = Vector3.new(0.3, 600,0.3)
		Bubble10.CastShadow = false
		Bubble10.CanCollide = true
		Bubble10.Anchored = true
     Bubble10.BrickColor = BrickColor.new("1009")
		Bubble10.Material = Enum.Material.Neon
		Bubble10.Transparency = 0
     Bubble10.Rotation = Vector3.new(15, 0, 15)
     Bubble10.Position = 
pos+ Vector3.new(0,0,-3)


Bubble11.Parent = Workspace
		Bubble11.Size = Vector3.new(0.3, 600,0.3)
		Bubble11.CastShadow = false
		Bubble11.CanCollide = true
        Bubble11.Rotation = Vector3.new(0, 0, -15)
		Bubble11.Anchored = true
     Bubble11.Material = Enum.Material.Neon
     Bubble11.BrickColor = BrickColor.new("1009")
		Bubble11.Transparency = 0
     Bubble11.Position =  pos+ Vector3.new(0,0,-5)
     
     Bubble12.Parent = Workspace
		Bubble12.Size = Vector3.new(0.3, 600,0.3)
		Bubble12.CastShadow = false
		Bubble12.CanCollide = true
      Bubble12.Material =  Enum.Material.Neon
		Bubble12.Anchored = true
		Bubble12.Transparency = 0
      Bubble12.BrickColor = BrickColor.new("1009")
      Bubble12.Rotation = Vector3.new(0, 0, -15)
    Bubble12.Position =  pos+ Vector3.new(0,0,-5)
    
    Bubble13.Parent = Workspace
		Bubble13.Size = Vector3.new(0.3, 600,0.3)
		Bubble13.CastShadow = false
		Bubble13.CanCollide = true
      Bubble13.Material =  Enum.Material.Neon
		Bubble13.Anchored = true
       Bubble13.Orientation = Vector3.new(0, 0, 90)
		Bubble13.Transparency = 0
      Bubble13.BrickColor = BrickColor.new("1009")
      Bubble13.Rotation = Vector3.new(0, 0, 15)
    Bubble13.Position = pos + Vector3.new(0,0,-7)
    
    
    Blade.Parent = Workspace
		Blade.Size = Vector3.new(0.3, 600,0.3)
		Blade.CastShadow = false
		Blade.CanCollide = false
      Blade.Material =  Enum.Material.Neon
		Blade.Anchored = true
      Blade.BrickColor = BrickColor.new("1009")
		Blade.Transparency = 0
      Blade.Rotation = Vector3.new(-15, 0, 0)
    Blade.Position = pos + Vector3.new(0,0,20)
    

Blade1.Parent = Workspace
		Blade1.Size = Vector3.new(0.3, 600,0.3)
		Blade1.CastShadow = false
		Blade1.CanCollide = false
      Blade1.Material =  Enum.Material.Neon
		Blade1.Anchored = true
      Blade1.BrickColor = BrickColor.new("1009")
		Blade1.Transparency = 0
      Blade1.Rotation = Vector3.new(0, 0, 15)
    Blade1.Position = pos + Vector3.new(0,0,-18)
    

Blade2.Parent = Workspace
		Blade2.Size = Vector3.new(0.3, 600,0.3)
		Blade2.CastShadow = false
		Blade2.CanCollide = false
      Blade2.Material =  Enum.Material.Neon
		Blade2.Anchored = true
      Blade2.BrickColor = BrickColor.new("1009")
		Blade2.Transparency = 0
      Blade2.Rotation = Vector3.new(-15, 0, -15)
    Blade2.Position = pos + Vector3.new(0,0,15)
    
    Blade3.Parent = Workspace
		Blade3.Size = Vector3.new(0.3, 600,0.3)
		Blade3.CastShadow = false
		Blade3.CanCollide = false
      Blade3.Material =  Enum.Material.Neon
		Blade3.Anchored = true
      Blade3.BrickColor = BrickColor.new("1009")
		Blade3.Transparency = 0
      Blade3.Rotation = Vector3.new(15, 0, -15)
    Blade3.Position = pos + Vector3.new(0,0,-3)
    
     Blade4.Parent = Workspace
		Blade4.Size = Vector3.new(0.3, 600,0.3)
		Blade4.CastShadow = false
		Blade4.CanCollide = false
      Blade4.Material =  Enum.Material.Neon
		Blade4.Anchored = true
      Blade4.BrickColor = BrickColor.new("1009")
		Blade4.Transparency = 0
      Blade4.Rotation = Vector3.new(0, 0, 15)
    Blade4.Position = pos + Vector3.new(8,0,-3)
    
    
    Blade5.Parent = Workspace
		Blade5.Size = Vector3.new(0.3, 600,0.3)
		Blade5.CastShadow = false
		Blade5.CanCollide = false
      Blade5.Material =  Enum.Material.Neon
		Blade5.Anchored = true
      Blade5.BrickColor = BrickColor.new("1009")
		Blade5.Transparency = 0
      Blade5.Rotation = Vector3.new(0, 0, -15)
    Blade5.Position = pos + Vector3.new(-3,0,22)
    
    
    Blade6.Parent = Workspace
		Blade6.Size = Vector3.new(0.3, 600,0.3)
		Blade6.CastShadow = false
		Blade6.CanCollide = false
      Blade6.Material =  Enum.Material.Neon
		Blade6.Anchored = true
      Blade6.BrickColor = BrickColor.new("1009")
		Blade6.Transparency = 0
      Blade6.Rotation = Vector3.new(0, 0, 15)
    Blade6.Position = pos + Vector3.new(-3,0,19)
    
    Blade7.Parent = Workspace
		Blade7.Size = Vector3.new(0.3, 600,0.3)
		Blade7.CastShadow = false
		Blade7.CanCollide = false
      Blade7.Material =  Enum.Material.Neon
		Blade7.Anchored = true
      Blade7.BrickColor = BrickColor.new("1009")
		Blade7.Transparency = 0
      Blade7.Rotation = Vector3.new(0, 0, 15)
    Blade7.Position = pos + Vector3.new(-3,0,-16)

		function Shiel(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
           ["Rotation"] = part.Rotation,
           ["Orientation"] = part.Orientation,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
wait (0.1)
Bubble:Destroy()
Bubble2:Destroy()
Bubble3:Destroy()
Bubble4:Destroy()
Bubble5:Destroy()
Bubble6:Destroy()
Bubble7:Destroy()
Bubble8:Destroy()
Bubble9:Destroy()
Bubble10:Destroy()
Bubble11:Destroy()
Bubble12:Destroy()
Bubble13:Destroy()
Blade:Destroy()
Blade1:Destroy()
Blade2:Destroy()
Blade3:Destroy()
Blade4:Destroy()
Blade5:Destroy()
Blade6:Destroy()
Blade7:Destroy()

Bubble.Position =  pos + Vector3.new(0,0,5)
Bubble2.Position =  pos + Vector3.new(0,0,5)
Bubble3.Position =  pos + Vector3.new(5,0,0)
Bubble4.Position = pos + Vector3.new(-1,0,5)
Bubble5.Position = pos + Vector3.new(5,0,0)
Bubble6.Position = pos + Vector3.new(0,0,14)
Bubble7.Position = pos + Vector3.new(0,0,14)
Bubble8.Position = pos + Vector3.new(0,0,7)
Bubble9.Position = pos + Vector3.new(0,0,-3)
Bubble10.Position = pos + Vector3.new(0,0,-3)
Bubble11.Position = pos + Vector3.new(0,0,-5)
Bubble12.Position = pos + Vector3.new(0,0,-5)
Bubble13.Position = pos + Vector3.new(0,0,-7)
Blade1.Position = pos + Vector3.new(0,0,-18)
Shiel(Bubble)
Shiel(Bubble2)
Shiel(Bubble3)
Shiel(Bubble4)
Shiel(Bubble5)
Shiel(Bubble6)
Shiel(Bubble7)
Shiel(Bubble8)
Shiel(Bubble9)
Shiel(Bubble10)
Shiel(Bubble11)
Shiel(Bubble12)
Shiel(Bubble13)
Shiel(Blade)
Shiel(Blade1)
Shiel(Blade2)
Shiel(Blade3)
Shiel(Blade4)
Shiel(Blade5)
Shiel(Blade6)
Shiel(Blade7)
local pos1 = mouse.Hit+Vector3.new(0,5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos1
local function dealMeleeDamage()
    local ohString1 = "dealMeleeDamage"
    local ohNumber3 = 1000

    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game:GetService("Players").LocalPlayer then
            local ohInstance2 = player.Character and player.Character:FindFirstChild("Humanoid")
            if ohInstance2 then
                workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohNumber3)
            end
        end
    end
end

local startTime = tick()
while true do
    dealMeleeDamage()
    wait()
    if tick() - startTime >= 2 then
        break
    end
end
end
local i = Instance.new("Part")
i.Parent = game.Players.LocalPlayer.Character
i.Anchored = true
i.CanCollide = false
i.Transparency = 1
i.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
i.Size = Vector3.new(1, 1, 1)
i.CanTouch = false
wait(0.5)
        if previousPosition and previousLookVector and previousCameraPosition then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(previousPosition, previousPosition + previousLookVector)
            game.Workspace.CurrentCamera.CFrame = CFrame.new(previousCameraPosition, previousCameraPosition + previousLookVector)
        end
    end
)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})
M:AddButton({
	Name = "Torch tool",
	Callback = function()
	local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local tool = Instance.new("Tool", plr.Backpack)
tool.Name = "Torch"
tool.CanBeDropped = false
tool.RequiresHandle = false



a = tool

local an = true
  local am = false


local function Torch() -- ClickFling.LocalScript 

   
    local b  =  Instance.new("Part")
    b.Size = Vector3.new(0.5999999046325684, 3.0999999046325684, 0.5)
    b.Parent = a
    b.Material = Enum.Material.Wood 
    b.CFrame = CFrame.new(49.1939316, 3.5, -114.296349, -1, 3.17865059e-08, 0, -3.17865059e-08, -1, 0, 0, 0, 1)
    b.BrickColor = BrickColor.new("Reddish brown")
    b.Transparency = 0
    b.CanCollide = false
    b.CanTouch = false
    b.Anchored = false
    b.Shape = Enum.PartType.Block
     b.Name = "Handle"
   b.Rotation = Vector3.new(0, 0, 0)
     local w1 = Instance.new("WeldConstraint")
     w1.Parent = a
     w1.Part1 = Handle
     w1.Part0 = b

    local c  =  Instance.new("Part")
    c.Size = Vector3.new(1, 0.5, 0.5)
    c.Parent = a
    c.Material = Enum.Material.Neon 
    c.CFrame = CFrame.new(49.1939316, 5.5, -114.296349, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1)
    c.BrickColor = BrickColor.new("Neon orange")
    c.Transparency = 0
    c.CanCollide = false
    c.Anchored = false
    c.Shape = Enum.PartType.Block
     c.Name = "Fire"
   


     local w2 = Instance.new("WeldConstraint")
     w2.Parent = a
     w2.Part1 = b
     w2.Part0 = c


end
coroutine.wrap(Torch)()








tool.Activated:connect(function()
  for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 10);
end
  




local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204062532"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FullPunchACTIVE = false

    FullPunchACTIVE = not FullPunchACTIVE
    if FullPunchACTIVE then
     
        while wait() do
         if track.IsPlaying == false then
            if FullPunchACTIVE then
                track:Play(.1, 1, 1)
         
         
           
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
        
            wait(0.05)
        
        
        
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
        
            wait(0.05)
        
        
        
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
            wait(0.05)
        
        
        
        
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
        
        
            wait(0.05)
        
        
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
        
            wait(0.05)
        
        
        
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
        
            wait(0.05)
        
        
        
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
        
        
        
        wait(0.05)
        
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torch.Fire.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = false,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(2.5, 2.5, 2.5),
["Rotation"] = Vector3.new(0, 0, 90)
})
 
        
        wait(0.05)
        
        
         
       local Player = game:GetService("Players").LocalPlayer                        
local client = Player.PlayerGui.autoExec.client
local DrawLaserF = nil

for I, V in pairs(getgc()) do
    if type(V) == "function" and getfenv(V).script == client and debug.getinfo(V).name == "drawLaser" then
        DrawLaserF = V
        break 
    end
end
function DrawLaser(...)
   DrawLaserF(...)
   game:GetService("Workspace").resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", ...)
end

local Pos = game.Players.LocalPlayer.Character.Torso.Position
DrawLaser(Pos, Vector3.new(Pos.X, Pos.Y, Pos.Z), {
    
    ["CanCollide"] = false,

    ["Parent"] = workspace,
    ["Anchored"] = true,
    ["Name"] = "WL",
    ["CastShadow"] = false,
    ["Transparency"] = 0,
    ["RotVelocity"] = Vector3.new(0,0,0),
    ["Position"] = Pos,
    ["BrickColor"] = BrickColor.new("Bright orange"),
    ["Material"] = Enum.Material.Neon,
    ["Shape"] = Enum.PartType.Block,
    ["Size"] = Vector3.new(20, 20, 20),
["Rotation"] = Vector3.new(0, 0, 90),
 
})
 
        local p = game.Players.LocalPlayer.Character.Torso.Position
	local tbl = {
		["CanCollide"] = true,
		["Parent"] = workspace,
		["Anchored"] = true,
		["Name"] = "WL",
		["CastShadow"] = false,
		["Transparency"] = 0,
		["RotVelocity"] = Vector3.new(0,0,0),
		["CFrame"] = game.Players.LocalPlayer.Character.Torso.CFrame,
		["BrickColor"] = BrickColor.new("Bright orange"),
		["Material"] = Enum.Material.Neon,
		["Shape"] = Enum.PartType.Block,
		["Size"] = Vector3.new(20, 20, 20)
	}

	workspace.resources.RemoteEvent:FireServer("FireOtherClients", "drawLaser", p, p, tbl)
	
        
        
        
         
         
         
         wait(999999999)
               track:Stop()
            end
         end
        end
   end
        end)
	end    
})
M:AddButton({
	Name = "Airstrike",
	Callback = function()
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			local Handle = Instance.new("Part",Tool)
			local Part2 = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
            local SwingSound = Instance.new("Sound",Handle)
			Tool.Name = "Airstrike"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(3, 3, 3)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("28")
			Handle.CanCollide = false
			Handle.TopSurface = Enum.SurfaceType.Smooth
			Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
			Part2.Orientation = Vector3.new(0, 90, -90)
			Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
			Part2.Rotation = Vector3.new(-90, 90, 0)
			Part2.Color = Color3.fromRGB(255, 0, 0)
			Part2.Size = Vector3.new(6, 0.2, 0.2)
			Part2.BottomSurface = Enum.SurfaceType.Smooth
			Part2.BrickColor = BrickColor.new("28")
			Part2.CanCollide = true
			Part2.TopSurface = Enum.SurfaceType.Smooth
			Part2.Shape = Enum.PartType.Cylinder
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
			SwingSound.SoundId = "rbxassetid://7262539550"

local lib = require(game:GetService("Workspace").upsilonLibrary)
             function sword(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
		

			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

			Tool.Equipped:Connect(function()
				if not ToolEquipped then
					ToolEquipped = true
                 while wait (0) do
                   sword(Handle)
					sword(Part2)
				end
               end
			end)
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
ToolActive = true
SwingSound:Play()
					wait(0.7)
local mouse = game.Players.LocalPlayer:GetMouse()
local pos = mouse.Hit+Vector3.new(0,5,0)
pos = Vector3.new(pos.X,pos.Y,pos.Z)
local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(1, 12, 12)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.BrickColor = BrickColor.new("1020")
     Bubble.Orientation = Vector3.new(0, 0, 90)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Sh(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
            ["Orientation"] = part.Orientation,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
			Bubble.Position = pos
 
			Sh(Bubble)
wait (1)
Bubble:Destroy()
wait(3)
for i = 1,5 do
local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(500, 500, 500)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("133")
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function She(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
			Bubble.Position = pos
She(Bubble)
wait(0.1)
Bubble:Destroy()
end
					ToolActive = false
                 end
			end)
			end    
})
M:AddButton({
	Name = "Tp Ability",
	Callback = function()
	mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "TP Ability"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
function createDaaPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Anchored = true
    pa.Size = Vector3.new(15, 15, 15)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("21")
    pa.Shape = Enum.PartType.Ball
    pa.Transparency = transparency
    pa.Parent = Workspace

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Shape"] = Enum.PartType.Ball,
        ["Size"] = Vector3.new(15, 15, 15),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("21"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDaaPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
function createDaPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
pa.Shape = Enum.PartType.Ball
    pa.Anchored = true
    pa.Size = Vector3.new(15, 15, 15)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("1003")
    pa.Transparency = transparency
    pa.Parent = Workspace
   
    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Shape"] = Enum.PartType.Ball,
        ["Size"] = Vector3.new(15, 15, 15),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("1003"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDaPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end

function createDPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
pa.Shape = Enum.PartType.Ball
    pa.Anchored = true
    pa.Size = Vector3.new(15, 15, 15)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   pa.BrickColor = BrickColor.new("21")
    pa.Transparency = transparency
    pa.Parent = Workspace

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Shape"] = Enum.PartType.Ball,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(15, 15, 15),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("21"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})

M:AddButton({
	Name = "Spawn Spawn parts",
	Callback = function()
for i = 1,4 do
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("SpawnLocation") then
							workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", v)
						end
					end
					for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
    end
end    
})
M:AddButton({
	Name = "Spawn stuff",
	Callback = function()
for i = 1,4 do
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Part") then
							workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", v)
						end
					end
					for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
    end
end    
})
M:AddButton({
	Name = "Paint tool",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary) game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
			function createpaint(part,Size,CFrame,Material,e,Transparency)
local paint = Instance.new("Part")
    paint.Parent = Workspace
    paint.TopSurface = "Smooth"
    paint.Material = Material
    paint.Reflectance = 0
    paint.CanCollide = true
    paint.Anchored = true
    paint.Size = Size
    paint.CFrame = CFrame
    paint.Color = Color3.fromRGB(255, 0, 0)
    paint.Transparency = transparency
    paint.Parent = Workspace["Secret Agent Shades"]

				local properties = {
					["TopSurface"] = DiscordInvite,
					["Material"] = Material,
					["Reflectance"] = 0,
					["CanCollide"] = true,
					["Anchored"] = true,
					["Size"] = Size,
					["CFrame"] = CFrame,
					["Color"] = Color3.fromRGB(255, 0, 0),
					["Transparency"] = Transparency,
					["Parent"] = Workspace["Secret Agent Shades"]
				}
				while wait (0) do
                while wait (0) do	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
end
end
			local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			tool.Name = "Paint tool"
			tool.Parent = game.Players.LocalPlayer.Backpack
			local Player = Game.Players.LocalPlayer
			local Mouse = Player:GetMouse()
			tool.RequiresHandle = false
			tool.Activated:connect(function()
				if Mouse.Target:IsA("BasePart") then
					local paint = Instance.new("Part")
					paint.Parent = Workspace
					createpaint(paint,Mouse.Target.Size+Vector3.new(0.005,0.005,0.005),Mouse.Target.CFrame,Mouse.Target.Material,Mouse.Target.BrickColor,Mouse.Target.Transparency)
					paint:Destroy()
				end
			end)
end    
})
M:AddButton({
	Name = "Click Tase",
	Callback = function()
	mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Tase"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,0,0)
pos = Vector3.new(pos.X,pos.Y,pos.Z)
for i,v in pairs(game.Players:GetPlayers()) do
local ohString1 = "taseNew"
            local ohInstance2 = v
            local ohVector33 = pos
            local ohVector34 = Vector3.one*0/0
            workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohVector33, ohVector34)
        end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
	end    
})
local Section = M:AddSection({
	Name = "Scripts W Abilities"
})
M:AddButton({
	Name = "FE Thanos",
	Callback = function()
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=6315275563")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=4826948665")
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
local lib = require(game:GetService("Workspace").upsilonLibrary)
			local Handle = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
            local SwingSound = Instance.new("Sound",Handle)
			Tool.Name = "Infinity Gauntlet"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(3, 2, 3)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("5")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Ice
			Handle.TopSurface = Enum.SurfaceType.Smooth
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
			SwingSound.SoundId = "rbxassetid://605565775"


			function paprt(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			
			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

		Tool.Equipped:Connect(function()
				if not ToolEquipped then
                    while wait (0) do
                 paprt(Handle)
					ToolEquipped = true
				end
               end
			end)
			
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            
					ToolActive = true
                 
					AnimationId = "218504594"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)

for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 15);
end
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Ball
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(20,20,20)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(20,20,20)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "zapChain",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
					SwingSound.PlaybackSpeed = (math.random(6, 11) / 10)
					SwingSound:Play()
					wait(0.7)
					ToolActive = false
				end
			end)
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
wait (1)
function createPajPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Anchored = true
    pa.Size = Vector3.new(10, 10, 10)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.Color = Color3.new(math.random(1),math.random(1),math.random(1))
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
    pa.Shape = Enum.PartType.Ball

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = false,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8, 8, 8),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["Shape"] = Enum.PartType.Ball,
        ["Color"] = Color3.new(math.random(1),math.random(1),math.random(1)),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(2)
    pa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Ground Pound"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    AnimationId = "184574340"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
wait (1)
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPajPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)


local tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
tool.RequiresHandle = false
tool.Name = "beam(credit silas and goyo!)"

local remoteEvent = workspace.resources.RemoteEvent

local laser = Instance.new("Part")
laser.Material = Enum.Material.SmoothPlastic
laser.BrickColor = BrickColor.new("Mid gray")
laser.Anchored = true
laser.CanCollide = false

function drawLaser(pos1, pos2, props)
	local magnitude = (pos1 - pos2).Magnitude;
	local laserClone = laser:Clone();
	laserClone.Parent = workspace.ignore;
	laserClone.Size = Vector3.new(0.2, 0.2, magnitude)
	laserClone.CFrame = CFrame.new(pos1, pos2) * CFrame.new(0, 0, -magnitude / 2) * CFrame.Angles(0, 0, 2 * math.pi * math.random())
	if props then
		for i,v in pairs(props) do
			laserClone[i] = v
		end
	end
	laserClone.CanCollide = false
	laserClone.Parent = workspace.ignore
	return laserClone
end

function createPart(Pos1,Pos2,Props)
	local newLaser = drawLaser(Pos1 or Vector3.new(),Pos2 or Vector3.new(),Props)
	spawn(function()
		while wait() do
			newLaser.Transparency += 0.25
			if newLaser.Transparency >= 1 then
				newLaser:Destroy()
				break
			end
		end
	end)

	remoteEvent:FireServer("FireOtherClients", "drawLaser", Pos1 or Vector3.new(), Pos2 or Vector3.new(), Props)
	return newLaser
end

function dealDamage(Character, GunType, Pos1, Pos2)
	remoteEvent:FireServer("dealBulletDamage", Character:FindFirstChildOfClass("Humanoid"), GunType, Pos1, Pos2)
end
local colors = {
	Color3.fromRGB(255,0,0),
	Color3.fromRGB(0,255,0),
}
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
tool.Activated:Connect(function()
	local target = mouse.Hit.Position
	local size = Vector3.new(400,40,40)
	local explosionSize = Vector3.new(1,10,10)
	local posOffset = Vector3.new()
	for i = 1,20 do
		task.wait()
		size += Vector3.new(0,-2,-2)
		explosionSize += Vector3.new(0,4,4)
		local pos = target - Vector3.new(0,400,0)
		local newLaser = createPart(nil,nil,{
			CFrame = CFrame.new(target + Vector3.new(0,(size.X/2) - 10,0)) * CFrame.Angles(0,0,math.rad(90)),
			Color = colors[math.random(1,#colors)],
			Material=Enum.Material.Neon,
			Size = size,
			Shape = "Cylinder",
			CanCollide = true,
			RotVelocity=Vector3.new(10000,10000,10000),
			Transparency = 0.5
		})
		createPart(nil,nil,{
			CFrame = CFrame.new(target) * CFrame.Angles(0,0,math.rad(90)),
			Color = Color3.fromRGB(128,128,128),
			Material=Enum.Material.Glass,
			Size = explosionSize,
			Shape = "Cylinder",
			Velocity = Vector3.new(math.random(-500,500),1000,math.random(-500,500)),
			CanCollide = true,
			
			Transparency = 0.5
		})
		for i,v in pairs(workspace:GetPartsInPart(newLaser)) do
			if v.Parent:FindFirstChildOfClass("Humanoid") then
				local pos1 = v.Position + Vector3.new(0,10,0)
				dealDamage(v.Parent,"AK47",pos1,v.Position)
			end
		end
	end
end)
end    
})
M:AddButton({
	Name = "Magic",
	Callback = function()
	local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			local Handle = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
			Tool.Name = "Lightming"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(2, 2, 5)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("1019")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Neon
			Handle.TopSurface = Enum.SurfaceType.Smooth
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))

local lib = require(game:GetService("Workspace").upsilonLibrary)
             function sword(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
		

			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

			Tool.Equipped:Connect(function()
				if not ToolEquipped then
					ToolEquipped = true
                 while wait (0) do
                   sword(Handle)
				end
               end
			end)
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            function createshooty(part,start,endpos)
local lib = require(game:GetService("Workspace").upsilonLibrary)

					local dist = (start-endpos).magnitude
					local properties = {
						["Material"] = Enum.Material.Neon,  
						["Color"] = Color3.fromRGB(0, 255, 255),
						["Reflectance"] = 0,
						["CanCollide"] = true,
						["Size"] = Vector3.new(1, 1, dist),
						["Velocity"] = Vector3.new(0, 5000, 0),
						["Parent"] = Workspace
					}
					
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)	lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local ray = Instance.new("Part")
				ray.Parent = Workspace
						createshooty(ray, game.Players.LocalPlayer.Character.Head.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
						wait()
					ToolActive = true

					wait(0.7)
					ToolActive = false
				end
			end)
			
			function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createasart(part, size, cframe, material, color, transparency)
wait (0.4)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local g = Instance.new("Part")
    g.Parent = Workspace
    g.TopSurface = "Smooth"
    g.Material = Enum.Material.Slate
    g.Reflectance = 0
    g.CanCollide = false
    g.Anchored = true
    g.Size = Vector3.new(20, 20, 20)
    g.CFrame = cframe
    g.BrickColor = BrickColor.new("217")
    g.Transparency = transparency
    g.Parent = Workspace["Secret Agent Shades"]
    g.Shape = Enum.PartType.Ball
    g.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Slate,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(20, 20, 20),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Ball,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["BrickColor"] = BrickColor.new("217"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(1)
    g:Destroy()
end

function createMAart(part, size, cframe, material, color, transparency)
wait (0.4)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local g = Instance.new("Part")
    g.Parent = Workspace
    g.TopSurface = "Smooth"
    g.Material = Enum.Material.Neon
    g.Reflectance = 0
    g.CanCollide = false
    g.Anchored = true
    g.Size = Vector3.new(255, 255, 255)
    g.CFrame = cframe
    g.BrickColor = BrickColor.new("133")
    g.Transparency = transparency
    g.Parent = Workspace["Secret Agent Shades"]
    g.Shape = Enum.PartType.Ball
    g.Orientation = Vector3.new(0, 0, 90)


    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(255, 255, 255),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Ball,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.7)
    g:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Magic"
tool.RequiresHandle = false

tool.Activated:Connect(function()
checkHat()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
      createasart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
end
    checkHat()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
    for i = 1,5 do
        createMAart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end
end)
local lib = require(game:GetService("Workspace").upsilonLibrary)
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(1, 10, 10)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.Color = Color3.fromRGB(0, 255, 255)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Halo(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
          ["Orientation"] = Vector3.new(0, 0, 90),
           ["Velocity"] = Vector3.new(0, 200, 0),
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,4,0)
 Halo(Bubble)
		end

	end    
})
M:AddButton({
	Name = "Fe Sonic",
	Callback = function()
game.Workspace.resources['RemoteEvent']:FireServer("wearShirt","http://www.roblox.com/asset/?id=9400885365")
	game.Workspace.resources['RemoteEvent']:FireServer("wearPants","http://www.roblox.com/asset/?id=6469400367")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = "80"
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Sonic Spin"
tool.Activated:connect(function()
AnimationId = "188632011"
local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)

AnimationId = "188632011"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)

for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			local Handle = Instance.new("Part",Tool)
			local Part2 = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
            local SwingSound = Instance.new("Sound",Handle)
			Tool.Name = "Sonic Sword"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(0.2, 1.3, 0.19)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Neon
			Handle.TopSurface = Enum.SurfaceType.Smooth
			Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
			Part2.Orientation = Vector3.new(0, 90, -90)
			Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
			Part2.Rotation = Vector3.new(-90, 90, 0)
			Part2.Color = Color3.fromRGB(255, 0, 0)
			Part2.Size = Vector3.new(5, 0.2, 0.2)
			Part2.BottomSurface = Enum.SurfaceType.Smooth
			Part2.BrickColor = BrickColor.new("23")
			Part2.CanCollide = true
			Part2.Material = Enum.Material.Neon
			Part2.TopSurface = Enum.SurfaceType.Smooth
			Part2.Shape = Enum.PartType.Cylinder
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
			SwingSound.SoundId = "rbxassetid://605565775"

local lib = require(game:GetService("Workspace").upsilonLibrary)
             function sword(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
		

			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

			Tool.Equipped:Connect(function()
				if not ToolEquipped then
					ToolEquipped = true
                 while wait (0) do
                   sword(Handle)
					sword(Part2)
				end
               end
			end)
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            
					ToolActive = true
             
                 
					AnimationId = "218504594"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
SwingSound.PlaybackSpeed = (math.random(6, 11) / 10)
					SwingSound:Play()
					wait(0.7)
					ToolActive = false
				end
			end)
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Ground Ability"
tool.Activated:connect(function()
AnimationId = "184574340"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
function createSonicPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Shape = Enum.PartType.Cylinder
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Anchored = true
    pa.Size = Vector3.new(1.2, 8, 8)
pa.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-7,0)
    pa.Orientation = Vector3.new(0, 0, 90)
    pa.BrickColor = BrickColor.new("23")
    pa.Transparency = transparency
    pa.Parent = Workspace

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Shape"] = Enum.PartType.Cylinder,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["Size"] = Vector3.new(1.2, 8, 8),
["Position"] = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-7,0),
        ["BrickColor"] = BrickColor.new("23"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSonicPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end

function createBigPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Shape = Enum.PartType.Cylinder
    pa.Anchored = true
    pa.Size = Vector3.new(1.2, 10, 10)
pa.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-7,0)
    pa.BrickColor = BrickColor.new("23")
    pa.Orientation = Vector3.new(0, 0, 90)
    pa.Transparency = transparency
    pa.Parent = Workspace
   
    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["Shape"] = Enum.PartType.Cylinder,
        ["Size"] = Vector3.new(1.2, 10, 10),
        ["Position"] = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-7,0),
        ["BrickColor"] = BrickColor.new("23"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createBigPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
function createDonePart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Shape = Enum.PartType.Cylinder
    pa.Anchored = true
    pa.Size = Vector3.new(1.2, 12, 12)
    pa.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-7,0)
    pa.BrickColor = BrickColor.new("23")
    pa.Orientation = Vector3.new(0, 0, 90)
    pa.Transparency = transparency
    pa.Parent = Workspace
   
    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Orientation"] = Vector3.new(0, 0, 90),
        ["Shape"] = Enum.PartType.Cylinder,
        ["Size"] = Vector3.new(1.2, 12, 12),
["Position"] = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-7,0),
        ["BrickColor"] = BrickColor.new("23"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end



    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDonePart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
for i,v in pairs(game.Players:GetPlayers()) do 
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
local lib = require(game:GetService("Workspace").upsilonLibrary)
			local Handle = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
			Tool.Name = "Slap Ability"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(3, 2, 3)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("23")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Neon
			Handle.TopSurface = Enum.SurfaceType.Smooth
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))



			function paprt(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Name"] = "removeHats",
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			
			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

		Tool.Equipped:Connect(function()
				if not ToolEquipped then
                    while wait (0) do
                 paprt(Handle)
					ToolEquipped = true
				end
               end
			end)
			
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            
					ToolActive = true
                 
					AnimationId = "218504594"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
					
					SwingSound:Play()
					wait(0.7)
					ToolActive = false
				end
			end)
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
     local Bubble2 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(1, 1, 1)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("23")
		Bubble.Shape = Enum.PartType.Block
    Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(1, 1, 1)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = false
		Bubble2.Anchored = true
     Bubble2.BrickColor = BrickColor.new("23")
		Bubble2.Shape = Enum.PartType.Block
    Bubble2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Bubble2.Material = Enum.Material.Neon
		Bubble2.Transparency = 0
 
 
		function trail(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while wait (0) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.Humanoid.LeftLeg.CFrame
Bubble2.CFrame = game.Players.LocalPlayer.Character.Humanoid.RightLeg.CFrame
 
		 trail(Bubble)
     trail(Bubble2)
		end
end    
})
M:AddButton({
	Name = "Agent-Daniel",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/eB7BjNiQ"))()
wait(13)
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Explode Ability"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createDaaPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Shape = Enum.PartType.Ball
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Anchored = true
    pa.Size = Vector3.new(8, 8, 8)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("133")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Shape"] = Enum.PartType.Ball,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8, 8, 8),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDaaPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createDaPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Shape = Enum.PartType.Ball
    pa.Anchored = true
    pa.Size = Vector3.new(10, 10, 10)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("133")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
   
    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Shape"] = Enum.PartType.Ball,
        ["Size"] = Vector3.new(10, 10, 10),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDaPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createDPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Shape = Enum.PartType.Ball
    pa.Anchored = true
    pa.Size = Vector3.new(12, 12, 12)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("133")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Shape"] = Enum.PartType.Ball,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(12, 12, 12),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
for i,v in pairs(game.Players:GetPlayers()) do 
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(615.167114, 7.11496067, -225.977829, -0.0468960628, 3.87982269e-09, 0.998899758, 4.28813651e-09, 1, -3.68277764e-09, -0.998899758, 4.11071088e-09, -0.0468960628)
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack

end    
})
M:AddButton({
	Name = "Agent-Daniel Explode Ability",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Explode Ability"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createDaaPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Shape = Enum.PartType.Ball
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Anchored = true
    pa.Size = Vector3.new(8, 8, 8)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("133")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Shape"] = Enum.PartType.Ball,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8, 8, 8),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDaaPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createDaPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Shape = Enum.PartType.Ball
    pa.Anchored = true
    pa.Size = Vector3.new(10, 10, 10)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("133")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
   
    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Shape"] = Enum.PartType.Ball,
        ["Size"] = Vector3.new(10, 10, 10),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDaPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end
function createDPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Shape = Enum.PartType.Ball
    pa.Anchored = true
    pa.Size = Vector3.new(12, 12, 12)
    pa.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    pa.BrickColor = BrickColor.new("133")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Shape"] = Enum.PartType.Ball,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(12, 12, 12),
        ["CFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
        ["BrickColor"] = BrickColor.new("133"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.1)
    pa:Destroy()
end


    checkHat()
    
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createDPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
for i,v in pairs(game.Players:GetPlayers()) do 
	workspace.resources.RemoteEvent:FireServer("becomeHostile");	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(615.167114, 7.11496067, -225.977829, -0.0468960628, 3.87982269e-09, 0.998899758, 4.28813651e-09, 1, -3.68277764e-09, -0.998899758, 4.11071088e-09, -0.0468960628)
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})

C:AddTextbox({
    Name = "GodWalk (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
    local Colour = BrickColor.new(Value)
        local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(3, 10, 10)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.BrickColor = Colour
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Walk(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
          ["Orientation"] = Vector3.new(0, 0, 90),
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-6,0)
 
			Walk(Bubble)
		end
	end
})
C:AddTextbox({
    Name = "Bubble Shield Inner (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
local Colour = BrickColor.new(Value)
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = Colour
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function ShieldColor(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			ShieldColor(Bubble)
		end
	end
})
C:AddTextbox({
    Name = "Bubble Shield Outer (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
local Colour = BrickColor.new(Value)
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(15, 8, 8)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = Colour
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function ShieldColorOut(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 
			ShieldColorOut(Bubble)
		end
	end
})
C:AddTextbox({
    Name = "Shadow Clones (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
    local Colour = BrickColor.new(Value)
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local BubbleS = Instance.new("Part")
local Bubble6 = Instance.new("Part")
local Bubble7 = Instance.new("Part")
local Bubble8 = Instance.new("Part")
local Bubble9 = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
local Bubble4 = Instance.new("Part")
local Bubble5 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2, 1,1)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
        Bubble.BrickColor = Colour
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
     Bubble.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(0,0,5)

     BubbleS.Parent = Workspace
		BubbleS.Size = Vector3.new(2, 1,1)
		BubbleS.CastShadow = false
		BubbleS.CanCollide = true
		BubbleS.Anchored = true
       BubbleS.BrickColor = Colour
		BubbleS.Material = Enum.Material.Neon
		BubbleS.Transparency = 0
		BubbleS.Position =  game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(5,0,5)

Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(1, 2,1)
		Bubble6.CastShadow = false
		Bubble6.CanCollide = true
		Bubble6.Anchored = true
       Bubble6.BrickColor = Colour
		Bubble6.Material = Enum.Material.Neon
		Bubble6.Transparency = 0
Bubble6.Parent = Workspace


Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(1, 2,1)
		Bubble7.CastShadow = false
		Bubble7.CanCollide = true
        Bubble7.BrickColor = Colour
		Bubble7.Anchored = true
		Bubble7.Material = Enum.Material.Neon
		Bubble7.Transparency = 0

Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(3.5, 2,1)
		Bubble8.CastShadow = false
		Bubble8.CanCollide = true
       Bubble8.BrickColor = Colour
		Bubble8.Anchored = true
		Bubble8.Material = Enum.Material.Neon
		Bubble8.Transparency = 0


		Bubble9.Parent = Workspace
		Bubble9.Size = Vector3.new(1.5, 4,1)
		Bubble9.CastShadow = false
		Bubble9.CanCollide = true
		Bubble9.Anchored = true
       Bubble9.BrickColor = Colour
		Bubble9.Material = Enum.Material.Neon
		Bubble9.Transparency = 0

		function Clone(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(2, 2,1)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
		Bubble2.Anchored = true
       Bubble2.BrickColor = Colour
		Bubble2.Material = Enum.Material.Neon
		Bubble2.Transparency = 0
     Bubble2.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,0,5)

		function Thing(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
local lib = require(game:GetService("Workspace").upsilonLibrary)
		Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(1, 2,1)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
       Bubble3.BrickColor = Colour
		Bubble3.Anchored = true
		Bubble3.Material = Enum.Material.Neon
		Bubble3.Transparency = 0
      Bubble3.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(1,0,5)

		function arm(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end

		Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(1, 2,1)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = true
		Bubble4.Anchored = true
        Bubble4.BrickColor = Colour
		Bubble4.Material = Enum.Material.Neon
		Bubble4.Transparency = 0
    Bubble4.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(-1,0,5)


		function Body(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
		Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(1.5, 4,1)
		Bubble5.CastShadow = false
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
       Bubble5.BrickColor = Colour
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
     Bubble5.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,-3,5)

		function Limbs(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
while wait (0) do
	Bubble.Position = game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(0,0,5)
	BubbleS.Position = game.Players.LocalPlayer.Character.Head.Position+ Vector3.new(5,0,5)
	Bubble6.Position = game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble7.Position = game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble8.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,0,5)
	Bubble9.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(5,-2,5)
Bubble2.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,0,5)
Bubble3.Position =  game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(1,0,5)
Bubble4.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(-1,0,5)
Bubble5.Position = 
game.Players.LocalPlayer.Character.Torso.Position+ Vector3.new(0,-3,5)
			Clone(Bubble)
			 Clone(BubbleS)
			 Clone(Bubble6)
			 Clone(Bubble7)
			 Clone(Bubble8)
			 Clone(Bubble9)
         Thing(Bubble2)
         arm(Bubble3)
         Body(Bubble4)
         Limbs(Bubble5)
end
end
})
C:AddTextbox({
    Name = "Smite (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
local Colour = BrickColor.new(Value)
local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Smite"

local cooldown = 0.5 
local lastActivated = tick() 

tool.Activated:Connect(function()
   
    if tick() - lastActivated >= cooldown then
        lastActivated = tick() 
        
        previousPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        previousLookVector = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector
        previousCameraPosition = game.Workspace.CurrentCamera.CFrame.Position
        
local pos = mouse.Hit+Vector3.new(0,5,0)
pos = Vector3.new(pos.X,pos.Y,pos.Z)
local s = Instance.new("Sound")

	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=1585579724"
	s.Volume = 10
	s.Pitch = 1
	s.Looped = false
	s.archivable = false

	s.Parent = game.Workspace

	wait(0.1)

	s:play()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
local Bubble4 = Instance.new("Part")
local Bubble5 = Instance.new("Part")
local Bubble6 = Instance.new("Part")
local Bubble7 = Instance.new("Part")
local Bubble8 = Instance.new("Part")
local Bubble9 = Instance.new("Part")
local Bubble10 = Instance.new("Part")
local Bubble11 = Instance.new("Part")
local Bubble12 = Instance.new("Part")
local Bubble13 = Instance.new("Part")
local Blade = Instance.new("Part")
local Blade1 = Instance.new("Part")
local Blade2 = Instance.new("Part")
local Blade3 = Instance.new("Part")
local Blade4 = Instance.new("Part")
local Blade5 = Instance.new("Part")
local Blade6 = Instance.new("Part")
local Blade7 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(0.3, 600,0.3)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
        Bubble.Rotation = Vector3.new(0, 0, 15)
		Bubble.Anchored = true
     Bubble.Material = Enum.Material.Neon
     Bubble.BrickColor = Colour
		Bubble.Transparency = 0
     Bubble.Position =  pos+ Vector3.new(0,0,5)
      Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(0.3, 600,0.3)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
      Bubble2.Material =  Enum.Material.Neon
		Bubble2.Anchored = true
		Bubble2.Transparency = 0
      Bubble2.BrickColor = Colour
      Bubble2.Rotation = Vector3.new(-15, 0, -15)
     Bubble2.Position =  pos+ Vector3.new(0,0,5)
     Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(0.3, 600,0.3)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
    Bubble3.Material =  Enum.Material.Neon
		Bubble3.Transparency = 0
      Bubble3.Rotation = Vector3.new(0, 0, 15)
     Bubble3.BrickColor = Colour
      Bubble3.Position =  pos+ Vector3.new(5,0,0)
    Bubble4.Parent = Workspace
    Bubble4.Rotation = Vector3.new(0, 15, 0)
		Bubble4.Size = Vector3.new(0.3, 600,0.3)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = true
		Bubble4.Anchored = true
		Bubble4.Transparency = 0
     Bubble4.Material  =  Enum.Material.Neon
    Bubble4.BrickColor = Colour
    Bubble4.Position = pos+ Vector3.new(5,0,0)
Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(0.3, 600,0.3)
		Bubble5.CastShadow = false
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
     Bubble5.BrickColor = Colour
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
     Bubble5.Rotation = Vector3.new(-15, 0, 0)
     Bubble5.Position = 
pos+ Vector3.new(0,0,2)

Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(0.3, 600,0.3)
		Bubble6.CastShadow = false
		Bubble6.CanCollide = true
		Bubble6.Anchored = true
     Bubble6.BrickColor = Colour
		Bubble6.Material = Enum.Material.Neon
		Bubble6.Transparency = 0
     Bubble6.Rotation = Vector3.new(-15, 0, 0)
     Bubble6.Position = 
pos+ Vector3.new(0,0,14)

Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(0.3, 600,0.3)
		Bubble7.CastShadow = false
		Bubble7.CanCollide = true
		Bubble7.Anchored = true
     Bubble7.BrickColor = Colour
		Bubble7.Material = Enum.Material.Neon
		Bubble7.Transparency = 0
     Bubble7.Rotation = Vector3.new(15, 0, 15)
     Bubble7.Position = 
pos+ Vector3.new(0,0,14)


Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(0.3, 600,0.3)
		Bubble8.CastShadow = false
		Bubble8.CanCollide = true
		Bubble8.Anchored = true
     Bubble8.BrickColor = Colour
		Bubble8.Material = Enum.Material.Neon
		Bubble8.Transparency = 0
     Bubble8.Rotation = Vector3.new(0, 0, 15)
     Bubble8.Position = 
pos+ Vector3.new(0,0,7)


Bubble9.Parent = Workspace
		Bubble9.Size = Vector3.new(0.3, 600,0.3)
		Bubble9.CastShadow = false
		Bubble9.CanCollide = true
		Bubble9.Anchored = true
     Bubble9.BrickColor = Colour
		Bubble9.Material = Enum.Material.Neon
		Bubble9.Transparency = 0
     Bubble9.Rotation = Vector3.new(-15, 0, -15)
     Bubble9.Position = 
pos+ Vector3.new(0,0,-3)

Bubble10.Parent = Workspace
		Bubble10.Size = Vector3.new(0.3, 600,0.3)
		Bubble10.CastShadow = false
		Bubble10.CanCollide = true
		Bubble10.Anchored = true
     Bubble10.BrickColor = Colour
		Bubble10.Material = Enum.Material.Neon
		Bubble10.Transparency = 0
     Bubble10.Rotation = Vector3.new(15, 0, 15)
     Bubble10.Position = 
pos+ Vector3.new(0,0,-3)


Bubble11.Parent = Workspace
		Bubble11.Size = Vector3.new(0.3, 600,0.3)
		Bubble11.CastShadow = false
		Bubble11.CanCollide = true
        Bubble11.Rotation = Vector3.new(0, 0, -15)
		Bubble11.Anchored = true
     Bubble11.Material = Enum.Material.Neon
     Bubble11.BrickColor = Colour
		Bubble11.Transparency = 0
     Bubble11.Position =  pos+ Vector3.new(0,0,-5)
     
     Bubble12.Parent = Workspace
		Bubble12.Size = Vector3.new(0.3, 600,0.3)
		Bubble12.CastShadow = false
		Bubble12.CanCollide = true
      Bubble12.Material =  Enum.Material.Neon
		Bubble12.Anchored = true
		Bubble12.Transparency = 0
      Bubble12.BrickColor = Colour
      Bubble12.Rotation = Vector3.new(0, 0, -15)
    Bubble12.Position =  pos+ Vector3.new(0,0,-5)
    
    Bubble13.Parent = Workspace
		Bubble13.Size = Vector3.new(0.3, 600,0.3)
		Bubble13.CastShadow = false
		Bubble13.CanCollide = true
      Bubble13.Material =  Enum.Material.Neon
		Bubble13.Anchored = true
       Bubble13.Orientation = Vector3.new(0, 0, 90)
		Bubble13.Transparency = 0
      Bubble13.BrickColor = Colour
      Bubble13.Rotation = Vector3.new(0, 0, 15)
    Bubble13.Position = pos + Vector3.new(0,0,-7)
    
    
    Blade.Parent = Workspace
		Blade.Size = Vector3.new(0.3, 600,0.3)
		Blade.CastShadow = false
		Blade.CanCollide = false
      Blade.Material =  Enum.Material.Neon
		Blade.Anchored = true
      Blade.BrickColor = Colour
		Blade.Transparency = 0
      Blade.Rotation = Vector3.new(-15, 0, 0)
    Blade.Position = pos + Vector3.new(0,0,20)
    

Blade1.Parent = Workspace
		Blade1.Size = Vector3.new(0.3, 600,0.3)
		Blade1.CastShadow = false
		Blade1.CanCollide = false
      Blade1.Material =  Enum.Material.Neon
		Blade1.Anchored = true
      Blade1.BrickColor = Colour
		Blade1.Transparency = 0
      Blade1.Rotation = Vector3.new(0, 0, 15)
    Blade1.Position = pos + Vector3.new(0,0,-18)
    

Blade2.Parent = Workspace
		Blade2.Size = Vector3.new(0.3, 600,0.3)
		Blade2.CastShadow = false
		Blade2.CanCollide = false
      Blade2.Material =  Enum.Material.Neon
		Blade2.Anchored = true
      Blade2.BrickColor = Colour
		Blade2.Transparency = 0
      Blade2.Rotation = Vector3.new(-15, 0, -15)
    Blade2.Position = pos + Vector3.new(0,0,15)
    
    Blade3.Parent = Workspace
		Blade3.Size = Vector3.new(0.3, 600,0.3)
		Blade3.CastShadow = false
		Blade3.CanCollide = false
      Blade3.Material =  Enum.Material.Neon
		Blade3.Anchored = true
      Blade3.BrickColor = Colour
		Blade3.Transparency = 0
      Blade3.Rotation = Vector3.new(15, 0, -15)
    Blade3.Position = pos + Vector3.new(0,0,-3)
    
     Blade4.Parent = Workspace
		Blade4.Size = Vector3.new(0.3, 600,0.3)
		Blade4.CastShadow = false
		Blade4.CanCollide = false
      Blade4.Material =  Enum.Material.Neon
		Blade4.Anchored = true
      Blade4.BrickColor = Colour
		Blade4.Transparency = 0
      Blade4.Rotation = Vector3.new(0, 0, 15)
    Blade4.Position = pos + Vector3.new(8,0,-3)
    
    
    Blade5.Parent = Workspace
		Blade5.Size = Vector3.new(0.3, 600,0.3)
		Blade5.CastShadow = false
		Blade5.CanCollide = false
      Blade5.Material =  Enum.Material.Neon
		Blade5.Anchored = true
      Blade5.BrickColor = Colour
		Blade5.Transparency = 0
      Blade5.Rotation = Vector3.new(0, 0, -15)
    Blade5.Position = pos + Vector3.new(-3,0,22)
    
    
    Blade6.Parent = Workspace
		Blade6.Size = Vector3.new(0.3, 600,0.3)
		Blade6.CastShadow = false
		Blade6.CanCollide = false
      Blade6.Material =  Enum.Material.Neon
		Blade6.Anchored = true
      Blade6.BrickColor = Colour
		Blade6.Transparency = 0
      Blade6.Rotation = Vector3.new(0, 0, 15)
    Blade6.Position = pos + Vector3.new(-3,0,19)
    
    Blade7.Parent = Workspace
		Blade7.Size = Vector3.new(0.3, 600,0.3)
		Blade7.CastShadow = false
		Blade7.CanCollide = false
      Blade7.Material =  Enum.Material.Neon
		Blade7.Anchored = true
      Blade7.BrickColor = Colour
		Blade7.Transparency = 0
      Blade7.Rotation = Vector3.new(0, 0, 15)
    Blade7.Position = pos + Vector3.new(-3,0,-16)

		function Shiel(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
           ["Rotation"] = part.Rotation,
           ["Orientation"] = part.Orientation,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
wait (0.1)
Bubble:Destroy()
Bubble2:Destroy()
Bubble3:Destroy()
Bubble4:Destroy()
Bubble5:Destroy()
Bubble6:Destroy()
Bubble7:Destroy()
Bubble8:Destroy()
Bubble9:Destroy()
Bubble10:Destroy()
Bubble11:Destroy()
Bubble12:Destroy()
Bubble13:Destroy()
Blade:Destroy()
Blade1:Destroy()
Blade2:Destroy()
Blade3:Destroy()
Blade4:Destroy()
Blade5:Destroy()
Blade6:Destroy()
Blade7:Destroy()

Bubble.Position =  pos + Vector3.new(0,0,5)
Bubble2.Position =  pos + Vector3.new(0,0,5)
Bubble3.Position =  pos + Vector3.new(5,0,0)
Bubble4.Position = pos + Vector3.new(-1,0,5)
Bubble5.Position = pos + Vector3.new(5,0,0)
Bubble6.Position = pos + Vector3.new(0,0,14)
Bubble7.Position = pos + Vector3.new(0,0,14)
Bubble8.Position = pos + Vector3.new(0,0,7)
Bubble9.Position = pos + Vector3.new(0,0,-3)
Bubble10.Position = pos + Vector3.new(0,0,-3)
Bubble11.Position = pos + Vector3.new(0,0,-5)
Bubble12.Position = pos + Vector3.new(0,0,-5)
Bubble13.Position = pos + Vector3.new(0,0,-7)
Blade1.Position = pos + Vector3.new(0,0,-18)
Shiel(Bubble)
Shiel(Bubble2)
Shiel(Bubble3)
Shiel(Bubble4)
Shiel(Bubble5)
Shiel(Bubble6)
Shiel(Bubble7)
Shiel(Bubble8)
Shiel(Bubble9)
Shiel(Bubble10)
Shiel(Bubble11)
Shiel(Bubble12)
Shiel(Bubble13)
Shiel(Blade)
Shiel(Blade1)
Shiel(Blade2)
Shiel(Blade3)
Shiel(Blade4)
Shiel(Blade5)
Shiel(Blade6)
Shiel(Blade7)
local pos1 = mouse.Hit+Vector3.new(0,5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos1
local function dealMeleeDamage()
    local ohString1 = "dealMeleeDamage"
    local ohNumber3 = 1000

    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game:GetService("Players").LocalPlayer then
            local ohInstance2 = player.Character and player.Character:FindFirstChild("Humanoid")
            if ohInstance2 then
                workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohNumber3)
            end
        end
    end
end

local startTime = tick()
while true do
    dealMeleeDamage()
    wait()
    if tick() - startTime >= 2 then
        break
    end
end
end
local i = Instance.new("Part")
i.Parent = game.Players.LocalPlayer.Character
i.Anchored = true
i.CanCollide = false
i.Transparency = 1
i.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
i.Size = Vector3.new(1, 1, 1)
i.CanTouch = false
wait(0.5)
        if previousPosition and previousLookVector and previousCameraPosition then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(previousPosition, previousPosition + previousLookVector)
            game.Workspace.CurrentCamera.CFrame = CFrame.new(previousCameraPosition, previousCameraPosition + previousLookVector)
        end
    end
)
tool.Parent = game.Players.LocalPlayer.Backpack
end
})
C:AddTextbox({
    Name = "Paint (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
local Colour = BrickColor.new(Value)
local lib = require(game:GetService("Workspace").upsilonLibrary) game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
			function createpaint(part,Size,CFrame,Material,e,Transparency)
local paint = Instance.new("Part")
    paint.Parent = Workspace
    paint.TopSurface = "Smooth"
    paint.Material = Material
    paint.Reflectance = 0
    paint.CanCollide = true
    paint.Anchored = true
    paint.Size = Size
    paint.CFrame = CFrame
    paint.BrickColor = Colour
    paint.Transparency = transparency
    paint.Parent = Workspace["Secret Agent Shades"]

				local properties = {
					["TopSurface"] = DiscordInvite,
					["Material"] = Material,
					["Reflectance"] = 0,
					["CanCollide"] = true,
					["Anchored"] = true,
					["Size"] = Size,
					["CFrame"] = CFrame,
					["BrickColor"] = Colour,
					["Transparency"] = Transparency,
					["Parent"] = Workspace["Secret Agent Shades"]
				}
				while wait (0) do
                while wait (0) do	lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
end
end
			local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			tool.Name = "Paint tool"
			tool.Parent = game.Players.LocalPlayer.Backpack
			local Player = Game.Players.LocalPlayer
			local Mouse = Player:GetMouse()
			tool.RequiresHandle = false
			tool.Activated:connect(function()
				if Mouse.Target:IsA("BasePart") then
					local paint = Instance.new("Part")
					paint.Parent = Workspace
					createpaint(paint,Mouse.Target.Size+Vector3.new(0.005,0.005,0.005),Mouse.Target.CFrame,Mouse.Target.Material,Mouse.Target.BrickColor,Mouse.Target.Transparency)
					paint:Destroy()
				end
			end)
end
})
C:AddTextbox({
    Name = "Line (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
local Colour = BrickColor.new(Value)
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Line Tool"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = Vector3.new(pos.X,pos.Y,pos.Z)
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = Colour,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
local part = Instance.new("Part")
part.Size = Vector3.new(0.3,50,0.3)
part.Position = pos
part.Material = Enum.Material.Neon
part.Anchored = true
part.CanCollide = true
part.BrickColor = Colour
part.Parent = workspace
CreatePermPart(part,game.Workspace)

local part = Instance.new("Part")
part.Size = Vector3.new(0.3,50,0.3)
part.Position = pos
part.Parent = workspace
part.CanCollide = true
part.BrickColor = Colour
part.Material = Enum.Material.Neon
part.Anchored = true
CreatePermPart(part,game.Workspace)
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end
})
C:AddTextbox({
    Name = "Laser ESP (BrickColor)",
    Default = "21",
    TextDisappear = true,
    Callback = function(Value)
    local Colour = BrickColor.new(Value)
    local lib = require(game:GetService("Workspace").upsilonLibrary)
local laser = Instance.new("Part")
				laser.Parent = Workspace
				function createlaser(part,start,endpos)
					local properties = {
						["Material"] = Enum.Material.Metal,
						["BrickColor"] = Colour,
						["Material"] = Enum.Material.Neon,
						["Reflectance"] = 0.5
					}
		firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)							lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
for i = 1, 100000000 do  
					for _,v in pairs(game.Players:GetPlayers()) do						createlaser(laser,game.Players.LocalPlayer.Character.Head.Position,v.Character.Head.Position)
					end
	
	wait(0)
	
	end
    end
})

O:AddButton({
	Name = "Bakers Valley",
	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/lol8267vr/bakers-valley-/main/the%20gui.txt"))()
  	end    
})
O:AddButton({
	Name = "Natural Disaster Survival",
	Callback = function()        
loadstring(game:HttpGet("https://pastebin.com/raw/FEwURKpS"))()
  	end    
})
O:AddButton({
	Name = "Prison Life",
	Callback = function()        
loadstring(game:HttpGet("https://pastebin.com/raw/Pfh2yzew"))()
end    
})
P:AddButton({
    Name = "LoopSitAll",
    Callback = function()
while wait (0) do
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(8000,8000,8000)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(8000,8000,8000)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "zapChain",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
end
end
})
P:AddButton({
    Name = "Kill All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
    for i,v in pairs(game.Players:GetPlayers()) do lib.FireOtherClients("drawLaser",Vector3.new(), Vector3.new(),{["Name"] = "Head",["Parent"] = v.Character})
end 
for i = 1,3 do
for i,v in pairs(game.Players:GetPlayers()) do
local ohString1 = "dealBulletDamage"
local ohInstance2 = v.Character.Humanoid
local ohString3 = "M98B"
local ohVector34 = Vector3.one*0/0
local ohVector35 = Vector3.one*0/0
workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohString3, ohVector34, ohVector35)
					end
 end
end
})
P:AddButton({
    Name = "loop Kill All",
    Callback = function()
    while wait (0) do
local lib = require(game:GetService("Workspace").upsilonLibrary)
    for i,v in pairs(game.Players:GetPlayers()) do lib.FireOtherClients("drawLaser",Vector3.new(), Vector3.new(),{["Name"] = "Head",["Parent"] = v.Character})
end 
for i = 1,3 do
for i,v in pairs(game.Players:GetPlayers()) do
local ohString1 = "dealBulletDamage"
local ohInstance2 = v.Character.Humanoid
local ohString3 = "M98B"
local ohVector34 = Vector3.one*0/0
local ohVector35 = Vector3.one*0/0
workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohString3, ohVector34, ohVector35)
					end
 end
end
end
})
P:AddButton({
    Name = "Loop Tase All",
    Callback = function()
    while wait (0.1) do
  for i,v in pairs(game.Players:GetPlayers()) do
local ohString1 = "taseNew"
			local ohInstance2 = v
			local ohVector33 = Vector3.one*0/0
			local ohVector34 = Vector3.one*0/0
			workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohVector33, ohVector34)
		end
end
    end
})
P:AddTextbox({
    Name = "Void",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(20, 20, 20)
      Bubble.Velocity = Vector3.new(0, 9999999999999, 0)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
     Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
		Bubble.Shape = Enum.PartType.Ball
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Void(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Velocity"] = part.Velocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
			Void(Bubble)

wait(1)
Bubble:Destroy()
end
})
P:AddTextbox({
    Name = "Kick",
    Default = "",
    TextDisappear = false,
    Callback = function(Target)     
 local Player = game.Players[Target]
 game.Workspace.resources.RemoteEvent:FireServer("becomeHostile")
		local Upsilon = require(workspace.upsilonLibrary) Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
local args = {
    [1] = "giveRiotShield",
    [2] = game:GetService("Workspace").ignore.invisibleWalls.armoryBarrier_Cheaters

    
}

workspace.resources.RemoteFunction:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
})
P:AddTextbox({
    Name = "Kidnap",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary) Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
end
})
P:AddTextbox({
    Name = "Delay",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local args = {
					[1] = "resetNetworkOwnership",
					[2] = Player.Character.HumanoidRootPart,
					[3] = true

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
})
P:AddTextbox({
    Name = "Delay v2",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
while wait (0) do
local Player = game.Players[Value]
local args = {
					[1] = "resetNetworkOwnership",
					[2] = Player.Character.HumanoidRootPart,
					[3] = true

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
end
})
P:AddTextbox({
    Name = "Delay v3",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
while wait (0) do
local Player = game.Players[Value]
local args = {
					[1] = "resetNetworkOwnership",
					[2] = Player.Character.Head,
					[3] = true

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
end
})
P:AddTextbox({
    Name = "Delay v4",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
while wait (0) do
local Player = game.Players[Value]
local args = {
					[1] = "resetNetworkOwnership",
					[2] = Player.Character["Left Arm"],
					[3] = true

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
end
})
P:AddTextbox({
    Name = "Destroy",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
local args = {
    [1] = "giveRiotShield",
    [2] = game:GetService("Workspace").FloorGrass
}

workspace.resources.RemoteFunction:InvokeServer(unpack(args))
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
end
})
P:AddTextbox({
    Name = "Disable",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
game.Workspace.resources.RemoteEvent:FireServer("becomeHostile")
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
    local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",game.Players.LocalPlayer.Character.HumanoidRootPart)
local args = {
    [1] = "giveRiotShield",
    [2] = game:GetService("Workspace").chainWall
}

workspace.resources.RemoteFunction:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end
})
P:AddTextbox({
    Name = "Troll",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
    local Player = game.Players[Value]
    local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",game.Players.LocalPlayer.Character.HumanoidRootPart)
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
    end
})
P:AddTextbox({
    Name = "Grab",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",game.Players.LocalPlayer.Character.HumanoidRootPart)
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
end
})
P:AddTextbox({
    Name = "KillV2",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
local args = {
    [1] = "giveRiotShield",
    [2] = game:GetService("Workspace").FloorGrass
}

workspace.resources.RemoteFunction:InvokeServer(unpack(args))
wait(1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
end
})
P:AddTextbox({
    Name = "Control",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)

local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary) Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)

local args = {
					[1] = "resetNetworkOwnership",
					[2] = Player.Character.HumanoidRootPart,
					[3] = true

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))

end
})
P:AddTextbox({
    Name = "Control",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
local Player = game.Players[Value]
local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local Upsilon = require(workspace.upsilonLibrary)

wait(0.5)

local playerModel = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
if playerModel then
    playerModel:Destroy()
end

wait(0.5)

local ohString2 = "reloadMe"
workspace.resources.RemoteEvent:FireServer(ohString2)

wait(0.8)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition

wait(0.5)

if game.Players:FindFirstChild(targetPlayerName) then
    Upsilon.InvokeServer("giveRiotShield", game.Players[Player].Character.Torso)
    
    wait(0.5)
    
    ohString2 = "reloadMe" 
    workspace.resources.RemoteEvent:FireServer(ohString2)
    
    wait(0.7)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition
end
end    
})
P:AddTextbox({
    Name = "Studio Asset Import (Beta)",
    Default = "11558880412",
    TextDisappear = false,
    Callback = function(Value)
    local asset = game:GetObjects("rbxassetid:Value")[1]
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Place Model"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
local lib = require(game:GetService("Workspace").upsilonLibrary)
Slide = asset
				Slide.Name = "FE Slide"
				Slide.Parent = ScriptFolder
				local function paaart(part,parent) -- This is for Effects/Creating parts without Looping
					local properties = {
						["TopSurface"] = blah, 
						["Material"] = part.Material,
						["Reflectance"] = part.Reflectance,
						["BrickColor"] = part.BrickColor,
						["Transparency"] = part.Transparency,
						["Size"] = part.Size,
						["Position"] = pos,
						["CanCollide"] = part.CanCollide,
						["Anchored"] = part.Anchored,
						["Shape"] = part.Shape,
						["Velocity"] = part.Velocity,
						["Parent"] = parent,
						["Orientation"] = part.Orientation
					}
					
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
				end


				for i,v in pairs(Slide:GetDescendants()) do
					if v:IsA("Part") then
						if v.Name == "Green" then
							v.Velocity = Vector3.new(-50,0,0)
						end
						if v.Name == "GreenShifted" then
							v.Velocity = Vector3.new(-50,0,-10)
						end
						if v.Name == "Red" then
							v.Velocity = Vector3.new(50,0,0)
						end
						if v.Name == "RedShifted" then
							v.Velocity = Vector3.new(50,0,-10)
						end
         if v:IsA("Part") then
						if v.Name == "Green" then
							v.Material = Enum.Material.SmoothPlastic
						end
   if v.Name == "GreenShifted" then
							v.Material = Enum.Material.SmoothPlastic
						end
       if v.Name == "Red" then
							v.Material = Enum.Material.SmoothPlastic
						end
      if v.Name == "RedShifted" then
							v.Material = Enum.Material.SmoothPlastic
						end
         end
					end
				end
      while wait(0.1) do
				for i,v in pairs(Slide:GetDescendants()) do
					if v:IsA("Part") then
						paaart(v,workspace)
           end
        end
				end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end    
})
P:AddButton({
    Name = "Freeze All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local players = game:GetService("Players")
local characterShields = {}

local function createShield(player)
    local character = player.Character
    local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

    if not torso then
        return
    end

    local shield = Instance.new("Part")
    shield.Parent = Workspace
    shield.Size = Vector3.new(6, 6, 6)
    shield.BrickColor = BrickColor.new(Color3.new(0, 0, 1)) -- Start with red color
    shield.Material = Enum.Material.Ice
    shield.Transparency = 0.15
    shield.Anchored = true
    shield.CastShadow = false
    shield.CanCollide = false

    characterShields[player] = shield

    local hue = 0
    local targetHue = 0
    local colorChangeSpeed = 0.15

    game:GetService("RunService").Heartbeat:Connect(function()
        if not player.Character or not player.Character:FindFirstChild("Torso") then
            return
        end
        local targetCFrame = player.Character.Torso.CFrame
        shield.CFrame = targetCFrame
        hue = hue + (targetHue - hue) * colorChangeSpeed
        color = Color3.fromRGB(0, 100, 150)
        color = Color3.fromRGB(0, 100, 150)
        shield.BrickColor = BrickColor.new(23)
        if math.abs(targetHue - hue) < colorChangeSpeed then
            targetHue = targetHue + 60 
            if targetHue > 360 then
                targetHue = 60
            end
        end
        local properties = {
            ["CanCollide"] = true,
            ["Parent"] = Workspace,
            ["Anchored"] = true,
            ["BrickColor"] = shield.BrickColor,
            ["Name"] = "zapChain",
            ["Velocity"] = Vector3.new(100, 0, 0),
            ["Position"] = shield.Position,
            ["Material"] = shield.Material,
            ["Shape"] = shield.Shape,
            ["Size"] = shield.Size,
            ["CastShadow"] = false,
            ["Transparency"] = 0.15
        }
        lib.FireOtherClients("drawLaser", shield.Position, shield.Position, properties)
    end)
end

local function removeShield(player)
    if characterShields[player] then
        characterShields[player]:Destroy()
        characterShields[player] = nil
    end
end

players.PlayerAdded:Connect(function(player)
    createShield(player)
end)

players.PlayerRemoving:Connect(function(player)
    removeShield(player)
end)

for _, player in ipairs(players:GetPlayers()) do
    createShield(player)
end
end    
})


P:AddButton({
    Name = "Fence Tool",
    Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createSpeedPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local le = Instance.new("Part")
    le.Parent = Workspace
    le.TopSurface = "Smooth"
    le.Material = Enum.Material.WoodPlanks
    le.Reflectance = 0
    le.CanCollide = true
    le.Anchored = true
    le.Size = Vector3.new(50, 30, 1)
    le.CFrame = cframe
    le.BrickColor = BrickColor.new("217")
    le.Transparency = transparency
    le.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = Enum.Material.WoodPlanks,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(50, 30, 1),
        ["BrickColor"] = BrickColor.new("217"),
        ["CFrame"] = cframe,
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }
    while wait(0.000000000000001) do
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

end 
end
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Fence"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
while wait(0.000000000000001) do
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 0.00001, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSpeedPart(mouse.Target, mouse.Target.Size + Vector3.new(0.000, 0.000, 0.000), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end
end)
end    
})
P:AddButton({
    Name = "Load Fortress",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
local Bubble1 = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
local Bubble4 = Instance.new("Part")
local Bubble5 = Instance.new("Part")
local Bubble6 = Instance.new("Part")
local Bubble7 = Instance.new("Part")
local Bubble8 = Instance.new("Part")
local Bubble9 = Instance.new("Part")
local Bubble10 = Instance.new("Part")
local Bubble11 = Instance.new("Part")
local Bubble12 = Instance.new("Part")
local Bubble13 = Instance.new("Part")
local Bubble14 = Instance.new("Part")
local Bubble15 = Instance.new("Part")
local Bubble16 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(312.43310546875, 312.43310546875, 312.43310546875)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.Neon
      Bubble.CFrame = CFrame.new(81.9197006225586, 989.710205078125, -1593.4500732421875) * CFrame.Angles(-0, 0, -1.5707963705062866)
		Bubble.Transparency = 0

Bubble1.Parent = Workspace
		Bubble1.Size = Vector3.new(2047.93310546875, 312.43310546875, 191.73300170898438)
		Bubble1.CastShadow = false
		Bubble1.CanCollide = true
		Bubble1.Anchored = true
		Bubble1.Shape = Enum.PartType.Cylinder
		Bubble1.BrickColor = BrickColor.new("21")
		Bubble1.Material = Enum.Material.Neon
      Bubble1.CFrame = CFrame.new(81.9197006225586, 4137.3603515625, -1610.800048828125) * CFrame.Angles(-0, 0, -1.5707963705062866)
		Bubble1.Transparency = 0
 
Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(146.6999053955078, 130.60000610351562, 192.60000610351562)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
		Bubble2.Anchored = true
		Bubble2.Shape = Enum.PartType.Block
		Bubble2.BrickColor = BrickColor.new("21")
		Bubble2.Material = Enum.Material.Granite
     Bubble2.CFrame = CFrame.new(134.14990234375, 37.29999923706055, -953.2999877929688) * CFrame.Angles(-0, 0, -0)
		Bubble2.Transparency = 0

Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(187.73300170898438, 349.8326110839844, 183.28199768066406)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
		Bubble3.Shape = Enum.PartType.Block
		Bubble3.BrickColor = BrickColor.new("1003")
		Bubble3.Material = Enum.Material.Slate
     Bubble3.CFrame = CFrame.new(-79.1802978515625, 522.3602294921875, -1593.4500732421875) * CFrame.Angles(-0, 0, -0.6981316804885864)
		Bubble3.Transparency = 0
 
Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(146.6999053955078, 130.60000610351562, 192.60000610351562)
		Bubble4.CastShadow = false
		Bubble4.CanCollide = false
		Bubble4.Anchored = true
		Bubble4.Shape = Enum.PartType.Block
		Bubble4.BrickColor = BrickColor.new("21")
		Bubble4.Material = Enum.Material.Granite
      Bubble4.CFrame = CFrame.new(134.14999389648438, 37.29999923706055, -953.2999877929688) * CFrame.Angles(-0, -0.6981317400932312, -0)
		Bubble4.Transparency = 0

Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(187.73300170898438, 373.1325988769531, 183.28199768066406)
		Bubble5.CastShadow = false
		Bubble5.CanCollide = true
		Bubble5.Anchored = true
		Bubble5.Shape = Enum.PartType.Block
		Bubble5.BrickColor = BrickColor.new("21")
		Bubble5.Material = Enum.Material.Granite
      Bubble5.CFrame = CFrame.new(437.0159912109375, 1056.58935546875, -1592.9434814453125) * CFrame.Angles(-3.1415927410125732, 8.742277657347586e-08, -0.6981314420700073)
		Bubble5.Transparency = 0

Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(187.73300170898438, 373.1325988769531, 183.28199768066406)
		Bubble6.CastShadow = false
		Bubble6.CanCollide = true
		Bubble6.Anchored = true
		Bubble6.Shape = Enum.PartType.Block
		Bubble6.BrickColor = BrickColor.new("21")
		Bubble6.Material = Enum.Material.Granite
      Bubble6.CFrame = CFrame.new(437.0159912109375, 1056.58935546875, -1592.9434814453125) * CFrame.Angles(-3.1415927410125732, 8.742277657347586e-08, -0.6981314420700073)
		Bubble6.Transparency = 0

Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(187.73300170898438, 487.9325866699219, 183.28199768066406)
		Bubble7.CastShadow = false
		Bubble7.CanCollide = true
		Bubble7.Anchored = true
		Bubble7.Shape = Enum.PartType.Block
		Bubble7.BrickColor = BrickColor.new("1003")
		Bubble7.Material = Enum.Material.Slate
		Bubble7.Transparency = 0
     	Bubble7.CFrame = CFrame.new(384.98541259765625, 866.7243041992188, -1592.9437255859375) * CFrame.Angles(-3.1415927410125732, 8.742277657347586e-08, 0.7853981852531433)

Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(187.73300170898438, 373.1325988769531, 183.28199768066406)
		Bubble8.CastShadow = false
		Bubble8.CanCollide = true
		Bubble8.Anchored = true
		Bubble8.Shape = Enum.PartType.Block
		Bubble8.BrickColor = BrickColor.new("1003")
		Bubble8.Material = Enum.Material.Slate
      Bubble8.CFrame = CFrame.new(-285.4056091308594, 1055.73291015625, -1593.4500732421875) * CFrame.Angles(-0, 0, 2.5307273864746094)
		Bubble8.Transparency = 0
 
Bubble9.Parent = Workspace
		Bubble9.Size = Vector3.new(187.73300170898438, 487.9325866699219, 183.28199768066406)
		Bubble9.CastShadow = false
		Bubble9.CanCollide = true
		Bubble9.Anchored = true
		Bubble9.Shape = Enum.PartType.Block
		Bubble9.BrickColor = BrickColor.new("1003")
		Bubble9.Material = Enum.Material.Slate
      Bubble9.CFrame = CFrame.new(-217.02540588378906, 871.1259155273438, -1593.4500732421875) * CFrame.Angles(-0, 0, -2.268928050994873)
		Bubble9.Transparency = 0

 Bubble10.Parent = Workspace
		Bubble10.Size = Vector3.new(187.73300170898438, 349.8326110839844, 183.28199768066406)
		Bubble10.CastShadow = false
		Bubble10.CanCollide = true
		Bubble10.Anchored = true
		Bubble10.Shape = Enum.PartType.Block
		Bubble10.BrickColor = BrickColor.new("1003")
		Bubble10.Material = Enum.Material.Slate
     Bubble10.CFrame = CFrame.new(119.61969757080078, 665.1602172851562, -1593.4500732421875) * CFrame.Angles(-0, 0, -1.5707963705062866)
		Bubble10.Transparency = 0

Bubble11.Parent = Workspace
		Bubble11.Size = Vector3.new(187.73300170898438, 282.5325927734375, 183.28199768066406)
		Bubble11.CastShadow = false
		Bubble11.CanCollide = true
		Bubble11.Anchored = true
		Bubble11.Shape = Enum.PartType.Block
		Bubble11.BrickColor = BrickColor.new("1003")
		Bubble11.Material = Enum.Material.Slate
      Bubble11.CFrame = CFrame.new(284.8597106933594, 551.4035034179688, -1593.4500732421875) * CFrame.Angles(-0, 0, 0.6981316804885864)
		Bubble11.Transparency = 0
  
Bubble12.Parent = Workspace
		Bubble12.Size = Vector3.new(187.73300170898438, 426.8326110839844, 183.28199768066406)
		Bubble12.CastShadow = false
		Bubble12.CanCollide = true
		Bubble12.Anchored = true
		Bubble12.Shape = Enum.PartType.Block
		Bubble12.BrickColor = BrickColor.new("1003")
		Bubble12.Material = Enum.Material.Slate
      Bubble12.CFrame = CFrame.new(384.75, 298.1000061035156, -1593.4500732421875) * CFrame.Angles(-0, 0, -0)
		Bubble12.Transparency = 0
 
Bubble13.Parent = Workspace
		Bubble13.Size = Vector3.new(187.73300170898438, 426.8326110839844, 183.28199768066406)
		Bubble13.CastShadow = false
		Bubble13.CanCollide = true
		Bubble13.Anchored = true
		Bubble13.Shape = Enum.PartType.Block
		Bubble13.BrickColor = BrickColor.new("1003")
		Bubble13.Material = Enum.Material.Slate
      Bubble13.CFrame = CFrame.new(-136.95010375976562, 298.1000061035156, -1593.4500732421875) * CFrame.Angles(-0, 0, -0)
		Bubble13.Transparency = 0

Bubble14.Size = Vector3.new(149.73300170898438, 31.23259925842285, 196.58200073242188)
		Bubble14.CastShadow = false
		Bubble14.CanCollide = true
		Bubble14.Anchored = true
		Bubble14.Shape = Enum.PartType.Block
		Bubble14.BrickColor = BrickColor.new("21")
		Bubble14.Material = Enum.Material.Granite
       Bubble14.CFrame = CFrame.new(134.14990234375, 116.5, -950.7999877929688) * CFrame.Angles(-0, 0, -0)
		Bubble14.Transparency = 0

Bubble15.Parent = Workspace
		Bubble15.Size = Vector3.new(655.7329711914062, 349.8326110839844, 174.3820037841797)
		Bubble15.CastShadow = false
		Bubble15.CanCollide = true
		Bubble15.Anchored = true
		Bubble15.Shape = Enum.PartType.Block
		Bubble15.BrickColor = BrickColor.new("21")
		Bubble15.Material = Enum.Material.Neon
     Bubble15.CFrame = CFrame.new(119.61969757080078, 431.1601867675781, -1603.300048828125) * CFrame.Angles(-0, 0, -1.5707963705062866)
		Bubble15.Transparency = 0

Bubble16.Parent = Workspace
		Bubble16.Size = Vector3.new(711.0330200195312, 49.03260040283203, 674.6820068359375)
		Bubble16.CastShadow = false
		Bubble16.CanCollide = true
		Bubble16.Anchored = true
		Bubble16.Shape = Enum.PartType.Block
		Bubble16.BrickColor = BrickColor.new("21")
		Bubble16.Material = Enum.Material.CrackedLava
     Bubble16.CFrame = CFrame.new(124.69989776611328, 109.19999694824219, -1347.75) * CFrame.Angles(-0, 0, -0)
		Bubble16.Transparency = 0

		function Fort(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
         	["CFrame"] = part.CFrame,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while wait (0.1) do
Bubble16.CFrame = CFrame.new(124.69989776611328, 109.19999694824219, -1347.75) * CFrame.Angles(-0, 0, -0)
Bubble15.CFrame = CFrame.new(119.61969757080078, 431.1601867675781, -1603.300048828125) * CFrame.Angles(-0, 0, -1.5707963705062866)
Bubble14.CFrame = CFrame.new(134.14990234375, 116.5, -950.7999877929688) * CFrame.Angles(-0, 0, -0)
Bubble13.CFrame = CFrame.new(-136.95010375976562, 298.1000061035156, -1593.4500732421875) * CFrame.Angles(-0, 0, -0)
Bubble12.CFrame = CFrame.new(384.75, 298.1000061035156, -1593.4500732421875) * CFrame.Angles(-0, 0, -0)
Bubble11.CFrame = CFrame.new(284.8597106933594, 551.4035034179688, -1593.4500732421875) * CFrame.Angles(-0, 0, 0.6981316804885864)
Bubble10.CFrame = CFrame.new(119.61969757080078, 665.1602172851562, -1593.4500732421875) * CFrame.Angles(-0, 0, -1.5707963705062866)
Bubble9.CFrame = CFrame.new(-217.02540588378906, 871.1259155273438, -1593.4500732421875) * CFrame.Angles(-0, 0, -2.268928050994873)
Bubble8.CFrame = CFrame.new(-285.4056091308594, 1055.73291015625, -1593.4500732421875) * CFrame.Angles(-0, 0, 2.5307273864746094)
Bubble7.CFrame = CFrame.new(384.98541259765625, 866.7243041992188, -1592.9437255859375) * CFrame.Angles(-3.1415927410125732, 8.742277657347586e-08, 0.7853981852531433)
Bubble6.CFrame = CFrame.new(437.0159912109375, 1056.58935546875, -1592.9434814453125) * CFrame.Angles(-3.1415927410125732, 8.742277657347586e-08, -0.6981314420700073)
Bubble5.CFrame = CFrame.new(437.0159912109375, 1056.58935546875, -1592.9434814453125) * CFrame.Angles(-3.1415927410125732, 8.742277657347586e-08, -0.6981314420700073)
Bubble4.CFrame = CFrame.new(134.14999389648438, 37.29999923706055, -953.2999877929688) * CFrame.Angles(-0, -0.6981317400932312, -0)
Bubble3.CFrame = CFrame.new(-79.1802978515625, 522.3602294921875, -1593.4500732421875) * CFrame.Angles(-0, 0, -0.6981316804885864)
Bubble2.CFrame = CFrame.new(134.14990234375, 37.29999923706055, -953.2999877929688) * CFrame.Angles(-0, 0, -0)
Bubble1.CFrame = CFrame.new(81.9197006225586, 4137.3603515625, -1610.800048828125) * CFrame.Angles(-0, 0, -1.5707963705062866)
Bubble.CFrame = CFrame.new(81.9197006225586, 989.710205078125, -1593.4500732421875) * CFrame.Angles(-0, 0, -1.5707963705062866)
			Fort(Bubble)
        Fort(Bubble1)
        Fort(Bubble2)
        Fort(Bubble3)
        Fort(Bubble4)
        Fort(Bubble5)
        Fort(Bubble6)
        Fort(Bubble7)
        Fort(Bubble8)
         Fort(Bubble9)
         Fort(Bubble10)
        Fort(Bubble11)
       Fort(Bubble12)
       Fort(Bubble13)
       Fort(Bubble14)
       Fort(Bubble15)
       Fort(Bubble16)
		end
end    
})
P:AddButton({
    Name = "Load Nature Land",
    Callback = function()
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
local nature = game:GetObjects("rbxassetid://11441651991")[1]
				nature.Parent = Workspace
				for i,v in pairs(nature:GetDescendants()) do
					if v:IsA("Part") then
						CreatePermPart(v,workspace)
						v.Transparency = 0
					end
				end
end    
})
P:AddButton({
    Name = "Load Gaming Atv",
    Callback = function()
    local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		local Bubble2 = Instance.new("Part")
		local Bubble3 = Instance.new("Part")
		local Bubble4 = Instance.new("Part")
		local Bubble5 = Instance.new("Part")
		local Bubble6 = Instance.new("Part")
		local Bubble7 = Instance.new("Part")
		local Bubble8 = Instance.new("Part")
		local Bubble9 = Instance.new("Part")
		local Bubble91 = Instance.new("Part")
		local Bubble10 = Instance.new("Part")
		local Bubble11 = Instance.new("Part")
		local Bubble12 = Instance.new("Part")
		local Bubble13 = Instance.new("Part")
		local Bubble14 = Instance.new("Part")
		local Bubble15 = Instance.new("Part")
		local Bubble16 = Instance.new("Part")
		local Bubble17 = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(72.00499725341797, 1.0049999952316284, 57.005001068115234)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.DiamondPlate
		Bubble.Transparency = 0
        Bubble.CFrame = CFrame.new(10, 1.5, -235.5) * CFrame.Angles(-0, 0, -0)
        
        Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(61.005001068115234, 1.0049999952316284, 57.005001068115234)
		Bubble2.CastShadow = true
		Bubble2.CanCollide = false
		Bubble2.Anchored = true
		Bubble2.BrickColor = BrickColor.new("21")
		Bubble2.Material = Enum.Material.DiamondPlate
		Bubble2.Transparency = 0
        Bubble2.CFrame = CFrame.new(4.5, 1.5, -292.5) * CFrame.Angles(-0, 0, -0)
 
 
 Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(58.005001068115234, 1.0049999952316284, 57.005001068115234)
		Bubble3.CastShadow = true
		Bubble3.CanCollide = false
		Bubble3.Anchored = true
		Bubble3.BrickColor = BrickColor.new("21")
		Bubble3.Material = Enum.Material.DiamondPlate
		Bubble3.Transparency = 0
        Bubble3.CFrame = CFrame.new(3, 1.5, -349.5) * CFrame.Angles(-0, 0, -0)
        
        Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(0.5049999952316284, 12.005000114440918, 7.505000114440918)
		Bubble4.CastShadow = true
		Bubble4.CanCollide = false
		Bubble4.Anchored = true
		Bubble4.BrickColor = BrickColor.new("21")
		Bubble4.Material = Enum.Material.Neon
		Bubble4.Transparency = 0
        Bubble4.CFrame = CFrame.new(16.782665252685547, 8, -368.7173767089844) * CFrame.Angles(-3.1415927410125732, -0.785359263420105, -3.1415927410125732)
        
        Bubble5.Parent = Workspace
		Bubble5.Size = Vector3.new(0.5049999952316284, 12.005000114440918, 23.505000114440918)
		Bubble5.CastShadow = true
		Bubble5.CanCollide = false
		Bubble5.Anchored = true
		Bubble5.BrickColor = BrickColor.new("21")
		Bubble5.Material = Enum.Material.Neon
		Bubble5.Transparency = 0
        Bubble5.CFrame = CFrame.new(22.793109893798828, 8, -362.7069091796875) * CFrame.Angles(-3.1415927410125732, -0.7853593826293945, -3.1415927410125732)
        
        Bubble6.Parent = Workspace
		Bubble6.Size = Vector3.new(1.0049999952316284, 6.005000114440918, 31.0049991607666)
		Bubble6.CastShadow = true
		Bubble6.CanCollide = false
		Bubble6.Anchored = true
		Bubble6.BrickColor = BrickColor.new("21")
		Bubble6.Material = Enum.Material.Neon
		Bubble6.Transparency = 0
            Bubble6.CFrame = CFrame.new(-8.5, 7, -377) * CFrame.Angles(0, 1.5707963705062866, 0)
            
            Bubble7.Parent = Workspace
		Bubble7.Size = Vector3.new(1.0049999952316284, 6.005000114440918, 18.0049991607666)
		Bubble7.CastShadow = true
		Bubble7.CanCollide = false
		Bubble7.Anchored = true
		Bubble7.BrickColor = BrickColor.new("21")
		Bubble7.Material = Enum.Material.Neon
		Bubble7.Transparency = 0
            Bubble7.CFrame = CFrame.new(31, 7, -344) * CFrame.Angles(-0, 0, -0)
            
            Bubble8.Parent = Workspace
		Bubble8.Size = Vector3.new(1.0049999952316284, 6.005000114440918, 9.005000114440918)
		Bubble8.CastShadow = true
		Bubble8.CanCollide = false
		Bubble8.Anchored = true
		Bubble8.BrickColor = BrickColor.new("21")
		Bubble8.Material = Enum.Material.Neon
		Bubble8.Transparency = 0
            Bubble8.CFrame = CFrame.new(-25, 6.999999523162842, -371.5) * CFrame.Angles(-0, 0, -0)
            Bubble9.Parent = Workspace
		Bubble9.Size = Vector3.new(1.0049999952316284, 4.005000114440918, 25.0049991607666)
		Bubble9.CastShadow = true
		Bubble9.CanCollide = false
		Bubble9.Anchored = true
		Bubble9.BrickColor = BrickColor.new("21")
		Bubble9.Material = Enum.Material.Neon
		Bubble9.Transparency = 0
            Bubble9.CFrame = CFrame.new(-25, 8, -347.5) * CFrame.Angles(-0, 0, -0)

Bubble91.Parent = Workspace
		Bubble91.Size = Vector3.new(1.0049999952316284, 4.005000114440918, 25.0049991607666)
		Bubble91.CastShadow = true
		Bubble91.CanCollide = false
		Bubble91.Anchored = true
		Bubble91.BrickColor = BrickColor.new("21")
		Bubble91.Material = Enum.Material.Neon
		Bubble91.Transparency = 0
            Bubble91.CFrame = CFrame.new(-25, 8, -347.5) * CFrame.Angles(-0, 0, -0)
            
            Bubble10.Parent = Workspace
		Bubble10.Size = Vector3.new(21.0049991607666, 1.0049999952316284, 43.005001068115234)
		Bubble10.CastShadow = true
		Bubble10.CanCollide = false
		Bubble10.Anchored = true
		Bubble10.BrickColor = BrickColor.new("1009")
		Bubble10.Material = Enum.Material.Brick
		Bubble10.Transparency = 0
            Bubble10.CFrame = CFrame.new(-13.5, 2, -275.5) * CFrame.Angles(-0, 0, -0)
            
            Bubble11.Parent = Workspace
		Bubble11.Size = Vector3.new(1.0049999952316284, 4.005000114440918, 25.0049991607666)
		Bubble11.CastShadow = true
		Bubble11.CanCollide = false
		Bubble11.Anchored = true
		Bubble11.BrickColor = BrickColor.new("21")
		Bubble11.Material = Enum.Material.Neon
		Bubble11.Transparency = 0
            Bubble11.CFrame = CFrame.new(-25, 8, -281.5) * CFrame.Angles(-0, 0, -0)
            
            Bubble12.Parent = Workspace
		Bubble12.Size = Vector3.new(1.0049999952316284, 6.005000114440918, 48.005001068115234)
		Bubble12.CastShadow = true
		Bubble12.CanCollide = false
		Bubble12.Anchored = true
		Bubble12.BrickColor = BrickColor.new("21")
		Bubble12.Material = Enum.Material.Neon
		Bubble12.Transparency = 0
            Bubble12.CFrame = CFrame.new(34, 7, -294) * CFrame.Angles(-3.1415927410125732, 0, -3.1415927410125732)
            
            Bubble13.Parent = Workspace
		Bubble13.Size = Vector3.new(0.5049999952316284, 12.005000114440918, 7.505000114440918)
		Bubble13.CastShadow = true
		Bubble13.CanCollide = false
		Bubble13.Anchored = true
		Bubble13.BrickColor = BrickColor.new("21")
		Bubble13.Material = Enum.Material.Neon
		Bubble13.Transparency = 0
            Bubble13.CFrame = CFrame.new(-24.999984741210938, 8, -229.75) * CFrame.Angles(-3.1415927410125732, 0, -3.1415927410125732)
            
            Bubble14.Parent = Workspace
		Bubble14.Size = Vector3.new(0.5049999952316284, 12.005000114440918, 7.505000114440918)
		Bubble14.CastShadow = true
		Bubble14.CanCollide = false
		Bubble14.Anchored = true
		Bubble14.BrickColor = BrickColor.new("21")
		Bubble14.Material = Enum.Material.Neon
		Bubble14.Transparency = 0
            Bubble14.CFrame = CFrame.new(-25, 8, -221.25) * CFrame.Angles(-3.1415927410125732, 0, -3.1415927410125732)
            
            Bubble15.Parent = Workspace
		Bubble15.Size = Vector3.new(0.5049999952316284, 12.005000114440918, 23.505000114440918)
		Bubble15.CastShadow = true
		Bubble15.CanCollide = false
		Bubble15.Anchored = true
		Bubble15.BrickColor = BrickColor.new("21")
		Bubble15.Material = Enum.Material.Neon
		Bubble15.Transparency = 0
            Bubble15.CFrame = CFrame.new(47.00001525878906, 8, -237.75) * CFrame.Angles(-3.1415927410125732, 0, -3.1415927410125732)

Bubble16.Parent = Workspace
		Bubble16.Size = Vector3.new(1.0049999952316284, 5.005000114440918, 94.005000114440918)
		Bubble16.CastShadow = true
		Bubble16.CanCollide = false
		Bubble16.Anchored = true
		Bubble16.BrickColor = BrickColor.new("21")
		Bubble16.Material = Enum.Material.Neon
		Bubble16.Transparency = 0
            Bubble16.CFrame = CFrame.new(47, 25.5, -255) * CFrame.Angles(-3.1415927410125732, 0, -3.1415927410125732)
            
            Bubble17.Parent = Workspace
		Bubble17.Size = Vector3.new(8, 8,8)
		Bubble17.CastShadow = true
		Bubble17.CanCollide = true
		Bubble17.Anchored = false
		Bubble17.BrickColor = BrickColor.new("1009")
		Bubble17.Material = Enum.Material.ForceField
		Bubble17.Transparency = 0
		Bubble17.Shape = Enum.PartType.Ball
            Bubble17.CFrame = CFrame.new(10, 1.5, -235.5)
            


		function Mc(part)
			local properties = {
				["CanCollide"] = part.CanCollide,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while wait (0) do
			Mc(Bubble)
			Mc(Bubble2)
			Mc(Bubble3)
			Mc(Bubble4)
			Mc(Bubble5)
			Mc(Bubble6)
		    Mc(Bubble7)
		    Mc(Bubble8)
		    Mc(Bubble9)
		    Mc(Bubble91)
		    Mc(Bubble10)
		    Mc(Bubble11)
		    Mc(Bubble12)
		    Mc(Bubble13)
		    Mc(Bubble14)
		    Mc(Bubble15)
		    Mc(Bubble16)
		    Mc(Bubble17)
		end
    end    
})
P:AddButton({
    Name = "Clone Tool",
    Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPaintPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local paint = Instance.new("Part")
    paint.Parent = Workspace
    paint.TopSurface = "Smooth"
    paint.Material = material
    paint.Reflectance = 0
    paint.CanCollide = true
    paint.Anchored = true
    paint.Size = size
    paint.CFrame = cframe
    paint.Color = color
    paint.Transparency = transparency
    paint.Parent = Workspace["Secret Agent Shades"]

    local properties = {
        ["TopSurface"] = "Smooth",
        ["Material"] = material,
        ["Reflectance"] = 0,
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = size,
        ["CFrame"] = cframe,
        ["Color"] = color,
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    while wait (0) do
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

end
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Clone tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()

    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPaintPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
P:AddButton({
    Name = "Glitch Tool",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary) game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1


			function createpaint(part,Size,CFrame,Material,e,Transparency)
while wait (1) do
				local properties = {
					["TopSurface"] = DiscordInvite,
					["Material"] = Material,
					["Reflectance"] = 0,
					["CanCollide"] = true,
					["Anchored"] = true,
					["Size"] = Size,
                    ["Name"] = "zapChain",
                    ["Velocity"] = Vector3.new(9999,0,0),
					["CFrame"] = CFrame,
					["Color"] = Color,
					["Transparency"] = Transparency,
					["Parent"] = Workspace["Secret Agent Shades"]
				}
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
end
			local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			tool.Name = "Glitch tool"
			tool.Parent = game.Players.LocalPlayer.Backpack
			local Player = Game.Players.LocalPlayer
			local Mouse = Player:GetMouse()
			tool.RequiresHandle = false
			tool.Activated:connect(function()
				if Mouse.Target:IsA("BasePart") then
					local paint = Instance.new("Part")
					paint.Parent = Workspace
					createpaint(paint,Mouse.Target.Size+Vector3.new(0.005,0.005,0.005),Mouse.Target.CFrame,Mouse.Target.Material,Mouse.Target.Color,Mouse.Target.Transparency)
					paint:Destroy()
				end
			end)
end    
})
P:AddButton({
    Name = "Orb Tool",
    Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createPajPart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = false
    pa.Anchored = true
    pa.Size = Vector3.new(10, 10, 10)
    pa.CFrame = cframe
    pa.Color = Color3.new(math.random(1),math.random(1),math.random(1))
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
    pa.Shape = Enum.PartType.Ball

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = false,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8, 8, 8),
        ["CFrame"] = cframe,
        ["Shape"] = Enum.PartType.Ball,
        ["Color"] = Color3.new(math.random(1),math.random(1),math.random(1)),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(0.7)
    pa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Orb Tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    for i = 1, 4 do  
	
	for _, v in pairs(game.Players:GetChildren()) do
	game.Workspace.resources.RemoteEvent:FireServer("cuff", v) 
	end
	
	wait(0)
	
	end
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createPajPart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end    
})
P:AddButton({
    Name = "Bubble Shield All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local players = game:GetService("Players")
local characterShields = {}

local function createShield(player)
    local character = player.Character
    local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

    if not torso then
        return
    end

    local shield = Instance.new("Part")
    shield.Parent = Workspace
    shield.Shape = Enum.PartType.Ball
    shield.Size = Vector3.new(20, 20, 20)
    shield.BrickColor = BrickColor.new(Color3.new(1, 0, 0)) -- Start with red color
    shield.Material = Enum.Material.ForceField
    shield.Transparency = 0
    shield.Anchored = true
    shield.CastShadow = false
    shield.CanCollide = false

    characterShields[player] = shield

    local hue = 0
    local targetHue = 0
    local colorChangeSpeed = 0.15

    game:GetService("RunService").Heartbeat:Connect(function()
        if not player.Character or not player.Character:FindFirstChild("Torso") then
            return
        end
        local targetCFrame = player.Character.Torso.CFrame
        shield.CFrame = targetCFrame
        hue = hue + (targetHue - hue) * colorChangeSpeed
        color = Color3.fromHSV(hue/360, 1, 1)
        color = Color3.new(math.clamp(color.r, 0, 1), math.clamp(color.g, 0, 1), math.clamp(color.b, 0, 1))
        shield.BrickColor = BrickColor.new(color)
        if math.abs(targetHue - hue) < colorChangeSpeed then
            targetHue = targetHue + 60 
            if targetHue > 360 then
                targetHue = 60
            end
        end
        local properties = {
            ["CanCollide"] = false,
            ["Parent"] = Workspace,
            ["Anchored"] = true,
            ["BrickColor"] = shield.BrickColor,
            ["RotVelocity"] = shield.RotVelocity,
            ["Name"] = shield.Name,
            ["Position"] = shield.Position,
            ["Material"] = shield.Material,
            ["Shape"] = shield.Shape,
            ["Size"] = shield.Size,
            ["CastShadow"] = false,
            ["Transparency"] = 1
        }
        lib.FireOtherClients("drawLaser", shield.Position, shield.Position, properties)
    end)
end

local function removeShield(player)
    if characterShields[player] then
        characterShields[player]:Destroy()
        characterShields[player] = nil
    end
end

players.PlayerAdded:Connect(function(player)
    createShield(player)
end)

players.PlayerRemoving:Connect(function(player)
    removeShield(player)
end)

for _, player in ipairs(players:GetPlayers()) do
    createShield(player)
end
end
})
P:AddButton({
    Name = "Fly All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local players = game:GetService("Players")
local characterShields = {}

local function createShield(player)
    local character = player.Character
    local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

    if not torso then
        return
    end

    local shield = Instance.new("Part")
    shield.Parent = Workspace
    shield.Shape = Enum.PartType.Ball
    shield.Size = Vector3.new(20, 20, 20)
    shield.BrickColor = BrickColor.new(Color3.new(1, 0, 0)) -- Start with red color
    shield.Material = Enum.Material.ForceField
    shield.Transparency = 0.9
    shield.Anchored = true
    shield.CastShadow = false
    shield.CanCollide = false

    characterShields[player] = shield

    local hue = 0
    local targetHue = 0
    local colorChangeSpeed = 0.15

    game:GetService("RunService").Heartbeat:Connect(function()
        if not player.Character or not player.Character:FindFirstChild("Torso") then
            return
        end
        local targetCFrame = player.Character.Torso.CFrame
        shield.CFrame = targetCFrame
        hue = hue + (targetHue - hue) * colorChangeSpeed
        color = Color3.fromHSV(hue/360, 1, 1)
        color = Color3.new(math.clamp(color.r, 0, 1), math.clamp(color.g, 0, 1), math.clamp(color.b, 0, 1))
        shield.BrickColor = BrickColor.new(color)
        if math.abs(targetHue - hue) < colorChangeSpeed then
            targetHue = targetHue + 60 
            if targetHue > 360 then
                targetHue = 60
            end
        end
        local properties = {
            ["CanCollide"] = true,
            ["Parent"] = Workspace,
            ["Anchored"] = true,
            ["BrickColor"] = shield.BrickColor,
            ["RotVelocity"] = shield.RotVelocity,
            ["Name"] = shield.Name,
            ["Position"] = shield.Position,
            ["Material"] = shield.Material,
            ["Shape"] = shield.Shape,
            ["Size"] = shield.Size,
            ["CastShadow"] = false,
            ["Transparency"] = 0.9
        }
        lib.FireOtherClients("drawLaser", shield.Position, shield.Position, properties)
    end)
end

local function removeShield(player)
    if characterShields[player] then
        characterShields[player]:Destroy()
        characterShields[player] = nil
    end
end

players.PlayerAdded:Connect(function(player)
    createShield(player)
end)

players.PlayerRemoving:Connect(function(player)
    removeShield(player)
end)

for _, player in ipairs(players:GetPlayers()) do
    createShield(player)
end
end
})
P:AddButton({
	Name = "Blind Others",
	Callback = function()

        local lib = require(game:GetService("Workspace").upsilonLibrary)
local laser = Instance.new("Part")
				laser.Parent = Workspace
				function createlaser(part,start,endpos)
					local properties = {
						["Material"] = Enum.Material.Metal,
						["Color"] = LaserESPColor,
						["Size"] =Vector3.new(0, 8000, 8000),
						["Material"] = Enum.Material.Neon,
						["Reflectance"] = 0.5
					}
		firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)							lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
for i = 1, 100000000 do  
					for _,v in pairs(game.Players:GetPlayers()) do						createlaser(laser,game.Players.LocalPlayer.Character.Head.Position,v.Character.Head.Position)
					end
	
	wait(0)
	
	end
end    
})
P:AddButton({
    Name = "Load Invisible Walls",
    Callback = function()
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
for i,v in pairs(workspace.ignore:GetDescendants()) do
   if v:IsA("BasePart") then
v.Transparency = 0
CreatePermPart(v,workspace)
end
end
end
})
P:AddButton({
    Name = "Load Invisible Walls 2",
    Callback = function()
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = Enum.PartType.Block,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
for i,v in pairs(workspace.ignore:GetDescendants()) do
   if v:IsA("BasePart") then
v.Transparency = 0
CreatePermPart(v,workspace)
end
end
end
})
P:AddButton({
    Name = "Spawn Balls",
    Callback = function()
while wait (0) do
loadstring(game:HttpGet("https://pastebin.com/raw/KJNnaY2x"))()			
end
end
})
Pl:AddButton({
	Name = "Floor Is Lava!!! ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(380, 0.5, 380)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.Neon
     Bubble.BrickColor = BrickColor.new("133")
Bubble.Velocity = Vector3.new(-99999,0,0)
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
          ["TopSurface"] = blah, 
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
          ["Velocity"] = part.Velocity,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
 Vector3.new(-10.222862243652344, 1, 21.555912017822266)

			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "Treadmill Prison",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(380, 0.5, 380)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.Fabric
Bubble.Velocity = Vector3.new(-50,0,0)
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
          ["TopSurface"] = blah, 
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
          ["Velocity"] = part.Velocity,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
 Vector3.new(-10.222862243652344, 1, 21.555912017822266)

			Shield(Bubble)
		end
end    
})

Pl:AddButton({
	Name = "Load Wall",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(4, 400, 400)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Color = Color3.fromRGB(109, 110, 108)
		Bubble.Material = Enum.Material.DiamondPlate
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
  Vector3.new(-301.8550720214844, -23.651933670043945, -828.6190185546875)
   
			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "Glass Base",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(80, 20, 80)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Color = Color3.fromRGB(255, 255, 255)
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
 Vector3.new(214.51821899414062, 140.5570526123047, 380.7381286621094)
			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "FE Sandpit 1 ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(500, 1,500)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("224")
		Bubble.Material = Enum.Material.Sand
		Bubble.Transparency = 0
    Bubble.Velocity = Vector3.new(-16,0,0)

		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
          ["Velocity"] = part.Velocity,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
   Vector3.new(371.1947021484375, -28, -833.9264526367188)

			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "FE Sandpit 2 ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(19, 250,800)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("217")
		Bubble.Material = Enum.Material.Slate
		Bubble.Transparency = 0

		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position =  

  Vector3.new(199.0400390625, -28, -984.3846435546875)

			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "FE Sandpit 3 ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(410, 12,817)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("217")
		Bubble.Material = Enum.Material.Slate
		Bubble.Transparency = 0

		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
  Vector3.new(413.3041687011719, 92.76010131835938, -1009.8097534179688)

			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "FE Sandpit 4 ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(150, 150,150)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("224")
		Bubble.Material = Enum.Material.Sand
		Bubble.Transparency = 0
     Bubble.Shape = Enum.PartType.Ball

		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
          ["Velocity"] = part.Velocity,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
   Vector3.new(371.1947021484375, -28, -833.9264526367188)

			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "FE Sandpit 5 ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(100, 100,100)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("224")
		Bubble.Material = Enum.Material.Sand
		Bubble.Transparency = 0
     Bubble.Shape = Enum.PartType.Ball

		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
          ["Velocity"] = part.Velocity,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
   Vector3.new(371.1947021484375, -28, -833.9264526367188) + Vector3.new(0,100,0)

			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "FE Sandpit 6 ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(50, 50,50)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("224")
		Bubble.Material = Enum.Material.Sand
		Bubble.Transparency = 0
     Bubble.Shape = Enum.PartType.Ball

		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
          ["Velocity"] = part.Velocity,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000000001) do
			Bubble.Position = 
   Vector3.new(371.1947021484375, -28, -833.9264526367188) + Vector3.new(0,50,0)

			Shield(Bubble)
		end
end    
})
Pl:AddButton({
	Name = "Load Ice Arena ",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
local Bubble2 = Instance.new("Part")
local Bubble3 = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(300, 1,300)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("42")
		Bubble.Material = Enum.Material.Ice
		Bubble.Position = 
   Vector3.new(-0.1046295166015625, -28, -710.0359497070312)
		Bubble.Transparency = 0
    Bubble.Velocity = Vector3.new(-9,0,0)

	Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(7, 16,300)
		Bubble2.CastShadow = false
		Bubble2.CanCollide = true
		Bubble2.Anchored = true
		Bubble2.BrickColor = BrickColor.new("27")
		Bubble2.Material = Enum.Material.DiamondPlate
		Bubble2.Position = 
     Vector3.new(-154.31747436523438, -28, -680.4530639648438)
		Bubble2.Transparency = 0

Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(7, 16,300)
		Bubble3.CastShadow = false
		Bubble3.CanCollide = true
		Bubble3.Anchored = true
		Bubble3.BrickColor = BrickColor.new("27")
		Bubble3.Material = Enum.Material.DiamondPlate
		Bubble3.Position = 
  Vector3.new(115.43183898925781, -28, -696.0162353515625)
		Bubble3.Transparency = 0


		function Arena(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
          ["Velocity"] = part.Velocity,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
			
        while wait (0) do
			Arena(Bubble)
			Arena(Bubble2)
			Arena(Bubble3)
		end
end    
})



Pl:AddButton({
	Name = "Load Office",
	Callback = function()
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
local Decorations = game:GetObjects("rbxassetid://11558880412")[1]
				Decorations.Parent = workspace
				for i,v in pairs(Decorations:GetDescendants()) do
					if v:IsA("Part") then -- and not v:IsA("UnionOperation") and not v:IsA("MeshPart") and not v:IsA("Wedge")
						if v:FindFirstChildOfClass("SpecialMesh") or v:FindFirstChildOfClass("BlockMesh") then
							v:Destroy()
						end
						v.Anchored = true
CreatePermPart(v,workspace)
end
end
end    
})
Pl:AddButton({
	Name = "Spawn Sales ",
	Callback = function()
for i,v in pairs(workspace.passSale:GetChildren()) do
				workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", v)
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "RiotShield" then
						game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
						v:Destroy()
					end
          end
end    
})
Pl:AddButton({
	Name = "Fugitive All ",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)
for i,v in next, game.Players:GetPlayers() do
    Upsilon.InvokeServer("giveRiotShield",v.Character.HumanoidRootPart)
end
for i,v in next, game.Players:GetPlayers() do

    task.defer(firetouchinterest,v.Character.Head,workspace["robber spawn"],0)
end
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
end    
})

Pl:AddButton({
	Name = "Cuff All ",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/aAXKgiV8"))()
end    
})
Pl:AddButton({
	Name = "Seat  All At Tables",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local part = Instance.new("Part")
				function createpart(part,parent,e)
					local properties = {
						["Position"] = Vector3.new(0.5, 2.299999952316284, -104),
						["Transparency"] = 1,
						["BrickColor"] = BrickColor.new("Really black"),
						["CanCollide"] = true,
						["Parent"] = parent,
						["Material"] = Enum.Material.ForceField,
						["Anchored"] = true,
						["Size"] = Vector3.new(90.00009999999747378752, 90.00009999999747378752, 90.00009999999747378752)
					}
					lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					createpart(part,game.Players.LocalPlayer.Character[v.Name])
				end 
end    
})
Pl:AddButton({
	Name = "Fe laser esp",
	Callback = function()

        local lib = require(game:GetService("Workspace").upsilonLibrary)
local laser = Instance.new("Part")
				laser.Parent = Workspace
				function createlaser(part,start,endpos)
					local properties = {
						["Material"] = Enum.Material.Metal,
						["Color"] = LaserESPColor,
						["Material"] = Enum.Material.Neon,
						["Reflectance"] = 0.5
					}
		firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)							lib.FireOtherClients("drawLaser",start,endpos,properties)
				end
for i = 1, 100000000 do  
					for _,v in pairs(game.Players:GetPlayers()) do						createlaser(laser,game.Players.LocalPlayer.Character.Head.Position,v.Character.Head.Position)
					end
	
	wait(0)
	
	end
end    
})

Pl:AddButton({
	Name = "noclip ",
	Callback = function()
local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip()
end    
})

Pl:AddButton({
	Name = "Grab Fake Id cards",
	Callback = function()
for i = 1,4 do
					for i,v in pairs(workspace:GetDescendants()) do
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["Fake ID Card"])
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
end    
})
Pl:AddButton({
	Name = "Sit All",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(8000,8000,8000)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(8000,8000,8000)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "zapChain",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)

end    
})
Pl:AddButton({
    Name = "???",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 100, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
	       ["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
		while task.wait(0.000000000001) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 Bubble.Color = Color3.new(math.random(225),math.random(225),math.random(225))

			Shield(Bubble)
		end
	end
})
Pl:AddButton({
    Name = "Rainbows!!!!!!",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 30, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
	       ["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end

		while task.wait(0.000000000001) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
while task.wait(3) do
Bubble.Color = Color3.new(math.random(225),math.random(225),math.random(225))
end

			Shield(Bubble)
		end
	end
})
Pl:AddButton({
    Name = "I'm Bored",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 150, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
     Bubble.BrickColor = BrickColor.new("1032")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.000000000001) do
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
			Shield(Bubble)
		end
end
})
Pl:AddButton({
    Name = "Chat Haxxxx",
    Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/MBpnp3yS'))()
end
})

Pl:AddButton({
    Name = "Load  Slide",
    Callback = function()
 local lib = require(game:GetService("Workspace").upsilonLibrary)
Slide =
 game:GetObjects("rbxassetid://11443215634")[1]
				Slide.Name = "FE Slide"
				Slide.Parent = Workspace 
				local function paaart(part,parent) -- This is for Effects/Creating parts without Looping
					local properties = {
						["TopSurface"] = blah, 
						["Material"] = part.Material,
						["Reflectance"] = part.Reflectance,
						["BrickColor"] = part.BrickColor,
						["Transparency"] = part.Transparency,
						["Size"] = part.Size,
						["Position"] = part.Position,
						["CanCollide"] = part.CanCollide,
						["Anchored"] = part.Anchored,
						["Shape"] = part.Shape,
						["Velocity"] = part.Velocity,
						["Parent"] = parent,
						["Orientation"] = part.Orientation
					}
					

lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
				end


				for i,v in pairs(Slide:GetDescendants()) do
					if v:IsA("Part") then
						if v.Name == "Green" then
							v.Velocity = Vector3.new(-50,0,0)
						end
						if v.Name == "GreenShifted" then
							v.Velocity = Vector3.new(-50,0,-10)
						end
						if v.Name == "Red" then
							v.Velocity = Vector3.new(50,0,0)
						end
						if v.Name == "RedShifted" then
							v.Velocity = Vector3.new(50,0,-10)
						end
         if v:IsA("Part") then
						if v.Name == "Green" then
							v.Material = Enum.Material.SmoothPlastic
						end
   if v.Name == "GreenShifted" then
							v.Material = Enum.Material.SmoothPlastic
						end
       if v.Name == "Red" then
							v.Material = Enum.Material.SmoothPlastic
						end
      if v.Name == "RedShifted" then
							v.Material = Enum.Material.SmoothPlastic
						end
         end
					end
				end
      while wait(0.1) do
				for i,v in pairs(Slide:GetDescendants()) do
					if v:IsA("Part") then
						paaart(v,workspace)
           end
        end
				end
end
})

Pl:AddButton({
    Name = "Load Fe Zone Gui",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/FGFLJhAT"))()
end
})

Pl:AddButton({
    Name = "Spoof CCTV",
    Callback = function()
while wait (0) do
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam2"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam1"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam3"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam4"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))

local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam5"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam6"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam7"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam8"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "updateSecurityCamRotation",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam9"),
    [3] = 0,
    [4] = 0.2617993877991494
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
end
})
Pl:AddButton({
    Name = "Enable All CCTV",
    Callback = function()
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam2"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam1"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam3"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam4"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam6"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam5"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam7"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam8"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
local args = {
    [1] = "toggleCamControl",
    [2] = workspace:WaitForChild("AllMovables"):WaitForChild("SecurityCams"):WaitForChild("cam9"),
    [3] = true
}

workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
})

Pl:AddButton({
    Name = "ice-Land!",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(5, 200, 200)
		Bubble.CastShadow = true
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Cylinder
		Bubble.BrickColor = BrickColor.new("23")
		Bubble.Material = Enum.Material.Sand
		Bubble.Transparency = 0
     Bubble.Orientation = Vector3.new(0, 0, 90)
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
          ["Orientation"] = Vector3.new(0, 0, 90),
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.0000000000001) do
			Bubble.Position = Vector3.new(431.8132019042969, 1, -210.0636749267578) + Vector3.new(0,50,0)
 
			Shield(Bubble)
		end
end
})
Ow:AddButton({
    Name = "Hypernova Tool",
    Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createSkyart(part, size, cframe, material, color, transparency)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(8000, 100, 8000)
    pa.CFrame = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
    pa.BrickColor = BrickColor.new("0")
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]


    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8000, 100, 8000),
        ["CFrame"] = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808),
        ["BrickColor"] = BrickColor.new("0"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
local lib = require(game:GetService("Workspace").upsilonLibrary)
    local paa = Instance.new("Part")
    paa.Parent = Workspace
    paa.TopSurface = "Smooth"
    paa.Material = Enum.Material.Neon
    paa.Reflectance = 0
    paa.CanCollide = true
    paa.Anchored = true
    paa.Size = Vector3.new(8000, 100, 8000)
    paa.CFrame = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
    paa.BrickColor = BrickColor.new("1010")
    paa.Transparency = transparency
    paa.Parent = Workspace["Secret Agent Shades"]


    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(8000, 100, 8000),
        ["CFrame"] = CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808),
        ["BrickColor"] = BrickColor.new("1010"),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
wait(1)
    pa:Destroy()
wait(2)
    paa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "HyperNova"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
    AnimationId = "204295235"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
wait (3)
local lib = require(game:GetService("Workspace").upsilonLibrary)
    for i,v in pairs(game.Players:GetPlayers()) do lib.FireOtherClients("drawLaser",Vector3.new(), Vector3.new(),{["Name"] = "Head",["Parent"] = v.Character})
end
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSkyart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end
})
Ow:AddButton({
    Name = "Punish All",
    Callback = function()
while wait (0) do
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(8000,8000,8000)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(8000,8000,8000)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "zapChain",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
local lib = require(game:GetService("Workspace").upsilonLibrary)
    for i,v in pairs(game.Players:GetPlayers()) do lib.FireOtherClients("drawLaser",Vector3.new(), Vector3.new(),{["Name"] = "Head",["Parent"] = v.Character})
end 
end
end
})
Ow:AddButton({
    Name = "Crash All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)	game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
		wait(1)
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"]
		Bubble.Size = Vector3.new(800, -5, 800)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = false
     Bubble.Color = Color3.fromRGB(255, 255, 0)
		Bubble.Material = Enum.Material.Neon
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = false,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait(0.01) do
			Bubble.CFrame = 
CFrame.new(-6.10489082, 4, -15.8136148)
 
			Shield(Bubble)
		end
end
})
Ow:AddButton({
	Name = "Delay all",
	Callback = function() 
while wait (0) do
    for i,v in pairs(game.Players:GetPlayers()) do 
local args = {
					[1] = "resetNetworkOwnership",
					[2] = v.Character.HumanoidRootPart,
					[3] = true

				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end
end
end    
})
Ow:AddButton({
	Name = "Sound all",
	Callback = function() 
	while task.wait() do 
local args = {
    [1] = "FireOtherClients",
    [2] = "playSound",
     [3] = "playSound",
    [4] = workspace.M98B.Handle.FireSound
}

workspace.resources.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "FireOtherClients",
    [2] = "playSound",
     [3] = "playSound",
    [4] = workspace.M16.Handle.FireSound
}

workspace.resources.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "FireOtherClients",
    [2] = "playSound",
     [3] = "playSound",
    [4] = workspace.M14.Handle.FireSound
}

workspace.resources.RemoteEvent:FireServer(unpack(args))
end
	end    
})
Ow:AddButton({
	Name = "Kinny slide!!!",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/RTsQMmHY"))()
end    
})
Ow:AddButton({
    Name = "Boldify All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
			Sand.Size = Vector3.new(8000,8000,8000)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(8000,8000,8000)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
					["Name"] = "removeHats",
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
end    
})
Ow:AddTextbox({
    Name = "Auto Kick",
    Default = "",
    TextDisappear = false,
    Callback = function(Target)     
 local Player = game.Players[Target]
 while wait (0) do
		local Upsilon = require(workspace.upsilonLibrary) Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
local args = {
    [1] = "giveRiotShield",
    [2] = game:GetService("Workspace").ignore.invisibleWalls.armoryBarrier_Cheaters

    
}

workspace.resources.RemoteFunction:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
        end
})
Ow:AddButton({
    Name = "Voidify All",
    Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
        Sand.Velocity = Vector3.new(0,99999999999999999999,0)
			Sand.Size = Vector3.new(8000,8000,8000)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(8000,8000,8000)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
        Bubble.Velocity = Vector3.new(0,999999999999999999,0)
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = true,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
             ["Velocity"] = part.Velocity,
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
             ["Velocity"] = part.Velocity,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
end    
})
Ow:AddButton({
	Name = "Kick All",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)
for i,v in next, game.Players:GetPlayers() do
    Upsilon.InvokeServer("giveRiotShield",v.Character.HumanoidRootPart)
end
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
local args = {
    [1] = "giveRiotShield",
    [2] = game:GetService("Workspace").ignore.invisibleWalls.armoryBarrier_Cheaters

    
}

workspace.resources.RemoteFunction:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
})
Ow:AddButton({
	Name = "Shutdown Redwood",
	Callback = function()
	while wait (0) do
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("BasePart") then
							workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", v)
					end
					for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
    end
end
end
})
Ow:AddButton({
	Name = "Not Fe 666",
	Callback = function()
for i,v in next,workspace:children''do
		if(v:IsA'BasePart')then
			me=v;
			bbg=Instance.new('BillboardGui',me);
			bbg.Name='stuf';
			bbg.Adornee=me;
			bbg.Size=UDim2.new(2.5,0,2.5,0)
			--bbg.StudsOffset=Vector3.new(0,2,0)
			tlb=Instance.new'TextLabel';
			tlb.Text='666 666 666 666 666 666';
			tlb.Font='SourceSansBold';
			tlb.FontSize='Size48';
			tlb.TextColor3=Color3.new(1,0,0);
			tlb.Size=UDim2.new(1.25,0,1.25,0);
			tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
			tlb.BackgroundTransparency=1;
			tlb.Parent=bbg;
			tlb.Transparency = 1;
		end;end;
	function xds(dd)
		for i,v in next,dd:children''do
			if(v:IsA'BasePart')then
				v.BrickColor=BrickColor.new'23';
				v.TopSurface='Smooth';
				v.BottomSurface='Smooth';
				s=Instance.new('SelectionBox',v);
				s.Adornee=v;
				s.Color=BrickColor.new'Really red';
       s.Transparency = 0;
				a=Instance.new('PointLight',v);
				a.Color=Color3.new(1,0,0);
				a.Range=15;
				a.Brightness=5;
				f=Instance.new('Fire',v);
				f.Size=0;
				f.Heat=2;
			end;
			game.Lighting.TimeOfDay=0;
			game.Lighting.Brightness=0;
			game.Lighting.ShadowColor=Color3.new(0,0,0);
			game.Lighting.Ambient=Color3.new(1,0,0);
			game.Lighting.FogEnd=200;
			game.Lighting.FogColor=Color3.new(0,0,0);
			local dec = 'http://www.roblox.com/asset/?id=19399245';
			local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
			--coroutine.wrap(function()
			--for ,_ in pairs(fac) do
			--local ddec = Instance.new("Decal", v)
			--ddec.Face = 
			--ddec.Texture = dec
			--end end)()
			if #(v:GetChildren())>0 then
				xds(v) 
			end
		end
	end
	xds(game.Workspace)
	end
})
Ow:AddButton({
	Name = "Greenify Map",
	Callback = function()
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    } require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
for i,v in pairs(workspace:GetDescendants()) do
   if v:IsA("BasePart") then
v.BrickColor = BrickColor.new("1020")
v.Material = Enum.Material.Neon
CreatePermPart(v,workspace)
end
end	
	end
})
Mod:AddButton({
    Name = "Nuclear Bomb",
    Callback = function()
function checkHat()
    game.Workspace.resources.RemoteEvent:FireServer("wearHat", game.Workspace["Secret Agent Shades"])
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Secret Agent Shades")
    game.Players.LocalPlayer.Character:WaitForChild("Secret Agent Shades").Transparency = 1
end

function createSkyart(part, size, cframe, material, color, transparency)
wait (3)
  local lib = require(game:GetService("Workspace").upsilonLibrary)
    local pa = Instance.new("Part")
    pa.Parent = Workspace
    pa.TopSurface = "Smooth"
    pa.Material = Enum.Material.Neon
    pa.Reflectance = 0
    pa.CanCollide = true
    pa.Anchored = true
    pa.Size = Vector3.new(2000, 500, 500)
    pa.CFrame = CFrame.new(77.9487762, 196.998978, -99.9687805, 0.999772072, 0.00822155271, -0.0197016411, -3.59711194e-08, 0.922868967, 0.385114104, 0.0213482697, -0.385026336, 0.922658622)
    pa.BrickColor = Color3.fromRGB(0, 0, 0)
    pa.Transparency = transparency
    pa.Parent = Workspace["Secret Agent Shades"]
  pa.Shape =  Enum.PartType.Ball

    local properties = {
        ["TopSurface"] = "Glue",
        ["Material"] = Enum.Material.Neon,
       ["Shape"] = Enum.PartType.Ball,
        ["Reflectance"] = 0,
        ["Name"] = "zapChain",
        ["CanCollide"] = true,
        ["Anchored"] = true,
        ["Size"] = Vector3.new(2000, 500, 5000),
        ["CFrame"] = CFrame.new(77.9487762, 196.998978, -99.9687805, 0.999772072, 0.00822155271, -0.0197016411, -3.59711194e-08, 0.922868967, 0.385114104, 0.0213482697, -0.385026336, 0.922658622),
        ["Color"] = Color3.fromRGB(0, 0, 0),
        ["Transparency"] = transparency,
        ["Parent"] = Workspace["Secret Agent Shades"]
    }

    
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)

wait(3)
    pa:Destroy()
end

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Spawn Nuclear Bomb"
tool.RequiresHandle = false

tool.Activated:Connect(function()
    checkHat()
wait (3)
local lib = require(game:GetService("Workspace").upsilonLibrary)
    for i,v in pairs(game.Players:GetPlayers()) do lib.FireOtherClients("drawLaser",Vector3.new(), Vector3.new(),{["Name"] = "Head",["Parent"] = v.Character})
end 
while wait (0) do
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Bubble = Instance.new("Part")
		Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(2000, 0.5, 2000)
		Bubble.CastShadow = false
		Bubble.CanCollide = true
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.CorrodedMetal
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
     Bubble.Position = 
     Vector3.new(-76.931640625, 1, -334.20574951171875)
			Shield(Bubble)
local lib = require(game:GetService("Workspace").upsilonLibrary)	
		local Bubble = Instance.new("Part")
Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(8000, 30, 8000)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Material = Enum.Material.CorrodedMetal
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		
			Bubble.CFrame = 
CFrame.new(-202.08783, 136.986221, -505.919098, -0.683952808, 1.64178786e-08, -0.729526281, 2.19589547e-09, 1, 2.04461319e-08, 0.729526281, 1.23822259e-08, -0.683952808)
 
			Shield(Bubble)
	end
while wait (0.4) do
Bubble:Destroy()
end
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local mouseHit = mouse.Hit.p + Vector3.new(0, 2.5, 0)
    local cframe = CFrame.new(mouseHit)
    if mouse.Target and mouse.Target:IsA("BasePart") then
        createSkyart(mouse.Target, mouse.Target.Size + Vector3.new(0.005, 0.005, 0.005), cframe, mouse.Target.Material, mouse.Target.Color, mouse.Target.Transparency)
    end
end)
end
})
Mod:AddButton({
    Name = " Fe 1x1x1x1 panel",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/HqEPXqZj"))()
    end
})
Mod:AddButton({
    Name = "Glue All",
    Callback = function()
local Upsilon = require(workspace.upsilonLibrary)
for i,v in next, game.Players:GetPlayers() do
    Upsilon.InvokeServer("giveRiotShield",v.Character.HumanoidRootPart)
end
end
})
Mod:AddButton({
    Name = "Stickify All",
    Callback = function()
local Upsilon = require(workspace.upsilonLibrary)
for i,v in next, game.Players:GetPlayers() do
    Upsilon.InvokeServer("giveRiotShield",v.Character.HumanoidRootPart)
local args = {
    [1] = "giveRiotShield",
    [2] = game:GetService("Workspace").FloorGrass
}

workspace.resources.RemoteFunction:InvokeServer(unpack(args))
end
end
})

Mod:AddTextbox({
    Name = "Spam Message",
    Default = "default box input",
    TextDisappear = true,
    Callback = function(Value)
        for i,v in pairs(game.Players:GetChildren())do
            local lib = require(game:GetService("Workspace").upsilonLibrary)
while wait (0) do
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',Value)
lib.FireOtherClients("displayChoice",'returnToMenu',Value)
           end
        end
    end
})
Mod:AddTextbox({
    Name = "Kick V2",
    Default = "plr name",
    TextDisappear = true,
    Callback = function(Target)
local Player = game.Players[Target]
game.Workspace.resources.RemoteEvent:FireServer("becomeHostile")
local Upsilon = require(workspace.upsilonLibrary)
Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
		wait(0.01)
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",game:GetService("Workspace").ignore.invisibleWalls.armoryBarrier_Cheaters)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
})
Mod:AddButton({
	Name = "Click Grab",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MvraZyK5"))()
end    
})
Mod:AddButton({
	Name = "Mikeytoli2 Land!",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/NqVG9vqh"))()
end    
})
Mod:AddButton({
	Name = "Xplode Cars",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/1ga8D6P6"))()
end    
})
Mod:AddButton({
	Name = "Kill All V2.0",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)
for i,v in next, game.Players:GetPlayers() do
    Upsilon.InvokeServer("giveRiotShield",v.Character.HumanoidRootPart)
end
local Upsilon = require(workspace.upsilonLibrary)
for i,v in next, game.Players:GetPlayers() do
    Upsilon.InvokeServer("giveRiotShield",v.Character.Head)
end
end    
})
Mod:AddTextbox({
    Name = "Autohostile Bypass Kick",
    Default = "",
    TextDisappear = false,
    Callback = function(Target)     
 local Player = game.Players[Target]
 game.Workspace.resources.RemoteEvent:FireServer("becomeHostile")
		local Upsilon = require(workspace.upsilonLibrary) Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
		for i = 1,500 do
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["removeHats"])
        end
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",game:GetService("Workspace").ignore.invisibleWalls.armoryBarrier_Cheaters)
wait (1)
for i = 1,500 do
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["removeHats"])
        end
game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
})
Mod:AddTextbox({
    Name = "Gift Kill Auara (Same Team)",
    Default = "minalrana1",
    TextDisappear = false,
    Callback = function(Value)
    local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(20, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			for i = 1,2 do
			for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
for i,v in pairs(game.Players:GetPlayers()) do
	workspace.resources.RemoteEvent:FireServer("dealMeleeDamage", v.Character.Humanoid, 100);
end
end
		end
 
		while task.wait (0.1) do
Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
			Shield(Bubble)
		end
    end
})
Mod:AddTextbox({
    Name = "Gift Cuff Auara (Same Team)",
    Default = "minalrana1",
    TextDisappear = false,
    Callback = function(Value)
    local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(20, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			for _, v in pairs(game.Players:GetChildren()) do
	game.Workspace.resources.RemoteEvent:FireServer("cuff", v) 
	end
		end
 
		while task.wait (0.1) do
Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
			Shield(Bubble)
		end
    end
})
Mod:AddTextbox({
    Name = "Gift Sit Auara (Same Team)",
    Default = "minalrana1",
    TextDisappear = false,
    Callback = function(Value)
    local Player = game.Players[Value]
local Upsilon = require(workspace.upsilonLibrary)
    Upsilon.InvokeServer("giveRiotShield",Player.Character.HumanoidRootPart)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v.Name == "RiotShield" then
							game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
							v:Destroy()
				end
       end
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(20, 8, 8)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 0
 
 
		function Shield(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = "zapChain",
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while task.wait (0.1) do
Bubble.CFrame = Player.Character.HumanoidRootPart.CFrame
			Shield(Bubble)
		end
    end
})
Mod:AddButton({
	Name = "Piece of land",
	Callback = function()
local lib = require(game:GetService("Workspace").upsilonLibrary)
		local Bubble = Instance.new("Part")
		local Bubble2 = Instance.new("Part")
		local Bubble3 = Instance.new("Part")
		local Bubble4 = Instance.new("Part")
     Bubble.Parent = Workspace
		Bubble.Size = Vector3.new(100, 400, 2000)
		Bubble.CastShadow = true
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.Slate
		Bubble.Transparency = 0
		Bubble.Position = Vector3.new(-270.0498962402344, 115.84004974365234, 300.47418212890625)
 
 
 Bubble2.Parent = Workspace
		Bubble2.Size = Vector3.new(200, 400, 415)
		Bubble2.CastShadow = true
		Bubble2.CanCollide = false
		Bubble2.Anchored = true
		Bubble2.BrickColor = BrickColor.new("21")
		Bubble2.Material = Enum.Material.Slate
		Bubble2.Transparency = 0
		Bubble2.Position = Vector3.new(-252.32754516601562, 130.14466857910156, -584.5923461914062)
		
		Bubble3.Parent = Workspace
		Bubble3.Size = Vector3.new(212.43310546875, 212.43310546875, 212.43310546875)
		Bubble3.CastShadow = true
		Bubble3.CanCollide = false
        Bubble3.Shape = Enum.PartType.Ball
		Bubble3.Anchored = true
		Bubble3.BrickColor = BrickColor.new("21")
		Bubble3.Material = Enum.Material.Neon
		Bubble3.Transparency = 0
		Bubble3.Position = Vector3.new(-252.32754516601562, 130.14466857910156, -584.5923461914062) + Vector3.new(0, 500, 0)
		
		Bubble4.Parent = Workspace
		Bubble4.Size = Vector3.new(2047.93310546875, 312.43310546875, 191.73300170898438)
		Bubble4.CastShadow = true
		Bubble4.CanCollide = false
        Bubble4.Shape = Enum.PartType.Cylinder
		Bubble4.Anchored = true
		Bubble4.BrickColor = BrickColor.new("21")
		Bubble4.Material = Enum.Material.Neon
		Bubble4.Transparency = 0
		Bubble4.Orientation = Vector3.new(0, 0, 90)
		Bubble4.Position = Vector3.new(-252.32754516601562, 130.14466857910156, -584.5923461914062) + Vector3.new(0, 1547, 0)
 
 
		function FuckDarkone(part)
			local properties = {
				["CanCollide"] = true,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = part.Name,
				["Position"] = part.Position,
				["Orientation"] = part.Orientation,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = true,
				["Transparency"] = 1
 
 
			}
 
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
 
		while wait (0) do
			FuckDarkone(Bubble)
			FuckDarkone(Bubble2)
			FuckDarkone(Bubble3)
			FuckDarkone(Bubble4)
		end
end    
})
Mod:AddButton({
	Name = "Bring All",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)

local TeleportationRoutine = {}

function TeleportationRoutine:new()
    local obj = {}
    setmetatable(obj, self)
    self.__index = self

    obj.running = false 
    obj.processedPlayers = {}

    return obj
end

function TeleportationRoutine:Toggle()
    self.running = not self.running

    if self.running then
        self:Execute()
    end
end

function TeleportationRoutine:Execute()
    while self.running do
        local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        wait(0.5)

        local playerModel = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
        if playerModel then
            playerModel:Destroy()
        end

        wait(0.5)

        local ohString2 = "reloadMe"
        workspace.resources.RemoteEvent:FireServer(ohString2)

        wait(0.8)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition

        wait(0.5)

        local targetPlayer
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local playerName = player.Name
                if not self:HasProcessedPlayer(playerName) then
                    targetPlayer = player
                    self:MarkPlayerAsProcessed(playerName)
                    break
                end
            end
        end

        if targetPlayer then
            Upsilon.InvokeServer("giveRiotShield", targetPlayer.Character.Torso)

            wait(0.5)

            ohString2 = "reloadMe"
            workspace.resources.RemoteEvent:FireServer(ohString2)

            wait(0.7)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition
        else
            
            self.running = false
        end

        wait()
    end
end

function TeleportationRoutine:HasProcessedPlayer(playerName)
    return self.processedPlayers[playerName] == true
end

function TeleportationRoutine:MarkPlayerAsProcessed(playerName)
    self.processedPlayers[playerName] = true
end

local routine = TeleportationRoutine:new()

routine:Toggle()
end    
})
Mod:AddButton({
	Name = "Anti Crash",
	Callback = function()
	while wait () do
workspace:WaitForChild("removeHats"):Destroy()
end
	end    
})
Mod:AddButton({
	Name = "Artic",
	Callback = function()
	local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
local Artic = game:GetObjects("rbxassetid://11441554704")[1]
				Artic.Parent = Workspace
				for i,v in pairs(Artic:GetDescendants()) do
					if v:IsA("Part") then
						CreatePermPart(v,workspace)
						v.Transparency = 0
					end
				end
wait (1)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8163.07, 16572.4, 11.4)
	end    
})
Mod:AddButton({
	Name = "Obby",
	Callback = function()
	local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
local Artic = game:GetObjects("rbxassetid://11441554704")[1]
				local Obby = game:GetObjects("rbxassetid://11441520898")[1]
				Obby.Parent = Workspace
				for i,v in pairs(Obby:GetDescendants()) do
					if v:IsA("Part") then
						CreatePermPart(v,workspace)
						v.Transparency = 0
					end
				end
wait (1)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5601.631, 14816.992, 141.148)
	end    
})
Mod:AddButton({
	Name = "Ban Hammer",
	Callback = function()
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
			local Handle = Instance.new("Part",Tool)
			local Part2 = Instance.new("Part",Tool)
			local HandleWeld = Instance.new("Weld",Handle)
            local SwingSound = Instance.new("Sound",Handle)
			Tool.Name = "FE Ban Hammer"
			HandleWeld.C0 = CFrame.new(0,0,0)
			HandleWeld.Part0 = Part2
			HandleWeld.Part1 = Handle
			Handle.Name = "Handle"
			Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
			Handle.Color = Color3.fromRGB(0, 0, 0)
			Handle.Size = Vector3.new(0.2, 5, 0.19)
			Handle.BottomSurface = Enum.SurfaceType.Smooth
			Handle.BrickColor = BrickColor.new("1003")
			Handle.CanCollide = false
			Handle.Material = Enum.Material.Neon
			Handle.TopSurface = Enum.SurfaceType.Smooth
			Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
			Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
			Part2.Color = Color3.fromRGB(255, 0, 0)
			Part2.Size = Vector3.new(2, 2, 5)
			Part2.BottomSurface = Enum.SurfaceType.Smooth
			Part2.BrickColor = BrickColor.new("140")
			Part2.CanCollide = false
			Part2.TopSurface = Enum.SurfaceType.Smooth
			HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
			SwingSound.SoundId = "rbxassetid://147722910"

local lib = require(game:GetService("Workspace").upsilonLibrary)

			function sword(part)
				local properties = {
					["CanCollide"] = false,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["Color"] = part.Color,
					["CFrame"] = part.CFrame,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = true
				}

		lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
			
			local ToolEquipped = false
			local ToolActive = false
			local Touched = false

			Tool.Equipped:Connect(function()
				if not ToolEquipped then
                  ToolEquipped = true
                 while wait (0) do
game.Workspace.resources.RemoteEvent:FireServer("becomeHostile")
                    sword(Handle)
                    sword(Part2)
					ToolEquipped = true
                   end
				end
			end)
			Tool.Unequipped:Connect(function()
				if ToolEquipped then
					ToolEquipped = false
				end
			end)
			Tool.Activated:Connect(function()
				if ToolEquipped and not ToolActive then
            
					ToolActive = true
					AnimationId = "218504594"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

k:Play()

k:AdjustSpeed(1)
local lib = require(game:GetService("Workspace").upsilonLibrary)
local Sand = Instance.new("Part")
			Sand.CanCollide = false
			Sand.Anchored = true
			Sand.Shape = Enum.PartType.Cylinder
			Sand.Material = Enum.Material.ForceField
			Sand.Orientation = Vector3.new(0,0,90)
        Sand.Velocity = Vector3.new(0,99999999999999999999,0)
			Sand.Size = Vector3.new(10,10,10)
			local Bubble = Instance.new("Part")
			Bubble.Size = Vector3.new(10,10,10)
			Bubble.CastShadow = false
			Bubble.CanCollide = false
			Bubble.Anchored = true
			Bubble.Shape = Enum.PartType.Ball
        Bubble.Velocity = Vector3.new(0,999999999999999999,0)
			Bubble.BrickColor = BrickColor.new("21")
			Bubble.Material = Enum.Material.ForceField
			Bubble.Transparency = 1

			local lib = require(game:GetService("Workspace").upsilonLibrary)

			function createsit(part)
				local properties = {
					["CanCollide"] = true,
					["Parent"] = Workspace,
					["Anchored"] = true,
					["BrickColor"] = part.BrickColor,
					["RotVelocity"] = part.RotVelocity,
             ["Velocity"] = part.Velocity,
					["Position"] = part.Position,
					["Material"] = part.Material,
					["Shape"] = part.Shape,
					["Size"] = part.Size,
					["CastShadow"] = false,
					["Transparency"] = 1
				}
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end

			function CreatePermPart(part,parent) 
				local properties = {
					["Material"] = part.Material,
					["Reflectance"] = part.Reflectance,
					["BrickColor"] = part.BrickColor,
					["Transparency"] = part.Transparency,
					["Size"] = part.Size,
             ["Velocity"] = part.Velocity,
					["Position"] = part.Position,
					["CanCollide"] = part.CanCollide,
					["Anchored"] = part.Anchored,
					["Shape"] = part.Shape,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			Bubble.Position = game.Players.LocalPlayer.Character.Torso.Position
			for i = 1,1 do
				createsit(Bubble)
			end
			Sand.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,-3,0)
			CreatePermPart(Sand)
					SwingSound:Play()
					wait(0.7)
					ToolActive = false
				end
			end)
end    
})

OrionLib:Init()


while wait() do
    if doorspamming == false then
        
    else
        doorSpam()
    end
end

								
--noclip

pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
       if shared.noclip == true then
           lp.Character.Head.CanCollide = false
           lp.Character.Torso.CanCollide = false
       end
    end);
    end)
