print("---------- Witchfire Mod ----------")


---@class UBPDimensionCheatManager_C : UDimensionCheatManager
---@diagnostic disable-next-line: assign-type-mismatch
CHEAT_MANAGER = FindFirstOf("BPDimensionCheatManager_C")

---@diagnostic disable-next-line: redundant-parameter
NotifyOnNewObject("/Script/Astro2Debug.DimensionCheatManager", function(obj)
    CHEAT_MANAGER = obj
    print("CHEAT_MANAGER INSTANCE FOUND: " .. tostring(CHEAT_MANAGER:GetFullName()))
end)
---------------- Console command FUNCTIONS  ----------------

local function Log(Ar, Message)
    print(Message)
    if Ar and Ar:IsValid() then
        Ar:Log(Message)
    end
end


-- Dynamic console command handler for all cheat manager functions
local function callCheatManagerFunction(functionName, parameters, Ar)
    ---@diagnostic disable-next-line: undefined-field
    if not CHEAT_MANAGER or not CHEAT_MANAGER:IsValid() then
        Log(Ar, "ERROR: CHEAT_MANAGER not available")
        return false
    end

    -- Check if the function exists on the cheat manager
    if not CHEAT_MANAGER[functionName] then
        Log(Ar, "ERROR: Function '" .. functionName .. "' not found on cheat manager")
        return false
    end

    Log(Ar, "RUNNING: " .. functionName)

    -- Try to call the function with different parameter counts
    local success, result = pcall(function()
        local paramCount = #parameters - 1 -- Subtract 1 because first param is function name

        if paramCount == 0 then
            -- No parameters
            return CHEAT_MANAGER[functionName](CHEAT_MANAGER)
        elseif paramCount == 1 then
            -- One parameter - try to convert to appropriate type
            local param1 = parameters[2]
            if param1 == "true" then
                param1 = true
            elseif param1 == "false" then
                param1 = false
            elseif tonumber(param1) then
                param1 = tonumber(param1)
            end
            return CHEAT_MANAGER[functionName](CHEAT_MANAGER, param1)
        elseif paramCount == 2 then
            -- Two parameters
            local param1, param2 = parameters[2], parameters[3]
            if param1 == "true" then
                param1 = true
            elseif param1 == "false" then
                param1 = false
            elseif tonumber(param1) then
                param1 = tonumber(param1)
            end
            if param2 == "true" then
                param2 = true
            elseif param2 == "false" then
                param2 = false
            elseif tonumber(param2) then
                param2 = tonumber(param2)
            end
            return CHEAT_MANAGER[functionName](CHEAT_MANAGER, param1, param2)
        elseif paramCount == 3 then
            -- Three parameters
            local param1, param2, param3 = parameters[2], parameters[3], parameters[4]
            if param1 == "true" then
                param1 = true
            elseif param1 == "false" then
                param1 = false
            elseif tonumber(param1) then
                param1 = tonumber(param1)
            end
            if param2 == "true" then
                param2 = true
            elseif param2 == "false" then
                param2 = false
            elseif tonumber(param2) then
                param2 = tonumber(param2)
            end
            if param3 == "true" then
                param3 = true
            elseif param3 == "false" then
                param3 = false
            elseif tonumber(param3) then
                param3 = tonumber(param3)
            end
            return CHEAT_MANAGER[functionName](CHEAT_MANAGER, param1, param2, param3)
        else
            Log(Ar, "ERROR: Too many parameters for function '" .. functionName .. "'")
            return false
        end
    end)

    if success then
        Log(Ar, "SUCCESS: " .. functionName .. " executed")
        return true
    else
        Log(Ar, "ERROR executing " .. functionName .. ": " .. tostring(result))
        return false
    end
end

RegisterConsoleCommandHandler("cheat", function(FullCommand, Parameters, Ar)
    if #Parameters < 1 then
        Log(Ar, "Usage: cheat <function_name> [param1] [param2] [param3]")
        Log(Ar, "Examples:")
        Log(Ar, "  cheat AddWF 5000")
        Log(Ar, "  cheat AddGold 25")
        Log(Ar, "  cheat EndRun true")
        Log(Ar, "  cheat TestTreasureDrops")
        return true
    end

    local functionName = tostring(Parameters[1])
    callCheatManagerFunction(functionName, Parameters, Ar)
    return true
end)

---------------- KEY BOUND FUNCTIONS ----------------

function EndRun()
    CHEAT_MANAGER:EndRun(true)
end

function UsainBolt()
    CHEAT_MANAGER:UsainBolt()
end

function DemoCheats()
    -- infinite ammo
    -- no feathers needed for upgrades
    -- infinite health potions
    CHEAT_MANAGER:DemoCheats()
end

function AddWF()
    CHEAT_MANAGER:AddWF(5000)
end

function AddGold()
    CHEAT_MANAGER:AddGold(25)
end

function AddSupplyKey()
    CHEAT_MANAGER:AddSupplyKey(1)
end

function OneHitKills()
    -- refresh when needed
    -- only affects spawned enemies
    CHEAT_MANAGER:Shredder()
end

function KillAllEnemies()
    -- refresh when needed
    -- only affects spawned enemies
    CHEAT_MANAGER:KillemAll()
end

RegisterKeyBind(Key.F1, function()
    UsainBolt()
end)
RegisterKeyBind(Key.F2, function()
    DemoCheats()
end)
RegisterKeyBind(Key.F3, function()
    AddWF()
end)
RegisterKeyBind(Key.F4, function()
    AddGold()
end)
RegisterKeyBind(Key.F5, function()
    AddSupplyKey()
end)
RegisterKeyBind(Key.F6, function()
    OneHitKills()
end)
RegisterKeyBind(Key.F7, function()
    KillAllEnemies()
end)
RegisterKeyBind(Key.DEL, function()
    EndRun()
end)
