# SND Command Guide

---

## **Commands Overview**

### **Table of Contents**
- [1. ActionCommand](#1-actioncommand): Executes a specified action.
- [2. CallbackCommand](#2-callbackcommand): Sends inputs to game addons.
- [3. ClickCommand](#3-clickcommand): Clicks buttons in addons.
- [4. EquipItemCommand](#4-equipitemcommand): Equips items from inventory.
- [5. GateCommand](#5-gatecommand): Limits macro executions.
- [6. HoldCommand](#6-holdcommand): Holds key combinations.
- [7. InteractCommand](#7-interactcommand): Interacts with targets.
- [8. ItemCommand](#8-itemcommand): Uses consumable items.
- [9. KeyItemCommand](#9-keyitemcommand): Uses key items.
- [10. LoopCommand](#10-loopcommand): Repeats macros.
- [11. MacroCommand](#11-macrocommand): Base functionality for commands.
- [12. NativeCommand](#12-nativecommand): Sends native commands to chat.
- [13. RecipeCommand](#13-recipecommand): Opens recipe books.
- [14. ReleaseCommand](#14-releasecommand): Releases held keys.
- [15. RequireCommand](#15-requirecommand): Ensures conditions are met.
- [16. RequireQualityCommand](#16-requirequalitycommand): Checks crafting quality.
- [17. RequireRepairCommand](#17-requirerepaircommand): Pauses if repairs needed.
- [18. RequireSpiritbondCommand](#18-requirespiritbondcommand): Checks for materia readiness.
- [19. RequireStatsCommand](#19-requirestatscommand): Validates crafting stats.
- [20. RunMacroCommand](#20-runmacrocommand): Runs another macro.
- [21. SendCommand](#21-sendcommand): Sends game commands.
- [22. TargetCommand](#22-targetcommand): Targets specific entities.
- [23. TargetEnemyCommand](#23-targetenemycommand): Targets the nearest enemy.
- [24. WaitAddonCommand](#24-waitaddoncommand): Waits for UI elements.
- [25. WaitCommand](#25-waitcommand): Adds delays between commands.
- [26. QuestCommand](#26-questcommand): Automates daily quests.
- [27. TeleportCommand](#27-teleportcommand): Automates teleportation.
- [28. ExtractCommand](#28-extractcommand): Extracts materials or data.
- [29. TradeCommand](#29-tradecommand): Automates trading sequences.
- [30. ShopCommand](#30-shopcommand): Automates shopping transactions.
- [31. DutyCommand](#31-dutycommand): Automates duty-related actions.
- [32. EmoteCommand](#32-emotecommand): Executes emotes.

### **1. ActionCommand**
**Description:** Executes a specified action and waits for a server response.
- **Syntax:** `/ac <action_name>`
- **Examples:**
  - `/ac Groundwork`
  - `/ac "Tricks of the Trade"`
- **Features:**
  - Skips execution based on crafting conditions.
  - Implements smart waiting for server responses.
  - Handles crafting-specific scenarios (e.g., max progress or quality).

### **2. CallbackCommand**
**Description:** Sends specific inputs to game addons.
- **Syntax:** `/callback <addon_name> <callback_type> <parameters>`
- **Examples:**
  - `/callback InventoryContextMenu Use 0`
  - `/callback Shop Confirm`
- **Features:**
  - Automates interaction with UI elements.
  - Enables control over addon-specific behavior.

### **3. ClickCommand**
**Description:** Simulates mouse clicks on addon buttons.
- **Syntax:** `/click <button_name>`
- **Examples:**
  - `/click ConfirmButton`
  - `/click CancelButton`
- **Features:**
  - Automates button clicks in game addons.
  - Works in tandem with other commands to streamline workflows.

### **4. EquipItemCommand**
**Description:** Equips items from inventory into specified gear slots.
- **Syntax:** `/equip <slot_name> <item_name>`
- **Examples:**
  - `/equip MainHand Mythrite Battleaxe`
  - `/equip Body Replica Sky Rat Harness`
- **Features:**
  - Simplifies gear switching.
  - Supports full gear set changes within macros.

### **5. GateCommand**
**Description:** Limits macro executions based on specific conditions.
- **Syntax:** `/gate <condition>`
- **Examples:**
  - `/gate notMounted`
  - `/gate inCombat`
- **Features:**
  - Ensures macros run only under valid conditions.
  - Prevents unintended macro execution.

### **6. HoldCommand**
**Description:** Simulates holding key combinations.
- **Syntax:** `/hold <key_combination>`
- **Examples:**
  - `/hold Shift+1`
  - `/hold Ctrl+F`
- **Features:**
  - Enables keybind emulation for custom macros.
  - Useful for complex input sequences.

### **7. InteractCommand**
**Description:** Initiates interaction with the current target.
- **Syntax:** `/interact`
- **Features:**
  - Automates interaction with NPCs, objects, and other entities.
  - Can be combined with targeting commands for seamless execution.

### **8. ItemCommand**
**Description:** Uses consumable items from the inventory.
- **Syntax:** `/item <item_name>`
- **Examples:**
  - `/item Hi-Potion`
  - `/item Cordial`
- **Features:**
  - Simplifies the use of items during gameplay.
  - Works well in macros for automated item usage.

### **9. KeyItemCommand**
**Description:** Uses key items from the inventory.
- **Syntax:** `/keyitem <item_name>`
- **Examples:**
  - `/keyitem Garlean Journal`
- **Features:**
  - Automates the use of quest-specific key items.
  - Reduces manual inventory navigation.

### **10. LoopCommand**
**Description:** Repeats macro sequences a specified number of times.
- **Syntax:** `/loop <count>`
- **Examples:**
  - `/loop 5`
  - `/loop 3`
- **Features:**
  - Automates repetitive actions.
  - Useful for tasks like crafting or gathering.

### **11. MacroCommand**
**Description:** Defines and runs custom macros.
- **Syntax:** `/macro <macro_name>`
- **Examples:**
  - `/macro Gathering`
  - `/macro CombatRotation`
- **Features:**
  - Provides base functionality for command sequences.
  - Supports modular macro creation.

### **12. NativeCommand**
**Description:** Sends native game commands to the chat window.
- **Syntax:** `/native <command>`
- **Examples:**
  - `/native /say Hello`
  - `/native /party Ready?`
- **Features:**
  - Allows integration with standard game commands.
  - Enhances compatibility with existing systems.

### **13. RecipeCommand**
**Description:** Opens the crafting recipe book to a specific recipe.
- **Syntax:** `/recipe <recipe_name>`
- **Examples:**
  - `/recipe Mythrite Ingot`
- **Features:**
  - Streamlines crafting processes.
  - Reduces manual recipe navigation.

### **14. ReleaseCommand**
**Description:** Releases previously held keys.
- **Syntax:** `/release <key_combination>`
- **Examples:**
  - `/release Shift+1`
  - `/release Ctrl+F`
- **Features:**
  - Complements `/hold` for keybind emulation.

### **15. RequireCommand**
**Description:** Ensures specific conditions are met before continuing macro execution.
- **Syntax:** `/require <condition>`
- **Examples:**
  - `/require inCombat`
  - `/require notCasting`
- **Features:**
  - Prevents macro errors due to invalid states.

### **16. RequireQualityCommand**
**Description:** Pauses macros until a specified crafting quality is reached.
- **Syntax:** `/requirequality <value>`
- **Examples:**
  - `/requirequality 1000`
- **Features:**
  - Ensures high-quality crafting results.

### **17. RequireRepairCommand**
**Description:** Pauses macros if equipment repair is needed.
- **Syntax:** `/requirerepair`
- **Features:**
  - Prevents interruptions during crafting or combat.

### **18. RequireSpiritbondCommand**
**Description:** Checks if equipment is ready for materia extraction.
- **Syntax:** `/requirespiritbond`
- **Features:**
  - Simplifies materia farming processes.

### **19. RequireStatsCommand**
**Description:** Validates crafting or gathering stats before execution.
- **Syntax:** `/requirestats <stat> <value>`
- **Examples:**
  - `/requirestats Craftsmanship 200`
  - `/requirestats Perception 300`
- **Features:**
  - Ensures sufficient stats for specific tasks.

### **20. RunMacroCommand**
**Description:** Executes another macro within a macro.
- **Syntax:** `/runmacro <macro_name>`
- **Examples:**
  - `/runmacro Gathering`
- **Features:**
  - Supports nested macro execution.

### **21. SendCommand**
**Description:** Sends raw game commands.
- **Syntax:** `/send <command>`
- **Examples:**
  - `/send /emote wave`
- **Features:**
  - Provides direct command control.

### **22. TargetCommand**
**Description:** Targets a specific entity.
- **Syntax:** `/target <entity_name>`
- **Examples:**
  - `/target EnemyName`
  - `/target FriendlyNPC`
- **Features:**
  - Simplifies targeting during combat or interaction.

### **23. TargetEnemyCommand**
**Description:** Targets the nearest enemy automatically.
- **Syntax:** `/targetenemy`
- **Features:**
  - Streamlines enemy engagement.

### **24. WaitAddonCommand**
**Description:** Pauses macros until specific UI elements are active.
- **Syntax:** `/waitaddon <addon_name>`
- **Examples:**
  - `/waitaddon CraftingLog`
- **Features:**
  - Ensures macros execute only when necessary.

### **25. WaitCommand**
**Description:** Adds delays between macro commands.
- **Syntax:** `/wait <seconds>`
- **Examples:**
  - `/wait 1`
  - `/wait 0.5`
- **Features:**
  - Prevents command overlap.
  - Ensures smooth macro execution.

### **26. QuestCommand**
**Description:** Automates picking up and completing daily quests from Allied Societies.
- **Syntax:** `/qst <start|stop>`
- **Examples:**
  - `/qst start` (Begins executing active quests.)
  - `/qst stop` (Halts quest automation.)
- **Features:**
  - Automatically interacts with quest givers.
  - Changes classes for different societies.
  - Teleports to quest locations.

### **27. TeleportCommand**
**Description:** Automates teleportation using aetheryte travel.
- **Syntax:** `/tp <aetheryte_name>`
- **Examples:**
  - `/tp Little Ala Mhigo`
  - `/tp Dhoro Iloh`
- **Features:**
  - Waits for teleport completion before executing further commands.
  - Detects if the player is in the correct zone before teleporting.
  - Supports dynamic pathfinding after teleportation.

### **28. ExtractCommand**
**Description:** Extracts materials or data from relevant sources.
- **Syntax:** `/extract <target>`
- **Examples:**
  - `/extract materia`
  - `/extract salvage`
- **Features:**
  - Automates extraction of materials from gear or items.
  - Can be configured to run automatically after certain conditions.

### **29. TradeCommand**
**Description:** Automates trading sequences between players or NPCs.
- **Syntax:** `/trade <target>`
- **Examples:**
  - `/trade PlayerName`
- **Features:**
  - Simplifies the trading process.
  - Can be integrated into macros for automated transactions.

### **30. ShopCommand**
**Description:** Automates purchasing and selling of items.
- **Syntax:** `/shop <vendor>`
- **Examples:**
  - `/shop Marketboard`
  - `/shop NPCVendor`
- **Features:**
  - Automatically interacts with shops and vendors.
  - Supports bulk buying and selling.

### **31. DutyCommand**
**Description:** Automates duty-related actions, such as joining or leaving duties.
- **Syntax:** `/duty <action>`
- **Examples:**
  - `/duty join`
  - `/duty leave`
- **Features:**
  - Simplifies duty queueing.
  - Automates leaving and rejoining duties.

### **32. EmoteCommand**
**Description:** Executes emotes automatically.
- **Syntax:** `/emote <name>`
- **Examples:**
  - `/emote wave`
  - `/emote cheer`
- **Features:**
  - Automates roleplay actions.
  - Can be combined with macros.

---

