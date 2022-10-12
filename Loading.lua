local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
 
local win = DiscordLib:Window("Killer Hub | Snitch Town")
 
local serv = win:Server("Main", "rbxassetid://11247127403")
 
local tgls = serv:Channel("Auto Farm")
local tp = serv:Channel("Teleport")
 
tgls:Toggle("Auto Vegetable - Need Knife",false, function(bool)
_G.Vegetable = bool
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1985.13806, 281.981079, -1184.65393, -0.0951901972, 0.000721344783, 0.995458841, 0.000214763626, 0.999999702, -0.000704098609, -0.99545908, 0.000146765058, -0.0951903239)
wait(0.2)
while _G.Vegetable do wait(5.9)
for i,v in pairs(game:GetService("Workspace").Vegetable:GetChildren()) do
    if v.Name == "Vegetable" and v.Transparency == 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-5,0)
wait(0.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(2)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game)
task.wait(2.7)
end
end
end
end)

tp:Button("Hospital", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2208.15381, 282.703156, 4993.85156, 0.0304228198, -1.85994764e-09, -0.99953711, 4.81359272e-08, 1, -3.95700112e-10, 0.99953711, -4.8101608e-08, 0.0304228198)
end)

tp:Button("Police Station", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1319.86877, 289.133087, 4530.41699, -0.997812271, -2.37847892e-08, 0.0661107525, -1.68705583e-08, 1, 1.0514384e-07, -0.0661107525, 1.03798492e-07, -0.997812271)
end)

tp:Button("Lebel", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3821.31226, 282.160492, 2360.78564, 0.000598996878, -1.30383683e-06, -0.999999881, 6.29710894e-06, 1, -1.30006435e-06, 0.999999881, -6.29633087e-06, 0.000598996878)
end)

tp:Button("Crafting Table", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3536.30493, 282.38913, 2575.58398, -0.0665651187, 5.56802355e-08, 0.997782111, -1.83973512e-08, 1, -5.70313468e-08, -0.997782111, -2.21528467e-08, -0.0665651187)
end)

tp:Button("Spawn", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1096.0415, 282.148224, 5165.25781, 0.999943078, -8.82578419e-08, 0.0106674386, 8.83802187e-08, 1, -1.10007408e-08, -0.0106674386, 1.19429053e-08, 0.999943078)
end)

    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and _G.Vegetable then
                setfflag("HumanoidParallelRemoveNoPhysics", "False")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end)
    end)

        spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Vegetable then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Knife"))
            end
        end)
       end)
        end)
    
