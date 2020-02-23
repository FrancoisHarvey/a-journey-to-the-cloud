// Mystical

import mods.artisanworktables.builder.RecipeBuilder;


// Normalize glass using alloy Glass + Soulsand
recipes.remove(<mysticalagriculture:soul_glass>);
mods.immersiveengineering.AlloySmelter.addRecipe(<mysticalagriculture:soul_glass>, <minecraft:soul_sand>,<minecraft:glass>,100);
mods.techreborn.alloySmelter.addRecipe(<mysticalagriculture:soul_glass>, <minecraft:glass>,   <minecraft:soul_sand>, 50, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<minecraft:soul_sand>,<minecraft:glass>,<mysticalagriculture:soul_glass> );

// Machine frame
// Need Tech reborn frame
recipes.remove(<mysticalagriculture:mystical_machine_frame> );
recipes.addShaped("TTM_mystical_machine_frame1", <mysticalagriculture:mystical_machine_frame> * 1, [[<ore:stone>, <mysticalagriculture:crafting:32>, <ore:stone>], [<mysticalagriculture:crafting:32>, <ore:machineBasic>, <mysticalagriculture:crafting:32>], [<ore:stone>, <mysticalagriculture:crafting:32>, <ore:stone>]]);

recipes.addShaped("TTM_mystical_machine_frame2", <mysticalagriculture:mystical_machine_frame> * 2, [[<ore:stone>, <mysticalagriculture:crafting:32>, <ore:stone>], [<mysticalagriculture:crafting:32>, <ore:machineBlockAdvanced>, <mysticalagriculture:crafting:32>], [<ore:stone>, <mysticalagriculture:crafting:32>, <ore:stone>]]);

recipes.addShaped("TTM_mystical_machine_frame4", <mysticalagriculture:mystical_machine_frame> * 4, [[<ore:stone>, <mysticalagriculture:crafting:32>, <ore:stone>], [<mysticalagriculture:crafting:32>, <ore:machineBlockElite>, <mysticalagriculture:crafting:32>], [<ore:stone>, <mysticalagriculture:crafting:32>, <ore:stone>]]);


// mysticalagriculture Nerfing and normalization
// Yeh, We want, *infinite* ressource, but not so *infinite*
// So You need to Infuse Rock
// Rock are everywhere and free... but limited :) So I added a manual and costly recipes to create rock :)
RecipeBuilder.get("blacksmith")
  .setShaped( [[null,null, null], 
  [null,<ore:stone>,null], 
  [null,null, null]])
  .addOutput(<tinkersurvival:rock_stone> * 4)
  .addTool(<ore:artisansHammer>, 125)  
  .create(); 

// COAL | COAL ESSENCE + ROCK


// IRON
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster>,<tinkersurvival:rock_stone>,<mysticalagriculture:iron_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster>,<tinkersurvival:rock_stone>, <mysticalagriculture:iron_essence> * 8, 50, 15);
// Allow Ore Crafting
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:iron_ore>,<ore:cobblestone>,<geolosys:cluster>,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:iron_ore>,<ore:cobblestone>, <geolosys:cluster>, 50, 15);

// GOLD
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:1>,<tinkersurvival:rock_stone>,<mysticalagriculture:gold_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:1>,<tinkersurvival:rock_stone>, <mysticalagriculture:gold_essence> * 8, 50, 15);

// Allow Ore Crafting
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:gold_ore>,<ore:cobblestone>,<geolosys:cluster:1>,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:gold_ore>,<ore:cobblestone>, <geolosys:cluster:1>, 50, 15);


// COPPER ORE = STONE + COPPER ESSENCE 
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:2>,<tinkersurvival:rock_stone>,<mysticalagriculture:copper_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:2>,<tinkersurvival:rock_stone>, <mysticalagriculture:copper_essence> * 8, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:ore>,<ore:cobblestone>,<geolosys:cluster:2>,100);
mods.techreborn.alloySmelter.addRecipe(<thermalfoundation:ore>,<ore:cobblestone>, <geolosys:cluster:2>, 50, 15);

// TIN ESSENCE 
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:3>,<tinkersurvival:rock_stone>,<mysticalagriculture:tin_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:3>,<tinkersurvival:rock_stone>, <mysticalagriculture:tin_essence> * 8, 50, 15);
// ORe
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:ore:3>,<ore:cobblestone>,<geolosys:cluster:2>,100);
mods.techreborn.alloySmelter.addRecipe(<thermalfoundation:ore:3>,<ore:cobblestone>, <geolosys:cluster:2>, 50, 15);

// SILVER
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:4>,<tinkersurvival:rock_stone>,<mysticalagriculture:silver_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:4>,<tinkersurvival:rock_stone>, <mysticalagriculture:silver_essence> * 8, 50, 15);

// Shortcut to allow purify Alugentum to Silver (Need a crusher and a smelter, and more time so it's balanced
mods.techreborn.alloySmelter.addRecipe(<techreborn:dust:47>,<ore:dustAlugentum>, <mysticalagriculture:silver_essence> * 4, 64, 60);
mods.techreborn.alloySmelter.addRecipe(<techreborn:dust:1>,<ore:dustAlugentum>, <mysticalagriculture:aluminum_essence> * 8, 64, 60);


// LEAD
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:5>,<tinkersurvival:rock_stone>,<mysticalagriculture:lead_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:5>,<tinkersurvival:rock_stone>, <mysticalagriculture:lead_essence> * 8, 50, 15);


// BAUXITE
recipes.remove(<techreborn:dust:5>);
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:6>,<tinkersurvival:rock_stone>,<jaopca:item_essencebauxite> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:6>,<tinkersurvival:rock_stone>, <jaopca:item_essencebauxite> * 8, 50, 15);

// NICKEL
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:7>,<tinkersurvival:rock_stone>,<mysticalagriculture:nickel_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:7>,<tinkersurvival:rock_stone>, <mysticalagriculture:nickel_essence> * 8, 50, 15);
recipes.removeByRecipeName("mysticalagriculture:ingotnickel");



// PLATINUM
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:8>,<tinkersurvival:rock_stone>,<mysticalagriculture:platinum_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:8>,<tinkersurvival:rock_stone>, <mysticalagriculture:platinum_essence> * 8, 50, 15);

// URANIUM
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:9>,<tinkersurvival:rock_stone>,<mysticalagriculture:uranium_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:9>,<tinkersurvival:rock_stone>, <mysticalagriculture:uranium_essence> * 8, 50, 15);

// ZINC
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:10>,<tinkersurvival:rock_stone>,<mysticalagriculture:zinc_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:10>,<tinkersurvival:rock_stone>, <mysticalagriculture:zinc_essence> * 8, 50, 15);
recipes.removeByRecipeName("mysticalagriculture:ingotzinc");


// DEMONS ORE
mods.immersiveengineering.AlloySmelter.addRecipe(<geolosys:cluster:11>,<tinkersurvival:rock_stone>,<jaopca:item_essencedevilsiron>* 8,100);
mods.techreborn.alloySmelter.addRecipe(<geolosys:cluster:11>,<tinkersurvival:rock_stone>, <jaopca:item_essencedevilsiron> * 8, 50, 15);

// CINNABAR
recipes.remove(<techreborn:dust:11>);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ore:6>,<tinkersurvival:rock_stone>,<jaopca:item_essencecinnabar> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ore:6>,<tinkersurvival:rock_stone>, <jaopca:item_essencecinnabar>* 8, 50, 15);
recipes.addShapeless("TTM_ust_v2vooj", <techreborn:dust:11> * 9, [<ore:blockCinnabar>]);
recipes.addShapeless("TTM_dust_2qve2w", <techreborn:dust:11>, [<ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>, <ore:dustTinyCinnabar>]);
recipes.addShapeless("TTM_dust_11", <techreborn:dust:11>, [<techreborn:smalldust:11>, <techreborn:smalldust:11>, <techreborn:smalldust:11>, <techreborn:smalldust:11>]);

// GALENA
recipes.remove(<techreborn:dust:23>);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ore>,<tinkersurvival:rock_stone>,<jaopca:item_essencegalena>* 8,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ore>,<tinkersurvival:rock_stone>,<jaopca:item_essencegalena>* 8, 50, 15);
recipes.addShapeless("TTM_dust_23", <techreborn:dust:23>, [<techreborn:smalldust:23>, <techreborn:smalldust:23>, <techreborn:smalldust:23>, <techreborn:smalldust:23>]);
recipes.addShapeless("TTM_dust_5t93pm", <techreborn:dust:23>, [<ore:dustTinyGalena>, <ore:dustTinyGalena>, <ore:dustTinyGalena>, <ore:dustTinyGalena>, <ore:dustTinyGalena>, <ore:dustTinyGalena>, <ore:dustTinyGalena>, <ore:dustTinyGalena>, <ore:dustTinyGalena>]);
recipes.addShapeless("TTM_dust_3ybsh1", <techreborn:dust:23> * 9, [<ore:blockGalena>]);

// PYRITE

recipes.remove(<techreborn:dust:39>);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ore:5>,<tinkersurvival:rock_stone>,<jaopca:item_essencepyrite> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ore:5>,<tinkersurvival:rock_stone>,<jaopca:item_essencepyrite>* 8, 50, 15);
recipes.addShapeless("TTM_dust_9qnyav", <techreborn:dust:39>, [<ore:dustTinyPyrite>, <ore:dustTinyPyrite>, <ore:dustTinyPyrite>, <ore:dustTinyPyrite>, <ore:dustTinyPyrite>, <ore:dustTinyPyrite>, <ore:dustTinyPyrite>, <ore:dustTinyPyrite>, <ore:dustTinyPyrite>]);
recipes.addShapeless("TTM_dust_5g4m1m", <techreborn:dust:39> * 9, [<ore:blockPyrite>]);
recipes.addShapeless("TTM_dust_39", <techreborn:dust:39>, [<techreborn:smalldust:39>, <techreborn:smalldust:39>, <techreborn:smalldust:39>, <techreborn:smalldust:39>]);

// SALT
mods.immersiveengineering.AlloySmelter.addRecipe(<growthcraft:salt_ore>,<tinkersurvival:rock_stone>,<jaopca:item_essencesalt> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<growthcraft:salt_ore>,<tinkersurvival:rock_stone>,<jaopca:item_essencesalt>* 8, 50, 15);

// SODA
recipes.remove(<techreborn:dust:48>);

mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ore:11>,<tinkersurvival:rock_stone>,<jaopca:item_essencesodalite> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ore:11>,<tinkersurvival:rock_stone>,<jaopca:item_essencesodalite>* 8, 50, 15);

recipes.addShapeless("TTM_dust_z6564k", <techreborn:dust:48> * 9, [<ore:blockSodalite>]);
recipes.addShapeless("TTM_dust_47", <techreborn:dust:48>, [<techreborn:smalldust:48>, <techreborn:smalldust:48>, <techreborn:smalldust:48>, <techreborn:smalldust:48>]);
recipes.addShapeless("TTM_dust_2ej2n5", <techreborn:dust:48>, [<ore:dustTinySodalite>, <ore:dustTinySodalite>, <ore:dustTinySodalite>, <ore:dustTinySodalite>, <ore:dustTinySodalite>, <ore:dustTinySodalite>, <ore:dustTinySodalite>, <ore:dustTinySodalite>, <ore:dustTinySodalite>]);


// SPHERALITE
recipes.remove(<techreborn:dust:50>);

mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ore:7>,<tinkersurvival:rock_stone>,<jaopca:item_essencesphalerite> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ore:7>,<tinkersurvival:rock_stone>,<jaopca:item_essencesphalerite>* 8, 50, 15);

recipes.addShapeless("TTM_dust_5lzi38", <techreborn:dust:50> * 9, [<ore:blockSphalerite>]);
recipes.addShapeless("TTM_dust_ato775", <techreborn:dust:50>, [<ore:dustTinySphalerite>, <ore:dustTinySphalerite>, <ore:dustTinySphalerite>, <ore:dustTinySphalerite>, <ore:dustTinySphalerite>, <ore:dustTinySphalerite>, <ore:dustTinySphalerite>, <ore:dustTinySphalerite>, <ore:dustTinySphalerite>]);
recipes.addShapeless("TTM_dust_49", <techreborn:dust:50>, [<techreborn:smalldust:50>, <techreborn:smalldust:50>, <techreborn:smalldust:50>, <techreborn:smalldust:50>]);

// COAL
recipes.removeByRecipeName("mysticalagriculture:coal");
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:coal>,<tinkersurvival:rock_stone>,<mysticalagriculture:coal_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:coal>,<tinkersurvival:rock_stone>,<mysticalagriculture:coal_essence>* 8, 50, 15);
// From Charcoal = 50% effi
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:coal>,<minecraft:coal:1>,<mysticalagriculture:coal_essence> * 4,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:coal>,<minecraft:coal:1>,<mysticalagriculture:coal_essence>* 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:coal_ore>,<minecraft:stone>,<mysticalagriculture:coal_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:coal_ore>,<minecraft:stone>, <mysticalagriculture:coal_essence> * 8, 50, 15);


// Compressed Iron
recipes.removeByRecipeName("mysticalagriculture:ingotironcompressed");
mods.immersiveengineering.AlloySmelter.addRecipe(<pneumaticcraft:ingot_iron_compressed>,<minecraft:iron_ingot>,<mysticalagriculture:compressed_iron_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<pneumaticcraft:ingot_iron_compressed>,<minecraft:iron_ingot>,<mysticalagriculture:compressed_iron_essence>* 8, 50, 15);

// Steel *2 efficicent
mods.immersiveengineering.AlloySmelter.addRecipe(<pneumaticcraft:ingot_iron_compressed>,<ore:ingotSteel>,<mysticalagriculture:compressed_iron_essence> * 4,100);
mods.techreborn.alloySmelter.addRecipe(<pneumaticcraft:ingot_iron_compressed>,<ore:ingotSteel>,<mysticalagriculture:compressed_iron_essence>* 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<pneumaticcraft:ingot_iron_compressed>,<ore:ingotTungstensteel>,<mysticalagriculture:compressed_iron_essence> ,100);
mods.techreborn.alloySmelter.addRecipe(<pneumaticcraft:ingot_iron_compressed>,<ore:ingotTungstensteel>,<mysticalagriculture:compressed_iron_essence>, 50, 15);


// IE HOP Graphite

mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:material:19>,<immersiveengineering:material:6>,<mysticalagriculture:hop_graphite_essence> ,100);
mods.techreborn.alloySmelter.addRecipe(<immersiveengineering:material:19>,<immersiveengineering:material:6>,<mysticalagriculture:hop_graphite_essence>, 50, 15);
	

// Diamond
recipes.removeByRecipeName("mysticalagriculture:diamond");
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:diamond>,<minecraft:coal>,<mysticalagriculture:diamond_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:diamond>,<minecraft:coal>,<mysticalagriculture:diamond_essence>* 8, 50, 15);
// Allo
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:2>,<nuclearcraft:ingot:8>,<mysticalagriculture:diamond_essence>* 8, 50, 15);

// Diamond
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:diamond_ore>,<minecraft:stone>,<mysticalagriculture:diamond_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:diamond_ore>,<minecraft:stone>, <mysticalagriculture:diamond_essence> * 8, 50, 15);




// STEEL ESSENCE, Allow to create Steel in Alloy Smelter in place of blast furnace, so, not so bad 
// No IE Machine as Steel
mods.techreborn.alloySmelter.addRecipe(<techreborn:ingot:12>,<ore:ingotIron>, <mysticalagriculture:steel_essence> * 8, 50, 15);
//mods.nuclearcraft.alloy_furnace.addRecipe(<mysticalagriculture:steel_essence> * 4, <minecraft:iron_ingot>, <techreborn:ingot:12> );
// Allow also DUST
mods.techreborn.alloySmelter.addRecipe(<techreborn:dust:51>,<ore:dustIron>, <mysticalagriculture:steel_essence> * 8, 50, 15);


// METAL + ESSENCE = Low TIER ALLIAGE 4 IRON / STEEL 2 
// Bronze
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ingot:2>,<minecraft:iron_ingot>,<mysticalagriculture:bronze_essence>* 4,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ingot:2>,<minecraft:iron_ingot>,<mysticalagriculture:bronze_essence>* 4, 50, 15);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ingot:2>,<ore:ingotSteel>,<mysticalagriculture:bronze_essence> ,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ingot:2>,<ore:ingotSteel>,<mysticalagriculture:bronze_essence>, 50, 15);

// Brass
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ingot:1>,<minecraft:iron_ingot>,<mysticalagriculture:brass_essence>* 4,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ingot:1>,<minecraft:iron_ingot>,<mysticalagriculture:brass_essence>* 4, 50, 15);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ingot:1>,<ore:ingotSteel>,<mysticalagriculture:brass_essence> ,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:ingot:1>,<ore:ingotSteel>,<mysticalagriculture:brass_essence>, 50, 15);

// Constatan need Nickel or STEEL
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:6>,<ore:ingotSteel>,<mysticalagriculture:constantan_essence> * 8 ,100);
mods.techreborn.alloySmelter.addRecipe(<immersiveengineering:metal:6>,<ore:ingotSteel>,<mysticalagriculture:constantan_essence> * 8, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:6>,<ore:ingotNickel>,<mysticalagriculture:constantan_essence> ,100);
mods.techreborn.alloySmelter.addRecipe(<immersiveengineering:metal:6>,<ore:ingotNickel>,<mysticalagriculture:constantan_essence>, 50, 15);

// Electrum Need Iron-8, Silver-4 or Gold-4 or
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>,<minecraft:iron_ingot>,<mysticalagriculture:electrum_essence> * 8 ,100);
mods.techreborn.alloySmelter.addRecipe(<immersiveengineering:metal:7>,<minecraft:iron_ingot>,<mysticalagriculture:electrum_essence> * 8, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>,<ore:ingotSilver>,<mysticalagriculture:electrum_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<immersiveengineering:metal:7>,<ore:ingotSilver>,<mysticalagriculture:electrum_essence> * 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>,<ore:ingotGold>,<mysticalagriculture:electrum_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<immersiveengineering:metal:7>,<ore:ingotGold>,<mysticalagriculture:electrum_essence> * 4, 50, 15);

// Allow some Dust infusing but not ingot so IE is allowed for this one
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:dust:55>,<ore:dustSteel>,<mysticalagriculture:tungsten_essence> * 8 ,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:dust:55>,<ore:dustSteel>,<mysticalagriculture:tungsten_essence> * 8, 50, 15);

// Same for Boron
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:dust:5>,<ore:dustSteel>,<mysticalagriculture:boron_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:dust:5>,<ore:dustSteel>,<mysticalagriculture:boron_essence> * 4, 50, 15);

// And  Lithium
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:dust:6>,<ore:dustSteel>,<mysticalagriculture:lithium_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:dust:6>,<ore:dustSteel>,<mysticalagriculture:lithium_essence> * 4, 50, 15);
// Shortcut for Tough Ingot
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:1>,<ore:ingotFerroboron>,<mysticalagriculture:lithium_essence> * 8, 50, 15);

// Chrome
// Only Dust SO IE allowed // Use More RF/Time 
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:dust:10>,<ore:dustAluminum>,<mysticalagriculture:chrome_essence> *8 ,200);
mods.techreborn.alloySmelter.addRecipe(<techreborn:dust:10>,<ore:dustAluminum>,<mysticalagriculture:chrome_essence> * 8, 128, 45);

// Shortcut for ceramics
mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:unfired_clay:4>,<ore:clay>,<mysticalagriculture:nether_quartz_essence> * 2 ,100);
mods.techreborn.alloySmelter.addRecipe(<ceramics:unfired_clay:4>,<ore:clay>,<mysticalagriculture:skeleton_essence>  * 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:unfired_clay:5>,<ore:clay>,<mysticalagriculture:skeleton_essence> * 2 ,100);
mods.techreborn.alloySmelter.addRecipe(<ceramics:unfired_clay:5>,<ore:clay>,<mysticalagriculture:skeleton_essence>  * 4, 50, 15);

// REDSTONE
recipes.removeByRecipeName("mysticalagriculture:redstone");
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:redstone> * 4,<ore:dustTin>,<mysticalagriculture:redstone_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:redstone> * 4,<ore:dustTin>,<mysticalagriculture:redstone_essence>  * 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:redstone> * 4,<ore:dustZinc>,<mysticalagriculture:redstone_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:redstone> * 4,<ore:dustZinc>,<mysticalagriculture:redstone_essence>  * 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:redstone_ore>,<minecraft:stone>,<mysticalagriculture:redstone_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:redstone_ore>,<minecraft:stone>, <mysticalagriculture:redstone_essence> * 8, 50, 15);

// LAPIS
recipes.removeByRecipeName("mysticalagriculture:dye_13");
mods.immersiveengineering.AlloySmelter.addRecipe(<jaopca:item_dustlapis> * 4,<ore:dustTin>,<mysticalagriculture:lapis_lazuli_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<jaopca:item_dustlapis>* 4,<ore:dustTin>,<mysticalagriculture:lapis_lazuli_essence>  * 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<jaopca:item_dustlapis> * 4,<ore:dustZinc>,<mysticalagriculture:lapis_lazuli_essence> * 4 ,100);
mods.techreborn.alloySmelter.addRecipe(<jaopca:item_dustlapis> * 4,<ore:dustZinc>,<mysticalagriculture:lapis_lazuli_essence>  * 4, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:lapis_ore>,<minecraft:stone>,<mysticalagriculture:lapis_lazuli_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:lapis_ore>,<minecraft:stone>, <mysticalagriculture:lapis_lazuli_essence> * 8, 50, 15);


// GLOW STONE
recipes.removeByRecipeName("mysticalagriculture:glowstone_dust");
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:glowstone_dust> * 2,<ore:dustGold>,<mysticalagriculture:glowstone_essence> * 8 ,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:redstone>,<ore:dustGold>,<mysticalagriculture:glowstone_essence>  * 8, 50, 15);

mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:glowstone_dust> * 2,<ore:dustCopper>,<mysticalagriculture:glowstone_essence> * 6 ,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:redstone>,<ore:dustCopper>,<mysticalagriculture:glowstone_essence>  * 8, 50, 15);

// Obsidian
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:obsidian>,<minecraft:stone>,<mysticalagriculture:obsidian_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:obsidian>,<minecraft:stone>, <mysticalagriculture:obsidian_essence> * 8, 50, 15);

// And Obsidian gravel from RailC
mods.immersiveengineering.AlloySmelter.addRecipe(<railcraft:generic:7>,<minecraft:gravel>,<mysticalagriculture:obsidian_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<railcraft:generic:7>,<minecraft:gravel>, <mysticalagriculture:obsidian_essence> * 8, 50, 15);

// Add Lumium USing Tin 
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:102>,<ore:dustTin>,<mysticalagriculture:lumium_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<thermalfoundation:material:102>,<ore:dustTin>, <mysticalagriculture:lumium_essence> * 8, 50, 15);

// Enderium
recipes.removeByRecipeName("mysticalagriculture:ingotenderium");
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:102>,<ore:dustTin>,<mysticalagriculture:enderium_essence>* 8,100);
mods.techreborn.alloySmelter.addRecipe(<thermalfoundation:material:102>,<ore:dustLead>, <mysticalagriculture:enderium_essence> * 8, 50, 15);

// Signalum
recipes.removeByRecipeName("mysticalagriculture:ingotsignalum");
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:102>,<ore:dustCopper>,<mysticalagriculture:signalum_essence>* 8,100);
mods.techreborn.alloySmelter.addRecipe(<thermalfoundation:material:102>,<ore:dustCopper>, <mysticalagriculture:signalum_essence> * 8, 50, 15);





// GUNPOWDER
recipes.removeByRecipeName("mysticalagriculture:gunpowder");
recipes.removeByRecipeName("sem:item_gunpowder");
recipes.removeByRecipeName("immersiveengineering:material/gunpowder");

mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:gunpowder>,<techreborn:dust:9>,<mysticalagriculture:creeper_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:gunpowder>,<techreborn:dust:9>, <mysticalagriculture:creeper_essence> * 8, 50, 15);

// Emerald
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:emerald_ore>,<minecraft:stone>,<mysticalagriculture:emerald_essence> * 8,100);
mods.techreborn.alloySmelter.addRecipe(<minecraft:emerald_ore>,<minecraft:stone>, <mysticalagriculture:emerald_essence> * 8, 50, 15);

// Craft seed
// Use Mage table with XP
// Use Farmer table with vibrant Liquid from mending moss (sort of liquid XP as 10 level are needed to create)
recipes.remove(<mysticalagriculture:crafting:16>);
RecipeBuilder.get("mage")
  .setShaped( [[null, <mysticalagriculture:crafting:5>, null], 
  [<mysticalagriculture:crafting:5>, <minecraft:wheat_seeds>, <mysticalagriculture:crafting:5>], 
  [null, <mysticalagriculture:crafting:5>, null]])
  .addOutput(<mysticalagriculture:crafting:16>)
  .setLevelRequired(2)
  .addTool(<ore:artisansGrimoire>, 25)  
  .create(); 

RecipeBuilder.get("farmer")
  .setShaped( [[null, <mysticalagriculture:crafting:5>, null], 
  [<mysticalagriculture:crafting:5>, <minecraft:wheat_seeds>, <mysticalagriculture:crafting:5>], 
  [null, <mysticalagriculture:crafting:5>, null]])
  .addOutput(<mysticalagriculture:crafting:16>)
  .setFluid(<liquid:vibrant> * 72)
  .create(); 
 
// TIER 1 (Iron)
recipes.remove(<mysticalagriculture:crafting:17>);
RecipeBuilder.get("mage")
  .setShaped( [[<mysticalagriculture:crafting:16>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting:16>], [<mysticalagriculture:crafting>, <immersiveengineering:metal_decoration0:4> , <mysticalagriculture:crafting>], [<mysticalagriculture:crafting:16>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting:16>]])
  .addOutput(<mysticalagriculture:crafting:17>)
  .setLevelRequired(5)
  .addTool(<ore:artisansGrimoire>, 50)  
  .create(); 

// TIER 2 (Steel)
 
recipes.remove(<mysticalagriculture:crafting:18>);
RecipeBuilder.get("mage")
  .setShaped( [[<mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:17>], [<mysticalagriculture:crafting:1>, <immersiveengineering:metal_decoration0:5>, <mysticalagriculture:crafting:1>], [<mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:17>]])
  .addOutput(<mysticalagriculture:crafting:18>)
  .setLevelRequired(10)
  .addTool(<ore:artisansGrimoire>, 100)  
  .create(); 
  
  
// TIER 3 (Basic machine)
recipes.remove(<mysticalagriculture:crafting:19>);
RecipeBuilder.get("mage")
  .setShaped( [[<mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:18>], [<mysticalagriculture:crafting:2>, <techreborn:machine_frame>, <mysticalagriculture:crafting:2>], [<mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:18>]])
  .addOutput(<mysticalagriculture:crafting:19>)
  .setLevelRequired(15)
  .addTool(<ore:artisansGrimoire>, 200)  
  .create(); 
  
  // TIER 4 (Standard Machine)
recipes.remove(<mysticalagriculture:crafting:20>);
RecipeBuilder.get("mage")
  .setShaped( [[<mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:19>], [<mysticalagriculture:crafting:3>, <techreborn:machine_casing>, <mysticalagriculture:crafting:3>], [<mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:19>]])
  .addOutput(<mysticalagriculture:crafting:20>)
  .setLevelRequired(20)
  .addTool(<ore:artisansGrimoire>, 300)  
  .create(); 

// TIER 5 (Advanced Machine)
recipes.remove(<mysticalagriculture:crafting:21>);
RecipeBuilder.get("mage")
  .setShaped( [[<mysticalagriculture:crafting:20>,<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:20>], 
  [<mysticalagriculture:crafting:4>, <techreborn:machine_casing:1>, <mysticalagriculture:crafting:4>], 
  [<mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:20>]])
  .addOutput(<mysticalagriculture:crafting:21>)
  .setLevelRequired(25)
  .addTool(<ore:artisansGrimoire>, 400)  
  .create(); 

// TIER 6 (Elite Machine)
recipes.remove(<mysticalagradditions:insanium:1>);
RecipeBuilder.get("mage")
  .setShaped( [[<mysticalagriculture:crafting:21>, <mysticalagradditions:insanium>, <mysticalagriculture:crafting:21>], 
  [<mysticalagradditions:insanium>, <ore:machineBlockElite>, <mysticalagradditions:insanium>], 
  [<mysticalagriculture:crafting:21>, <mysticalagradditions:insanium>, <mysticalagriculture:crafting:21>]])
  .addOutput(<mysticalagradditions:insanium:1>)
  .setLevelRequired(30)
  .addTool(<ore:artisansGrimoire>, 500)  
  .create(); 

// Sulfur
// We use a custom Migration from Agricraft to Produce Sufur
// Manual using Chemist Recipes or Automatic using Copper 
//mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:gunpowder>,<techreborn:dust:9>,<mysticalagriculture:creeper_essence> * 8,100);
// We allow Infusing SAP + Sufulr Essence as a shortcut

mods.techreborn.alloySmelter.addRecipe(<techreborn:part:32>,<techreborn:part:31>,<mysticalagriculture:sulfur_essence> * 4, 50, 15);


// We allow infuse Iron with Sulfur Essence to produce Pyrite
mods.techreborn.alloySmelter.addRecipe(<techreborn:dust:39> * 3,<techreborn:dust:27>,<mysticalagriculture:sulfur_essence> * 8, 50, 45);


// Rubber
// We use a custom Migration from Agricraft to produce Rubber
//mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:gunpowder>,<techreborn:dust:9>,<mysticalagriculture:creeper_essence> * 8,100);
//mods.techreborn.alloySmelter.addRecipe(<minecraft:gunpowder>,<techreborn:dust:9>, <mysticalagriculture:creeper_essence> * 8, 50, 15);


// Infuse Transistor Essence inside Refined Iron Nugget, Why Not ?
mods.techreborn.alloySmelter.addRecipe(<opencomputers:material:6> * 2,<techreborn:nuggets:19>,<mysticalcreations:transistor_essence> * 8, 75, 30);

recipes.remove(<mysticalagriculture:core_remover>);
recipes.remove(<mysticalagriculture:master_infusion_crystal>);