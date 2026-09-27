-- // Notification khi kích hoạt
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NhoiiixHub",
    Text = "Success!",
    Icon = "rbxassetid://83190276951914",
    Duration = 10
    })
       local Window = MakeWindow({
         Hub = {
         Title = "Nhoiiix hub tổng hợp [by bao lam]",
         Animation = "Youtube:NhoiiixHub"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=83190276951914",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Realkid hub",
    Callback = function()
	  local Settings = {
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()
end
AddButton(Tab1o, {
          Name = "hoho hub",
    Callback = function()
	  local Settings = {
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end
  })