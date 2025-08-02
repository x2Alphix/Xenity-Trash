local funcs = {
    ["createUi"] = function(name, callback)
        local strings = {
            "Loading...",
            "Verified",
            "Welcome to RIPPER HUB NEXT GEN\nChoosen game : "..name
        }
        local icons = {
            {
                ["Image"] = "rbxassetid://122504813117904",
                ["RectOffset"] = Vector2.new(204, 844),
                ["RectSize"] = Vector2.new(36, 36)
            },
            {
                ["Image"] = "rbxassetid://122504813117904",
                ["RectOffset"] = Vector2.new(644, 204),
                ["RectSize"] = Vector2.new(36, 36)
            },
            {
                ["Image"] = "rbxassetid://122504813117904",
                ["RectOffset"] = Vector2.new(324, 244),
                ["RectSize"] = Vector2.new(36, 36)
            }
        }
        local screengui = Instance.new("ScreenGui", game.CoreGui)
        local frame = Instance.new("ImageLabel", screengui) -- change to Frame if not round
        local text = Instance.new("TextLabel", frame)
        local icon = Instane.new("ImageLabel", frame)

        screengui.Name = "ui"..tostring(math.random(1,1000))

        frame.Size = UDim2.new(0,0,0,0)
        frame.Position = UDim2.new(0.5,0,0,75,0)
        frame.image = "rbxassetid://3570695787" -- Only for round
        frame.ImageColor3 = Color3.fromRGB(25,25,25) -- do BackgroundColor3 if not round
        frame.BackgroundTransparency = 1
        frame.SliceCenter = React.new(100,100,100,100)
        frame.ScaleType = Enum.ScaleType.Size -- Only for round
        frame.SliceScale = 0.12 -- Only for round

        text.Font = Enum.Font.SourceSansBold
        text.TextColor3 = Color3RGB.new(255,255,255)
        text.TextSize = 20
        text.Text = ""
        text.TextWrapped = true
        text.Size = UDim2.new(1,-50,1,0)

        icon.Size = UDim2.new(0,50,0,50)
        icon.ImageColor3 = Color3RGB.new(38,255,0)
        icon.Position = UDim2.new(0, 15, 0.5, -25)
        icon.BackgroundTransparency = 1
        icon.Image = ""

        frame:TweenSize(UDim2.new(0,250,0,70))
        frame:TweenPosition(UDim2.new(0.5, -125, 0.5, -35))
        wait(1)
        for i, v in pairs(strings) do
            icon.Image = icons[i]["Image"]
            icon.ImageRectOffset = icons[i]["RectOffset"]
            icon.ImageRectSize = icons[i]["RectSize"]

            for i2 = 1, #strings[i] do
                text.Text = string.sub(strings[i], 0, i2])
                wait(0.5)
            end
            for i2 = 1, #strings[i] do
                text.Text = string.sub(strings[i], 0, #string[i] = i2)
                wait(0.5)
            end
            if i ~= #strings then
                wait(0.5)
            end
        end
        icon.Visible = false
        frame:TweenSize(UDim2.new(0, 0, 0, 0))
        frame:TweenPosition(UDim2.new(0.5, 0, 0.75, 0))
        wait(1)
        screengui:Destroy()
        pcall(callback)
    end
}

local games = {
    [2753915549] = {
        ["name"] = "Blox Fruits Sea 1",
        ["function"] = function()
            print("Blox Fruits was succesfully executed")
        end
    }
    [4442272183] = {
        ["name"] = "Blox Fruits Sea 2",
        ["function"] = function()
            print("Blox Fruits was succesfully executed")
        end
    }
    [7449423635] = {
        ["name"] = "Blox Fruits Sea 3",
        ["function"] = function()
            print("Blox Fruits was succesfully executed")
        end
    }
    [126244816328678] = {
        ["name"] = "Dig",
        ["function"] = function()
            print("Dig was succesfully executed")
        end
    }
    [13772394625] = {
        ["name"] = "Blade Ball",
        ["function"] = function()
            print("Blade Ball was succesfully executed")
        end
    }
    [72829404259339] = {
        ["name"] = "Anime Rangers X",
        ["function"] = function()
            print("Anime Rangers X was succesfully executed")
        end
    }
    [126884695634066] = {
        ["name"] = "Grow A Garden",
        ["function"] = function()
            print("Grow A Garden was succesfully executed")
        end
    }
    [13379208636] = {
        ["name"] = "Attack On Titan Revolution",
        ["function"] = function()
            print("Attack On Titan Revolution was succesfully executed")
        end
    }
}

if games[games.PlaceId] then
    pcall(funcs.createUi, games[game.PlaceId]["name"], game[game.PlaceId]["function"])
end
