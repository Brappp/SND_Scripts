# SND Command Guide

---

## **Commands Overview**

### **Table of Contents**
1. [ActionCommand](#actioncommand)  
2. [CallbackCommand](#callbackcommand)  
3. [ClickCommand](#clickcommand)  
4. [EquipItemCommand](#equipitemcommand)  
5. [GateCommand](#gatecommand)  
6. [HoldCommand](#holdcommand)  
7. [InteractCommand](#interactcommand)  
8. [ItemCommand](#itemcommand)  
9. [KeyItemCommand](#keyitemcommand)  
10. [LoopCommand](#loopcommand)  
11. [MacroCommand](#macrocommand)  
12. [NativeCommand](#nativecommand)  
13. [RecipeCommand](#recipecommand)  
14. [ReleaseCommand](#releasecommand)  
15. [RequireCommand](#requirecommand)  
16. [RequireQualityCommand](#requirequalitycommand)  
17. [RequireRepairCommand](#requirerepaircommand)  
18. [RequireSpiritbondCommand](#requirespiritbondcommand)  
19. [RequireStatsCommand](#requirestatscommand)  
20. [RunMacroCommand](#runmacrocommand)  
21. [SendCommand](#sendcommand)  
22. [TargetCommand](#targetcommand)  
23. [TargetEnemyCommand](#targetenemycommand)  
24. [WaitAddonCommand](#waitaddoncommand)  
25. [WaitCommand](#waitcommand)  
26. [QuestCommand](#questcommand)  
27. [TeleportCommand](#teleportcommand)  
28. [ExtractCommand](#extractcommand)  
29. [TradeCommand](#tradecommand)  
30. [ShopCommand](#shopcommand)  
31. [DutyCommand](#dutycommand)  
32. [EmoteCommand](#emotecommand)  

---

## **Command Details**

### **1. ActionCommand**
- **Description:** Executes a specified action and waits for a server response.  
- **Syntax:** `/ac <action_name>`  
- **Examples:**  
  - `/ac Groundwork`  
  - `/ac "Tricks of the Trade"`  
- **Features:** Skips execution based on conditions, smart waiting for server responses.

### **2. CallbackCommand**
- **Description:** Sends inputs to game addons.  
- **Syntax:** `/callback <addon_name> <callback_type> <parameters>`  
- **Examples:**  
  - `/callback InventoryContextMenu Use 0`  
  - `/callback Shop Confirm`  
- **Features:** Automates interaction with UI elements.

### **3. ClickCommand**
- **Description:** Simulates mouse clicks on addon buttons.  
- **Syntax:** `/click <button_name>`  
- **Examples:**  
  - `/click ConfirmButton`  
  - `/click CancelButton`  
- **Features:** Automates button clicks.

### **4. EquipItemCommand**
- **Description:** Equips items from inventory into gear slots.  
- **Syntax:** `/equip <slot_name> <item_name>`  
- **Examples:**  
  - `/equip MainHand Mythrite Battleaxe`  
  - `/equip Body Replica Sky Rat Harness`  
- **Features:** Simplifies gear switching.

### **5. GateCommand**
- **Description:** Limits macro executions based on conditions.  
- **Syntax:** `/gate <condition>`  
- **Examples:**  
  - `/gate notMounted`  
  - `/gate inCombat`  
- **Features:** Prevents unintended macro execution.

### **6. HoldCommand**
- **Description:** Simulates holding key combinations.  
- **Syntax:** `/hold <key_combination>`  
- **Examples:**  
  - `/hold Shift+1`  
  - `/hold Ctrl+F`  
- **Features:** Enables keybind emulation.

### **7. InteractCommand**
- **Description:** Initiates interaction with the current target.  
- **Syntax:** `/interact`  
- **Features:** Automates interaction with NPCs, objects, or entities.

### **8. ItemCommand**
- **Description:** Uses consumable items from the inventory.  
- **Syntax:** `/item <item_name>`  
- **Examples:**  
  - `/item Hi-Potion`  
  - `/item Cordial`  
- **Features:** Simplifies item usage during gameplay.

### **9. KeyItemCommand**
- **Description:** Uses key items from the inventory.  
- **Syntax:** `/keyitem <item_name>`  
- **Examples:**  
  - `/keyitem Garlean Journal`  
- **Features:** Automates quest-specific item use.

### **10. LoopCommand**
- **Description:** Repeats macro sequences a specified number of times.  
- **Syntax:** `/loop <count>`  
- **Examples:**  
  - `/loop 5`  
  - `/loop 3`  
- **Features:** Automates repetitive actions.

### **11. MacroCommand**
- **Description:** Defines and runs custom macros.  
- **Syntax:** `/macro <macro_name>`  
- **Examples:**  
  - `/macro Gathering`  
  - `/macro CombatRotation`  
- **Features:** Provides base functionality for command sequences.

### **12. NativeCommand**
- **Description:** Sends native game commands to the chat window.  
- **Syntax:** `/native <command>`  
- **Examples:**  
  - `/native /say Hello`  
  - `/native /party Ready?`  
- **Features:** Enhances compatibility with standard commands.

### **13. RecipeCommand**
- **Description:** Opens the crafting recipe book to a specific recipe.  
- **Syntax:** `/recipe <recipe_name>`  
- **Examples:**  
  - `/recipe Mythrite Ingot`  
- **Features:** Streamlines crafting processes.

### **14. ReleaseCommand**
- **Description:** Releases previously held keys.  
- **Syntax:** `/release <key_combination>`  
- **Examples:**  
  - `/release Shift+1`  
  - `/release Ctrl+F`  
- **Features:** Complements `/hold` for keybind emulation.

### **15. RequireCommand**
- **Description:** Ensures conditions are met before continuing macro execution.  
- **Syntax:** `/require <condition>`  
- **Examples:**  
  - `/require inCombat`  
  - `/require notCasting`  
- **Features:** Prevents errors due to invalid states.

### **16. RequireQualityCommand**
- **Description:** Pauses macros until a specified crafting quality is reached.  
- **Syntax:** `/requirequality <value>`  
- **Examples:**  
  - `/requirequality 1000`  
- **Features:** Ensures high-quality crafting results.

### **17. RequireRepairCommand**
- **Description:** Pauses macros if equipment repair is needed.  
- **Syntax:** `/requirerepair`  
- **Features:** Prevents interruptions during crafting or combat.

### **18. RequireSpiritbondCommand**
- **Description:** Checks if equipment is ready for materia extraction.  
- **Syntax:** `/requirespiritbond`  
- **Features:** Simplifies materia farming processes.

### **19. RequireStatsCommand**
- **Description:** Validates crafting or gathering stats before execution.  
- **Syntax:** `/requirestats <stat> <value>`  
- **Examples:**  
  - `/requirestats Craftsmanship 200`  
  - `/requirestats Perception 300`  
- **Features:** Ensures sufficient stats for tasks.

### **20. RunMacroCommand**
- **Description:** Executes another macro within a macro.  
- **Syntax:** `/runmacro <macro_name>`  
- **Examples:**  
  - `/runmacro Gathering`  
- **Features:** Supports nested macro execution.

### **21. SendCommand**
- **Description:** Sends raw game commands.  
- **Syntax:** `/send <command>`  
- **Examples:**  
  - `/send /emote wave`  
- **Features:** Provides direct command control.

### **22. TargetCommand**
- **Description:** Targets a specific entity.  
- **Syntax:** `/target <entity_name>`  
- **Examples:**  
  - `/target EnemyName`  
  - `/target FriendlyNPC`  
- **Features:** Simplifies targeting.

### **23. TargetEnemyCommand**
- **Description:** Targets the nearest enemy automatically.  
- **Syntax:** `/targetenemy`  
- **Features:** Streamlines enemy engagement.

### **24. WaitAddonCommand**
- **Description:** Pauses macros until specific UI elements are active.  
- **Syntax:** `/waitaddon <addon_name>`  
- **Examples:**  
  - `/waitaddon CraftingLog`  
- **Features:** Ensures macros execute only when necessary.

### **25. WaitCommand**
- **Description:** Adds delays between macro commands.  
- **Syntax:** `/wait <seconds>`  
- **Examples:**  
  - `/wait 1`  
  - `/wait 0.5`  
- **Features:** Prevents command overlap.

### **26. QuestCommand**
- **Description:** Automates picking up and completing daily quests.  
- **Syntax:** `/qst <start|stop>`  
- **Examples:**  
  - `/qst start`  
  - `/qst stop`  
- **Features:** Automates quest interactions and teleports.

### **27. TeleportCommand**
- **Description:** Automates teleportation using aetheryte travel.  
- **Syntax:** `/tp <aetheryte_name>`  
- **Examples:**  
  - `/tp Little Ala Mhigo`  
- **Features:** Waits for teleport completion.

### **28. ExtractCommand**
- **Description:** Extracts materials or data.  
- **Syntax:** `/extract <target>`  
- **Examples:**  
  - `/extract materia`  
- **Features:** Automates extraction processes.

### **29. TradeCommand**
- **Description:** Automates trading sequences.  
- **Syntax:** `/trade <target>`  
- **Examples:**  
  - `/trade PlayerName`  
- **Features:** Simplifies the trading process.

### **30. ShopCommand**
- **Description:** Automates purchasing and selling.  
- **Syntax:** `/shop <vendor>`  
- **Examples:**  
  - `/shop Marketboard`  
- **Features:** Supports bulk transactions.

### **31. DutyCommand**
- **Description:** Automates duty-related actions.  
- **Syntax:** `/duty <action>`  
- **Examples:**  
  - `/duty join`  
- **Features:** Simplifies duty queueing.

### **32. EmoteCommand**
- **Description:** Executes emotes automatically.  
- **Syntax:** `/emote <name>`  
- **Examples:**  
  - `/emote wave`  
- **Features:** Automates roleplay actions.

---
