// growcraft
// Most recipes moved to bronze age (without Iron)
// Many recipes need plant_oil  and carpenter 
// Plant oil can be done using the Horse Press


import mods.artisanworktables.builder.RecipeBuilder;


// GC Apple Tree are an upgrade of the HC one so.
recipes.remove(<growthcraft_apples:apple_sapling>);
recipes.addShapeless("TTM_AppleSapling", <growthcraft_apples:apple_sapling>, [<minecraft:apple>,<harvestcraft:apple_sapling>,<harvestcraft:apple_sapling>,<harvestcraft:apple_sapling>]);

// We remove Onigiri, as we use HC One, but we alter the recipes inside harvestcraft.zs
recipes.remove(<growthcraft_rice:rice_ball>);


// Add Growcraft in the HC food oredict

var foodFilledhoneycomb = <ore:foodFilledhoneycomb>;
foodFilledhoneycomb.add(<growthcraft_bees:honey_comb_filled>);


// Fermentation Barrel Move to Bronze age
// Need plant oil

recipes.remove(<growthcraft_cellar:ferment_barrel>);
RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>],
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .setFluid(<liquid:plantoil> * 250) 	
  .addOutput(<growthcraft_cellar:ferment_barrel>)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();
  
// Bee Box
recipes.remove(<growthcraft_bees:beebox>);
RecipeBuilder.get("carpenter")
  .setShaped(  [[null, <ore:plankWood>, null], 
  [<ore:plankWood>, null, <ore:plankWood>], 
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .setFluid(<liquid:plantoil> * 250) 	
  .addOutput(<growthcraft_bees:beebox>)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();
 
 // 2x using hardening wood
RecipeBuilder.get("carpenter")
  .setShaped(  [[null, <sem:brennbarholz>, null], 
  [<sem:brennbarholz>, null, <sem:brennbarholz>], 
  [<sem:brennbarholz>, <sem:brennbarholz>, <sem:brennbarholz>]])
  .setFluid(<liquid:plantoil> * 300) 	
  .addOutput(<growthcraft_bees:beebox> * 2)
  .addTool(<ore:artisansHandsaw>, 35)    
  .create();

  
 // less oil + durability
RecipeBuilder.get("farmer")
  .setShaped(  [[null, <ore:plankWood>, null], 
  [<ore:plankWood>, null, <ore:plankWood>], 
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .setFluid(<liquid:plantoil> * 175) 	
  .addOutput(<growthcraft_bees:beebox>)
  .addTool(<ore:artisansHandsaw>, 35)    
  .create();
 
// Vat and Keetle need CopperPlate
// Keetle with a furnace, not the Vat
// We use also a castin bassin from the smeltery (same look :P )
recipes.remove(<growthcraft_cellar:brew_kettle>);
RecipeBuilder.get("carpenter")
  .setShaped(  [[<ore:plateCopper>, null, <ore:plateCopper>], 
  [<ore:plateCopper>, <tconstruct:casting:1>, <ore:plateCopper>], 
  [<ore:plateCopper>, <minecraft:furnace>, <ore:plateCopper>]])
  .addOutput(<growthcraft_cellar:brew_kettle>)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
recipes.remove(<growthcraft_milk:cheese_vat>);
RecipeBuilder.get("carpenter")
  .setShaped(  [[<ore:plateCopper>, null, <ore:plateCopper>], 
  [<ore:plateCopper>, <tconstruct:casting:1>, <ore:plateCopper>], 
  [<ore:plateCopper>,<ore:plateCopper>, <ore:plateCopper>]])
  .addOutput(<growthcraft_milk:cheese_vat>)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
// Pancheon need Potter

recipes.remove(<growthcraft_milk:pancheon>);
RecipeBuilder.get("potter")
  .setShaped(  [[<minecraft:clay_ball>, null, <minecraft:clay_ball>], 
  [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addOutput(<growthcraft_milk:pancheon>)
  .addTool(<ore:artisansTrowel>, 15)    
  .create();

// churn, Seed oil and carpenter

recipes.remove(<growthcraft_milk:churn>);
RecipeBuilder.get("carpenter")
  .setShaped(   [[null, <ore:stickWood>, null], 
  [<ore:plankWood>, null, <ore:plankWood>], 
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .setFluid(<liquid:plantoil> * 250) 	
  .addOutput(<growthcraft_milk:churn>)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();

// Fruit press
recipes.remove(<growthcraft_cellar:fruit_press>);
RecipeBuilder.get("carpenter")
  .setShaped(    [[<ore:plankWood>, <minecraft:piston>, <ore:plankWood>],
  [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>], 
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .setFluid(<liquid:plantoil> * 250) 	
  .addOutput(<growthcraft_cellar:fruit_press>)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();

// Chesse press
recipes.remove(<growthcraft_milk:cheese_press>);
RecipeBuilder.get("carpenter")
  .setShaped(    [[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>],
  [<ore:plateBrass>, <minecraft:chest>, <ore:plateBrass>], 
  [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]])
  .setFluid(<liquid:plantoil> * 250) 	
  .addOutput(<growthcraft_milk:cheese_press>)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();

// Indication as no JEI support
<growthcraft_milk:butter>.addTooltip("Butter is done with `cream` into a `churn` (Growcraft). It will give you also liquid `Butter milk`");

// Salt normalization, we use Animia/HC one
recipes.remove(<growthcraft:salt>);

// normalize Honey
var foodHoneydrop = <ore:foodHoneydrop>;
foodHoneydrop.add(<growthcraft_bees:bottlefluid_honey>);

// Allow to do honeyitem (more like sugar)
recipes.addShapeless(<harvestcraft:honeyitem>, [<ore:toolPot>,<growthcraft_bees:bottlefluid_honey>]);
recipes.addShapeless(<harvestcraft:honeyitem>, [<ore:toolPot>,<growthcraft_bees:honey_comb_filled>,<growthcraft_bees:honey_comb_filled>]);

// Normalize milk cream using growthcraft

recipes.remove(<harvestcraft:heavycreamitem>);
var listAllheavycream = <ore:listAllheavycream>;
var foodHeavycream = <ore:foodHeavycream>;

listAllheavycream.add(<growthcraft_milk:bottlefluid_cream>);
foodHeavycream.add(<growthcraft_milk:bottlefluid_cream>);

recipes.remove(<growthcraft_rice:cultivator>);

// Cultivator have no durability, so steel age
RecipeBuilder.get("farmer")
  .setShaped( [[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>], [<ore:nuggetSteel>, <ore:stickTreatedWood>, <ore:nuggetSteel>], [null,<ore:stickTreatedWood>, null]])
  .addOutput(<growthcraft_rice:cultivator>)
  .addTool(<ore:artisansHandsaw>, 35)    
  .create();


// Milk distillation (For very big farm :P )
mods.immersivepetroleum.Distillation.addRecipe([<liquid:water> * 50, <liquid:fluid_butter_milk> * 125,<liquid:fluid_milk_curds> * 175, <liquid:fluid_skim_milk> * 200, <liquid:fluid_cream> * 400], [<growthcraft_milk:butter>], <liquid:milk> * 1000, 64, 100, [1]);

