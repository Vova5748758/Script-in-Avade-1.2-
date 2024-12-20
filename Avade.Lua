print("Load..")
-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--[[ 
В данный момент стоит тема "RJTheme8" ,
вы можете использовать другую тему приведённую ниже -
"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"
//////////////////////////////////////////////////////////////////

Что бы сделать свою тему , уберите часть скрипта из "комминтариев" ,
который находится чуть ниже , и вместо "RJTheme3" в переменной "Windows" - 
напишите переменную которая используется в скрипте чуть ниже .
]]
--[[
local colors = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(150, 72, 148),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]
-- Создать окно UI
local Window = Library.CreateLib("text", "RJTheme8")

-- Секция
local Tab = Window:NewTab("TabName")

-- Подсекция
local Section = Tab:NewSection("Section Name")

-- Заголовок
Section:NewLabel("LabelText")

-- Кнопка
Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)

w

-- Слайдер
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- Текст Бокс
Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)

-- Бинд на клавиши
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

-- Дропдаун
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

local Window = Library.CreateLib("функции", "RJTheme8")

Section:NewLabel("настройки игрока")

Section:NewSlider("Скорость", "Поставить скорость игрока", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- Слайдер
Section:NewSlider("Прыжок", "Поставить высоту прыжка", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Переключатель
Section:NewToggle("УБИТЬ ВСЕХ", "ПРЕДУПРЕЖДЕНИЕ работает если есть не закриплёные части", function(state)
    if state then
        print("Toggle On")
        -- Получаем всех игроков в игре
local Players = game:GetService("Players")

-- Функция для телепортации части ко всем игрокам
local function TeleportPartToPlayers(part)
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local clonedPart = part:Clone()
            clonedPart.Parent = workspace
            clonedPart.CFrame = player.Character.HumanoidRootPart.CFrame
        end
    end
end

-- Проверяем все части в workspace
for _, part in ipairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") and not part.Anchored then
        TeleportPartToPlayers(part)
    end
end
    else
        print("Toggle Off")
    end
end)

local Window = Library.CreateLib("Телепорт", "RJTheme8")

Section:NewButton("сохранить зона", "телепортирует на точку где не могут достать NPC", function()
    print("Clicked")
    local Players = game:GetService("Players")

local function TeleportPlayer(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(1840.58, 10674.516, 706.51)
    end
end

-- Телепортируем всех игроков при запуске скрипта
for _, player in ipairs(Players:GetPlayers()) do
    TeleportPlayer(player)
end

    -- Переключатель
Section:NewToggle("сохранить себя", "телепортирует каждую 0 секунд на точку где не могут достать NPC", function(state)
    if state then
        print("Toggle On")
          local Players = game:GetService("Players")

local function TeleportPlayer(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(1840.58, 10674.516, 706.51)
    end
end

local function StartTeleportation(player)
    while true do
        TeleportPlayer(player)
        wait(0)  -- Каждые 0 секунд
    end
end

-- Начинаем телепортацию для каждого игрока
for _, player in ipairs(Players:GetPlayers()) do
    StartTeleportation(player)
end

    else
        print("Toggle Off")
    end
end)
end)
