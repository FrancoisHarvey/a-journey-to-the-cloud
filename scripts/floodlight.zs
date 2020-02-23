// floodlight

import mods.artisanworktables.builder.RecipeBuilder;

// Low Tech many step 

mods.immersiveengineering.AlloySmelter.addRecipe( <floodlights:raw_filament>,<ore:wireCopper>,<techreborn:part:35> * 8 ,2000);
mods.techreborn.alloySmelter.addRecipe(<floodlights:raw_filament>,<ore:wireCopper>,<techreborn:part:35> * 8, 50, 45);
// bamboo coal
mods.techreborn.wireMill.addRecipe(<floodlights:raw_filament> * 2, <growthcraft_bamboo:bamboo_coal>, 80,32);
// Based on graphite
mods.techreborn.wireMill.addRecipe(<floodlights:glowing_filament> * 4, <immersiveengineering:graphite_electrode>, 80,32);

// Modern tech * 8
mods.techreborn.wireMill.addRecipe(<floodlights:glowing_filament> * 8, <ore:ingotTungsten>, 80,32);
 
// Manual recipes with liquid glass
RecipeBuilder.get("chemist")
  .setShaped([[null, <minecraft:glass_pane>, null], 
  [<minecraft:glass_pane>, <floodlights:glowing_filament>, <minecraft:glass_pane>],
  [null, <ore:ingotIron>, null]] )
  .addOutput(<floodlights:electric_incandescent_light_bulb>)
  .addTool(<ore:artisansCutters>, 40)  
  .setFluid(<liquid:glass> * 100)
  .create();
  


// Very Low Tech (We broke some bottle)
//mods.immersiveengineering.AlloySmelter.addRecipe( <floodlights:electric_incandescent_light_bulb> ,<minecraft:glass_bottle> ,<floodlights:glowing_filament>);

// More Tech, but we broke some bottle (can be automatized)
mods.techreborn.alloySmelter.addRecipe(<floodlights:electric_incandescent_light_bulb> ,<minecraft:glass_bottle> * 2,<floodlights:glowing_filament> * 1, 50, 60);

//  We can upgrade electronTube to incandescent
mods.techreborn.alloySmelter.addRecipe(<floodlights:electric_incandescent_light_bulb> * 2,<ore:electronTube>,<floodlights:glowing_filament>, 50, 45);


// Vaccuum = 4 !
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:glassReinforced>,<minecraft:glowstone_dust>,<floodlights:glowing_filament>], -0.5, [<floodlights:electric_incandescent_light_bulb> * 4]);



recipes.remove(<techreborn:lamp_incandescent>);
recipes.addShaped("TTM_lamp_incandescent", <techreborn:lamp_incandescent>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [<techreborn:cable>, <floodlights:electric_incandescent_light_bulb>, <techreborn:cable>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);



// Battery + Refined Iron + steel mechanical
recipes.remove(<floodlights:electric_floodlight>);
recipes.addShaped("TTM_block_electric_floodlight", <floodlights:electric_floodlight>, [[<ore:plateRefinedIron>, <immersiveengineering:material:9>,<ore:plateRefinedIron>], [<ore:reBattery>, <floodlights:electric_incandescent_light_bulb>, <ore:glassReinforced>], [<ore:plateRefinedIron>,<immersiveengineering:material:9>, <ore:plateRefinedIron>]]);


// Use UV Lamp
recipes.remove(<floodlights:uv_floodlight>);
recipes.addShaped("TTM_uv_floodlight", <floodlights:uv_floodlight>, [[<ore:plateRefinedIron>, <immersiveengineering:material:9>,<ore:plateRefinedIron>], [<ore:reBattery>, <emergingtechnology:purplebulb>, <ore:glassReinforced>], [<ore:plateRefinedIron>,<immersiveengineering:material:9>, <ore:plateRefinedIron>]]);

recipes.remove(<floodlights:carbon_floodlight>);
recipes.addShaped("TTM_block_carbon_floodlight", <floodlights:carbon_floodlight>, [[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>], [<buildcraftfactory:tank>, <floodlights:carbon_lantern>,<ore:blockGlass> ], [<ore:plateSteel>,<immersiveengineering:material:8>, <ore:plateSteel>]]);

// Use shared carbon_lantern component
recipes.remove(<pneumaticcraft:kerosene_lamp>);
recipes.addShaped("TTM_kerosene_lamp", <pneumaticcraft:kerosene_lamp>, [[null, <ore:ingotIronCompressed>, null], [<ore:blockGlass>, <floodlights:carbon_lantern>, <ore:blockGlass>], [<ore:ingotIronCompressed>, <minecraft:bucket>, <ore:ingotIronCompressed>]]);

recipes.remove( <floodlights:grow_light>);
recipes.addShaped("TTM_block_grow_light", <floodlights:grow_light>, [[<ore:plateRefinedIron>, <ore:reBattery>, <ore:plateRefinedIron>], [<ore:fertilizer>, <floodlights:electric_incandescent_light_bulb>, <ore:fertilizer>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

recipes.removeByRecipeName("loodlights:block_small_electric_floodlight");

recipes.addShaped("TTM_block_small_electric_floodlight", <floodlights:small_electric_floodlight_meta_block>, [[null, <minecraft:glass>, null], [<minecraft:glass>, <floodlights:electric_incandescent_light_bulb>, <minecraft:glass>], [<ore:plateRefinedIron>,  <ore:reBattery>, <ore:plateRefinedIron>]]);

recipes.addShaped("TTM_block_grow_light_fl", <floodlights:grow_light>, [ [<ore:fertilizer>, <floodlights:small_electric_floodlight_meta_block>, <ore:fertilizer>]]);

recipes.addShaped("ttm_block_electric_floodlight_IE", <floodlights:electric_floodlight> * 2, [[<ore:plateRefinedIron>, <immersiveengineering:material:9>, <ore:plateRefinedIron>], [<ore:reBattery>, <immersiveengineering:metal_device1:9>, <ore:glassReinforced>], [<ore:plateRefinedIron>, <immersiveengineering:material:9>, <ore:plateRefinedIron>]]);

