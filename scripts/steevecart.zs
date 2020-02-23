// Steeve Cart

import mods.artisanworktables.builder.RecipeBuilder;


// We do a steve PCP using IE
recipes.remove(<stevescarts:modulecomponents:9>);
mods.immersiveengineering.Blueprint.addRecipe("components", <stevescarts:modulecomponents:9> , [<opencomputers:material:4>,<rs_ctr:wire>,<opencomputers:material:6>]);


mods.immersiveengineering.Blueprint.addRecipe("components", <stevescarts:modulecomponents:9> , [<opencomputers:material:4>,<immersiveengineering:wirecoil:5> * 4,<opencomputers:material:6>]);

mods.immersiveengineering.Blueprint.addRecipe("components", <stevescarts:modulecomponents:9> , [<opencomputers:material:4>,<immersiveengineering:wirecoil:5> * 4,<opencomputers:material:6>]);

mods.techreborn.industrialSawmill.addRecipe(<stevescarts:modulecomponents:9> * 4, <emergingtechnology:shreddedplastic>, null, <pneumaticcraft:advanced_pcb>, <liquid:water>, 100, 32);

mods.techreborn.industrialSawmill.addRecipe(<advancedrocketry:wafer> * 6, <libvulpes:productdust:3>, null,<libvulpes:productboule:3>, <liquid:water>, 100, 32);

// Block Assembler  
// Similar as other builder type recipes
// Similar to steeve factory
recipes.remove(<stevescarts:blockcartassembler>);
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:workbench>,<ore:plateSteel>], 
  [<minecraft:minecart>,<ore:circuitBasic>, <minecraft:minecart>], 
  [<ore:motor>, <immersiveengineering:material:8>, <ore:motor>]] )
  .addOutput(<stevescarts:blockcartassembler>)
  .addTool(<ore:artisansHammer>, 15)  
  .addTool(<ore:artisansSolderer>, 15) 
  .setMinimumTier(1)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
  
  // ******************************************
// Solar Pannel (the Root of ALL SOLAR Stuff in this modpack)
// Need -> Reinforced Glass (TR)
// Need -> Liquid silver 
// Need Silicon
// Need Transistor
// Need Tier 2 table
recipes.remove(<stevescarts:modulecomponents:44>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:gemLapis>, <ore:glassReinforced>, <ore:gemLapis>],
  [<ore:solenoidCopper>, <ore:dustSilicon>, <ore:solenoidCopper>],
  [<ore:plateSteel>, <ore:oc:materialTransistor>, <ore:plateSteel>]] )
  .addOutput(<stevescarts:modulecomponents:44> )
  .addTool(<ore:artisansCutters>, 15)  
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:silver> * 500)
  .setMinimumTier(1)
  .create();
  
recipes.remove(<stevescarts:modulecomponents:44>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateLapis>, <ore:glassReinforced>, <ore:plateLapis>],
  [<ore:solenoidCopper>, <ore:plateSilicon>, <ore:solenoidCopper>],
  [<ore:plateSteel>,<ore:oc:circuitChip1>, <ore:plateSteel>]] )
  .addOutput(<stevescarts:modulecomponents:44> * 4)
  .addTool(<ore:artisansCutters>, 15)  
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:silver> * 500)
  .setMinimumTier(1)
  .create();
  
recipes.remove(<stevescarts:modulecomponents:44>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateLapis>, <thermalfoundation:glass:2>, <ore:plateLapis>],
  [<ore:solenoidCopper>, <ore:plateSilicon>, <ore:solenoidCopper>],
  [<ore:plateSteel>,<ore:oc:circuitChip1>, <ore:plateSteel>]] )
  .addOutput(<stevescarts:modulecomponents:44> * 4)
  .addTool(<ore:artisansCutters>, 15)  
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:silver> * 250)
  .setMinimumTier(1)
  .create();
  
recipes.remove(<stevescarts:modulecomponents:44>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateDenseLapis>, <ore:glassReinforced>,<ore:plateDenseLapis>],
  [<ore:solenoidCopper>, <ore:plateSilicon>, <ore:solenoidCopper>],
  [<ore:plateSteel>,<ore:oc:capacitor>, <ore:plateSteel>]] )
  .addOutput(<stevescarts:modulecomponents:44> * 6)
  .addTool(<ore:artisansCutters>, 15)  
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:silver> * 1000)
  .setMinimumTier(1)
  .create();

recipes.remove(<stevescarts:modulecomponents:44>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateDenseLapis>, <ore:glassReinforced>,<ore:plateDenseLapis>],
  [<ore:solenoidCopper>, <ore:plateSilicon>, <ore:solenoidCopper>],
  [<ore:plateSteel>,<ore:oc:capacitor>, <ore:plateSteel>]] )
  .addOutput(<stevescarts:modulecomponents:44> * 6)
  .addTool(<ore:artisansCutters>, 15)  
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:silver> * 1000)
  .setMinimumTier(1)
  .create();
  
 
 
recipes.remove(<stevescarts:modulecomponents:44>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateDenseLapis>, <thermalfoundation:glass:2>,<ore:plateDenseLapis>],
  [<ore:solenoidCopper>, <ore:plateSilicon>, <ore:solenoidCopper>],
  [<ore:plateSteel>,<ore:oc:capacitor>, <ore:plateSteel>]] )
  .addOutput(<stevescarts:modulecomponents:44> * 6)
  .addTool(<ore:artisansCutters>, 15)  
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:silver> * 500)
  .setMinimumTier(1)
  .create();
  
   
  
 // Add a blueprint for the Solar components
 // Need a Solar panel to do the blueprint
recipes.addShaped("ttm_blueprints_solar", <immersiveengineering:blueprint>.withTag({blueprint: "solar"}), [[<ore:ingotSilver>,<stevescarts:modulecomponents:44> , <ore:ingotSilver>], [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);



mods.immersiveengineering.Blueprint.addRecipe("solar",<stevescarts:modulecomponents:44> , [<ore:plateSilver>,<techreborn:reinforced_glass>,<ore:plateSilicon>,<opencomputers:material:6>,<ore:itemCapacitor>]);

mods.immersiveengineering.Blueprint.addRecipe("solar",<stevescarts:modulecomponents:44> , [<ore:plateelectrum>,<techreborn:reinforced_glass>,<ore:plateSilicon>,<opencomputers:material:6>,<ore:itemCapacitor>]);

mods.immersiveengineering.Blueprint.addRecipe("solar",<stevescarts:modulecomponents:44> * 2, [<ore:plateLumium>,<techreborn:reinforced_glass>,<ore:plateSilicon>,<opencomputers:material:6>,<ore:itemCapacitor>]);

mods.immersiveengineering.Blueprint.addRecipe("solar",<stevescarts:modulecomponents:44> * 3 , [<ore:plateDenseSilver>,<techreborn:reinforced_glass>,<libvulpes:productplate:3>,<ore:oc:capacitor>]);


  
 
// Iron pane is created using Metal Sheet on a IE Metak Press, 1 
recipes.remove(<stevescarts:modulecomponents:34>);
recipes.remove(<stevescarts:modulecomponents:35>);
recipes.remove(<stevescarts:modulecomponents:36>);

// Standard
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:34> * 9, <ore:blockSheetmetalIron>, <immersiveengineering:mold:6>, 500, 1);
// Small
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:35> * 4, <ore:blockSheetmetalIron>, <immersiveengineering:mold:5>, 500, 1);
// Huge
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:36> , <ore:blockSheetmetalIron>, <immersiveengineering:mold>, 500, 1);

// Wood pane is created using Wood plate with the same logic of the iron 

recipes.remove(<stevescarts:modulecomponents:30>);
recipes.remove(<stevescarts:modulecomponents:31>);
recipes.remove(<stevescarts:modulecomponents:32>);
// Standard
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:30> * 9, <ore:plateWood>, <immersiveengineering:mold:6>, 500, 1);
// Small
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:31> * 4, <ore:plateWood>, <immersiveengineering:mold:5>, 500, 1);
// Huge
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:32> ,<ore:plateWood>, <immersiveengineering:mold>, 500, 1);


// TANK
recipes.remove(<stevescarts:modulecomponents:61>);
recipes.remove(<stevescarts:modulecomponents:62>);
recipes.remove(<stevescarts:modulecomponents:63>);
// Standard
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:61> * 9,<ore:paneGlass>, <immersiveengineering:mold:6>, 500, 1);
// Small
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:62> * 4, <ore:paneGlass>, <immersiveengineering:mold:5>, 500, 1);
// Huge
mods.immersiveengineering.MetalPress.addRecipe(<stevescarts:modulecomponents:63> ,<ore:paneGlass>, <immersiveengineering:mold>, 500, 1);


// Normalize blockliquidmanager

recipes.remove(<stevescarts:blockliquidmanager>);

recipes.addShaped("TTM_liquid_manager", <stevescarts:blockliquidmanager>, [[<stevescarts:cartmodule:66>, <ore:plateIron>, <stevescarts:cartmodule:66>], [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>], [<stevescarts:cartmodule:66>,<ore:servo>, <stevescarts:cartmodule:66>]]);

// normalize blockcargomanager
recipes.remove( <stevescarts:blockcargomanager>);
recipes.addShaped("TTM_cargo_manager", <stevescarts:blockcargomanager>, [[<stevescarts:modulecomponents:35>, <ore:plateIron>, <stevescarts:modulecomponents:35>], [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>],
 [<stevescarts:modulecomponents:35>, <ore:servo>, <stevescarts:modulecomponents:35>]]);

// USe redstone BAttery
recipes.remove(<stevescarts:upgrade>);
recipes.addShaped("TTM_stevescarts_batteries", <stevescarts:upgrade>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], [<minecraft:redstone>, <cd4017be_lib:m:400>, <minecraft:redstone>], [<minecraft:redstone>, <stevescarts:modulecomponents:59>, <minecraft:redstone>]]);

// Move Stabilized Metal to the Blast furnace and allow a ArcFurnace
furnace.remove(<stevescarts:modulecomponents:22>);
// Between Steel and Titanium
mods.techreborn.blastFurnace.addRecipe(<stevescarts:modulecomponents:22> , null,<stevescarts:modulecomponents:21>,null, 250,  512,1250);
mods.immersiveengineering.ArcFurnace.addRecipe(<stevescarts:modulecomponents:22>,<stevescarts:modulecomponents:21>,null, 400, 512);

// Move Galgadorian over the Blast Furnace
// Allowing to Gate 
furnace.remove(<stevescarts:modulecomponents:47>);
furnace.remove(<stevescarts:modulecomponents:49>);

// Little over Iridium
mods.techreborn.blastFurnace.addRecipe(<stevescarts:modulecomponents:47> , null,<stevescarts:modulecomponents:46>,null, 250,  512,1800);

// Same Temp as Tungsten
mods.techreborn.blastFurnace.addRecipe(<stevescarts:modulecomponents:49> , null,<stevescarts:modulecomponents:48>,null, 325,  512,2500);


// Alternative recipes using different component
recipes.remove(<stevescarts:modulecomponents:16>);

recipes.addShaped("TTM_adv_pcb1", <stevescarts:modulecomponents:16> , [[<minecraft:redstone>, <ore:plateCopper>, <minecraft:redstone>], [<stevescarts:modulecomponents:9>, <opencomputers:material:7>, <stevescarts:modulecomponents:9>], [<minecraft:redstone>, <ore:plateIron>, <minecraft:redstone>]]);

recipes.addShaped("TTM_adv_pcb2", <stevescarts:modulecomponents:16> * 2, [[<minecraft:redstone>,<pneumaticcraft:plastic:2>, <minecraft:redstone>], [<stevescarts:modulecomponents:9>, <opencomputers:material:7>, <stevescarts:modulecomponents:9>], [<minecraft:redstone>, <pneumaticcraft:plastic:2>, <minecraft:redstone>]]);

recipes.addShaped("TTM_adv_pcb3", <stevescarts:modulecomponents:16> * 3, [[<immersiveengineering:material:21>, <ore:plateCopper>,<rs_ctr:wire>], [<stevescarts:modulecomponents:9>, <pneumaticcraft:printed_circuit_board>, <stevescarts:modulecomponents:9>], [<rs_ctr:wire>, <ore:plateIron>, <immersiveengineering:material:21>]]);

recipes.addShaped("TTM_adv_pcb4", <stevescarts:modulecomponents:16> * 4 , [[<minecraft:redstone>, <pneumaticcraft:plastic:2>, <minecraft:redstone>], [<stevescarts:modulecomponents:9>, <pneumaticcraft:plastic:2>, <stevescarts:modulecomponents:9>], [<minecraft:redstone>, <ore:sheetPlastic>, <minecraft:redstone>]]);

recipes.addShaped("TTM_adv_pcb6", <stevescarts:modulecomponents:16> * 6 , [[<minecraft:redstone>, <pneumaticcraft:plastic:2>, <minecraft:redstone>], [<stevescarts:modulecomponents:9>, <ore:oc:circuitChip3>, <stevescarts:modulecomponents:9>], [<minecraft:redstone>, <pneumaticcraft:plastic:2>, <minecraft:redstone>]]);

recipes.addShaped("TTM_adv_pcb12", <stevescarts:modulecomponents:16> * 12 , [[<minecraft:redstone>, <pneumaticcraft:plastic:2>, <minecraft:redstone>], [<stevescarts:modulecomponents:9>, <advancedrocketry:itemcircuitplate:1>, <stevescarts:modulecomponents:9>], [<minecraft:redstone>, <pneumaticcraft:plastic:2>, <minecraft:redstone>]]);
