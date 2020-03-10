// Open computer

import mods.artisanworktables.builder.RecipeBuilder;



// We use IE Engineering for the PBC
// Aded a etching step using the IE Alloy and Acid 

recipes.remove(<opencomputers:material:2>);
furnace.remove(<opencomputers:material:4>);

recipes.addShaped("TTM_blueprint_electronics", <immersiveengineering:blueprint>.withTag({blueprint: "electronics"}), [[<ore:ingotSilver>, <opencomputers:material:7>, <ore:ingotSilver>], [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// We have a better recipes using immersiveengineering route
mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:6> * 4 , [<ore:wireCopper>,<ore:dustSilicon>,<ore:wireElectrum>]);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:6> * 6 , [<ore:wireCopper>,<ore:ingotSiliconCarbide>,<ore:wireElectrum>]);

// Same for PCB using plate (No Acid need)
mods.immersiveengineering.MetalPress.addRecipe(<opencomputers:material:4>, <opencomputers:material:2>, <immersiveengineering:mold>, 500, 1);

mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:nuggets> * 9, <ore:plateCobalt>, <immersiveengineering:mold:6>, 500, 1);


// Add a Manufactory recipes
mods.nuclearcraft.manufactory.addRecipe(<opencomputers:material:2>,<opencomputers:material:4>);


mods.techreborn.alloySmelter.addRecipe(<opencomputers:material:4> * 4,<opencomputers:material:2>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "etchacid", Amount: 1000}}), 600, 128);

mods.techreborn.alloySmelter.addRecipe(<opencomputers:material:4> * 3,<opencomputers:material:2>,<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsulfuricacid", Amount: 1000}}), 600, 128);

mods.techreborn.alloySmelter.addRecipe(<opencomputers:material:4> * 3,<opencomputers:material:2>,<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "sulfuric_acid", Amount: 1000}}), 600, 128);

// Add a IE recipes for OC Chip
mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:7> * 2 , [<ore:wireElectrum>,<ore:oc:materialTransistor>,<ore:nuggetSilicon>]);

// Level 2 can only be done over a IE table (No recipes)
// Need a Cutting SAW from ADV Rocket (or should copy the recipe to the TR one
recipes.remove(<opencomputers:material:8>);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:8> * 2, [<opencomputers:material:7>,<ore:wireSteel>, <ore:plateRedstone>,<ore:waferSilicon>]);

mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:8> * 2, [<opencomputers:material:7>,<ore:wireSteel>, <ore:plateRedstone>,<advancedrocketry:ic:2>]);


mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:8> * 2, [<opencomputers:material:7>,<ore:wireSteel>, <ore:plateRedstone>,<techreborn:part:42>]);


mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:8> * 3, [<opencomputers:material:7>,<ore:wireAluminium>, <ore:plateRedstone>,<ore:plateCoal>]);

mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:8> * 2, [<techreborn:part:41>,<immersiveengineering:wirecoil:5>, <ore:plateRedstone>]);


// Level 3 
// Need Alu and PCB + Signalum
recipes.remove(<opencomputers:material:9>);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:9> * 2, [<ore:wireAluminium>, <opencomputers:material:8>, <rs_ctr:block_wire>, <stevescarts:modulecomponents:9>,<ore:plateSignalum>]);

mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:9> * 4, [<ore:wireAluminium>, <opencomputers:material:8>, <rs_ctr:block_wire>, <stevescarts:modulecomponents:16>]);

mods.immersiveengineering.Blueprint.addRecipe("electronics", <opencomputers:material:9> * 6, [<immersiveengineering:wirecoil:2>, <opencomputers:material:8>, <rs_ctr:block_wire>, <stevescarts:modulecomponents:16>,<ore:plateDenseCoal>]);



// We create hardrive platter under vacuum Glass + Bron + Aluminium
recipes.remove(<opencomputers:material:12>);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:glassReinforced>,<ore:nuggetBoron>,<techreborn:dust:1>], -0.5, [<opencomputers:material:12> * 2]);


// Create ADV Assebly for the CPU
mods.advancedrocketry.PrecisionAssembler.addRecipe(<opencomputers:component> * 2, 80, 100,null, <opencomputers:material:7>,<opencomputers:material:11>,<jaopca:item_platedensecopper>,<techreborn:part:2>);

recipes.remove(<opencomputers:component:1>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<opencomputers:component:1> * 2, 80, 100,null, <opencomputers:material:8> , <opencomputers:material:11>,<techreborn:plates:5>,<opencomputers:material:10>,<techreborn:part:1>);

recipes.remove(<opencomputers:component:2>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<opencomputers:component:2> * 2, 80, 100,null,<opencomputers:material:9>, <opencomputers:material:11>,<techreborn:plates:5>,<opencomputers:material:10>,<techreborn:part:3>);



// Need Servo (So Alu Tier)
// Normalize assembler
// Like an upgrade from the redstone assembler
recipes.remove(<opencomputers:assembler>);

RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <rs_ctr:assembler>,<ore:plateSteel>], 
  [<ore:oc:circuitChip1>,<ore:circuitBasic>,<ore:oc:circuitChip1>], 
  [<ore:servo>,<immersiveengineering:material:8>, <ore:servo>]] )
  .addOutput(<opencomputers:assembler>)
  .addTool(<ore:artisansHammer>, 15)  
  .addTool(<ore:artisansSolderer>, 15) 
  .setMinimumTier(1)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
  
// Screen 1 (No color)
recipes.remove(<opencomputers:screen1>);
recipes.addShaped("TTM_ocScreen1", <opencomputers:screen1>, [[<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>], [<floodlights:electric_incandescent_light_bulb>, <ore:dyeGray>, <ore:blockGlass>], [<ore:plateIron>, <rs_ctr:lever:1>, <ore:plateIron>]]);

recipes.remove(<opencomputers:screen2>);
recipes.addShaped("TTM_ocScreen2", <opencomputers:screen2>, [[<ore:plateRefinedIron>, <ore:circuitAdvanced>, <ore:plateRefinedIron>], [<floodlights:electric_incandescent_light_bulb>, <stevescarts:cartmodule:41>, <ore:blockGlass>], [<ore:plateRefinedIron>, <rs_ctr:lever:1>, <ore:plateRefinedIron>]]);

recipes.remove(<opencomputers:screen3>);
recipes.addShaped("TTM_ocScreen3", <opencomputers:screen3>, [[<ore:plateAluminum>, <ore:circuitAdvanced>, <ore:plateAluminum>], [<floodlights:electric_incandescent_light_bulb>, <stevescarts:cartmodule:41>, <ore:blockGlass>], [<ore:plateAluminum>, <rs_ctr:lever:1>, <ore:plateAluminum>]]);


// Computer
recipes.remove(<opencomputers:case1>);
recipes.addShaped("TTM_case14", <opencomputers:case1>, [[<ore:plateIron>, <ore:oc:circuitChip1>, <ore:plateIron>], [<ore:itemBattery>, <rs_ctr:power_hub>, <ore:itemCapacitor>], [<ore:plateIron>, <ore:oc:materialCircuitBoardPrinted>, <ore:plateIron>]]);

recipes.remove(<opencomputers:case2>);
recipes.addShaped("TTM_case26", <opencomputers:case2>, [[<ore:plateRefinedIron>, <ore:oc:circuitChip2>, <ore:plateRefinedIron>], [<ore:itemBattery>, <rs_ctr:power_hub>, <ore:itemCapacitor>], [<ore:plateRefinedIron>, <ore:oc:materialCircuitBoardPrinted>, <ore:plateRefinedIron>]]);

recipes.remove(<opencomputers:case3>);
recipes.addShaped("TTM_case35", <opencomputers:case3>, [[<ore:plateAluminum>, <ore:oc:circuitChip3>, <ore:plateAluminum>], [<ore:itemBattery>, <rs_ctr:power_hub>, <ore:itemCapacitor>], [<ore:plateAluminum>, <ore:oc:materialCircuitBoardPrinted>, <ore:plateAluminum>]]);




recipes.remove(<opencomputers:storage>);
recipes.addShaped("TTM_storage125", <opencomputers:storage>, [[<ore:nuggetGold>, <ore:oc:materialTransistor>, <ore:nuggetGold>], [<ore:paper>, <ore:oc:circuitChip1>, <ore:paper>], [<ore:nuggetGold>, <ore:circuitStorage>, <ore:nuggetGold>]]);

recipes.addShapeless("TTM_oc_storage181", <opencomputers:storage>, [<opencomputers:storage>]);
recipes.addShapeless("TTM_oc_storage153", <opencomputers:storage> * 2, [<opencomputers:storage>, <opencomputers:storage>]);
recipes.addShapeless("TTM_oc_torage130", <opencomputers:storage>.withTag({"oc:data": {"oc:readonly": 0 as byte, "oc:eeprom": [108, 111, 99, 97, 108, 32, 105, 110, 105, 116, 10, 100, 111, 10, 32, 32, 108, 111, 99, 97, 108, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 105, 110, 118, 111, 107, 101, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 115, 117, 108, 116, 32, 61, 32, 116, 97, 98, 108, 101, 46, 112, 97, 99, 107, 40, 112, 99, 97, 108, 108, 40, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 44, 32, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 114, 101, 115, 117, 108, 116, 91, 49, 93, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 115, 117, 108, 116, 91, 50, 93, 10, 32, 32, 32, 32, 101, 108, 115, 101, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 116, 97, 98, 108, 101, 46, 117, 110, 112, 97, 99, 107, 40, 114, 101, 115, 117, 108, 116, 44, 32, 50, 44, 32, 114, 101, 115, 117, 108, 116, 46, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 45, 45, 32, 98, 97, 99, 107, 119, 97, 114, 100, 115, 32, 99, 111, 109, 112, 97, 116, 105, 98, 105, 108, 105, 116, 121, 44, 32, 109, 97, 121, 32, 114, 101, 109, 111, 118, 101, 32, 108, 97, 116, 101, 114, 10, 32, 32, 108, 111, 99, 97, 108, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 101, 101, 112, 114, 111, 109, 34, 41, 40, 41, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 103, 101, 116, 68, 97, 116, 97, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 115, 101, 116, 68, 97, 116, 97, 34, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 100, 111, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 115, 99, 114, 101, 101, 110, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 115, 99, 114, 101, 101, 110, 34, 41, 40, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 103, 112, 117, 34, 41, 40, 41, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 115, 99, 114, 101, 101, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 115, 99, 114, 101, 101, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 104, 97, 110, 100, 108, 101, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 111, 112, 101, 110, 34, 44, 32, 34, 47, 105, 110, 105, 116, 46, 108, 117, 97, 34, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 104, 97, 110, 100, 108, 101, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 34, 34, 10, 32, 32, 32, 32, 114, 101, 112, 101, 97, 116, 10, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 100, 97, 116, 97, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 114, 101, 97, 100, 34, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 109, 97, 116, 104, 46, 104, 117, 103, 101, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 100, 97, 116, 97, 32, 97, 110, 100, 32, 114, 101, 97, 115, 111, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 98, 117, 102, 102, 101, 114, 32, 46, 46, 32, 40, 100, 97, 116, 97, 32, 111, 114, 32, 34, 34, 41, 10, 32, 32, 32, 32, 117, 110, 116, 105, 108, 32, 110, 111, 116, 32, 100, 97, 116, 97, 10, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 99, 108, 111, 115, 101, 34, 44, 32, 104, 97, 110, 100, 108, 101, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 108, 111, 97, 100, 40, 98, 117, 102, 102, 101, 114, 44, 32, 34, 61, 105, 110, 105, 116, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 105, 102, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 10, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 32, 100, 111, 10, 32, 32, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 101, 114, 114, 111, 114, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 32, 46, 46, 32, 40, 114, 101, 97, 115, 111, 110, 32, 97, 110, 100, 32, 40, 34, 58, 32, 34, 32, 46, 46, 32, 116, 111, 115, 116, 114, 105, 110, 103, 40, 114, 101, 97, 115, 111, 110, 41, 41, 32, 111, 114, 32, 34, 34, 41, 44, 32, 48, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 98, 101, 101, 112, 40, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 10, 101, 110, 100, 10, 105, 110, 105, 116, 40, 41, 10] as byte[] as byte[], "oc:label": "EEPROM (Lua BIOS)"}}), [<ore:oc:eeprom>, <ore:oc:manual>]);
recipes.addShapeless("TTM_storage181", <opencomputers:storage>, [<opencomputers:storage>]);

recipes.remove( <opencomputers:capacitor>);
recipes.addShaped("TTM_capacitor3", <opencomputers:capacitor>, [[<ore:ingotIron>, <ore:oc:materialTransistor>, <ore:ingotIron>], [<ore:itemCapacitor>, <ore:itemBattery>, <ore:itemCapacitor>], [<ore:ingotIron>, <ore:oc:materialCircuitBoardPrinted>, <ore:ingotIron>]]);

// Usse ADV Rocket Saw to create diamond clip
recipes.remove(<opencomputers:material:29>);
mods.advancedrocketry.CuttingMachine.addRecipe(<opencomputers:material:29>*4, 80, 100,<minecraft:diamond>);
mods.advancedrocketry.CuttingMachine.addRecipe(<libvulpes:productnugget:3>*9, 80, 100,<libvulpes:productingot:3>);
mods.advancedrocketry.CuttingMachine.addRecipe(<libvulpes:productnugget:10>*9, 80, 100,<ore:ingotIridium>);

recipes.remove(<tconstruct:nuggets>);
mods.advancedrocketry.CuttingMachine.addRecipe(<tconstruct:nuggets>*9, 80, 100,<jaopca:item_platecobalt>);


// Real CPU Upgrade from redstone processsor 
recipes.remove(<opencomputers:component>);
recipes.addShaped("TTM_Cpu1", <opencomputers:component>, [[<minecraft:iron_nugget>, <rs_ctr:processor2>, <minecraft:iron_nugget>],
 [<ore:oc:circuitChip1>, <ore:oc:materialCU>, <ore:oc:circuitChip1>],
 [<minecraft:iron_nugget>, <ore:oc:materialALU>, <minecraft:iron_nugget>]]);
 
  recipes.addShaped("TTM_Cpu2", <opencomputers:component> * 2, [[<ore:nuggetIridium>, <rs_ctr:processor2>, <ore:nuggetIridium>],
 [<ore:oc:circuitChip1>, <ore:oc:materialCU>, <ore:oc:circuitChip1>],
 [<ore:nuggetIridium>, <ore:oc:materialALU>, <ore:nuggetIridium>]]);
 
 recipes.addShaped("TTM_Cpu4", <opencomputers:component> * 4, [[<ore:nuggetSilicon>, <rs_ctr:processor2>, <ore:nuggetSilicon>],
 [<ore:oc:circuitChip1>, <ore:oc:materialCU>, <ore:oc:circuitChip1>],
 [<ore:nuggetSilicon>, <ore:oc:materialALU>, <ore:nuggetSilicon>]]);



recipes.remove( <opencomputers:diskdrive>);
recipes.addShaped("TTM_diskdrive10", <opencomputers:diskdrive>, [[<ore:plateIron>, <ore:oc:circuitChip1>, <ore:plateIron>], [<ore:craftingPiston>, <ore:motor>, null], [<ore:plateIron>, <ore:oc:materialCircuitBoardPrinted>, <ore:plateIron>]]);

recipes.remove(<opencomputers:adapter>);
recipes.addShaped("TTM_adapter_1a", <opencomputers:adapter>, [[<ore:plateIron>, <rs_ctr:block_wire>, <ore:plateIron>], [<ore:oc:cable>, <ore:oc:circuitChip1>, <ore:oc:cable>], [<ore:plateIron>, <ore:oc:materialCircuitBoardPrinted>, <ore:plateIron>]]);

recipes.remove(<opencomputers:transposer>);
recipes.addShaped("TTM_transposer29", <opencomputers:transposer> * 4, [[<ore:ingotIron>, <ore:oc:inventoryControllerUpgrade>, <ore:ingotIron>], [<ore:servo>, <minecraft:bucket>, <ore:servo>], [<ore:ingotIron>, <ore:oc:tankControllerUpgrade>, <ore:ingotIron>]]);

// Drone
recipes.remove( <opencomputers:material:23>);
recipes.remove( <opencomputers:material:24>);

recipes.addShaped("TTM_drone_1", <opencomputers:material:23>, [[<pneumaticcraft:turbine_rotor>, <minecraft:compass>, <pneumaticcraft:turbine_rotor>], [<ore:oc:circuitChip1>, <ore:oc:microcontrollerCase1>, <ore:oc:circuitChip1>], [<pneumaticcraft:turbine_rotor>, <ore:oc:componentBus2>, <pneumaticcraft:turbine_rotor>]]);

recipes.addShaped("TTM_drone_2", <opencomputers:material:24>, [[<pneumaticcraft:turbine_rotor>, <minecraft:compass>, <pneumaticcraft:turbine_rotor>], [<ore:oc:circuitChip2>, <ore:oc:microcontrollerCase2>, <ore:oc:circuitChip2>], [<pneumaticcraft:turbine_rotor>, <ore:oc:componentBus3>,<pneumaticcraft:turbine_rotor>]]);


//recipes.remove(<opencomputers:cable>);

//recipes.addShaped("TTM_Cable2", <opencomputers:cable> * 2, [[null, <ore:nuggetIron>, null], [<ore:nuggetIron>, <rs_ctr:wire>,<ore:nuggetIron>], [null, <ore:nuggetIron>,null]]);

//recipes.addShaped("TTM_Cable4", <opencomputers:cable> * 4, [[null, <ore:nuggetSteel>, null], [<ore:nuggetSteel>, <rs_ctr:wire>,<ore:nuggetSteel>], [null, <ore:nuggetSteel>,null]]);

//recipes.addShaped("TTM_Cable12", <opencomputers:cable> * 12, [[null, <ore:nuggetAluminium>, null], [<ore:nuggetAluminium>, <immersiveengineering:wirecoil:5>,<ore:nuggetAluminium>], [null, <ore:nuggetAluminium>,null]]);

recipes.addShaped("TTM_CardBase2", <opencomputers:material:5> * 2, [[<minecraft:iron_nugget>, null, null], [<ore:nuggetRefinedIron>, <stevescarts:modulecomponents:9>, null], [<minecraft:iron_nugget>, <ore:nuggetGold>, null]]);

recipes.addShaped("TTM_CardBase3", <opencomputers:material:5> * 3, [[<ore:nuggetRefinedIron>, null, null], [<ore:nuggetRefinedIron>, <stevescarts:modulecomponents:9>, null], [<ore:nuggetRefinedIron>, <ore:wireElectrum>, null]]);


// ALU 
recipes.addShaped("TTM_Alu2", <opencomputers:material:10> * 2, [[<ore:nuggetRefinedIron>, <rs_ctr:num_comb>, <ore:nuggetRefinedIron>], [<ore:oc:materialTransistor>, <ore:oc:circuitChip1>, <ore:oc:materialTransistor>], [<minecraft:iron_nugget>, <ore:oc:materialTransistor>, <minecraft:iron_nugget>]]);

recipes.addShaped("TTM_Alu4", <opencomputers:material:10> * 4, [[<ore:nuggetRefinedIron>, <advancedrocketry:ic>, <ore:nuggetRefinedIron>], [<ore:oc:materialTransistor>, <ore:oc:circuitChip1>, <ore:oc:materialTransistor>], [<ore:nuggetRefinedIron>, <ore:oc:materialTransistor>,<ore:nuggetRefinedIron>]]);


// A Manual recipes using Refined Iron - Give 2
recipes.addShaped("Transistor_Refined", <opencomputers:material:6> * 2, [[<ore:nuggetRefinedIron>, <ore:nuggetRefinedIron>,<ore:nuggetRefinedIron>], [<ore:wireCopper>, <ore:dustSilicon>, <ore:wireCopper>], [null, <ore:paper>, null]]);

recipes.remove(<opencomputers:upgrade:23>);
recipes.addShaped("TTM_OCUpgradeTankLevel1", <opencomputers:upgrade:23>, [[<ore:plankWood>, <indlog:fluid_filter>, <ore:plankWood>], [<indlog:fluid_pipe>, <stevescarts:cartmodule:64>, <indlog:fluid_pipe>], [<ore:plankWood>, <ore:oc:circuitChip1>, <ore:plankWood>]]);

recipes.remove(<opencomputers:upgrade:24>);
recipes.addShaped("TTM_OCUpgradeTankLevel2", <opencomputers:upgrade:24>, [[<ore:ingotGold>, <opencomputers:upgrade:23>, <ore:ingotGold>], [<indlog:fluid_pipe:2>, <ore:oc:circuitChip2>, <indlog:fluid_pipe:1>], [<ore:ingotGold>, <ore:oc:materialCircuitBoardPrinted>, <ore:ingotGold>]]);

recipes.remove(<opencomputers:upgrade:11>);
recipes.addShaped("TTM_Crafting", <opencomputers:upgrade:11>, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:oc:circuitChip1>, <buildcraftfactory:autoworkbench_item> | <indlog:auto_craft>, <ore:oc:circuitChip1>], [<ore:ingotIron>, <ore:oc:materialCircuitBoardPrinted>, <ore:ingotIron>]]);

recipes.addShapeless("TTM_autoILtoBC", <buildcraftfactory:autoworkbench_item>, [<indlog:auto_craft>]);
recipes.addShapeless("TTM_autoBCtoIL", <indlog:auto_craft>, [<buildcraftfactory:autoworkbench_item>]);

recipes.remove(<opencomputers:upgrade:27>);
recipes.addShaped("TTM_OCFlyLevel1", <opencomputers:upgrade:27>, [[<pneumaticcraft:turbine_rotor>, <ore:oc:circuitChip1>, <pneumaticcraft:turbine_rotor>], [<minecraft:iron_nugget>, <ore:leather>, <minecraft:iron_nugget>], [<pneumaticcraft:turbine_rotor>, <ore:oc:materialCircuitBoardPrinted>,<pneumaticcraft:turbine_rotor>]]);

recipes.remove( <opencomputers:upgrade:28>);
recipes.addShaped("TTM_OCFlyLevel2", <opencomputers:upgrade:28>, [[<pneumaticcraft:pressure_tube>, <ore:oc:circuitChip2>, <pneumaticcraft:pressure_tube>], [<ore:nuggetGold>, <opencomputers:upgrade:27>, <ore:nuggetGold>], [<pneumaticcraft:pressure_tube>, <pneumaticcraft:jet_boots_upgrade>, <pneumaticcraft:pressure_tube>]]);

