local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Knocker outta",
   LoadingTitle = "Loading the knocker, yeah.",
   LoadingSubtitle = "By @jeffbob900 on discord (Fixed by Grok)",
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
   Flag = "KnockerOutta_WalkSpeed_UniqueFlag_v1",  -- Very unique flag
   Callback = function(Value)
      local player = game.Players.LocalPlayer
      if player and player.Character then
         local humanoid = player.Character:FindFirstChildWhichIsA("Humanoid")
         if humanoid then
            humanoid.WalkSpeed = Value
            -- Optional: feedback
            Rayfield:Notify({
               Title = "Speed Changed",
               Content = "WalkSpeed is now " .. Value,
               Duration = 2.5,
               Image = 4483362458,
            })
         end
      end
   end,
})

-- Optional: Reset button (handy for testing)
Tab:CreateButton({
   Name = "Reset to Default (16)",
   Callback = function()
      SpeedSlider:Set(16)  -- Automatically triggers the callback too
   end,
})
