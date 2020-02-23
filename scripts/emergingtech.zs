// Emerging tech

import mods.artisanworktables.builder.RecipeBuilder;

// Gate initial creation of plastic

recipes.remove(<emergingtechnology:machinecase>);


 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickPlastic>, <ore:stickPlastic>, <ore:stickPlastic>],
  [<ore:stickPlastic>, <ore:circuitAdvanced>, <ore:stickPlastic>], 
  [<ore:stickPlastic>, <ore:stickPlastic>, <ore:stickPlastic>]])
  .setMinimumTier(1)
  .addOutput( <emergingtechnology:machinecase>)
  .addTool(<ore:artisansCutters>, 75)
  .create();


// Use IE to create rod 
recipes.remove(<emergingtechnology:plasticrod>);
mods.immersiveengineering.MetalPress.addRecipe(<emergingtechnology:plasticrod> ,<emergingtechnology:plasticblock>, <immersiveengineering:mold:2>, 500, 1);

// Or File
RecipeBuilder.get("blacksmith")
  .setShapeless( [<emergingtechnology:plasticblock>])
  .addOutput(  <emergingtechnology:plasticrod>)
  .addTool(<ore:artisansFile>, 25)   
  .create();



// Use IE to create plate (2x)
recipes.remove(<emergingtechnology:plasticsheet>);
mods.immersiveengineering.MetalPress.addRecipe(<emergingtechnology:plasticsheet> * 2,<emergingtechnology:plasticblock>, <immersiveengineering:mold>, 500, 1);

// Horse
mods.horsepower.Press.add(<emergingtechnology:plasticblock>, <emergingtechnology:plasticsheet>);


// Or hammer it (1/2X) 
RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<emergingtechnology:plasticblock>, null], 
  [null,<emergingtechnology:plasticblock>,null], 
  [null,null, null]])
  .addOutput( <emergingtechnology:plasticsheet>)
  .addTool(<ore:artisansHammer>, 25)  
  .create(); 


recipes.remove(<emergingtechnology:purplebulb>);
recipes.addShaped("TTM_purplebulb", <emergingtechnology:purplebulb>, [[<ore:sheetPlastic>, <minecraft:gold_ingot>, <ore:sheetPlastic>], [<ore:blockGlass>, <floodlights:electric_incandescent_light_bulb>, <ore:blockGlass>], [<ore:sheetPlastic>, <minecraft:gold_ingot>, <ore:sheetPlastic>]]);


// Manufactory use ET shreddedplant to do bio plastic ( More realist progression)
mods.nuclearcraft.manufactory.removeRecipeWithOutput(<nuclearcraft:part:6>);

mods.nuclearcraft.manufactory.addRecipe(<emergingtechnology:shreddedplant> * 2, <nuclearcraft:part:6>);

recipes.remove(<emergingtechnology:battery>);

recipes.addShaped("TTM_etbattery", <emergingtechnology:battery>, [[<ore:plasticYellow>, <techreborn:rebattery>.withTag({energy: 0}),<ore:plasticYellow>], [<ore:plasticYellow>,<emergingtechnology:machinecase>, <ore:plasticRed>], [<ore:plasticYellow>, <techreborn:rebattery>.withTag({energy: 0}), <ore:plasticYellow>]]);

// USe WindMind or IE Kinetic to do Wind Generator
recipes.remove(<emergingtechnology:wind>);
recipes.addShaped("TTM_etwindTR", <emergingtechnology:wind>, [[<ore:sheetPlastic>, <ore:rodPlastic>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <techreborn:wind_mill>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <emergingtechnology:machinecase>, <ore:sheetPlastic>]]);

recipes.addShaped("TTM_etwindIE", <emergingtechnology:wind>, [[<ore:sheetPlastic>, <libvulpes:battery>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <immersiveengineering:metal_device1:2>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <emergingtechnology:machinecase>, <ore:sheetPlastic>]]);

recipes.remove(<emergingtechnology:tidalgenerator>);
recipes.addShaped("TTM_tidalgenerator", <emergingtechnology:tidalgenerator>, [[<ore:sheetPlastic>, <minecraft:iron_bars>, <ore:sheetPlastic>], [<ore:rodPlastic>, <techreborn:water_mill>, <ore:rodPlastic>], [<ore:sheetPlastic>, <emergingtechnology:machinecase>, <ore:sheetPlastic>]]);

recipes.remove( <emergingtechnology:biomassgenerator>);
recipes.addShaped("TTM_biomassgenerator", <emergingtechnology:biomassgenerator>, [[<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <techreborn:solid_fuel_generator>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <emergingtechnology:machinecase>, <minecraft:iron_ingot>]]);

recipes.remove(<emergingtechnology:solar>);
recipes.addShaped("TTM_etsolar", <emergingtechnology:solar>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:sheetPlastic>, <stevescarts:modulecomponents:44>, <ore:sheetPlastic>], [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>]]);

recipes.remove(<emergingtechnology:piezoelectric>);
recipes.addShaped("TTM_piezoelectric", <emergingtechnology:piezoelectric>, [[<minecraft:iron_ingot>, <minecraft:heavy_weighted_pressure_plate>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>,<ore:itemBattery>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:light_weighted_pressure_plate>, <minecraft:iron_ingot>]]);

// Harvester
recipes.remove( <emergingtechnology:harvester>);
recipes.addShaped("TTM_etharvester", <emergingtechnology:harvester>, [[<ore:stickPlastic>,<ore:itemBattery>, <ore:stickPlastic>], [<ore:blockPlastic>, <pneumaticcraft:pneumatic_cylinder>, <ore:blockPlastic>], [<minecraft:obsidian>, <emergingtechnology:machinecase>, <minecraft:obsidian>]]);

// Use Techreborn grow_light
recipes.remove(<emergingtechnology:light>);
recipes.addShaped("TTM_etlight", <emergingtechnology:light>, [[null, null, null], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockPlastic>, <floodlights:grow_light>, <ore:blockPlastic>]]);

