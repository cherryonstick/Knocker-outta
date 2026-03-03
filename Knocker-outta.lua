local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Knocker outta",
   LoadingTitle = "Loading the knocker, yeah.",
   LoadingSubtitle = "By @jeffbob900 on discord",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Knocker outta folder",
      FileName = "Knocker outta file"
   },
   KeySystem = false
})

local Tab = Window:CreateTab("Movement", 4483362458)

Tab:CreateSection("WalkSpeed Changer")

local SpeedSlider = Tab:CreateSlider({
   Name = "Player WalkSpeed",
   Range = {16, 200},
   Increment = 1,
   Suffix = "Studs/sec",
   CurrentValue = 16,
   Flag = "WalkSpeedValueKnockeroutta",
   Callback = function(Value)
      local player = game.Players.LocalPlayer
      if player and player.Character then
         local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
         if humanoid then
            humanoid.WalkSpeed = Value
         end
      end
   end,
})

Rayfield:LoadConfiguration()
