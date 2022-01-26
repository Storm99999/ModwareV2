--                          Modware V2
-- Swap out the Astrolemic with your username (a must for work)
-- Dagger gets swapped with Firebrand both locker and ingame
-- Katana gets swapped with Moai both locker and ingame
-- Items will be added to your locker, you can't use them ingame tho only the listed above work
-- Delinquent gets swapped with Driplinquent or Delinquent with Drip (whatever you wanna call it)
-- MUST BE INGAME WITH DELINQUENT EQUIPPED!!!!
-- For full source code of modware, boost our server, discord.gg/modware
-- you'll be able to change:
--  -basically everything lmfao
--  -Name Protection, level
--  -Item Names and icons
--  -Team(s) Control
--  -Rarities of items (well only kind of yes uh dunno)
-- Known bug(s) for now:
--  Not able to perfectly join any team (sometimes you'll get stuck, restart your game)
--  Delinquent with Drip bugging out (Not visible when emoting, restart your game)
--  If you instantly spawn in after joining a team Press M and do it again (Delinquent will have no head, afterwards Delinquent with Drip will now show up when emoteing)
-- Do not share modded source code unless obfuscated with MoonSec V2/V3
-- You can find the obfuscator here: https://discord.gg/X4y35V2nJF (dm the bot if offline don't share at all)
-- Make sure you react with atleast 3 options to protect source code from openly spreading
-- As of right now currently these features are included within Modware V2:
--  -Driplinquent
--  -Firebrand dev melee (custom rarity + name)
--  -Infinite Bucks (if no work restart game and play some matches)
--  -Custom level + name protection
--  -Custom level progress bar (for fun ig)
--  -Custom Title (Modenal instead of arsenal yk what im sayin)
local player = game.Players.LocalPlayer
local but = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons["Pur"]:Clone()
local orangeTeam = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons["Or"]:Clone()
local ylwf = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons["Ylw"]
local grnf = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons["Grn"]
but.Visible  = true
orangeTeam.Visible = true
ylwf.lock.Visible = false
local red = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons.Rd.lock
local blu = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons.Blu.lock
--but.ImageColor3 = Color3.new(100, 0.7, 0)--Red, Green, Blue.
--but.Position = UDim2.new(0, -155, 1, -320)
orangeTeam.Parent = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons
but.Parent = game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons
but.MouseButton1Click:connect(function()
    if blu.Visible == true then
       game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC") 
    end
   if red.Visible == true then
        game.ReplicatedStorage.Events.JoinTeam:FireServer("TBC") 
   end
    
    game.Players.LocalPlayer.Status.Team.Value = "TPC"
    
    game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC")
    game.ReplicatedStorage.Events.KillMe:FireServer()
    wait(0.2)
    game.Players.LocalPlayer.Status.Team.Value = "TPC"
    game.Players.LocalPlayer.Status.Team.Value = "TPC"
    
    wait(0.3)
    
    
    game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible = false
    game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible = false
    
    
     
    



end)


orangeTeam.MouseButton1Click:connect(function()

 if blu.Visible == true then
       game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC") 
    end
   if red.Visible == true then
        game.ReplicatedStorage.Events.JoinTeam:FireServer("TBC") 
   end
    
    game.Players.LocalPlayer.Status.Team.Value = "TOC"
    
    game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC")
    game.ReplicatedStorage.Events.KillMe:FireServer()
    wait(0.2)
    game.Players.LocalPlayer.Status.Team.Value = "TOC"
    game.Players.LocalPlayer.Status.Team.Value = "TOC"
    
    wait(0.3)
    
    
    game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible = false
    game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible = false
    
    
     
    



end)


ylwf.MouseButton1Click:connect(function()

 if blu.Visible == true then
       game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC") 
    end
   if red.Visible == true then
        game.ReplicatedStorage.Events.JoinTeam:FireServer("TBC") 
   end
    
    game.Players.LocalPlayer.Status.Team.Value = "TYC"
    
    game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC")
    game.ReplicatedStorage.Events.KillMe:FireServer()
    wait(0.2)
    game.Players.LocalPlayer.Status.Team.Value = "TYC"
    game.Players.LocalPlayer.Status.Team.Value = "TYC"
    
    wait(0.3)
    
    
    game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible = false
    game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible = false
    
    
     
    



end)

grnf.MouseButton1Click:connect(function()
 if blu.Visible == true then
       game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC") 
    end
   if red.Visible == true then
        game.ReplicatedStorage.Events.JoinTeam:FireServer("TBC") 
   end
    
    game.Players.LocalPlayer.Status.Team.Value = "TGC"
    
    game.ReplicatedStorage.Events.JoinTeam:FireServer("TRC")
    game.ReplicatedStorage.Events.KillMe:FireServer()
    wait(0.2)
    game.Players.LocalPlayer.Status.Team.Value = "TGC"
    game.Players.LocalPlayer.Status.Team.Value = "TGC"
    
    wait(0.3)
    
    
    game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible = false
    game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible = false
    
    
end)
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.ShopButtons.Bucks.Bucks.Text = "      ∞"
game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.Title.Text = "M o d e n a l"
game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.Title.DropShadow.Text = "M o d e n a l"
print("Giving access to Delinquent with Drip/Driplinquent...")
game.Players.LocalPlayer.Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6311929085"
game.Players.LocalPlayer.Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=6311929085"


game.Players.LocalPlayer.Ragdoll.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6311929085"
game.Players.LocalPlayer.Ragdoll.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=6311929085"
local vm = game:GetService("ReplicatedStorage").Viewmodels.Arms.Delinquent
vm.Name = "Holder"
local toName = game:GetService("ReplicatedStorage").Viewmodels.Arms["Segg with Drip"]
toName.Name = "Delinquent"
game:GetService("Workspace")["Astrolemic"].Cap:Destroy()
game:GetService("ReplicatedStorage").Viewmodels["v_Dagger"].Name = "farts"
game:GetService("ReplicatedStorage").Viewmodels["v_The Firebrand"].Name = "v_Dagger"
game:GetService("ReplicatedStorage").KillIcons.Dagger.Value = "http://www.roblox.com/asset/?id=2894717085"
game:GetService("ReplicatedStorage").Viewmodels["v_Katana"].Name = "arsenal sucks"
game:GetService("ReplicatedStorage").Viewmodels["v_Moai"].Name = "v_Katana"
game:GetService("ReplicatedStorage").Viewmodels["v_Baton"].Name = "deez"
game:GetService("ReplicatedStorage").Viewmodels["v_Night's Edge"].Name = "v_Baton"
game:GetService("ReplicatedStorage").ItemData.Images.Melees.Katana.Value = "rbxassetid://3560280048"
game:GetService("ReplicatedStorage").KillIcons.Katana.Value = "rbxassetid://2737125495"
print("Melees swapped successfully...")
while true do
local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);

local Loadout;
for i,v in pairs(getupvalues(Core.ViewItems)) do
    if typeof(v) == "table" then
        if v.Skins then
            Loadout = v;
        end
    end
end
-- SKIN ADDING
table.insert(Loadout.Skins, "Monky")
table.insert(Loadout.Skins, "Monky with Drip")
table.insert(Loadout.Skins, "Myboe")
table.insert(Loadout.Skins, "Noodle Man")
table.insert(Loadout.Skins, "Sans")
table.insert(Loadout.Skins, "Monky Fan")
table.insert(Loadout.Skins, "Weeb Delinquent")
table.insert(Loadout.Skins, "Deadlinquent")
table.insert(Loadout.Skins, "Delinquent That's Cool")




local Coref = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);

local Loadoutf;
for i,v in pairs(getupvalues(Coref.ViewItems)) do
    if typeof(v) == "table" then
        if v.Melees then
            Loadoutf = v;
        end
    end
end

table.insert(Loadout.Melees, "Night's Edge")
table.insert(Loadout.Melees, "Moderation Hammer")
table.insert(Loadout.Melees, "The Illumina")
table.insert(Loadout.Melees, "Frog")
table.insert(Loadout.Melees, "The Ghostwalker")
table.insert(Loadout.Melees, "The Venomshank")
table.insert(Loadout.Melees, "Da Melee")
table.insert(Loadout.Melees, "Gaster Blaster")
table.insert(Loadout.Melees, "ACT Trophy")

ylwf.lock.Visible = false
print("Adding Name protection & infinite bucks to account...")
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Main.PlrName.Text = "Exploiter - Level: 999"
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Main.LevelMeter.FILL.FILL.BackgroundColor3 = Color3.fromRGB(255, 64, 0)
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.ShopButtons.Bucks.Bucks.Text = "      ∞"
local isAlrCreated = game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame:FindFirstChild("Dagger")
local isAlrCreatedDel = game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame:FindFirstChild("Delinquent")
if isAlrCreated then
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Dagger.TextLabel.Text = "dang"
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Dagger.Count.Visible = true
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Dagger.Count.Text = "x999"
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Dagger.Quality.ImageColor3 = Color3.fromRGB(0,0,0)
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Dagger.Item.Image = "rbxassetid://32390453"
end
if isAlrCreatedDel then
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Delinquent.TextLabel.Text = "Delinquent with Drip"
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Delinquent.Quality.ImageColor3 = Color3.fromRGB(255, 170, 255)
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Delinquent.Count.Visible = true
game:GetService("Players")["Astrolemic"].PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Delinquent.Count.Text = "inf"
end
wait()
end

-- do not touch
--    http://www.roblox.com/asset/?id=2894717085
