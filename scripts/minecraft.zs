// Minecraft base recipes

import mods.artisanworktables.builder.RecipeBuilder;

// 

// Should add a chemical recipes for this one
recipes.remove(<minecraft:tnt>);

recipes.remove(<minecraft:bucket>);
recipes.addShaped("TTM_Bucket", <minecraft:bucket>, [[<ore:plateIron>, null, <ore:plateIron>],
													 [null, <ore:plateIron>, null]]);


// Allow glowstone casting
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 1000, false);
mods.techreborn.compressor.addRecipe(<minecraft:glowstone>, <minecraft:glowstone_dust> * 4,120, 20);
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 250,<minecraft:glowstone_dust>);
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 900,<minecraft:glowstone>);

// Allow redstone casting
mods.tconstruct.Casting.addBasinRecipe(<minecraft:redstone_block>, null, <liquid:redstone>, 1000, false);
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 100,<minecraft:redstone>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 900,<minecraft:redstone_block>);

mods.techreborn.compressor.addRecipe(<minecraft:redstone_block>, <minecraft:redstone> * 9,120, 20);

// Add a Bronze Piston
recipes.addShaped("TTM_PistonBronze", <minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <ore:ingotBronze>, <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

recipes.addShaped("TTM_PistonCompressed", <minecraft:piston> * 3, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <ore:ingotIronCompressed>, <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
// Add a Iron Piston * 2
recipes.addShaped("TTM_PistonIron", <minecraft:piston> * 2, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <immersiveengineering:material:8>, <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);


// Add a Steel Piston * 4
recipes.addShaped("TTM_PistonSteel", <minecraft:piston> * 4, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <immersiveengineering:material:9>, <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

furnace.remove(<ore:ingotIron>);
furnace.remove(<minecraft:iron_ingot>);
recipes.remove(<ore:ingotIron>);

// No Charbon from LogWood

furnace.remove(<minecraft:coal:1>,<ore:logWood>);


recipes.remove(<ore:ingotGold>);
recipes.remove(<minecraft:gold_ingot>);

recipes.remove(<ore:ingotTin>);
recipes.remove(<ore:ingotCopper>);
recipes.remove(<ore:ingotBronze>);
recipes.remove(<ore:ingotLead>);
recipes.remove(<ore:ingotSilver>);

recipes.remove(<ore:ingotUranium>);
furnace.remove(<ore:ingotUranium>);

recipes.remove(<ore:ingotSteel>);
furnace.remove(<ore:ingotSteel>);

recipes.remove(<ore:ingotMagnesium>);
furnace.remove(<ore:ingotMagnesium>);

recipes.remove(<ore:ingotThorium>);
furnace.remove(<ore:ingotThorium>);

recipes.remove(<ore:ingotBoron>);
furnace.remove(<ore:ingotBoron>);


recipes.remove(<ore:ingotGraphite>);
furnace.remove(<ore:ingotGraphite>);

recipes.remove(<ore:ingotMaganese>);
// Keep the furnace recipes for the Oxyde less version



furnace.remove(<nuclearcraft:ingot_oxide>);

furnace.remove(<ore:ingotUraniumOxide>);

// No change to <ore:ingotManganeseOxide>

furnace.remove(<ore:ingotManganeseDioxide>);


// Aluminuum
recipes.remove(<techreborn:ingot>);

recipes.remove(<ore:ingotBrass>);

recipes.remove(<ore:ingotChrome>);

recipes.remove(<ore:ingotIridium>);

recipes.remove(<ore:ingotTungsten>);

recipes.remove(<ore:ingotHotTungstensteel>);

recipes.remove(<ore:ingotTungstensteel>);

recipes.remove(<ore:ingotInvar>);
furnace.remove(<ore:ingotInvar>);

recipes.remove(<ore:ingotConstantan>);
furnace.remove(<ore:ingotConstantan>);


recipes.remove(<ore:ingotLumium>);
furnace.remove(<ore:ingotLumium>);


furnace.remove(<thermalfoundation:material:133>);
recipes.remove(<immersiveengineering:metal:34>);

// bookshelf over a carpenter table
recipes.remove(<minecraft:bookshelf>);

// bookshelf over a carpenter table
RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [<minecraft:book>, <minecraft:book>, <minecraft:book>],
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addOutput(<minecraft:bookshelf> )
  .addTool(<ore:artisansHammer>, 20)  
  .create(); 

// Reinforced wood = * 2
RecipeBuilder.get("carpenter")
  .setShaped( [[<sem:brennbarholz>, <sem:brennbarholz>, <sem:brennbarholz>],
  [<minecraft:book>, <minecraft:book>, <minecraft:book>],
  [<sem:brennbarholz>, <sem:brennbarholz>, <sem:brennbarholz>]])
  .addOutput(<minecraft:bookshelf> * 2 )
  .addTool(<ore:artisansHammer>, 20)  
  .create();
   
 
recipes.remove(<minecraft:furnace>);
recipes.addShapeless("TTM_RC_Furnace", <minecraft:furnace>, [<minecraft:furnace_minecart:*>]);
recipes.addShaped("TTM_FurnaceRock", <minecraft:furnace> * 2, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, null, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

recipes.addShaped("TTM_Furnace", <minecraft:furnace>, [[<tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>], [<tinkersurvival:rock_stone>, null, <tinkersurvival:rock_stone>], [<tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>]]);


RecipeBuilder.get("mason")
  .setShaped( [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
  [<ore:cobblestone>, null, <ore:cobblestone>], 
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]])
  .addOutput(<minecraft:furnace> * 2 )
  .addTool(<ore:artisansHammer>, 20)  
  .create();
  
  
 // Use a chemical reactor
recipes.remove(<minecraft:speckled_melon>);
recipes.remove(<minecraft:golden_apple>);
recipes.remove(<minecraft:golden_carrot>);


// 
// Caudron
recipes.remove( <minecraft:cauldron>);
RecipeBuilder.get("blacksmith")
  .setShaped( [[<ore:plateIron>, null, <ore:plateIron>], 
  [<ore:plateIron>, null, <ore:plateIron>], 
  [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]])
  .addOutput(<minecraft:cauldron> * 2 )
  .addTool(<ore:artisansHammer>, 20)  
  .create();
  

// Allow Any bow for the dispenser and use redstone write to be consistent
recipes.remove(<minecraft:dispenser>);
recipes.addShaped("TTM_dispenser", <minecraft:dispenser>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <immersiveengineering:material:8>, <ore:cobblestone>], [<ore:cobblestone>,  <ore:dustRedstone>, <ore:cobblestone>]]);


// daylight_detector 
recipes.remove(<minecraft:daylight_detector>);
recipes.addShaped("TTM_daylight_detector", <minecraft:daylight_detector>, [[<ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>], [<ore:gemQuartz> , <ore:gemQuartz> , <ore:gemQuartz> ], [<ore:slabTreatedWood>, <ore:dustRedstone>,<ore:slabTreatedWood>]]);

// We can do blaze rod with 1 dust loss
mods.nuclearcraft.pressurizer.addRecipe(<minecraft:blaze_powder> * 5, <minecraft:blaze_rod>);

// Some Ender pearl / end recipes
mods.nuclearcraft.pressurizer.addRecipe(<techreborn:dust:19> * 2, <minecraft:ender_eye>);
mods.nuclearcraft.pressurizer.addRecipe(<techreborn:dust:20> * 2, <minecraft:ender_pearl>);

mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>,<tconstruct:cast_custom:2>, <liquid:ender>, 250);

// glass_pane from glass
mods.advancedrocketry.CuttingMachine.addRecipe(<minecraft:glass_pane> * 3, 80, 100,<minecraft:glass>);

// TNT RECIPES


RecipeBuilder.get("chemist")
  .setShaped( [[<ore:dustSaltpeter>, <ore:cobblestone>, <ore:dustSaltpeter>], 
  [<ore:cobblestone>, <immersiveengineering:wooden_device0:4>, <ore:cobblestone>], 
  [<ore:dustSaltpeter>, <ore:cobblestone>, <ore:dustSaltpeter>]])
  .setFluid(<liquid:nitrogen> * 1000)
  .addOutput(<minecraft:tnt> )
  .create();
  
RecipeBuilder.get("chemist")
  .setShaped( [[<ore:dustSaltpeter>, <ore:cobblestone>, <ore:dustSaltpeter>], 
  [<ore:cobblestone>, <immersiveengineering:wooden_device0:4>, <ore:cobblestone>], 
  [<ore:dustSaltpeter>, <ore:cobblestone>, <ore:dustSaltpeter>]])
  .setFluid(<liquid:liquid_nitrogen> * 250)
  .addOutput(<minecraft:tnt> * 2)
  .create();
  

var materialPressedwax = <ore:materialPressedwax>;
materialPressedwax.add(<growthcraft_bees:bees_wax:*>);

recipes.addShapeless("hardenedleatheritem", <harvestcraft:hardenedleatheritem>, [<ore:materialPressedwax>, <minecraft:leather>]);

 
// Saddle
recipes.remove(<minecraft:saddle>);
RecipeBuilder.get("tanner")
  .setShaped( [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:leather>,null,<ore:leather>], [null, null, null]])
  .addOutput(<minecraft:saddle>)
  .addTool(<ore:artisansNeedle>, 25)    
  .create();

// Saddle
RecipeBuilder.get("tanner")
  .setShaped( [[<ore:leather>, <harvestcraft:hardenedleatheritem>, <ore:leather>], [<ore:leather>,null, <ore:leather>], [null, null, null]])
  .addOutput(<minecraft:saddle> * 2)
  .addTool(<ore:artisansNeedle>, 35)    
  .create();

RecipeBuilder.get("tanner")
  .setShaped( [[<sem:brown_hardleather>, <ore:leather>, <sem:brown_hardleather>], [<ore:leather>,null, <ore:leather>], [null, null, null]])
  .addOutput(<minecraft:saddle> * 3)
  .addTool(<ore:artisansNeedle>, 45)    
  .create();
  
  
recipes.addShaped("TTM_reitrapdoor", <minecraft:trapdoor> * 6, [[<sem:brennbarholz>, <sem:brennbarholz>, <sem:brennbarholz>], [<sem:brennbarholz>, <sem:brennbarholz>, <sem:brennbarholz>]]);
