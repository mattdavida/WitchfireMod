# 🔥 Witchfire Advanced Cheat Mod

> **Skip the grind and unlock the full potential of Witchfire with enhanced commands and instant hotkeys**

[![Witchfire](https://img.shields.io/badge/Game-Witchfire-orange)](https://store.steampowered.com/app/1205370/Witchfire/)
[![UE4SS](https://img.shields.io/badge/Requires-UE4SS-blue)](https://www.nexusmods.com/site/mods/785)
[![License](https://img.shields.io/badge/License-MIT-green)](#)

## 🚀 Features

- **🎯 100+ Cheat Commands** - Access the complete developer cheat system
- **⚡ Instant Hotkeys** - F1-F7 for common cheats, no typing required
- **🔄 Dynamic System** - Automatically discovers and supports new game functions
- **🛡️ Safe & Clean** - No game file modifications, completely reversible
- **🔧 Backward Compatible** - Works alongside existing console commands

## 📋 Requirements

- **[UE4SS](https://github.com/UE4SS-RE/RE-UE4SS/releases)** - Unreal Engine 4 Scripting System

## 🔧 Installation

### Step 1: Install UE4SS

1. Download UE4SS from [github](https://github.com/UE4SS-RE/RE-UE4SS/releases)
2. Extract **ALL** UE4SS files to this **EXACT** folder:

   ```
   [Your Steam Path]\steamapps\common\Witchfire\Witchfire\Binaries\Win64\
   ```

   > ⚠️ **CRITICAL**: Must go in `Binaries\Win64` folder, **NOT** the main Witchfire folder!

   **Example full path:**

   ```
   C:\Program Files (x86)\Steam\steamapps\common\Witchfire\Witchfire\Binaries\Win64\
   ```

### Step 2: Install the Mod

3. Extract this mod to:
   ```
   [Your Steam Path]\steamapps\common\Witchfire\Witchfire\Binaries\Win64\ue4ss\Mods\WitchfireMod\
   ```
   
   > 📁 **Includes**: Complete Lua type definitions for enhanced development experience

### Step 3: Launch & Play

4. Launch Witchfire
5. Press **F10 + F10** to open console (press F10 twice quickly)
6. Start using commands or hotkeys!

## 🎮 Usage

### 🆕 Enhanced Mod Commands (Recommended)

The mod provides powerful cheat commands with automatic parameter handling:

```bash
# Currency & Resources
cheat AddWF 5000           # Add Witchfire currency
cheat AddGold 25           # Add gold
cheat AddSupplyKey 5       # Add supply keys

# Combat & Gameplay
cheat DemoCheats           # God mode + infinite ammo + health potions
cheat Shredder             # Enable one-hit kills
cheat KillemAll            # Kill all enemies
cheat SpawnHorde 10 20 5 2 # Spawn 10-20 enemies, 5 types, 2 elites

# Progression
cheat EndRun true          # End current run successfully
cheat TestTreasureDrops    # Spawn treasure drops
```

### ⚡ Instant Hotkeys

No typing required - just press and play:

| Key     | Function      | Description                            |
| ------- | ------------- | -------------------------------------- |
| **F1**  | Super Speed   | Activate UsainBolt mode                |
| **F2**  | God Mode      | Infinite ammo + health + invincibility |
| **F3**  | Currency      | Add 5000 Witchfire instantly           |
| **F4**  | Gold          | Add 25 gold                            |
| **F5**  | Supply Key    | Add supply key                         |
| **F6**  | One-Hit Kills | Enable Shredder mode                   |
| **F7**  | Kill Enemies  | Eliminate all spawned enemies          |
| **DEL** | End Run       | Successfully complete current run      |

### 🔄 Legacy Console Commands (Still Supported)

These basic commands work alongside the new mod:

```bash
# Currency multiplier (resets on restart)
set DimensionPlayerAttribSet FinalWitchfireGainMultiplier 100

# Infinite dash
set DimensionPlayerAttribSet DashCostMultiplier 0.001

# Max Gnosis level (0-10)
set DimensionPlayerAttribSet GnosisLevel 10

# Level points (updated for recent game changes)
set DimensionPlayerAttribSet AvailableLevelPoints 100

# Camera controls
toggledebugcamera          # Free camera mode
fov 120                    # Increase field of view
fov 90                     # Reset to normal
```

## 💡 Pro Tips

- **Type `cheat` without parameters** to see usage help and examples
- **Hotkeys work instantly** - no console needed for common cheats
- **Commands are case-sensitive** - use exact spelling
- **Mix and match** - use hotkeys for speed, commands for precision
- **Free camera controls**: WASD + Mouse to fly around, `toggledebugcamera` again to return

## 🔧 Advanced Usage

The mod dynamically supports **all cheat manager functions**. Some powerful examples:

> ⚠️ **Note**: Advanced functions are auto-discovered but not all tested. The hotkey functions (F1-F7) are thoroughly tested and reliable.

```bash
# Item & Loot Management
cheat AddDE 1000              # Add Divine Essence
cheat AddPreyerMasks 5        # Add Preyer Masks
cheat SpawnManifestation      # Spawn manifestation window
cheat UnlockShippedItems      # Unlock all shipped items

# Combat Testing
cheat SpawnLotsOfItems        # Spawn testing items
cheat TestAllDrops            # Test all drop types
cheat ToggleAbilityGlobalIgnoreCooldowns  # No ability cooldowns

# World Manipulation
cheat TriggerCalamity "CalamityName"  # Trigger specific calamity
cheat ModifyCalamityLevel 5.0 true    # Modify calamity intensity
```

## 👨‍💻 For Developers

This mod includes **complete Lua type definitions** for enhanced development:

- **`BPDimensionCheatManager.lua`** - Full cheat manager class with 100+ documented functions
- **IntelliSense support** - Auto-completion and parameter hints in VS Code/other IDEs
- **Type safety** - Catch errors before runtime with proper type annotations
- **Documentation** - Every function parameter and return type documented

Perfect for building your own Witchfire mods or extending this one!

## 🛟 Troubleshooting

| Issue                      | Solution                                                  |
| -------------------------- | --------------------------------------------------------- |
| **Console won't open**     | Verify UE4SS files are in `Binaries\Win64` folder         |
| **Mod not working**        | Check `WitchfireMod` folder is in `ue4ss\Mods\` directory |
| **Commands not found**     | Look for "MATTS MOD" message in console on game start     |
| **Hotkeys not responding** | Ensure mod loaded successfully (check console output)     |

## 📝 Notes

- ✅ **Completely safe** - No game files modified
- ✅ **Fully reversible** - Simply remove mod folder to uninstall
- ✅ **Regular updates** - Automatically supports new game functions
- ✅ **Performance optimized** - Minimal impact on game performance
- ✅ **Developer-friendly** - Includes complete Lua type definitions for all game classes
- ✅ **Tested & reliable** - Hotkey functions (F1-F7) are thoroughly tested and stable
- ⚠️ **Single player only** - Not designed for multiplayer use
- ⚠️ **Advanced functions** - Some console commands are auto-discovered and may be untested

## 🤝 Contributing

Found a bug or have a feature request? Feel free to open an issue or submit a pull request!

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Enjoy your enhanced Witchfire experience!** 🔥✨
