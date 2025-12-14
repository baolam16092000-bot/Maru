-- ts file was generated at discord.gg/25ms


print("Break")
shared.LoaderTitle = "\196\144\196\131ng K\195\173 K\195\170nh \225\187\166ng H\225\187\153 Kimp Nha!"
shared.LoaderKeyFrames = {
    {
        1,
        10
    },
    {
        2,
        30
    },
    {
        3,
        60
    },
    {
        2,
        100
    }
}
local v1 = {
    ["LoaderData"] = {
        ["Name"] = shared.LoaderTitle or "A Loader",
        ["Colors"] = shared.LoaderColors or {
            ["Main"] = Color3.fromRGB(0, 0, 0),
            ["Topic"] = Color3.fromRGB(200, 200, 200),
            ["Title"] = Color3.fromRGB(0, 191, 255),
            ["LoaderBackground"] = Color3.fromRGB(40, 40, 40),
            ["LoaderSplash"] = Color3.fromRGB(0, 191, 255)
        }
    },
    ["Keyframes"] = shared.LoaderKeyFrames or {
        {
            1,
            10
        },
        {
            2,
            30
        },
        {
            3,
            60
        },
        {
            2,
            100
        }
    }
}
local vu2 = {
    "",
    "",
    "",
    ""
}
function TweenObject(p3, p4, p5)
    game.TweenService:Create(p3, TweenInfo.new(p4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), p5):Play()
end
function CreateObject(p6, p7)
    local v8 = Instance.new(p6)
    local v9, v10, v11 = pairs(p7)
    local v12 = nil
    while true do
        local v13
        v11, v13 = v9(v10, v11)
        if v11 == nil then
            break
        end
        if v11 == "Parent" then
            v12 = v13
        else
            v8[v11] = v13
        end
    end
    v8.Parent = v12
    return v8
end
local function v17(p14, p15)
    local v16 = Instance.new("UICorner")
    v16.CornerRadius = UDim.new(0, p14)
    v16.Parent = p15
end
local v18 = CreateObject("ScreenGui", {
    ["Name"] = "Core",
    ["Parent"] = game.CoreGui
})
local v19 = CreateObject("Frame", {
    ["Name"] = "Main",
    ["Parent"] = v18,
    ["BackgroundColor3"] = v1.LoaderData.Colors.Main,
    ["BorderSizePixel"] = 0,
    ["ClipsDescendants"] = true,
    ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
    ["AnchorPoint"] = Vector2.new(0.5, 0.5),
    ["Size"] = UDim2.new(0, 0, 0, 0)
})
v17(12, v19)
v17(25, (CreateObject("ImageLabel", {
    ["Name"] = "UserImage",
    ["Parent"] = v19,
    ["BackgroundTransparency"] = 1,
    ["Image"] = "rbxassetid://gay",
    ["Position"] = UDim2.new(0, 15, 0, 10),
    ["Size"] = UDim2.new(0, 50, 0, 50)
})))
CreateObject("TextLabel", {
    ["Name"] = "UserName",
    ["Parent"] = v19,
    ["BackgroundTransparency"] = 1,
    ["Text"] = " YTB: KIMP ROBLOX",
    ["Position"] = UDim2.new(0, 100, 0, 0),
    ["Size"] = UDim2.new(0, 250, 0, 70),
    ["Font"] = Enum.Font.GothamBold,
    ["TextColor3"] = v1.LoaderData.Colors.Title,
    ["TextSize"] = 14,
    ["TextXAlignment"] = Enum.TextXAlignment.Left
})
local v20 = CreateObject("TextLabel", {
    ["Name"] = "Top",
    ["TextTransparency"] = 1,
    ["Parent"] = v19,
    ["BackgroundColor3"] = Color3.fromRGB(255, 255, 255),
    ["BackgroundTransparency"] = 1,
    ["Position"] = UDim2.new(0, 30, 0, 70),
    ["Size"] = UDim2.new(0, 301, 0, 20),
    ["Font"] = Enum.Font.Gotham,
    ["Text"] = "Loader",
    ["TextColor3"] = v1.LoaderData.Colors.Topic,
    ["TextSize"] = 10,
    ["TextXAlignment"] = Enum.TextXAlignment.Left
})
local v21 = CreateObject("TextLabel", {
    ["Name"] = "Title",
    ["Parent"] = v19,
    ["TextTransparency"] = 1,
    ["BackgroundColor3"] = Color3.fromRGB(255, 255, 255),
    ["BackgroundTransparency"] = 1,
    ["Position"] = UDim2.new(0, 30, 0, 90),
    ["Size"] = UDim2.new(0, 301, 0, 46),
    ["Font"] = Enum.Font.Gotham,
    ["RichText"] = true,
    ["Text"] = "<b>" .. v1.LoaderData.Name .. "</b>",
    ["TextColor3"] = v1.LoaderData.Colors.Title,
    ["TextSize"] = 14,
    ["TextXAlignment"] = Enum.TextXAlignment.Left
})
local v22 = CreateObject("Frame", {
    ["Name"] = "BG",
    ["Parent"] = v19,
    ["AnchorPoint"] = Vector2.new(0.5, 0),
    ["BackgroundTransparency"] = 1,
    ["BackgroundColor3"] = v1.LoaderData.Colors.LoaderBackground,
    ["BorderSizePixel"] = 0,
    ["Position"] = UDim2.new(0.5, 0, 0, 70),
    ["Size"] = UDim2.new(0.8500000238418579, 0, 0, 24)
})
v17(8, v22)
local vu23 = CreateObject("Frame", {
    ["Name"] = "Progress",
    ["Parent"] = v22,
    ["BackgroundColor3"] = v1.LoaderData.Colors.LoaderSplash,
    ["BackgroundTransparency"] = 1,
    ["BorderSizePixel"] = 0,
    ["Size"] = UDim2.new(0, 0, 0, 24)
})
v17(8, vu23)
local vu24 = CreateObject("TextLabel", {
    ["Name"] = "StepLabel",
    ["Parent"] = v19,
    ["BackgroundTransparency"] = 1,
    ["Position"] = UDim2.new(0.5, 0, 1, - 25),
    ["Size"] = UDim2.new(1, - 20, 0, 20),
    ["Font"] = Enum.Font.Gotham,
    ["Text"] = "",
    ["TextColor3"] = v1.LoaderData.Colors.Topic,
    ["TextSize"] = 14,
    ["TextXAlignment"] = Enum.TextXAlignment.Center,
    ["AnchorPoint"] = Vector2.new(0.5, 0.5)
})
function UpdateStepText(p25)
	-- upvalues: (ref) vu24, (ref) vu2
    vu24.Text = vu2[p25] or ""
end
function UpdatePercentage(p26, p27)
	-- upvalues: (ref) vu23
    TweenObject(vu23, 0.5, {
        ["Size"] = UDim2.new(p26 / 100, 0, 0, 24)
    })
    UpdateStepText(p27)
end
TweenObject(v19, 0.25, {
    ["Size"] = UDim2.new(0, 346, 0, 121)
})
wait()
TweenObject(v20, 0.5, {
    ["TextTransparency"] = 0
})
TweenObject(v21, 0.5, {
    ["TextTransparency"] = 0
})
TweenObject(v22, 0.5, {
    ["BackgroundTransparency"] = 0
})
TweenObject(vu23, 0.5, {
    ["BackgroundTransparency"] = 0
})
local v28, v29, v30 = pairs(v1.Keyframes)
local v31 = vu23
while true do
    local v32
    v30, v32 = v28(v29, v30)
    if v30 == nil then
        break
    end
    wait(v32[1])
    UpdatePercentage(v32[2], v30)
end
UpdatePercentage(100, 4)
TweenObject(v20, 0.5, {
    ["TextTransparency"] = 1
})
TweenObject(v21, 0.5, {
    ["TextTransparency"] = 1
})
TweenObject(v22, 0.5, {
    ["BackgroundTransparency"] = 1
})
TweenObject(v31, 0.5, {
    ["BackgroundTransparency"] = 1
})
wait(0.5)
TweenObject(v19, 0.25, {
    ["Size"] = UDim2.new(0, 0, 0, 0)
})
wait(0.25)
v18:Destroy()
getgenv().Team = getgenv().Team or "Pirates"
repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("DataLoaded")
if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") then
    repeat
        wait()
        game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("SetTeam", getgenv().Team)
        task.wait(3)
    until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)")
end
repeat
    task.wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local vu33 = task
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
if not LPH_OBFUSCATED then
    function LPH_JIT_MAX(...)
        return ...
    end
    function LPH_NO_VIRTUALIZE(...)
        return ...
    end
    function LPH_NO_UPVALUES(...)
        return ...
    end
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/obfalchx/edit/refs/heads/main/Module"))()
local v34, v35, v36 = pairs(getconnections(game:GetService("Players").LocalPlayer.Idled))
while true do
    local v37
    v36, v37 = v34(v35, v36)
    if v36 == nil then
        break
    end
    v37:Disable()
end
local v38 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhAnDz/Library/refs/heads/main/gay"))()
if game.PlaceId ~= 2753915549 then
    if game.PlaceId ~= 4442272183 then
        if game.PlaceId == 7449423635 then
            World3 = true
        end
    else
        World2 = true
    end
else
    World1 = true
end
Instance.new("Folder", workspace).Name = "EnemySpawns"
local v39, v40, v41 = pairs(workspace._WorldOrigin.EnemySpawns:GetChildren())
while true do
    local v42, v43 = v39(v40, v41)
    if v42 == nil then
        break
    end
    v41 = v42
    if v43:IsA("Part") then
        local v44 = v43:Clone()
        local v45 = string.gsub(v43.Name, "Lv. ", "")
        local v46 = string.gsub(v45, "[%[%]]", "")
        local v47 = string.gsub(v46, "%d+", "")
        v44.Name = string.gsub(v47, "%s+", "")
        v44.Parent = workspace.EnemySpawns
        v44.Anchored = true
    end
end
local v48, v49, v50 = pairs(game:GetService("Workspace").Enemies:GetChildren())
while true do
    local v51, v52 = v48(v49, v50)
    if v51 == nil then
        break
    end
    v50 = v51
    if v52:IsA("Model") and v52:FindFirstChild("HumanoidRootPart") then
        print(v52.HumanoidRootPart.Parent)
        local v53 = v52.HumanoidRootPart:Clone()
        local v54 = string.gsub(v52.Name, "Lv. ", "")
        local v55 = string.gsub(v54, "[%[%]]", "")
        local v56 = string.gsub(v55, "%d+", "")
        local v57 = string.gsub(v56, "%s+", "")
        print(v57)
        v53.Name = v57
        v53.Parent = workspace.EnemySpawns
        v53.Anchored = true
    end
end
local v58, v59, v60 = pairs(game.ReplicatedStorage:GetChildren())
while true do
    local v61, v62 = v58(v59, v60)
    if v61 == nil then
        break
    end
    v60 = v61
    if v62:IsA("Model") and v62:FindFirstChild("HumanoidRootPart") then
        local v63 = v62.HumanoidRootPart:Clone()
        local v64 = string.gsub(v62.Name, "Lv. ", "")
        local v65 = string.gsub(v64, "[%[%]]", "")
        local v66 = string.gsub(v65, "%d+", "")
        local v67 = string.gsub(v66, "%s+", "")
        print(v67)
        v63.Name = v67
        v63.Parent = workspace.EnemySpawns
        v63.Anchored = true
    end
end
local function vu119()
    local v68 = game:GetService("Players").LocalPlayer.Data.Level.Value
    if 1 <= v68 and v68 <= 9 then
        if tostring(game.Players.LocalPlayer.Team) ~= "Marines" then
            if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                MobName = "Bandit"
                Mon = "Bandit"
                QuestName = "BanditQuest1"
                QuestLevel = 1
                NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, - 0.95466274, 7.297218e-9, 0.297689587, 1.05190106e-8, 1, 9.220641e-9, - 0.297689587, 1.1934002e-8, - 0.95466274)
            end
        else
            MobName = "Trainee"
            QuestName = "MarineQuest"
            QuestLevel = 1
            Mon = "Trainee"
            NPCPosition = CFrame.new(- 2709.67944, 24.5206585, 2104.24585, - 0.744724929, - 3.9796745e-8, - 0.667371571, 4.324036e-8, 1, - 1.07884304e-7, 0.667371571, - 1.09201515e-7, - 0.744724929)
        end
        return {
            QuestLevel,
            NPCPosition,
            MobName,
            QuestName,
            LevelRequire,
            Mon,
            MobCFrame
        }
    end
    if 210 <= v68 and v68 <= 249 then
        MobName = "Dangerous Prisoner"
        QuestName = "PrisonerQuest"
        QuestLevel = 2
        Mon = "Dangerous Prisoner"
        NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, - 0.0894274712, - 5.002929e-9, - 0.995993316, 1.6081786e-9, 1, - 5.1674487e-9, 0.995993316, - 2.063847e-9, - 0.0894274712)
        local v69 = string.gsub(MobName, "Lv. ", "")
        local v70 = string.gsub(v69, "[%[%]]", "")
        local v71 = string.gsub(v70, "%d+", "")
        local v72 = string.gsub(v71, "%s+", "")
        local v73, v74, v75 = pairs(game.workspace.EnemySpawns:GetChildren())
        local v76 = {}
        while true do
            local v77
            v75, v77 = v73(v74, v75)
            if v75 == nil then
                break
            end
            if v77.Name == v72 then
                table.insert(v76, v77.CFrame)
            end
            MobCFrame = v76
        end
        return {
            QuestLevel,
            NPCPosition,
            MobName,
            QuestName,
            LevelRequire,
            Mon,
            MobCFrame
        }
    end
    local v78 = require(game:GetService("ReplicatedStorage").GuideModule)
    local v79 = require(game:GetService("ReplicatedStorage").Quests)
    local v80, v81, v82 = pairs(v78.Data.NPCList)
    while true do
        local v83
        v82, v83 = v80(v81, v82)
        if v82 == nil then
            break
        end
        local v84, v85, v86 = pairs(v83.Levels)
        local v87 = v82
        while true do
            local v88
            v86, v88 = v84(v85, v86)
            if v86 == nil then
                break
            end
            if v88 <= v68 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if LevelRequire < v88 then
                    NPCPosition = v87.CFrame
                    QuestLevel = v86
                    LevelRequire = v88
                end
                if # v83.Levels == 3 and QuestLevel == 3 then
                    NPCPosition = v87.CFrame
                    QuestLevel = 2
                    LevelRequire = v83.Levels[2]
                end
            end
        end
    end
    if 375 <= v68 and (v68 <= 399 and (_G.Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    if 400 <= v68 and (v68 <= 449 and (_G.Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    local v89, v90, v91 = pairs(v79)
    while true do
        local v92
        v91, v92 = v89(v90, v91)
        if v91 == nil then
            break
        end
        local v93, v94, v95 = pairs(v92)
        local v96 = v91
        while true do
            local v97
            v95, v97 = v93(v94, v95)
            if v95 == nil then
                break
            end
            if v97.LevelReq == LevelRequire and v96 ~= "CitizenQuest" then
                QuestName = v96
                local v98, v99, v100 = pairs(v97.Task)
                while true do
                    local v101
                    v100, v101 = v98(v99, v100)
                    if v100 == nil then
                        break
                    end
                    MobName = v100
                    Mon = string.split(v100, " [Lv. " .. v97.LevelReq .. "]")[1]
                end
            end
        end
    end
    if QuestName ~= "MarineQuest2" then
        if QuestName ~= "ImpelQuest" then
            if QuestName ~= "SkyExp1Quest" then
                if QuestName == "Area2Quest" and QuestLevel == 2 then
                    QuestName = "Area2Quest"
                    QuestLevel = 1
                    MobName = "Swan Pirate"
                    Mon = "Swan Pirate"
                    LevelRequire = 775
                end
            elseif QuestLevel ~= 1 then
                if QuestLevel == 2 then
                    NPCPosition = CFrame.new(- 7859.09814, 5544.19043, - 381.476196, - 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, - 0.422592998)
                end
            else
                NPCPosition = CFrame.new(- 4721.88867, 843.874695, - 1949.96643, 0.996191859, "-0", - 0.0871884301, 0, 1, "-0", 0.0871884301, 0, 0.996191859)
            end
        else
            QuestName = "PrisonerQuest"
            QuestLevel = 2
            MobName = "Dangerous Prisoner"
            Mon = "Dangerous Prisoner"
            LevelRequire = 210
            NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118)
        end
    else
        QuestName = "MarineQuest2"
        QuestLevel = 1
        MobName = "Chief Petty Officer"
        Mon = "Chief Petty Officer"
        LevelRequire = 120
    end
    MobName = MobName:sub(1, # MobName)
    if not MobName:find("Lv") then
        local v102, v103, v104 = pairs(game:GetService("Workspace").Enemies:GetChildren())
        while true do
            local v105
            v104, v105 = v102(v103, v104)
            if v104 == nil then
                break
            end
            MonLV = string.match(v105.Name, "%d+")
            if v105.Name:find(MobName) and (# v105.Name > # MobName and tonumber(MonLV) <= v68 + 50) then
                MobName = v105.Name
            end
        end
    end
    if not MobName:find("Lv") then
        local v106, v107, v108 = pairs(game:GetService("ReplicatedStorage"):GetChildren())
        while true do
            local v109
            v108, v109 = v106(v107, v108)
            if v108 == nil then
                break
            end
            MonLV = string.match(v109.Name, "%d+")
            if v109.Name:find(MobName) and (# v109.Name > # MobName and tonumber(MonLV) <= v68 + 50) then
                MobName = v109.Name
                Mon = a
            end
        end
    end
    local v110 = string.gsub(MobName, "Lv. ", "")
    local v111 = string.gsub(v110, "[%[%]]", "")
    local v112 = string.gsub(v111, "%d+", "")
    local v113 = string.gsub(v112, "%s+", "")
    local v114, v115, v116 = pairs(game.workspace.EnemySpawns:GetChildren())
    local v117 = {}
    while true do
        local v118
        v116, v118 = v114(v115, v116)
        if v116 == nil then
            break
        end
        if v118.Name ~= v113 then
            table.insert(v117, nil)
        else
            table.insert(v117, v118.CFrame)
        end
        MobCFrame = v117
    end
    return {
        QuestLevel,
        NPCPosition,
        MobName,
        QuestName,
        LevelRequire,
        Mon,
        MobCFrame,
        MonQ,
        MobCFrameNuber
    }
end
function Hop()
    local vu120 = game.PlaceId
    local vu121 = {}
    local vu122 = ""
    local vu123 = os.date("!*t").hour
    function TPReturner()
		-- upvalues: (ref) vu122, (ref) vu120, (ref) vu121, (ref) vu123
        local v124
        if vu122 ~= "" then
            v124 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. vu120 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. vu122))
        else
            v124 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. vu120 .. "/servers/Public?sortOrder=Asc&limit=100"))
        end
        if v124.nextPageCursor and (v124.nextPageCursor ~= "null" and v124.nextPageCursor ~= nil) then
            vu122 = v124.nextPageCursor
        end
        local v125, v126, v127 = pairs(v124.data)
        local v128 = 0
        while true do
            local v129
            v127, v129 = v125(v126, v127)
            if v127 == nil then
                break
            end
            local v130 = true
            local vu131 = tostring(v129.id)
            if tonumber(v129.maxPlayers) > tonumber(v129.playing) then
                local v132, v133, v134 = pairs(vu121)
                while true do
                    local v135
                    v134, v135 = v132(v133, v134)
                    if v134 == nil then
                        break
                    end
                    if v128 == 0 then
                        if tonumber(vu123) ~= tonumber(v135) then
                            pcall(function()
								-- upvalues: (ref) vu121, (ref) vu123
                                vu121 = {}
                                table.insert(vu121, vu123)
                            end)
                        end
                    elseif vu131 == tostring(v135) then
                        v130 = false
                    end
                    v128 = v128 + 1
                end
                if v130 == true then
                    table.insert(vu121, vu131)
                    wait()
                    pcall(function()
						-- upvalues: (ref) vu120, (ref) vu131
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(vu120, v
