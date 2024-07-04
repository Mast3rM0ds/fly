local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/Mercury-Ui-Lib/main/Source.lua"))()
local Players = game:GetService("Players"):GetChildren()

local GUI = Mercury:Create{
    Name = "Aniara Hub V.1.0",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/shezan78/Mercury-Ui-Lib"
}

local Tab1 = GUI:Tab{
	Name = "Normal Cheats",
	Icon = "rbxassetid://8569322835"
}

Tab1:Button{
	Name = "Die",
	Description = nil,
	Callback = function()
      game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end 
}

Tab1:Toggle{
    Name = "Health Giver",
    StartingState = false,
    Description = nil,
    Callback = function(state) 
           game.Players.LocalPlayer.Character.Humanoid.Health += 100
    end
}



GUI:Credit{
	Name = "91ba",
	Description = "Helped with the script",
	Discord = "91ba"
}

GUI:Credit{
	Name = "liteasteroid",
	Description = "Made The Script",
	V3rm = "https://mast3rm0ds.github.io/",
	Discord = "liteasteroid"
}