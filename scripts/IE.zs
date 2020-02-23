// IE
// Main Mod of this Modpack
// Stone, Bronze, Iron, Steel
// Many recipes use Artisan Table


import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;

// No steel by hand
recipes.remove(<ore:plateSteel>);


// resolv conflit with artisans and put the hammer to stone age (Coke Oven)

recipes.addShaped("TTM_hammer", <immersiveengineering:tool>, [[null, <tinkersurvival:rock_stone>, <minecraft:string>], [null, <ore:stickWood> | <ore:stickTreatedWood>, <tinkersurvival:rock_stone>], [<ore:stickWood> | <ore:stickTreatedWood>, null, null]]);



RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>] )
  .setFluid(<liquid:creosote> * 125) 	
  .addOutput(<immersiveengineering:treated_wood>)
  .create();  
 
RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 250) 	
  .addOutput(<immersiveengineering:treated_wood> * 2)
  .create();  
  
RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 375) 	
  .addOutput(<immersiveengineering:treated_wood> * 3)
  .create();  
  
RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 500) 	
  .addOutput(<immersiveengineering:treated_wood> * 4)
  .create();  

RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 625) 	
  .addOutput(<immersiveengineering:treated_wood> * 5)
  .create();  
 
RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 750) 	
  .addOutput(<immersiveengineering:treated_wood> * 6)
  .create();  
  
RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 875) 	
  .addOutput(<immersiveengineering:treated_wood> * 7)
  .create();  
  
  RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 1000) 	
  .addOutput(<immersiveengineering:treated_wood> * 8)
  .create();  
  
  RecipeBuilder.get("basic")
  .setShapeless( [ <ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>,<ore:plankWood>] )
  .setFluid(<liquid:creosote> * 1125) 	
  .addOutput(<immersiveengineering:treated_wood> * 9)
  .create();  
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:plankWood>],[<ore:plankWood>]])
  .setFluid(<liquid:creosote> * 250) 	
  .addOutput(<immersiveengineering:material> * 4)
  .addTool(<ore:artisansHandsaw>, 10)
  .create();   

RecipeBuilder.get("basic")
  .setShaped( [ [ <ore:plankWood>], [<ore:plankWood> ] ] )
  .addOutput(<minecraft:stick> * 4)
  .addTool(<ore:artisansHandsaw>, 10)
  .create();  
  
RecipeBuilder.get("basic")
  .setShaped( [ [ <ore:plankTreatedWood>], [<ore:plankTreatedWood>] ] )
  .addOutput(<immersiveengineering:material> * 4)
  .addTool(<ore:artisansHandsaw>, 10)
  .create();  
  
RecipeBuilder.get("carpenter")
  .setShaped( [[<immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:1>]]  )
  .setFluid(<liquid:creosote> * 375) 	
  .addOutput( <immersiveengineering:treated_wood_slab:1> * 6)
  .addTool(<ore:artisansHandsaw>, 15)
  .create();  

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plankWood>,<ore:plankWood>, <ore:plankWood>]]  )
  .setFluid(<liquid:creosote> * 375) 	
  .addOutput( <immersiveengineering:treated_wood_slab:1> * 6)
  .addTool(<ore:artisansHandsaw>, 15)
  .create();    
  

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plankWood>,null,null],[<ore:plankWood>,<ore:plankWood>,null],[<ore:plankWood>,<ore:plankWood>, <ore:plankWood>]]  )
  .setFluid(<liquid:creosote> * 375) 	
  .addOutput( <immersiveengineering:treated_wood_stairs0> * 4)
  .addTool(<ore:artisansHandsaw>, 25)
  .create();  
 
RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plankWood>, <minecraft:stick>, <ore:plankWood>], [<ore:plankWood>, <minecraft:stick>, <ore:plankWood>]]  )
  .setFluid(<liquid:creosote> * 500) 	
  .addOutput( <immersiveengineering:wooden_decoration> * 3)
  .addTool(<ore:artisansHandsaw>, 25)
  .create();  
  
RecipeBuilder.get("carpenter")
  .setShaped( [[<minecraft:stick>, <minecraft:planks>, <minecraft:stick>], [<minecraft:stick>, <minecraft:planks>, <minecraft:stick>]]  )
  .setFluid(<liquid:creosote> * 375) 	
  .addOutput( <engineersdoors:fencegate_treated>)
  .addTool(<ore:artisansHandsaw>, 25)
  .create();  


  
// normalize electrum
recipes.remove(<ore:ingotElectrum>);
recipes.remove(<immersiveengineering:metal:37>);

// Remove all manual plate
recipes.removeShapeless(<immersiveengineering:metal:*>, [<*>,<immersiveengineering:tool>],true);


// Alloy KILN
furnace.remove(<immersiveengineering:stone_decoration:10> );
recipes.remove(<immersiveengineering:stone_decoration:10> );

RecipeBuilder.get("mason")
  .setShaped([[<ore:sandstone>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:sandstone>]])
  .addOutput(<immersiveengineering:stone_decoration:10> * 3)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
  
recipes.addShaped("TTM_alloybrick_slab_back", <immersiveengineering:stone_decoration:10>, [[<immersiveengineering:stone_decoration_slab:10>], [<immersiveengineering:stone_decoration_slab:10>]]);



furnace.remove(<immersiveengineering:stone_decoration> );
recipes.remove(<immersiveengineering:stone_decoration> );
RecipeBuilder.get("mason")
  .setShaped([[<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<immersiveengineering:stone_decoration> * 3)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();

recipes.addShaped("TTM_cokebrick_slab_back", <immersiveengineering:stone_decoration>, [[<immersiveengineering:stone_decoration_slab>], [<immersiveengineering:stone_decoration_slab>]]);


recipes.remove(<immersiveengineering:stone_decoration:1>);



//furnace.remove(<immersiveengineering:stone_decoration:1> );
//recipes.remove(<immersiveengineering:stone_decoration:1> );
RecipeBuilder.get("mason")
  .setShaped([[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>], [<ore:ingotBrick>, <ore:dustSilicon>, <ore:ingotBrick>], [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]])
  .addOutput(<immersiveengineering:stone_decoration:1> )
  .addTool(<ore:artisansTrowel>, 10)    
  .create();


recipes.addShaped("TTM_blastbrick_slab_back", <immersiveengineering:stone_decoration:1>, [[<immersiveengineering:stone_decoration_slab:1>], [<immersiveengineering:stone_decoration_slab:1>]]);



// Copper Sheet
recipes.remove(<immersiveengineering:sheetmetal>);

recipes.addShaped("TTM_sheetmetal_slab_back", <immersiveengineering:sheetmetal>, [[<immersiveengineering:sheetmetal_slab>], [<immersiveengineering:sheetmetal_slab>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateCopper>, null], 
                [<ore:plateCopper>, null, <ore:plateCopper>],
                [null, <ore:plateCopper>, null]])
  .addOutput( <immersiveengineering:sheetmetal> * 4)
  .addTool(<ore:artisansHammer>, 25)    
  .create();

// Aluminium Sheet
recipes.remove(<immersiveengineering:sheetmetal:1>);

recipes.addShaped("TTM_sheetmetal1_slab_back", <immersiveengineering:sheetmetal:1>, [[<immersiveengineering:sheetmetal_slab:1>], [<immersiveengineering:sheetmetal_slab:1>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateAluminum>, null], 
                [<ore:plateAluminum>, null, <ore:plateAluminum>],
                [null, <ore:plateAluminum>, null]])
  .addOutput( <immersiveengineering:sheetmetal:1> * 4)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 75)    
  .create();


// LEAD

recipes.remove(<immersiveengineering:sheetmetal:2>);

recipes.addShaped("TTM_sheetmetal2_slab_back", <immersiveengineering:sheetmetal:2>, [[<immersiveengineering:sheetmetal_slab:2>], [<immersiveengineering:sheetmetal_slab:2>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateLead>, null], 
                [<ore:plateLead>, null, <ore:plateLead>],
                [null, <ore:plateLead>, null]])
  .addOutput( <immersiveengineering:sheetmetal:2> * 4)
  .addTool(<ore:artisansHammer>, 25)    
  .create();


// Silver

recipes.remove(<immersiveengineering:sheetmetal:3>);

recipes.addShaped("TTM_sheetmetal3_slab_back", <immersiveengineering:sheetmetal:3>, [[<immersiveengineering:sheetmetal_slab:3>], [<immersiveengineering:sheetmetal_slab:3>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateSilver>, null], 
                [<ore:plateSilver>, null, <ore:plateSilver>],
                [null, <ore:plateSilver>, null]])
  .addOutput( <immersiveengineering:sheetmetal:3> * 4)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  

// Nickel (Tier 2)

recipes.remove(<immersiveengineering:sheetmetal:4>);

recipes.addShaped("TTM_sheetmetal4_slab_back", <immersiveengineering:sheetmetal:4>, [[<immersiveengineering:sheetmetal_slab:4>], [<immersiveengineering:sheetmetal_slab:4>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateNickel>, null], 
                [<ore:plateNickel>, null, <ore:plateNickel>],
                [null, <ore:plateNickel>, null]])
  .addOutput( <immersiveengineering:sheetmetal:4> * 4)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 75)    
  .addTool(<ore:artisansPliers>, 75)      

  .create();
  
// Sheet Uranium


recipes.remove(<immersiveengineering:sheetmetal:5>);

recipes.addShaped("TTM_sheetmetal5_slab_back", <immersiveengineering:sheetmetal:5>, [[<immersiveengineering:sheetmetal_slab:5>], [<immersiveengineering:sheetmetal_slab:5>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateNickel>, null], 
                [<ore:plateNickel>, null, <ore:plateNickel>],
                [null, <ore:plateNickel>, null]])
  .addOutput( <immersiveengineering:sheetmetal:5> * 4)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 50)    
  .addTool(<ore:artisansPliers>, 50)      
  .create();

// Sheet Constatan


recipes.remove(<immersiveengineering:sheetmetal:6>);

recipes.addShaped("TTM_sheetmetal6_slab_back", <immersiveengineering:sheetmetal:6>, [[<immersiveengineering:sheetmetal_slab:6>], [<immersiveengineering:sheetmetal_slab:6>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateConstantan>, null], 
                [<ore:plateConstantan>, null, <ore:plateConstantan>],
                [null, <ore:plateConstantan>, null]])
  .addOutput( <immersiveengineering:sheetmetal:6> * 4)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 75) 
  .addTool(<ore:artisansPliers>, 75)        
  .create();
  
  
// Electrum
  
recipes.remove(<immersiveengineering:sheetmetal:7>);

recipes.addShaped("TTM_sheetmetal7_slab_back", <immersiveengineering:sheetmetal:7>, [[<immersiveengineering:sheetmetal_slab:7>], [<immersiveengineering:sheetmetal_slab:7>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateElectrum>, null], 
                [<ore:plateElectrum>, null, <ore:plateElectrum>],
                [null, <ore:plateElectrum>, null]])
  .addOutput( <immersiveengineering:sheetmetal:7> * 4)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
  // Steel
  
recipes.remove(<immersiveengineering:sheetmetal:8>);

recipes.addShaped("TTM_sheetmetal8_slab_back", <immersiveengineering:sheetmetal:8>, [[<immersiveengineering:sheetmetal_slab:8>], [<immersiveengineering:sheetmetal_slab:8>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateSteel>, null], 
                [<ore:plateSteel>, null, <ore:plateSteel>],
                [null, <ore:plateSteel>, null]])
  .addOutput( <immersiveengineering:sheetmetal:8> * 4)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 75)   
  .addTool(<ore:artisansPliers>, 75)      
  .create();

// Ore dict with Adv Sheet as they arent used in a lot of recipe
var sheetSteel = <ore:sheetSteel>;
sheetSteel.add(<immersiveengineering:sheetmetal:8>);
  
// Iron Sheet
recipes.remove(<immersiveengineering:sheetmetal:9>);
recipes.addShaped("TTM_sheetmetal9_slab_back", <immersiveengineering:sheetmetal:9>, [[<immersiveengineering:sheetmetal_slab:9>], [<immersiveengineering:sheetmetal_slab:9>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateIron>, null], 
                [<ore:plateIron>, null, <ore:plateIron>],
                [null, <ore:plateIron>, null]])
  .addOutput( <immersiveengineering:sheetmetal:9> * 4)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
// Ore dict with Adv Sheet arent used in a lot of recipe
var sheetIron = <ore:sheetIron>;
sheetIron.add(<immersiveengineering:sheetmetal:9>);
 
  
recipes.remove(<immersiveengineering:sheetmetal:10>);

recipes.addShaped("TTM_sheetmetal10_slab_back", <immersiveengineering:sheetmetal:10>, [[<immersiveengineering:sheetmetal_slab:10>], [<immersiveengineering:sheetmetal_slab:10>]]);

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateGold>, null], 
                [<ore:plateGold>, null, <ore:plateGold>],
                [null, <ore:plateGold>, null]])
  .addOutput( <immersiveengineering:sheetmetal:10> * 4)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
  
 // Capacitor
 
  // LV 100k 2 RE battery (Battery box is 160k with 3 RE Battey so make sens)
 recipes.remove(<immersiveengineering:metal_device0>);
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>],
  [<techreborn:rebattery>, <ore:plankTreatedWood>, <techreborn:rebattery>],
  [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]])
  .addOutput( <immersiveengineering:metal_device0>)
  .addTool(<ore:artisansHandsaw>, 15)    
  .create();
 
 // MV is 1 Mif, sorry the IE recipes was too easy
  recipes.remove(<immersiveengineering:metal_device0:1>);
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateIron>, <techreborn:cable>, <ore:plateIron>],
  [<immersiveengineering:metal_device0>, <immersiveengineering:metal_device0>,<immersiveengineering:metal_device0>],
  [<ore:plankTreatedWood>, <immersiveengineering:metal_device0>, <ore:plankTreatedWood>]])
  .addOutput( <immersiveengineering:metal_device0:1>)
  .addTool(<ore:artisansHandsaw>, 50)    
  .create();
  
  // Easier recipes using 2x Lithium (Mid End Game)
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateIron>, <techreborn:cable>, <ore:plateIron>],
  [<techreborn:lithiumbattery>, null,<techreborn:lithiumbattery>],
  [<ore:plankTreatedWood>, <immersiveengineering:metal_device0>, <ore:plankTreatedWood>]])
  .addOutput( <immersiveengineering:metal_device0:1>)
  .addTool(<ore:artisansHandsaw>, 50)    
  .create();
 
 // HV is 4 Million so ... 
 // Steel
   recipes.remove(<immersiveengineering:metal_device0:2>);
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateSteel>, <techreborn:cable:2>, <ore:plateSteel>],
  [<immersiveengineering:metal_device0:1>, <immersiveengineering:metal_device0>,<immersiveengineering:metal_device0:1>],
  [<ore:plankTreatedWood>, <immersiveengineering:metal_device0:1>, <ore:plankTreatedWood>]])
  .addOutput( <immersiveengineering:metal_device0:2>)
  .addTool(<ore:artisansHandsaw>, 75)    
  .create();
  
// OR USE 2 Basic Volatic 
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateSteel>, <techreborn:cable:2>, <ore:plateSteel>],
  [<nuclearcraft:voltaic_pile_basic>, null,<nuclearcraft:voltaic_pile_basic>],
  [<ore:plankTreatedWood>, <immersiveengineering:metal_device0:1>, <ore:plankTreatedWood>]])
  .addOutput( <immersiveengineering:metal_device0:2>)
  .addTool(<ore:artisansHandsaw>, 75)    
  .create();
  

// OR create TO Using a Single lithium_ion_cell ! 
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateSteel>, <techreborn:cable:2>, <ore:plateSteel>],
  [<ore:plateSteel>, <nuclearcraft:lithium_ion_cell>,<ore:plateSteel>],
  [<ore:plankTreatedWood>, <immersiveengineering:metal_device0:1>, <ore:plankTreatedWood>]])
  .addOutput( <immersiveengineering:metal_device0:2> * 2)
  .addTool(<ore:artisansHandsaw>, 75)    
  .create();
  
  
//  Add IE blockCoil to Oredict and Adjust the recipes to use a rod.
var blockCoil = <ore:blockCoil>;
blockCoil.add(<immersiveengineering:metal_decoration0>);

recipes.addShaped("TTM_IE_coil_copper", <immersiveengineering:metal_decoration0>, [[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>], [<immersiveengineering:wirecoil>, <ore:rodIron>, <immersiveengineering:wirecoil>], [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);



////////////////////////////////////////////////////
// ROD
////////////////////////////////////////////////////
//Normalize ROD


///////////////////////////////////////////////////
// Water Generation
// Easy no maintenance RF,  Use a Tin cable like the rest,
// Use Plate and Grease (as most Motor in this pack)
recipes.remove(<immersiveengineering:metal_device1:2>);
 RecipeBuilder.get("engineer")
  .setShaped(  [  [null,<sem:grease_box_full:*>.transformDamage(32) | <sem:grease_box_big_full:*>.transformDamage(32),null],
  [<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>],
  [<ore:plateIron>, <ore:plateIron> , <ore:plateIron>]])
  .addOutput( <immersiveengineering:metal_device1:2>)
  .addTool(<ore:artisansHammer>, 25)    
  .create();

// Remove Iron Mechanical, should be done over a IE Engineer table.
recipes.remove(<immersiveengineering:material:8>);

// No Alu for the first blueprint but Copper / Tin / Iron
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.addShaped("TTM_blueprints_components", <immersiveengineering:blueprint>.withTag({blueprint: "components"}), [[<ore:ingotCopper>, <ore:ingotTin>, <ore:ingotIron>], [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);

// Blueprint give a RAW Circuit board, initial 4, with green plastic = 8
mods.immersiveengineering.Blueprint.addRecipe("components", <opencomputers:material:2> * 4, [<immersiveengineering:stone_decoration:8>,<ore:plateCopper>]);
mods.immersiveengineering.Blueprint.addRecipe("components", <opencomputers:material:2> * 8, [<pneumaticcraft:plastic:2>,<ore:plateCopper>]);


// Alternative Iron Mechanical
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:8> * 2, [<ore:plateIron>,<ore:plateSteel>,<ore:plateCopper>]);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:8> * 6, [<ore:plateIron>,<ore:plateRefinedIron>,<ore:plateCopper>]);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:8> * 8, [<ore:plateDenseIron>,<ore:plateDenseCopper>]);

// Alternative mechanical
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:9> * 2, [<ore:plateTungsten>,<ore:plateCopper>]);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:9> * 6, [<ore:plateSteel>,<ore:plateTungsten>,<ore:plateCopper>]);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:9> * 8, [<ore:plateTungstensteel>,<ore:plateDenseCopper>]);


mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:9> * 8, [<ore:plateTungstensteel>,<ore:plateDenseCopper>]);


// Light engineer block
mods.advancedrocketry.PrecisionAssembler.addRecipe(<immersiveengineering:metal_decoration0:4> , 80, 100,null,<immersiveengineering:metal_decoration1:1>,<immersiveengineering:material:8>);

// Heavy
mods.advancedrocketry.PrecisionAssembler.addRecipe(<immersiveengineering:metal_decoration0:5> , 80, 100,null,<immersiveengineering:metal_decoration1:1>,<immersiveengineering:material:9>);

// Redstone
mods.advancedrocketry.PrecisionAssembler.addRecipe( <immersiveengineering:metal_decoration0:3> * 4, 80, 100,null,<immersiveengineering:metal_decoration1:1>,<techreborn:plates:4>);

// Generator
mods.advancedrocketry.PrecisionAssembler.addRecipe(<immersiveengineering:metal_decoration0:6>, 80, 100,null,<immersiveengineering:metal_decoration1:1>,<immersiveengineering:metal_device1:2>);

// Heat Exchangor
mods.advancedrocketry.PrecisionAssembler.addRecipe(<immersiveengineering:metal_decoration0:7>, 80, 100,null,<immersiveengineering:metal_decoration1:1>,<nuclearcraft:heat_exchanger_wall>);


// yeh PCB with a horse :)
mods.horsepower.Press.add(<opencomputers:material:2>, <opencomputers:material:4>);


// Etching in a Alloy with Acid Sulfuric, We have a machine at a higher tier to do that
mods.immersiveengineering.AlloySmelter.addRecipe( <opencomputers:material:4>, <opencomputers:material:2>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "sulfuric_acid", Amount: 1000}}) | <forge:bucketfilled>.withTag({FluidName: "sulfuric_acid", Amount: 1000})   ,2000);

// We support etching acid and less time
mods.immersiveengineering.AlloySmelter.addRecipe( <opencomputers:material:4>, <opencomputers:material:2>,<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000}) | <ceramics:clay_bucket>.withTag({fluids: {FluidName: "etchacid", Amount: 1000}}),500);
 
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:27> , [<opencomputers:material:4>,<immersiveengineering:material:26>,<opencomputers:material:6>]);


// Add A recipe for creating advancedrocketry  solarpanel as we need a lot of this thing to go solar
mods.immersiveengineering.Blueprint.addRecipe("components", <advancedrocketry:solarpanel> , [<ore:dustLapis>,<ore:glassReinforced>,<ore:plateSilicon>, <ore:oc:materialTransistor>]);


// Add A recipes for basic circuit
mods.immersiveengineering.Blueprint.addRecipe("components",<techreborn:part:29>, [<opencomputers:material:4>,<opencomputers:material:7>,<immersiveengineering:material:21>,<immersiveengineering:material:20>]);


// IE Solar, is weird, no internal battery but about 15 RF Tick
// So 5 Solar Panel, 1 Iron component (it move over day)
recipes.remove(<engineersdecor:small_solar_panel>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>], 
  [<stevescarts:modulecomponents:44>,  <immersiveengineering:material:8>, <stevescarts:modulecomponents:44>], 
  [<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>]
  ] )
  .addOutput(<engineersdecor:small_solar_panel> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();

// Remove some wire to force metal press and Gate transistor using only the IE table
recipes.remove(<immersiveengineering:material:21>);
recipes.remove(<immersiveengineering:material:22>);
recipes.remove(<immersiveengineering:material:23>);


// Steel scaffolding are done over carpenter
recipes.remove(<immersiveengineering:metal_decoration1:1>);

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
  [null, <ore:stickSteel>, null], 
  [<ore:stickSteel>, null, <ore:stickSteel>]])
  .addOutput(  <immersiveengineering:metal_decoration1:1> * 6)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 40)   
  .addTool(<ore:artisansPliers>, 40)      
  .create();


RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plateSteel>, <ore:plateTungsten>, <ore:plateSteel>],
  [null, <ore:stickSteel>, null], 
  [<ore:stickSteel>, null, <ore:stickSteel>]])
  .addOutput(  <immersiveengineering:metal_decoration1:1> * 9)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 60)   
  .addTool(<ore:artisansPliers>, 60)      
  .create();

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plateSteel>, <ore:plateTungstensteel>, <ore:plateSteel>],
  [null, <ore:stickSteel>, null], 
  [<ore:stickSteel>, null, <ore:stickSteel>]])
  .addOutput(  <immersiveengineering:metal_decoration1:1> * 12)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 80)   
  .addTool(<ore:artisansPliers>, 80)      
  .create();

recipes.addShaped("TTM_steel_scaffolding_slab_back0", <immersiveengineering:metal_decoration1:1>, [[<immersiveengineering:metal_decoration1_slab:1>], [<immersiveengineering:metal_decoration1_slab:1>]]);
recipes.addShapeless("TTM_steel_scaffolding_cycle2", <immersiveengineering:metal_decoration1:1>, [<immersiveengineering:metal_decoration1:3>]);


recipes.remove(<immersiveengineering:metal_decoration1:5>);

// Allu scaffolding
RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
  [null, <ore:stickAluminum>, null], 
  [<ore:stickAluminum>, null, <ore:stickAluminum>]])
  .addOutput(  <immersiveengineering:metal_decoration1:5> * 6)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 60)   
  .addTool(<ore:artisansPliers>, 60)      
  .create();

recipes.addShaped("TTM_alu_scaffolding_slab_back0", <immersiveengineering:metal_decoration1:5>, [[<immersiveengineering:metal_decoration1_slab:5>], [<immersiveengineering:metal_decoration1_slab:5>]]);
recipes.addShapeless("TTM_alu_scaffolding_cycle2", <immersiveengineering:metal_decoration1:5>, [<immersiveengineering:metal_decoration1:5>]);


recipes.remove(<immersiveengineering:wooden_decoration:1>);
RecipeBuilder.get("carpenter")
  .setShaped(  [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [null, <ore:stickTreatedWood>, null], [<ore:stickTreatedWood>, null, <ore:stickTreatedWood>]])
  .addOutput( <immersiveengineering:wooden_decoration:1> * 6 )
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 20)   
  .create();



// Gate the Core sample Drill after motor and circuit
// Use buildcraft mining weell

recipes.remove(<immersiveengineering:metal_device1:7>);
RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:scaffoldingSteel>, <techreborn:part:29>, <ore:scaffoldingSteel>],
  [<ore:scaffoldingSteel>, <buildcraftfactory:mining_well>, <ore:scaffoldingSteel>],
  [<immersiveengineering:metal_decoration0:4>, <ore:fenceSteel>, <immersiveengineering:metal_decoration0:4>]] )
  .addOutput( <immersiveengineering:metal_device1:7> )
  .addTool(<ore:artisansHammer>, 45)  
  .create();


recipes.remove(<immersiveengineering:metal_device0:5>);
RecipeBuilder.get("engineer")
  .setShaped( [[null, <ore:plateIron>, null],
  [<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>],
  [<immersiveengineering:metal_device1:6>,<buildcraftfactory:pump>, <immersiveengineering:metal_device1:6>]] )
  .addOutput( <immersiveengineering:metal_device0:5> )
  .addTool(<ore:artisansSolderer>, 45)  
  .create();
  
////////////////////////
// Normalize ROD using blacksmith file
// Iron
recipes.remove(<immersiveengineering:material:1>);

RecipeBuilder.get("blacksmith")
  .setShapeless( [<ore:ingotIron>])
  .addOutput(  <immersiveengineering:material:1>)
  .addTool(<ore:artisansFile>, 25)   
  .create();


// Steel
  
recipes.remove(<immersiveengineering:material:2>);

RecipeBuilder.get("blacksmith")
  .setShapeless( [<ore:ingotSteel>])
  .addOutput(  <immersiveengineering:material:2>)
  .addTool(<ore:artisansFile>, 25)   
  .create();
  
// Alu only with a lathe or press
recipes.remove(<immersiveengineering:material:3>);


  
// Add a IE recipes for Ethylen (Mix Ethanol with coal)
// @TODO:  Ratio / Energy, etc.. should be adjusted
mods.immersiveengineering.Refinery.addRecipe(<liquid:ethene> * 1000, <liquid:ethanol> * 600, <liquid:coal> * 600, 128);
mods.immersiveengineering.Refinery.addRecipe(<liquid:plastic> * 2000, <liquid:lpg> * 75, <liquid:coal> * 150, 128);
mods.immersiveengineering.Refinery.addRecipe(<liquid:plastic> * 2000, <liquid:ethene> * 75, <liquid:coal> * 100, 128);

// We can use the Refiner to increase 
mods.immersiveengineering.Refinery.addRecipe( <liquid:oil_heat_1>  * 1000, <liquid:oil> * 1000, <liquid:steam> * 100, 128);
mods.immersiveengineering.Refinery.addRecipe( <liquid:oil_heat_1>  * 1000, <liquid:oil> * 1000, <liquid:lava> * 10, 128);

mods.immersiveengineering.Refinery.addRecipe( <liquid:oil_heat_2>  * 1000, <liquid:oil_heat_1> * 1000, <liquid:steam> * 200, 128);
mods.immersiveengineering.Refinery.addRecipe( <liquid:oil_heat_2>  * 1000, <liquid:oil_heat_1> * 1000, <liquid:lava> * 20, 128);

// We should add a heat exchange tube from railcraft

// Recipe 

mods.immersivepetroleum.Distillation.addRecipe([<liquid:diesel> * 200,<liquid:kerosene> * 300, <liquid:fuel> * 300,<liquid:lpg> * 200], [], <liquid:oil_heat_1> * 1000, 128, 64, []);

//Oil Seared
mods.immersivepetroleum.Distillation.addRecipe([<liquid:kerosene> * 100, <liquid:fuel> * 400,<liquid:lpg> * 300,<liquid:refined_oil> * 200], [], <liquid:oil_heat_2> * 1000, 128, 64, []);


// Add a mixer recipes for Sulfuric Acid using lead and sulfur
mods.immersiveengineering.Mixer.addRecipe(<liquid:sulfuric_acid> * 1000, <liquid:water> * 1000, [<ore:dustSulfur>,<ore:dustLead>], 512);

// Allow Mixer to melt shredded plastic  using plastic
mods.immersiveengineering.Mixer.addRecipe(<liquid:plastic> * 2000, <liquid:plastic> * 1000, [<emergingtechnology:shreddedplasticblock>], 512);
mods.immersiveengineering.Mixer.addRecipe(<liquid:plastic> * 1250, <liquid:plastic> * 1000, [<emergingtechnology:shreddedplastic>], 512);


// LAVA distillation

mods.immersivepetroleum.Distillation.addRecipe([<liquid:fluidsilicon> * 480,<liquid:aluminum> * 130, <liquid:iron> * 115,<liquid:magnesium> * 85,<liquid:fluidcalcium> * 100, <liquid:titanium> * 75, <liquid:tungsten> * 72], [], <liquid:lava> * 1000, 128, 64, []);

// Add a Mixer recipes for ender liquid using Nitrogen (gaz or liquid), manganese (a chlorite family), 
// Not very efficient way to do it, but can be done without mob
mods.immersiveengineering.Mixer.addRecipe(<liquid:ender> * 1000, <liquid:liquid_nitrogen> * 250, [<ore:dustBeryllium>, <ore:dustCarobbiite>,<ore:dustManganese>], 2048);

mods.immersiveengineering.Mixer.addRecipe(<liquid:ender> * 144, <liquid:nitrogen> * 250, [<ore:dustBeryllium>, <ore:dustCarobbiite>,<ore:dustManganese>], 2048);


mods.immersiveengineering.Mixer.addRecipe(<liquid:ender> * 500, <liquid:nitrogen> * 500, [<ore:dustBeryllium>, <ore:dustCarobbiite>,<ore:dustChrome>], 2048);


// Milk distillation (For very big farm :P )
mods.immersivepetroleum.Distillation.addRecipe([<liquid:water> * 50, <liquid:fluid_butter_milk> * 125,<liquid:fluid_milk_curds> * 175, <liquid:fluid_skim_milk> * 200, <liquid:fluid_pasteurized_milk> * 400], [<growthcraft_milk:butter>], <liquid:milk> * 1000, 64, 100, [1]);

// @TODO : Should add also bottling machine

// Lignite can be use for the Blast but very inificient 
mods.immersiveengineering.BlastFurnace.addFuel(<ore:lignite_coal>, 200 );

// Normalize isolated glass as all glass (Berrylium + Green Glass)

recipes.remove(<immersiveengineering:stone_decoration:8>);
mods.immersiveengineering.AlloySmelter.addRecipe( <immersiveengineering:stone_decoration:8>, <ore:dustBeryllium>,<minecraft:stained_glass:13>,2000);
mods.techreborn.alloySmelter.addRecipe(<immersiveengineering:stone_decoration:8>,<ore:dustBeryllium>,   <minecraft:stained_glass:13>, 180, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<minecraft:stained_glass:13>, <ore:dustBeryllium>, <immersiveengineering:stone_decoration:8> );
	
// Remove some rod
recipes.remove(<immersiveposts:metal_rods>);
recipes.remove(<immersiveposts:metal_rods:1>);
recipes.remove(<immersiveposts:metal_rods:2>);
recipes.remove(<immersiveposts:metal_rods:3>);
recipes.remove(<immersiveposts:metal_rods:4>);
recipes.remove(<immersiveposts:metal_rods:5>);
recipes.remove(<immersiveposts:metal_rods:6>);
recipes.remove(<immersiveposts:metal_rods:7>);

// Add a funnel and metal barrel
recipes.remove(<immersiveengineering:metal_device0:6>);
recipes.addShaped("TTM_fluid_outlet", <immersiveengineering:metal_device0:6>, [[<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>], [<minecraft:iron_bars>, <immersiveengineering:metal_device0:4>, <minecraft:iron_bars>], [<ore:plateIron>, <fluidfunnel:funnel>, <ore:plateIron>]]);

// We use alternatingflux for the breaker (attainble before Aluminium)
recipes.remove( <immersiveengineering:connector:10>);

recipes.addShaped("TTM_breaker1", <immersiveengineering:connector:10>, [[<alternatingflux:connector>, null,<alternatingflux:connector>], [<ore:ingotIron>, <minecraft:repeater>, <ore:ingotIron>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

//
recipes.addShaped("TTM_powered_lantern_bulb", <immersiveengineering:metal_device1:4> * 4, [[null, <ore:plateIron>, null], [<ore:paneGlass>, <floodlights:electric_incandescent_light_bulb>, <ore:paneGlass>], [<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>]]);

// Iron 1
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped("TTM_garden_cloche", <immersiveengineering:metal_device1:13>, [[<ore:blockGlass>, <immersiveengineering:material:26>, <ore:blockGlass>], [<ore:blockGlass>,  <ore:itemBattery>, <ore:blockGlass>], [<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]]);

// Steel + bulb = 2
recipes.addShaped("TTM_garden_cloche_bulb", <immersiveengineering:metal_device1:13> * 2, [[<ore:blockGlass>, <floodlights:electric_incandescent_light_bulb>, <ore:blockGlass>], [<ore:blockGlass>, <ore:itemBattery>, <ore:blockGlass>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

