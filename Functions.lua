function findPlr(name, ...) 
	local plr = nil

	if ... ~= nil then
		table.insert(..., game.Players.LocalPlayer.Name)
	end
	
	if name ~= "Random" then
		for i, v in pairs(game.Players:GetChildren()) do
			if string.match(string.lower(v.Name), "^" .. string.lower(name)) then
				plr = v
				break
			end
		end
	else
		plr = game.Players:GetChildren()[math.random(#game.Players:GetChildren())]
		if ... then
			while table.find(..., plr.Name) do
				wait()
				plr = game.Players:GetChildren()[math.random(#game.Players:GetChildren())]
			end
		end
	end

	return plr
end


function popup(text, ...)
	local Gui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Text = Instance.new("TextLabel")

	Gui.Name = "Gui"
	Gui.Parent = game.CoreGui

	Main.Name = "Main"
	Main.Parent = Gui
	Main.Active = true
	Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Main.BackgroundTransparency = 0.25
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.Position = UDim2.new(0.5, 0, 0.1, 0)
	Main.Size = UDim2.new(0.15, 0, 0.1, 0)
	Main.Draggable = false

	Text.Parent = Main
	Text.Active = true
	Text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Text.BackgroundTransparency = 1
	Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Text.Position = UDim2.new(0.16, 0, 0.025, 0)
	Text.Size = UDim2.new(0, 160, 0, 80)
	Text.Font = Enum.Font.SourceSansSemibold
	Text.Text = text
	Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text.TextScaled = true
	Text.TextSize = 10.000
	Text.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	Text.TextWrapped = true

	if ... then
		wait(...)
	else
		wait(3)
	end

	Gui:Destroy()
end
