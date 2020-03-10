// animania


import mods.artisanworktables.builder.RecipeBuilder;



// trough need a farmer and most early game ingot (2X for Iron, 4X for Steel)

recipes.remove(<animania:block_trough>);
 
RecipeBuilder.get("farmer")
  .setShaped([[<ore:plankWood>, null, <ore:plankWood>], 
  [<ore:plankWood>, <ore:ingotCopper> | <ore:ingotBronze> |  <ore:ingotBrass>, <ore:plankWood>], 
  [<ore:stickWood>, null, <ore:stickWood>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<animania:block_trough>)
  .addTool(<ore:artisansHandsaw>, 10)    
  .create();
  
RecipeBuilder.get("farmer")
  .setShaped([[<sem:brennbarholz:*>, null, <sem:brennbarholz:*>], 
  [<sem:brennbarholz:*>, <ore:ingotCopper> | <ore:ingotBronze> |  <ore:ingotBrass>, <sem:brennbarholz:*>], 
  [<ore:stickWood>, null, <ore:stickWood>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<animania:block_trough> * 2)
  .addTool(<ore:artisansHandsaw>, 10)    
  .create(); 
  
RecipeBuilder.get("farmer")
  .setShaped([[<ore:plankWood>, null, <ore:plankWood>], 
  [<ore:plankWood>, <ore:ingotIron>, <ore:plankWood>], 
  [<ore:stickWood>, null, <ore:stickWood>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<animania:block_trough> * 2)
  .addTool(<ore:artisansHandsaw>, 10)    
  .create();

RecipeBuilder.get("farmer")
  .setShaped([[<ore:plankWood>, null, <ore:plankWood>], 
  [<ore:plankWood>, <ore:ingotSteel>, <ore:plankWood>], 
  [<ore:stickWood>, null, <ore:stickWood>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<animania:block_trough> * 3)
  .addTool(<ore:artisansHandsaw>, 10)    
  .create();

recipes.remove(<animania:block_straw> );
RecipeBuilder.get("farmer")
  .setShapeless([<ore:cropWheat>])
  .addTool(<ore:artisansKnife>, 10)  
  .addOutput(<animania:block_straw> )
  .create();


recipes.remove(<animania:block_mud>);

RecipeBuilder.get("farmer")
  .setShapeless( [ <ore:dirt>] )
  .setFluid(<liquid:water> * 1000) 	
  .addOutput(<animania:block_mud>)
  .create();
  
RecipeBuilder.get("farmer")
  .setShapeless( [ <ore:dirt>,<ore:dirt>] )
  .setFluid(<liquid:water> * 2000) 	
  .addOutput(<animania:block_mud> * 2)
  .create();
  
RecipeBuilder.get("farmer")
  .setShapeless( [ <ore:dirt>,<ore:dirt>,<ore:dirt>] )
  .setFluid(<liquid:water> * 3000) 	
  .addOutput(<animania:block_mud> * 3)
  .create();  

RecipeBuilder.get("farmer")
  .setShapeless( [ <ore:dirt>,<ore:dirt>,<ore:dirt>] )
  .setFluid(<liquid:water> * 4000) 	
  .addOutput(<animania:block_mud> * 4)
  .create();  
  
  
// Animania nest using Farmer and knife
recipes.remove(<animania:block_nest>);
RecipeBuilder.get("farmer")
  .setShapeless( [<ore:blockWool>, <ore:stickWood>, <ore:treeLeaves>] )
  .addTool(<ore:artisansKnife>, 5)  
  .addOutput(<animania:block_nest>)
  .create();

// Cheesse mold are in plastic or stainless, but  this is minecraft, so we use Brass
// Cheesse mold is used to do salt also
recipes.remove(<animania:cheese_mold>);

RecipeBuilder.get("farmer")
  .setShaped(  [[null, null, null], [<ore:plankWood>, <ore:plateBrass> , <ore:plankWood>], [null, <ore:plankWood>, null]] )
  .addTool(<ore:artisansKnife>, 5)  
  .addOutput(<animania:cheese_mold>)
  .create();

//  Carving Knife is limited to Sterilize, so Iron, chef table is used with a CuttingBoard
recipes.remove(<animania:carving_knife>);
RecipeBuilder.get("farmer")
  .setShaped(   [[null, null, <ore:plateIron>], [null, <ore:plateIron>, null], [ <ore:stickTreatedWood>, null, null]] )
  .addTool(<ore:artisansKnife>, 15)  
  .addOutput(<animania:riding_crop>)
  .create();
  
// We remove the Carving Knife, recipes will go to chef Table with a knife
recipes.remove(<animania:riding_crop>);
RecipeBuilder.get("farmer")
  .setShaped(   [[null, null, <ore:leather>], [null, <ore:stickTreatedWood>, null], [<ore:leather>, null, null]] )
  .addTool(<ore:artisansKnife>, 5)  
  .addOutput(<animania:riding_crop>)
  .create();
  
// COOK recipes
recipes.remove(<animania:raw_prime_steak>);
RecipeBuilder.get("chef")
  .setShapeless( [<animania:raw_prime_beef>] )
  .addTool(<ore:artisansCuttingBoard>, 25)  
  .addOutput(<animania:raw_prime_steak> * 4)
  .create();

recipes.remove(<animania:raw_prime_pork>);
RecipeBuilder.get("chef")
  .setShapeless( [<animania:raw_prime_pork>] )
  .addTool(<ore:artisansCuttingBoard>, 25)  
  .addOutput(<animania:raw_prime_bacon> * 4)
  .create();

recipes.remove(<animania:friesian_cheese_wedge>);
RecipeBuilder.get("chef")
  .setShapeless( [<animania:friesian_cheese_wheel>] )
  .addTool(<ore:artisansCuttingBoard>, 25)  
  .addOutput(<animania:friesian_cheese_wedge> * 4)
  .create();

recipes.remove(<animania:holstein_cheese_wedge>);
RecipeBuilder.get("chef")
  .setShapeless( [<animania:holstein_cheese_wheel>] )
  .addTool(<ore:artisansCuttingBoard>, 25)  
  .addOutput(<animania:holstein_cheese_wedge> * 4)
  .create();

recipes.remove(<animania:jersey_cheese_wedge>);
RecipeBuilder.get("chef")
  .setShapeless( [<animania:jersey_cheese_wheel>] )
  .addTool(<ore:artisansCuttingBoard>, 25)  
  .addOutput(<animania:jersey_cheese_wedge> * 4)
  .create();

recipes.remove(<animania:goat_cheese_wedge>);
RecipeBuilder.get("chef")
  .setShapeless( [<animania:goat_cheese_wheel>] )
  .addTool(<ore:artisansCuttingBoard>, 25)  
  .addOutput(<animania:goat_cheese_wedge> * 4)
  .create();

recipes.remove(<animania:sheep_cheese_wedge>);
RecipeBuilder.get("chef")
  .setShapeless( [<animania:sheep_cheese_wheel>] )
  .addTool(<ore:artisansCuttingBoard>, 25)  
  .addOutput(<animania:sheep_cheese_wedge> * 4)
  .create();

// Hamster food (on a farmer table, not cook one ...)
recipes.remove(<animania:hamster_food>);
RecipeBuilder.get("farmer")
  .setShapeless( [<ore:listAllseed>, <ore:listAllseed>, <ore:listAllseed>] )
  .addOutput(<animania:hamster_food> * 2)
  .create();
  
// @TODO Should modify recipes for the Cart later 

// Food Ore Dict

// Allow honey_bottle using the Bottling Machine
mods.immersiveengineering.BottlingMachine.addRecipe(<animania:honey_bottle>, <minecraft:glass_bottle>, <liquid:animania_honey> * 250);
// Allow Animania milk bottle using the Bottling Machine
mods.immersiveengineering.BottlingMachine.addRecipe(<animania:milk_bottle>,  <minecraft:glass_bottle>, <liquid:milk_holstein> * 250);
mods.immersiveengineering.BottlingMachine.addRecipe(<animania:milk_bottle>,  <minecraft:glass_bottle>, <liquid:milk_jersey> * 250);
mods.immersiveengineering.BottlingMachine.addRecipe(<animania:milk_bottle>,  <minecraft:glass_bottle>, <liquid:milk_friesian> * 250);
mods.immersiveengineering.BottlingMachine.addRecipe(<animania:milk_bottle>,  <minecraft:glass_bottle>, <liquid:milk_goat> * 250);
mods.immersiveengineering.BottlingMachine.addRecipe(<animania:milk_bottle>,  <minecraft:glass_bottle>, <liquid:milk_sheep> * 250);

// Allow growthcraft milk
mods.immersiveengineering.BottlingMachine.addRecipe(<growthcraft_milk:bottlefluid_milk>,  <minecraft:glass_bottle>, <liquid:milk> * 250);
mods.immersiveengineering.BottlingMachine.addRecipe(<growthcraft_milk:bottlefluid_butter_milk>,  <minecraft:glass_bottle>, <liquid:fluid_butter_milk> * 250);
mods.immersiveengineering.BottlingMachine.addRecipe(<growthcraft_milk:bottlefluid_skim_milk>,  <minecraft:glass_bottle>, <liquid:fluid_skim_milk> * 250);
mods.immersiveengineering.BottlingMachine.addRecipe(<growthcraft_milk:bottlefluid_milk_curds>,  <minecraft:glass_bottle>, <liquid:fluid_milk_curds> * 250);
// no more pasteurized_milk
// mods.immersiveengineering.BottlingMachine.addRecipe(<growthcraft_milk:bottlefluid_pasteurized_milk>,  <minecraft:glass_bottle>, <liquid:fluid_pasteurized_milk> *250);



// Oredict veggy for slop
recipes.remove(<animania:slop>);

recipes.addShapeless("TTM_Slop", <forge:bucketfilled>.withTag({FluidName: "slop", Amount: 1000}), [<ore:listAllveggie> | <minecraft:bread>,<ore:listAllveggie> | <minecraft:bread>, <forge:bucketfilled>.withTag({FluidName: "milk_holstein", Amount: 1000}) | <forge:bucketfilled>.withTag({FluidName: "milk_friesian", Amount: 1000}) | <forge:bucketfilled>.withTag({FluidName: "milk_sheep", Amount: 1000}) | <forge:bucketfilled>.withTag({FluidName: "milk_goat", Amount: 1000}) | <forge:bucketfilled>.withTag({FluidName: "milk_jersey", Amount: 1000}) | <minecraft:milk_bucket>]);


// the IE Mixer for SLOP
mods.immersiveengineering.Mixer.addRecipe(<liquid:slop> * 2000, <liquid:milk> *1000, [<ore:listAllveggie> * 2,<minecraft:bread>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:slop> * 2000, <liquid:milk_holstein> *1000, [<ore:listAllveggie> * 2,<minecraft:bread>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:slop> * 2000, <liquid:milk_sheep> *1000, [<ore:listAllveggie> * 2,<minecraft:bread>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:slop> * 2000, <liquid:milk_jersey> *1000, [<ore:listAllveggie> * 2,<minecraft:bread>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:slop> * 2000, <liquid:milk_goat> *1000, [<ore:listAllveggie> * 2,<minecraft:bread>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:slop> * 2000, <liquid:milk_friesian> *1000, [<ore:listAllveggie> * 2,<minecraft:bread>], 1024);


// Omelette (Animania give buff, so we preserve the recipes, but add to foodOmelet for compatibility)
var foodOmelet =  <ore:foodOmelet>;
foodOmelet.add(<animania:plain_omelette>);
foodOmelet.add(<animania:cheese_omelette>);
foodOmelet.add(<animania:bacon_omelette>);
foodOmelet.add(<animania:truffle_omelette>);
foodOmelet.add(<animania:super_omelette>);

var listAllmeatraw = <ore:listAllmeatraw>;
listAllmeatraw.add(<animania:raw_prime_peacock>);
listAllmeatraw.add(<animania:raw_peacock>);

// peacock is not chicken, but who cares.
var listAllchickenraw = <ore:listAllchickenraw>; 
listAllchickenraw.add(<animania:raw_prime_peacock>);
listAllchickenraw.add(<animania:raw_peacock>);


var listAllmeatcooked = <ore:listAllmeatcooked>;
listAllmeatcooked.add(<animania:cooked_prime_peacock>);


var listAllchickencooked = <ore:listAllchickencooked>;
listAllchickencooked.add(<animania:cooked_prime_peacock>);


// block_hamster_wheel Need a Kinetic from IE and Capacitor
recipes.remove(<animania:block_hamster_wheel>);
recipes.addShaped("TTM_hamster_wheel", <animania:block_hamster_wheel>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, null, <ore:ingotIron>], [<immersiveengineering:metal_device0>, <ore:ingotIron>, <immersiveengineering:metal_device1:2>]]);


// we use Bee from growthcraft
recipes.remove(<animania:bee_hive>);

