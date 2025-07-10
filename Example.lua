loadstring(game:HttpGet("https://raw.githubusercontent.com/Assistwtf/Phantom-library/refs/heads/main/Ui.lua"))()

-- Give the script a moment to initialize
wait(0.1)

-- 2. Access the globally created UI instance
-- The library automatically creates an instance and stores it in _G.PhantomUI
local MyUI = _G.PhantomUI
if not MyUI then
    warn("PhantomUI failed to load. Please check your URL and network connection.")
    return
end

--==============================================================================
-- || EXAMPLE UI SETUP ||
--==============================================================================

-- 3. Create new tabs
-- You can find icon IDs on the Roblox website or use your own.
local combatTab = MyUI:CreateTab("Combat", "rbxassetid://3926305927") -- A wand icon
local utilityTab = MyUI:CreateTab("Utility", "rbxassetid://3926307971") -- A gear icon
local playerTab = MyUI:CreateTab("Player", "rbxassetid://3926304943") -- A person icon

-- 4. Add elements to your sections within each tab

-- Populate Combat Tab
local combatSection = combatTab:CreateSection("Weapon Mods")
combatSection:CreateButton("Enable Aimbot", function() 
    print("Aimbot toggled!") 
end)
combatSection:CreateButton("Activate KillAura", function() 
    print("KillAura activated!") 
end)

-- Populate Utility Tab
local movementSection = utilityTab:CreateSection("Movement")
movementSection:CreateButton("Enable Fly", function()
    print("Fly script would go here.")
end)
movementSection:CreateButton("Toggle Noclip", function()
    print("Noclip script would go here.")
end)

-- Populate Player Tab
local playerSection = playerTab:CreateSection("Player Modifications")
playerSection:CreateButton("Max Jump", function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.JumpPower = 100
        print("JumpPower set to 100.")
    end
end)
playerSection:CreateButton("Reset WalkSpeed", function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.WalkSpeed = 16
        print("WalkSpeed reset to 16.")
    end
end)


-- 5. Load the UI so it becomes visible
-- The library now loads itself automatically, but calling this ensures it's parented.
MyUI:Load()

print("Phantom Hub UI Loaded and Configured.")
