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
Text = "Prison Life TM";
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
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({
	Name = "Life Destroyer Beta UTG",
	Content = "Loading...",
	Image = "http://www.roblox.com/asset/?id=12597288571",
	Time = 5
})
wait(5)
OrionLib:MakeNotification({
	Name = "Life Destroyer Beta UTG",
	Content = "Welcome to Life Destroyer",
	Image = "http://www.roblox.com/asset/?id=12597288571",
	Time = 5
})
OrionLib:MakeNotification({
	Name = "Life Destroyer Beta UTG",
	Content = "Game Detected: Prison Life",
	Image = "http://www.roblox.com/asset/?id=12597288571",
	Time = 5
})
local Window = OrionLib:MakeWindow({Name = "Life Destroyer Beta UTG - Prison Life", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "http://www.roblox.com/asset/?id=11247260342",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Status: Whitelisted"
})
local Section = Tab:AddSection({
	Name = "Welcome to Life Destroyer Beta UTG"
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
	Name = "All Scripts"
})
Tab:AddButton({
	Name = "Rufus Katana V2",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebinp.com/raw/TCzGwJG1'),true))()
  	end    
})
Tab:AddButton({
	Name = "Dual Solaris",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebinp.com/raw/4FFyimTY'),true))()
  	end    
})
Tab:AddButton({
	Name = "Thomas",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebinp.com/raw/rfWbgrRy'),true))()
  	end    
})
Tab:AddButton({
	Name = "Grab V3",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebinp.com/raw/frHvA27v'),true))()
  	end    
})
Tab:AddButton({
	Name = "John Doe",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebinp.com/raw/KseVTanj'),true))()
  	end    
})
Tab:AddButton({
	Name = "Lua Hammer",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebinp.com/raw/KseVTanj'),true))()
  	end    
})
Tab:AddButton({
	Name = "Btools",
	Callback = function()
      		local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

 -- Objects

local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local On = Instance.new("StringValue")

-- Properties

ScreenGui.Parent = player.PlayerGui

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.455743879, 0)
TextButton.Size = UDim2.new(0, 186, 0, 35)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Btools (Off)"
TextButton.TextColor3 = Color3.new(0.27451, 0.27451, 0.27451)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true


On.Parent = TextButton
On.Value = "Off"

-- Scripts 

TextButton.MouseButton1Up:Connect(function()
	if On.Value == "Off" then
		On.Value = "On"
		TextButton.Text = "Btools (On)"
	else
		On.Value = "Off"
		TextButton.Text = "Btools (Off)"
	end
end)

mouse.Button1Up:Connect(function()
	if On.Value == "Off" then
		print('btools off')
	else
		if mouse.Target.Locked == true then
			mouse.Target:Destroy()
		else
			mouse.Target:Destroy()
		end
	end
end)

  	end    
})
Tab:AddButton({
	Name = "Attack on Titan Swords",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Click%20KIll",true))();
debounce = false
v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mf = math.floor
mran = math.random
mrad = math.rad
mdeg = math.deg
ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 
v32=function(x,y,z) return v3(mdeg(x),mdeg(y),mdeg(z)) end
mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 
ud=UDim2.new
bn = BrickColor.new
c3 = Color3.new
nov3=v3(0,0,0)
maxv3=v3(1,1,1)/0
-----
Player = game:service'Players'.LocalPlayer
Char = Player.Character
Torso = Char.Torso
Head = Char.Head
Humanoid = Char.Humanoid
Root=Char.HumanoidRootPart.RootJoint
 
LA=Char['Left Arm']
RA=Char['Right Arm']
LL=Char['Left Leg']
RL=Char['Right Leg']
LAM=Torso:findFirstChild'Left Shoulder' or _G.LAM
RAM=Torso:findFirstChild'Right Shoulder' or _G.RAM
LLM=Torso:findFirstChild'Left Hip' or _G.LLM
RLM=Torso:findFirstChild'Right Hip' or _G.RLM
Neck=Torso.Neck
Neck.C0=cn(0,1.5,0)
Neck.C1=cn(0,0,0)
_G.LAM=LAM _G.RAM=RAM _G.LLM=LLM _G.RLM=RLM 
 
 
as,so={},{'metal','Block','Slash','Slash2','Hit','Kick'}
as.corner='11294911'
as.cone='1033714'
as.ring="3270017"
as.Chakram='47260990'
as.ring2='18430887'
as.blast='20329976'
as.missile='10207677'
as.fire='2693346'
as.boom='3264793'
as.slash='143858925'
as.abscond='2767090'
as.firelaser='13775494'
as.diamond='9756362'
as.metal='rbxasset://sounds\\unsheath.wav'
as.Block = 'rbxasset://sounds\\metal.ogg'
as.Slash = '10209645'
as.Slash2 = '46760716'
as.Hit='10209583'
as.Kick='46153268'
as.cast='2101137'
 
 
for i,v in pairs(as) do 
if type(tonumber(v:sub(1,3)))=="number" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end
 
game:service"ControllerService":ClearAllChildren()
Controls=Instance.new("HumanoidController",game:service"ControllerService")
 
 
LastMade=nil
iNew=function(tab)
local v=Instance.new(tab[1])
for Ind,Val in pairs(tab) do
if Ind~=1 and Ind~=2 then 
v[Ind] = Val
end
end
v.Parent=tab[2]==0 and LastMade or tab[2]
LastMade=v
return v
end
iPart=function(tab)
local v=Instance.new(tab.type or 'Part')
if tab.type~='CornerWedgePart' then v.formFactor='Custom' end
v.TopSurface=0 v.BottomSurface=0
if tab.sc then
v.Size=v3(tab[2]*tab.sc,tab[3]*tab.sc,tab[4]*tab.sc)
else
v.Size=v3(tab[2],tab[3],tab[4])
end
if tab.co then v.BrickColor=bn(tab.co) end
if tab.tr then v.Transparency=tab.tr end
if tab.rf then v.Reflectance=tab.rf end
v.CanCollide=false --if tab.can then v.CanCollide=tab.can end
if tab.cf then v.CFrame=tab.cf end
if tab.an then v.Anchored=tab.an end
if tab.na then v.Name=tab.na end
if tab.ma then v.Material=tab.ma end
v.Parent=tab[1]
v:BreakJoints()
LastMade=v
return v
end
ray = function(Pos, Dir,tab,length) -- ray cast
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *(length or 999)),tab) 
end 
function getoutline(x,z,i)
 return math.sqrt(x^2+z^2)+(i or 0.05),mdeg(math.atan2(x,z))
end
function v3a(cf)
local x,y,z=cf:toEulerAnglesXYZ()
return v3(mdeg(x),mdeg(y),mdeg(z))
end
function TweenV3(i, loops,origpos,nextpos,smooth) 
    loops=math.floor(loops)
    smooth = smooth or 1   
    local tox2,toy2,toz2 = 0,0,0 
    local perc =smooth==1 and math.sin((math.pi/2)/loops*i) or i/loops 
    tox2= origpos.x > nextpos.x  and -math.abs(origpos.x - nextpos.x) *perc or math.abs(origpos.x - nextpos.x) *perc 
    toy2= origpos.y > nextpos.y  and -math.abs(origpos.y - nextpos.y) *perc or math.abs(origpos.y - nextpos.y) *perc
    toz2= origpos.z > nextpos.z  and -math.abs(origpos.z - nextpos.z) *perc or math.abs(origpos.z - nextpos.z) *perc 
    return v3(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)
end 
function TweenCF(i, loops,origpos,nextpos,smooth) 
    loops=math.floor(loops)
    smooth = smooth or 1   
        local x0,y0,z0=origpos:toEulerAnglesXYZ() 
        local x1,y1,z1=nextpos:toEulerAnglesXYZ()
    origangle=v32(x0,y0,z0) 
    nextangle=v32(x1,y1,z1)
    local perc =smooth==1 and math.sin((math.pi/2)/loops*i) or i/loops 
    local tox,toy,toz = 0,0,0 
    tox = origangle.x > nextangle.x and -math.abs(origangle.x - nextangle.x) *perc or math.abs(origangle.x - nextangle.x) *perc 
    toy = origangle.y > nextangle.y and -math.abs(origangle.y - nextangle.y) *perc or math.abs(origangle.y - nextangle.y) *perc 
    toz = origangle.z > nextangle.z and -math.abs(origangle.z - nextangle.z) *perc or math.abs(origangle.z - nextangle.z) *perc 
    local tox2,toy2,toz2 = 0,0,0 
    tox2= origpos.x > nextpos.x  and -math.abs(origpos.x - nextpos.x) *perc or math.abs(origpos.x - nextpos.x) *perc 
    toy2= origpos.y > nextpos.y  and -math.abs(origpos.y - nextpos.y) *perc or math.abs(origpos.y - nextpos.y) *perc
    toz2= origpos.z > nextpos.z  and -math.abs(origpos.z - nextpos.z) *perc or math.abs(origpos.z - nextpos.z) *perc 
    return cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
WeldLib={}
function GetWeld(weld,CO) 
    if not WeldLib[weld] then 
        local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
        local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
        WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
    end  
    return weld['C'..CO].p,WeldLib[weld][CO]
end 
function ClearWeld(weld)
if WeldLib[weld] then WeldLib[weld]=nil end 
end
function SetWeld(weld,CO,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
    loops=math.floor(loops)
    smooth = smooth or 1 
    if not WeldLib[weld] then 
        local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
        local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
        WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
    end  
    local perc =smooth==1 and math.sin((math.pi/2)/loops*i) or i/loops 
    --print(weld.Part1)
    local tox,toy,toz = 0,0,0 
    tox = origangle.x > nextangle.x and -math.abs(origangle.x - nextangle.x) *perc or math.abs(origangle.x - nextangle.x) *perc 
    toy = origangle.y > nextangle.y and -math.abs(origangle.y - nextangle.y) *perc or math.abs(origangle.y - nextangle.y) *perc 
    toz = origangle.z > nextangle.z and -math.abs(origangle.z - nextangle.z) *perc or math.abs(origangle.z - nextangle.z) *perc 
    local tox2,toy2,toz2 = 0,0,0 
    tox2= origpos.x > nextpos.x  and -math.abs(origpos.x - nextpos.x) *perc or math.abs(origpos.x - nextpos.x) *perc 
    toy2= origpos.y > nextpos.y  and -math.abs(origpos.y - nextpos.y) *perc or math.abs(origpos.y - nextpos.y) *perc
    toz2= origpos.z > nextpos.z  and -math.abs(origpos.z - nextpos.z) *perc or math.abs(origpos.z - nextpos.z) *perc 
    WeldLib[weld][CO] = v3(origangle.x + tox,origangle.y + toy,origangle.z + toz)
    weld['C'..CO] = cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function FindSurface(part, position) 
local obj = part.CFrame:pointToObjectSpace(position) 
local siz = part.Size/2 
for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
local vec = Vector3.FromNormalId(v) 
local wvec = part.CFrame:vectorToWorldSpace(vec) 
local vz = (obj)/(siz*vec) 
if (math.abs(vz.X-1) < 0.01 or math.abs(vz.Y-1) < 0.01 or math.abs(vz.Z-1) < 0.01) then
return wvec,vec 
end 
end 
if part.className == "WedgePart" then 
return part.CFrame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707) 
end 
end
LoopFunctions={}
function DoLoop(times,func)
LoopFunctions[#LoopFunctions+1]={times,0,func}
end
pcall(function() Torso.LAW:Remove() Torso.RAW:Remove() Torso.LLW:Remove() Torso.RLW:Remove() end)
LAW=iNew{'Weld',Torso,Name='LAW',Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)}
RAW=iNew{'Weld',Torso,Name='RAW',Part0=Torso,C0=cn( 1.5,0.5,0),C1=cn(0,0.5,0)}
LLW=iNew{'Weld',Torso,Name='LLW',Part0=Torso,C0=cn(-0.5, -1,0),C1=cn(0,  1,0)}
RLW=iNew{'Weld',Torso,Name='RLW',Part0=Torso,C0=cn( 0.5, -1,0),C1=cn(0,  1,0)}
function Arms(on)
 LAM.Parent=Torso LAM.Part0=Torso
 RAM.Parent=Torso RAM.Part0=Torso
 LAM.Part1=on and nil or LA
 RAM.Part1=on and nil or RA
 LAW.Part1=on and LA  or nil
 RAW.Part1=on and RA  or nil
end
function Legs(on)
 LLM.Part1=on and nil or LL
 RLM.Part1=on and nil or RL
 LLW.Part1=on and LL  or nil
 RLW.Part1=on and RL  or nil
end
 
_G.MGear=getfenv()
pcall(function() _G.MGearS.Disabled=true end)
_G.MGearS=script
 
pcall(function() Char.Gear:Remove() end)
Gear=iNew{'Model',Char,Name='Gear'}
Gt={[-1]={},[1]={}}
for x=-1,1,2 do 
local base=iPart{Gear,0.6,3,0.8} iNew{'Weld',LastMade,Part0=x==-1 and LL or RL,Part1=LastMade,C0=cn(0.8*x,0.05,0.45)*ca(-80,0,6*x)}
local v=iPart{Gear,0.5,2.5,0.5,co='Light stone grey'} iNew{'Weld',v,Part0=base,Part1=v,C0=cn(0,-0.24,0.6)} iNew{'CylinderMesh',v}
local v=iPart{Gear,0.5,0.5,0.5,co='Light stone grey'} iNew{'Weld',v,Part0=base,Part1=v,C0=cn(0,1.01,0.6)} iNew{'SpecialMesh',v,MeshType='Sphere'}
for z=-1.2,0.81,1 do 
local v=iPart{Gear,0.65,0.22,1.35,co='Dark stone grey'} iNew{'Weld',v,Part0=base,Part1=v,C0=cn(0,z,0.22)}
end
local v=iPart{Gear,0.25,0.5,0.25,co='Dark stone grey'} iNew{'Weld',v,Part0=base,Part1=v,C0=cn(0,1.25,0.6)*ca(0,0,90)} iNew{'CylinderMesh',v}
local v=iPart{Gear,0.3,0.3,0.3,co='Black'} iNew{'Weld',v,Part0=base,Part1=v,C0=cn(0,1.25,0.6)*ca(0,0,90)} iNew{'CylinderMesh',v}
local st,en=-0.3,0.3 local co=(st*-1+en)/4
for xx=st,en,co do --sheath holes
local v=iPart{Gear,0.2,0.2,0.7,co='Really black'} iNew{'Weld',v,Part0=base,Part1=v,C0=cn(xx+co/2,1.5,0)} iNew{'BlockMesh',v,Scale=v3(0.4,0.1,1)}
end
local v=iPart{Gear,0.75,0.2,0.75} iNew{'Weld',v,Part0=Torso,Part1=v,C0=cn(0.6*x,-0.65,1.1)*ca(45,0,-45*x)} iNew{'CylinderMesh',v}
local v=iPart{Gear,0.6,0.22,0.6,co='Dark stone grey'} iNew{'Weld',v,Part0=Torso,Part1=v,C0=cn(0.6*x,-0.65,1.1)*ca(45,0,-45*x)} iNew{'CylinderMesh',v}
local v2=iPart{Gear,0.2,0.2,0.2} iNew{'Weld',v2,Part0=v,Part1=v2,C0=cn(0,-0.35,0)*ca(180,0,0)} iNew{'SpecialMesh',v2,Scale=v3(0.3,0.65,0.3),MeshId=as.cone}
local v2=iPart{Gear,0.2,0.2,0.3} iNew{'Weld',v2,Part0=v,Part1=v2,C0=ca(0,200*x,0)*cn(0,0,-0.5)} 
--sword handle
local h=iPart{Gear,0.3,1.05,0.3} local hw=iNew{'Weld',h,Part0=x==-1 and LA or RA,Part1=h,C0=cn(0,-1,0)*ca(-90,0,0)} iNew{'CylinderMesh',h}
Gt[x].h=hw
local v=iPart{Gear,0.32,0.2,0.32,co='Black'} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,-0.35,0)} iNew{'CylinderMesh',v}
local v=iPart{Gear,0.2,0.5,0.25} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,0.25,-0.15)} 
local v=iPart{Gear,0.21,0.2,0.25,co='Black'} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,0.25+0.12,-0.125)} 
local v=iPart{Gear,0.21,0.2,0.25,co='Black'} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,0.25-0.12,-0.125)} 
local v=iPart{Gear,0.3,0.2,0.3} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,0.6,0)} 
local v=iPart{Gear,0.3,0.2,0.3,type='WedgePart'} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,0.6,-0.3)} 
local v=iPart{Gear,0.3,0.2,0.3,type='WedgePart'} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,0.6, 0.3)*ca(180,0,0)} 
local v=iPart{Gear,0.2,0.5,0.2} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0, 0.3,-0.4)*ca( 14,0,0)} iNew{'CylinderMesh',v,Scale=v3(0.6,1,0.6)}
local v=iPart{Gear,0.2,0.2,0.2} iNew{'Weld',v,Part0=h,Part1=v,C0=cn(0,-0.25,-0.35)*ca(-20+180,0,0)} iNew{'SpecialMesh',v,MeshId=as.cone,Scale=v3(0.06,1,0.06)}
--sword blade
local bladelength=4
local blade=iPart{Gear,0.2,bladelength,0.4} iNew{'Weld',v,Part0=h,Part1=blade,C0=cn(0,0.7+bladelength/2,0.05)} iNew{'BlockMesh',blade,Scale=v3(0.4,1,1)}
local tip=iPart{Gear,0.2,0.5,0.4,type='WedgePart'} iNew{'Weld',v,Part0=blade,Part1=tip,C0=cn(0,bladelength/2+0.25,0)*ca(0,180,0)} iNew{'SpecialMesh',tip,MeshType='Wedge',Scale=v3(0.4,1,1)}
for i=-1.6,1.4,0.6 do 
local v=iPart{Gear,0.2,0,0.52,co='White'} iNew{'Weld',v,Part0=blade,Part1=v,C0=cn(0,i+0.1,0)*ca(40,0,0)} iNew{'BlockMesh',v,Scale=v3(0.42,0.3,1)}
end
 
 blade.Touched:connect(function(hit) 
    if debounce == false then
    debounce = true
    isPlayer = hit.Parent:FindFirstChild("Humanoid")
    if isPlayer then
        isPlayer:TakeDamage(13333333333333337)
        wait(0.5)
    end
    debounce = false
    end
end)

end
--Middle
local v=iPart{Gear,0.2,0.2,0.2} iNew{'Weld',v,Part0=Torso,Part1=v,C0=cn(0,-1,1.1)*ca(90,0,0)} iNew{'SpecialMesh',v,Scale=v3(0.4,1.6,0.16),MeshId=as.cone}
Gas=iNew{'Smoke',v,Opacity=0.4,RiseVelocity=25,Size=3,Enabled=false}
local v=iPart{Gear,0.6,0.3,0.6} iNew{'Weld',v,Part0=Torso,Part1=v,C0=cn(0,-0.85,0.8)} iNew{'CylinderMesh',v}
local v=iPart{Gear,0.3,0.3,0.35,co='Dark stone grey',type='WedgePart'} iNew{'Weld',v,Part0=Torso,Part1=v,C0=cn(0,-0.9,1.2)*ca(0,180,0)} 
local belt=iPart{Gear,2.01,0.3,1.01,co='Black'} iNew{'Weld',belt,Part0=Torso,Part1=belt,C0=cn(0,-0.7,0)} 
for x=-1,1,2 do --continuesides
local of=iPart{Gear,0.3,1.2,0.3} iNew{'Weld',belt,Part0=belt,Part1=of,C0=cn(1.15*x,-0.1,0)*ca(-80,0,0)}
local v=iPart{Gear,0.3,1.2,0.3} iNew{'Weld',v,Part0=of,Part1=v,C0=cn(0,0,0.15)} iNew{'CylinderMesh',v}
local v=iPart{Gear,0.2,0.2,0.2,co='Really black'} iNew{'Weld',v,Part0=of,Part1=v,C0=cn(0,0.51,0.15)} iNew{'CylinderMesh',v}
Gt[x].grap=v
 
end
 
for i,v in pairs(Torso:children()) do 
if v:IsA'Sound' then v:Remove() end
end
for i,n in pairs(so) do  
if as[n] then 
local v=iNew{'Sound',Torso,Volume=0.5,Pitch=1,Looped=false,Name=n,SoundId=as[n]}
so[n]=v 
end
end
 
 
key={}
 
print(#Gear:children())
Root.C0=cn(0,0,0)*ca(0,0,0)
Root.C1=cn(0,0,0)*ca(0,0,0)
 
WalkAnim=0
Walking=false
WalkM=8
Humanoid.Running:connect(function(Walk)
Walking=Walk>20 and true or false
end)
 
--LL.Touched:connect(function() if Torso.Velocity.magnitude>30 then Torso.Velocity=nov3 end end)
--RL.Touched:connect(function() if Torso.Velocity.magnitude>30 then Torso.Velocity=nov3 end end)
_G.Torso=Torso
 
wait()
Arms(true)
Legs()
GetCurrent=function()
cLA,cLA2=GetWeld(LAW,0)
cRA,cRA2=GetWeld(RAW,0)
cLL,cLL2=GetWeld(LLW,0)
cRL,cRL2=GetWeld(RLW,0)
cRO,cRO2=GetWeld(Root,0)
cNE,cNE2=GetWeld(Neck,0)
end
ReturnAnim=function()
GetCurrent()
local ogt={[-1]={},[1]={}}
for x=-1,1,2 do ogt[x][1],ogt[x][2]=GetWeld(Gt[x].h,0) end
local walk=WalkAnim~=0
for x=1,ASpeed do 
    SetWeld(LAW,0,x,ASpeed,cLA,cLA2,OrigLA,walk and Walk1*WAPerc or OrigLA2,1) 
    SetWeld(RAW,0,x,ASpeed,cRA,cRA2,OrigRA,walk and Walk2*WAPerc or OrigRA2,1)
    if Hooks[-1] or Hooks[1] then else
    SetWeld(LLW,0,x,ASpeed,cLL,cLL2,OrigLL,OrigLL2,1) 
    SetWeld(RLW,0,x,ASpeed,cRL,cRL2,OrigRL,OrigRL2,1) end
    SetWeld(Root,0,x,ASpeed,cRO,cRO2,OrigRO,walk and Walk3*WAPerc or OrigRO2,1) 
    SetWeld(Neck,0,x,ASpeed,cNE,cNE2,OrigNE,walk and Walk4*WAPerc or OrigNE2,1) 
    for h=-1,1,2 do SetWeld(Gt[h].h,0,x,ASpeed,ogt[h][1],ogt[h][2],v3(0,-1,0),v3(-90,0,0),1)   end
wait()
end
end
 
SpecialAttack=function(TYPE)
if TYPE==1 then 
GetCurrent()
if Controls.Parent then Humanoid.Jump=true end
local legwas=LLW.Part1==LL and true or false
Legs(true)
for x=1,ASpeed/2 do 
    SetWeld(LAW,0,x,ASpeed/2,cLA,cLA2,OrigLA+v3(0,0.8,-0.2),v3(190,0, 10,1),1)
    SetWeld(RAW,0,x,ASpeed/2,cRA,cRA2,OrigRA+v3(0,0.8,-0.2),v3(190,0,-10,1),1)
    for h=-1,1,2 do SetWeld(Gt[h].h,0,x,ASpeed/2,v3(0,-1,0),v3(-90,0,0),v3(0,-1.25,0),v3(-135,0,0),1)   end
    SetWeld(LLW,0,x,ASpeed/2,cLL,cLL2,OrigLL+v3(0,0.6,-0.7),v3(-30,0,-10,1),1)
    SetWeld(RLW,0,x,ASpeed/2,cRL,cRL2,OrigRL+v3(0,0.6,-0.7),v3(-30,0,10,1),1)
    SetWeld(Root,0,x,ASpeed/2,cRO,cRO2,OrigRO,v3(90,0,0,1),1)
wait()
end
local spin,ii=360,3
for i=0,spin,spin/12 do 
ii=ii+1 if ii%4==0 then so.Slash:Play() end 
Root.C0=ca(90-i,0,0)
wait()
end
ClearWeld(Root)
ReturnAnim() Legs(legwas)
elseif TYPE==2 then 
end
end
 
pcall(function() Torso.BG:Remove() Torso.RP:Remove() end)
BG=iNew{'BodyGyro',Torso,Name='BG',maxTorque=nov3}
BP=iNew{'RocketPropulsion',Torso,Name='RP'}
local rocketprop=iPart{Gear,1,1,1,an=true,cf=cn(0,-100,0),tr=1}
rocketprop.CanCollide=false
BP.Target=rocketprop
BP.ThrustP=5
BP.MaxTorque=nov3 --v3(400000,400000,0)
BP.MaxThrust=4000
BP.MaxSpeed=30
--BP.CartoonFactor=1
BP.TurnP,BP.TurnD=0,0
BP.ThrustD=0.03 --BP.ThrustD*30
BP.ThrustP=BP.ThrustP/1.5
BP.TargetRadius=0
 
pcall(function() workspace.Camera.Inv:Remove() end)
Inv=iNew{'Model',workspace.Camera,Name='Inv'}
 
Hooks={}
HookP={[-1]={},[1]={}}
Hit=nil
Grapple={}
key={}
mouse=Player:GetMouse()
mouse.KeyDown:connect(function(k)
coroutine.resume(coroutine.create(function()
key[k]=true 
local gp={['q']=-1,['e']=1}
if k=='2' then 
elseif (k==' ') and Controls.Parent==nil then
if WallWalk then WallWalk=false return end 
WallWalk=false
Controls.Parent=game:service'ControllerService'
Humanoid.Sit=false
Legs(false)
OrigRO=v3(0,0,0)
Root.C0=cn(OrigRO)
---
elseif k=='0' and Controls.Parent==nil and not Gas.Enabled and not WallWalking then
local bv=iNew{'BodyVelocity',Torso}
Gas.Enabled=true
repeat
local ss=(Hooks[1] or Hooks[-1]) and 5000 or 2000
bv.maxForce=v3(ss,2000,ss)
bv.velocity=Torso.CFrame.lookVector*125
wait()
until not key[k] or Controls.Parent
Gas.Enabled=false
bv:Remove()
elseif (k=='q' or k=='e') and not Grapple[k] then
so.Slash:Play()
Grapple[k]=true
local x=gp[k]
local ob1=Gt[x].grap
local speed=26
local hook=iPart{Gear,1,1,1,co='Black',an=true,cf=cn(ob1.Position,mouse.Hit.p)*ca(-90,0,0)} iNew{'SpecialMesh',hook,Scale=v3(0.4,2,0.4),MeshId=as.cone}
local rope=iPart{Gear,1,1,1,co='Black',an=true,cf=cf} local ropem=iNew{'CylinderMesh',rope}
hook.CanCollide=false
rope.CanCollide=false
local con=game:GetService'RunService'.RenderStepped:connect(function()
local mag=(ob1.Position-hook.Position).magnitude
ropem.Scale=v3(0.2,mag,0.2)
rope.CFrame=cn(ob1.Position,hook.Position)*cn(0,0,-mag/2)*ca(90,0,0)
if not rope or not rope.Parent then con:disconnect() end
end)
for i=1,200 do 
if not key[k] then break end
local hit,pos=ray(hook.Position,hook.Position-hook.CFrame*cn(0,-speed,0).p,Char,speed+1)
if not hit then 
hook.CFrame=hook.CFrame*cn(0,speed,0)*ca(-0.1,0,0)
else
hook.CFrame=hook.CFrame*cn(0,(hook.Position-pos).magnitude,0)
end
local mag=(ob1.Position-hook.Position).magnitude
if hit and hit.Transparency<1 and hit.CanCollide then 
Hit=hit
HookP[x]={Hit,Hit.CFrame:toObjectSpace(hook.CFrame),pos}
so.Block:Play()
Hooks[x]=hook
Humanoid.Sit=true
Legs(true)
OrigRO=v3(0,1,0)
Root.C0=cn(OrigRO)
Controls.Parent=nil 
break
end
wait()
end
---
if Hit then 
--hook.Reflectance=0.1
end
repeat wait()
until not key[k] or Controls.Parent --relase
Hooks[x]=nil
hook:Remove()
rope:Remove()
Grapple[k]=false
elseif k=='f' and LegAnim=='None' and TorsoAnim=='None' and LegAnim=='None' then 
ArmAnim,LegAnim,TorsoAnim='','',''
SpecialAttack(1)
ArmAnim,LegAnim,TorsoAnim='None','None','None'
elseif k=='p' then 
local mpos=mouse.Hit.p
local wall=iPart{Char,1,1,1,an=true}
repeat 
local mag=(mpos-mouse.Hit.p).magnitude
wall.Size=v3(not key.l and 4 or 0.5,200,mag)
wall.CFrame=cn(mpos,mouse.Hit.p)*cn(0,100,-mag/2)
wait() until not key.p
local cf=wall.CFrame wall.Parent=workspace wall.CFrame=cf wall.CanCollide=true
elseif k=='l' then 
wotm8=wotm8 and wotm8+150 or 75
iPart{workspace,120,30,120,an=true,cf=cn(0,180,wotm8+100)*ca(0,mran(-40,40),0)}.CanCollide=true
iPart{workspace,146,4,120,an=true,cf=cn(0,1,wotm8+100)}.CanCollide=true
--elseif k=='w' and (not Hooks[-1] and not Hooks[1]) then 
--Humanoid.PlatformStand=false
end
end)) end)
mouse.KeyUp:connect(function(k)
coroutine.resume(coroutine.create(function()
key[k]=false
 
end)) end)
mouse.Button1Down:connect(function()
Button1=true
if ArmAnim=='None' then 
ArmAnim,TorsoAnim='Attack','Attack'
thesteerclick=thesteerclick==1 and -1 or 1
local y=thesteerclick
GetCurrent()
local ASpeed=ASpeed/1.5
for x=1,ASpeed do 
    SetWeld(LAW,0,x,ASpeed,cLA,cLA2,OrigLA,v3(0,-135*y,(-90-LookAngle/2)*y),1) 
    SetWeld(RAW,0,x,ASpeed,cRA,cRA2,OrigRA,v3(0,-135*y,(-90-LookAngle/2)*y),1)
    SetWeld(Root,0,x,ASpeed,cRO,cRO2,OrigRO,v3(0,-90*y,0),1) 
    SetWeld(Neck,0,x,ASpeed,cNE,cNE2,OrigNE,v3(0,90*y/3,0),1) 
    for h=-1,1,2 do SetWeld(Gt[h].h,0,x,ASpeed,v3(0,-1,0),v3(-90,0,0),v3(0,-1.25,0),v3(-180,0,0),1)   end
wait()
end
GetCurrent() 
so.Slash:Play()
for x=1,ASpeed do 
    SetWeld(LAW,0,x,ASpeed,cLA,cLA2,OrigLA+v3(0,0,-0.8),v3(0,-30*y,(-90-LookAngle/2)*y),1) 
    SetWeld(RAW,0,x,ASpeed,cRA,cRA2,OrigRA+v3(0,0,-0.8),v3(0,-30*y,(-90-LookAngle/2)*y),1)
    SetWeld(Root,0,x,ASpeed,cRO,cRO2,OrigRO,v3(0,80*y,0),1) 
    SetWeld(Neck,0,x,ASpeed,cNE,cNE2,OrigNE,v3(0,-80*y/3,0),1) 
wait()
end
ReturnAnim()
ArmAnim,TorsoAnim='None','None'
end
end)
mouse.Button1Up:connect(function()
Button1=false
 
end)
 
 
LegAnim='None'
ArmAnim='None'
TorsoAnim='None'
WalkSpeed={1,1,1,1,1,1,1,1}
ASpeed=8
OrigLA=v3(-1.5,0.5,0) OrigLA2=v3(5,0,-30)
OrigRA=v3( 1.5,0.5,0) OrigRA2=v3(5,0,30)
OrigLL=v3(-0.5,-1,0) OrigLL2=v3(0,0,0)
OrigRL=v3( 0.5,-1,0) OrigRL2=v3(0,0,0)
OrigRO=v3(0,0,0) OrigRO2=v3(0,0,0)
OrigNE=v3(0,1.5,0) OrigNE2=v3(0,0,0)
-----
--c/local x,y,z=workspace.RobroxMasterDX.Torso["Left Hip"].C0:toEulerAnglesXYZ() print(math.deg(y))
rocketfired=false
local spi,spix,span=0,0.5,1
while Gear.Parent do
local headpos,mousepos=Head.Position,mouse.Hit.p
XAngle=math.floor(cn(headpos,mousepos).lookVector.y*180)
LookAngle=XAngle<-20 and -20 or (XAngle>45 and 45 or XAngle)
WalkAnim=WalkAnim+(ArmAnim=='None' and (Walking and 1 or -1) or 0)
if WalkAnim<0 then WalkAnim=0 elseif WalkAnim>WalkM then WalkAnim=WalkM end 
WAPerc=WalkAnim/WalkM
    spi=spi+spix
    local adj=spi*8
    if math.abs(spi)>=span then spix=spix*-1 end 
    Walk1,Walk2,Walk3,Walk4=v3(0,90,-90+25+adj),v3(0,-90,90-25-adj),v3(-18-adj,0,spi*1.5),v3(18+adj,0,-spi*1.5)
    if ArmAnim=='None' then 
    SetWeld(LAW,0,WalkAnim,WalkM,OrigLA,OrigLA2,OrigLA,Walk1,1) 
    SetWeld(RAW,0,WalkAnim,WalkM,OrigRA,OrigRA2,OrigRA,Walk2,1)
    end
    if TorsoAnim=='None' then 
    SetWeld(Root,0,WalkAnim,WalkM,OrigRO,OrigRO2,OrigRO,Walk3,1) 
    SetWeld(Neck,0,WalkAnim,WalkM,OrigNE,OrigNE2,OrigNE,Walk4,1) 
    end
local ws=28 for i=1,#WalkSpeed do ws=ws*WalkSpeed[i] end Humanoid.WalkSpeed=ws
    --DoLoop Package
    for i,v in pairs(LoopFunctions) do 
    v[2]=v[2]+1
    v[3](v[2]/v[1])
    if v[1]<=v[2] then LoopFunctions[i]=nil end 
    end
    for x=-1,1,2 do 
    if Hooks[x] then Hooks[x].CFrame=HookP[x][1].CFrame*HookP[x][2] end 
    end
    if Hooks[-1] or Hooks[1] then 
    local hook=(Hooks[1] and Hooks[-1]) and 0 or Hooks[1] or Hooks[-1]
    HookPos=hook==0 and Hooks[1].Position+(Hooks[-1].Position-Hooks[1].Position)/2 or hook.CFrame.p 
    BP.MaxTorque=v3(0,0,0) BP.MaxSpeed=200 BP.MaxThrust=10*10000
    rocketprop.CFrame=cn(HookPos+v3(0,4,0)) 
    if not rocketfired then BP:Fire() rocketfired=true end
    else BP.MaxTorque=nov3
    if rocketfired then BP:Abort() rocketfired=false end
    end 
    if Humanoid.Sit and not WallWalking then 
    SetWeld(LLW,0,1,1,OrigLL,OrigLL2,OrigLL+v3(0,0.6,-0.7),v3(-30,0,-14,1),1)
    SetWeld(RLW,0,1,1,OrigRL,OrigRL2,OrigRL+v3(0,0.6,-0.7),v3(-30,0, 14,1),1)
    if not WallWalking then BG.cframe=cn(Torso.Position,mouse.Hit.p)*cn(0,0,-1) end --TweenCF(3,9,bg.CFrame,cn(Torso.Position,mouse.Hit.p))*cn(0,0,-1)
    BG.maxTorque=maxv3 --workspace.Camera.CoordinateFrame*cn(0,0,-1000).p
    else
    if not WallWalking then BG.maxTorque=nov3 end
    end
wait()
end --TweenV3(0.5,1,Hooks[1].Position,Hooks[-1].Position)
  	end    
})
local Tab = Window:MakeTab({
	Name = "Settings",
	Icon = "http://www.roblox.com/asset/?id=11507119861",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Status: Whitelisted"
})
local Section = Tab:AddSection({
	Name = "Coming Soon :)"
})
local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "http://www.roblox.com/asset/?id=11246999992",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Status: Whitelisted"
})
local Section = Tab:AddSection({
	Name = "Click On the button"
})
Tab:AddButton({
	Name = "Credits",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Credits",
	Content = "Made by Z3LDR1S.codixxx",
	Image = "http://www.roblox.com/asset/?id=11246999992",
	Time = 5
})
  	end    
})
local Tab = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "http://www.roblox.com/asset/?id=12049193959",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Status: Whitelisted"
})
local Section = Tab:AddSection({
	Name = "WalkSpeed"
})
Tab:AddSlider({
	Name = "WalkSpeed Slider",
	Min = 0,
	Max = 500,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "walkspeed value",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end    
})
local Section = Tab:AddSection({
	Name = "JumpPower"
})
Tab:AddSlider({
	Name = "JumpPower Slider",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "jumppower value",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end    
})
local Section = Tab:AddSection({
	Name = "Others"
})
Tab:AddButton({
	Name = "Fly Gui",
	Callback = function()
      		local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fly GUI V3"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Fly GUI V3";
    Text = "By me_ozone and Quandale The Dinglish XII#3550";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

    if nowe == true then
        nowe = false

        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
        speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    else 
        nowe = true



        for i = 1, speeds do
            spawn(function()

                local hb = game:GetService("RunService").Heartbeat    


                tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection)
                    end
                end

            end)
        end
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        local Char = game.Players.LocalPlayer.Character
        local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

        for i,v in next, Hum:GetPlayingAnimationTracks() do
            v:AdjustSpeed(0)
        end
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
        speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
    end




    if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Torso
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 50
        local speed = 0


        local bg = Instance.new("BodyGyro", torso)
        bg.P = 9e4
        bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.cframe = torso.CFrame
        local bv = Instance.new("BodyVelocity", torso)
        bv.velocity = Vector3.new(0,0.1,0)
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        if nowe == true then
            plr.Character.Humanoid.PlatformStand = true
        end
        while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
            game:GetService("RunService").RenderStepped:Wait()

            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                speed = speed+.5+(speed/maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                speed = speed-1
                if speed < 0 then
                    speed = 0
                end
            end
            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
            else
                bv.velocity = Vector3.new(0,0,0)
            end
            --    game.Players.LocalPlayer.Character.Animate.Disabled = true
            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
        end
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        plr.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        tpwalking = false




    else
        local plr = game.Players.LocalPlayer
        local UpperTorso = plr.Character.UpperTorso
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 50
        local speed = 0


        local bg = Instance.new("BodyGyro", UpperTorso)
        bg.P = 9e4
        bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.cframe = UpperTorso.CFrame
        local bv = Instance.new("BodyVelocity", UpperTorso)
        bv.velocity = Vector3.new(0,0.1,0)
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        if nowe == true then
            plr.Character.Humanoid.PlatformStand = true
        end
        while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
            wait()

            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                speed = speed+.5+(speed/maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                speed = speed-1
                if speed < 0 then
                    speed = 0
                end
            end
            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
            else
                bv.velocity = Vector3.new(0,0,0)
            end

            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
        end
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        plr.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        tpwalking = false



    end





end)

local tis

up.MouseButton1Down:connect(function()
    tis = up.MouseEnter:connect(function()
        while tis do
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        end
    end)
end)

up.MouseLeave:connect(function()
    if tis then
        tis:Disconnect()
        tis = nil
    end
end)

local dis

down.MouseButton1Down:connect(function()
    dis = down.MouseEnter:connect(function()
        while dis do
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
        end
    end)
end)

down.MouseLeave:connect(function()
    if dis then
        dis:Disconnect()
        dis = nil
    end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    wait(0.7)
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
    speeds = speeds + 1
    speed.Text = speeds
    if nowe == true then


        tpwalking = false
        for i = 1, speeds do
            spawn(function()

                local hb = game:GetService("RunService").Heartbeat    


                tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection)
                    end
                end

            end)
        end
    end
end)
mine.MouseButton1Down:connect(function()
    if speeds == 1 then
        speed.Text = 'cannot be less than 1'
        wait(1)
        speed.Text = speeds
    else
        speeds = speeds - 1
        speed.Text = speeds
        if nowe == true then
            tpwalking = false
            for i = 1, speeds do
                spawn(function()

                    local hb = game:GetService("RunService").Heartbeat    


                    tpwalking = true
                    local chr = game.Players.LocalPlayer.Character
                    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                        if hum.MoveDirection.Magnitude > 0 then
                            chr:TranslateBy(hum.MoveDirection)
                        end
                    end

                end)
            end
        end
    end
end)

closebutton.MouseButton1Click:Connect(function()
    main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
    up.Visible = false
    down.Visible = false
    onof.Visible = false
    plus.Visible = false
    speed.Visible = false
    mine.Visible = false
    mini.Visible = false
    mini2.Visible = true
    main.Frame.BackgroundTransparency = 1
    closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
    up.Visible = true
    down.Visible = true
    onof.Visible = true
    plus.Visible = true
    speed.Visible = true
    mine.Visible = true
    mini.Visible = true
    mini2.Visible = false
    main.Frame.BackgroundTransparency = 0 
    closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)

  	end    
})
Tab:AddButton({
	Name = "Noclip: E to noclip",
	Callback = function()
      		noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
  	end    
})
Tab:AddButton({
	Name = "Dex Explorer",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
  	end    
})
Tab:AddButton({
	Name = "Click Teleport: Ctrl + click",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
  	end    
})
Tab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
  	end    
})

