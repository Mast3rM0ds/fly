local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/Mercury-Ui-Lib/main/Source.lua"))()
local Players = game:GetService("Players"):GetChildren()

local GUI = Mercury:Create{
    Name = "Aniara Hub V.1.0",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/shezan78/Mercury-Ui-Lib"
}

local Tab1 = GUI:Tab{
	Name = "Universal Cheats",
	Icon = "rbxassetid://8569322835"
}

local Tab2 = GUI:Tab{
	Name = "Doors Cheats",
	Icon = "rbxassetid://8569322835"
}

-- Universal Stuff --
Tab1:Button{
	Name = "Die",
	Description = nil,
	Callback = function()
      game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end 
}

Tab1:Toggle{
    Name = "Health Giver",
    StartingState = false,
    Description = nil,
    Callback = function(state) 
           game.Players.LocalPlayer.Character.Humanoid.Health = 100
    end
}

-- Doors Cheats --
Tab2:Button{
	Name = "Respawn",
	Description = nil,
	Callback = function()
      game.ReplicatedStorage.Bricks.Revive:FireServer()
    end 
}
Tab2:Button{
	Name = "Play Again",
	Description = nil,
	Callback = function()
      game.ReplicatedStorage.Bricks.PlayAgain:FireServer()
    end 
}
-- Credits --
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