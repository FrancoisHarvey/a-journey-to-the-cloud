// Chisel
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<chisel:chisel_hitech>);
recipes.remove(<chisel:chisel_iron>);
recipes.remove(<chisel:chisel_diamond>);


recipes.remove(<chisel:auto_chisel>);
recipes.addShaped("TTM_autochisel", <chisel:auto_chisel>, [[<techreborn:reinforced_glass>,<tcomplement:chisel>, <techreborn:reinforced_glass>], [<ore:servo>,<ore:machineBasic>, <ore:servo>], [<ore:plateSteel>, <ore:itemBattery>, <ore:plateSteel>]]);


// Move some construction block to carpenter and Tier it
recipes.remove(<chisel:factory>);

RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotBronze>, <ore:stone> | <ore:concrete>, <ore:ingotBronze>], [<ore:stone>,null, <ore:stone>], [<ore:ingotBronze>, <ore:stone>, <ore:ingotBronze>]] )
  .addOutput( <chisel:factory>  * 4)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();   
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotIron>, <ore:stone>, <ore:ingotIron>], [<ore:stone>,null, <ore:stone>], [<ore:ingotIron>, <ore:stone>, <ore:ingotIron>]] )
  .addOutput( <chisel:factory> * 8 )
  .addTool(<ore:artisansHandsaw>, 50)    
  .create();   
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotInvar>, <ore:stone>, <ore:ingotInvar>], [<ore:stone>,null, <ore:stone>], [<ore:ingotInvar>, <ore:stone>, <ore:ingotInvar>]] )
  .addOutput( <chisel:factory> * 12 )
  .addTool(<ore:artisansHandsaw>, 75)    
  .create();  
 
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotSteel>, <ore:stone>, <ore:ingotSteel>], [<ore:stone>,null, <ore:stone>], [<ore:ingotSteel>, <ore:stone>, <ore:ingotSteel>]] )
  .addOutput( <chisel:factory> * 16)
  .addTool(<ore:artisansHandsaw>, 100)    
  .create(); 
  
// Hempcrete give * 2
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotBronze>,<immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotBronze>], [<immersiveengineering:stone_decoration:4> | <ore:concrete>,null, <immersiveengineering:stone_decoration:4> | <ore:concrete>], [<ore:ingotBronze>, <immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotBronze>]] )
  .addOutput( <chisel:factory>  * 8)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();   
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotIron>, <immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotIron>], [<immersiveengineering:stone_decoration:4> | <ore:concrete>,null, <immersiveengineering:stone_decoration:4> | <ore:concrete>], [<ore:ingotIron>, <immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotIron>]] )
  .addOutput( <chisel:factory> * 16 )
  .addTool(<ore:artisansHandsaw>, 50)    
  .create();   
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotInvar>, <immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotInvar>], [<immersiveengineering:stone_decoration:4> | <ore:concrete>,null, <immersiveengineering:stone_decoration:4> | <ore:concrete>], [<ore:ingotInvar>, <immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotInvar>]] )
  .addOutput( <chisel:factory> * 24 )
  .addTool(<ore:artisansHandsaw>, 75)    
  .create();  
 
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotSteel>, <immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotSteel>], [<immersiveengineering:stone_decoration:4> | <ore:concrete>,null, <immersiveengineering:stone_decoration:4> | <ore:concrete>], [<ore:ingotSteel>, <immersiveengineering:stone_decoration:4> | <ore:concrete>, <ore:ingotSteel>]] )
  .addOutput( <chisel:factory> * 32)
  .addTool(<ore:artisansHandsaw>, 100)    
  .create(); 
  
// REBAR Concrete give 32 With Bronze
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotBronze>, <engineersdecor:rebar_concrete>, <ore:ingotBronze>], [<engineersdecor:rebar_concrete>,null, <engineersdecor:rebar_concrete>], [<ore:ingotBronze>,<engineersdecor:rebar_concrete>, <ore:ingotBronze>]] )
  .addOutput( <chisel:factory> * 32)
  .addTool(<ore:artisansHandsaw>, 100)    
  .create(); 

// Leaded give 24 with 2X Iron + 2 Bronze
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:ingotBronze>, <engineersdecor:rebar_concrete>, <ore:ingotIron>], [<immersiveengineering:stone_decoration:7>,null, <immersiveengineering:stone_decoration:7>], [<ore:ingotBronze>,<immersiveengineering:stone_decoration:7>, <ore:ingotIron>]] )
  .addOutput( <chisel:factory> * 24)
  .addTool(<ore:artisansHandsaw>, 75)    
  .create(); 
  
// Allow a IE Recipes 
recipes.addShaped("TTM_blueprints_block", <immersiveengineering:blueprint>.withTag({blueprint: "factory_block"}), [[<ore:ingotCopper>, <chisel:factory>, <ore:ingotIron>], [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);


// Allow automatic using IE
mods.immersiveengineering.Blueprint.addRecipe("factory_block", <chisel:factory> * 4, [<ore:concrete>,<ore:ingotIron>]);
mods.immersiveengineering.Blueprint.addRecipe("factory_block", <chisel:factory> * 8, [<ore:concrete>,<ore:ingotSteel>]);
mods.immersiveengineering.Blueprint.addRecipe("factory_block", <chisel:factory> * 8, [<engineersdecor:rebar_concrete>,<ore:ingotBronze>]);
mods.immersiveengineering.Blueprint.addRecipe("factory_block", <chisel:factory> * 16, [<techreborn:storage2:2>,<ore:ingotBronze>]);
mods.immersiveengineering.Blueprint.addRecipe("factory_block", <chisel:factory> * 32, [<techreborn:storage2:1>,<ore:ingotBronze>]);



// Antiblock
recipes.remove(<chisel:antiblock:15>);
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:dustGlowstone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]] )
  .addOutput(<chisel:antiblock:15> * 8)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create(); 
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>,<minecraft:glowstone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]] )
  .addOutput(<chisel:antiblock:15> * 24)
  .addTool(<ore:artisansHandsaw>, 75)    
  .create(); 
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>,null, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]] )
  .addOutput(<chisel:antiblock:15> * 32)
  .addTool(<ore:artisansHandsaw>, 75)    
  .setFluid(<liquid:glowstone> * 1000) 	
  .create(); 
  
mods.immersiveengineering.Blueprint.addRecipe("factory_block", <chisel:factory> * 4, [<ore:dustGlowstone>,<ore:stone>]);

RecipeBuilder.get("carpenter")
  .setShaped([[null, <minecraft:wool:*>, null], [<minecraft:wool:*>, null, <minecraft:wool:*>], [null, <minecraft:wool:*>, null]] )
  .addOutput(<chisel:antiblock:15> * 32)
  .setFluid(<liquid:steam> * 1000) 	
  .create(); 
  
// Allow some limestone oreDict

var stoneLimestone = <ore:stoneLimestone>;
stoneLimestone.add(<chisel:limestone2:7>);

recipes.addShapeless("TTM_LimeStoneUB", <chisel:limestone2:7>, [<tcomplement:chisel>, <undergroundbiomes:sedimentary_stone>]);

// Allow some Marble Oredict From UB
recipes.addShapeless("TTM_MarbleUB", <chisel:marble2:7>, [<tcomplement:chisel>, <undergroundbiomes:metamorphic_stone:2>]);

// And from Engine mod
recipes.addShapeless("TTM_MarbleSEM", <chisel:marble2:7>, [<tcomplement:chisel>, <sem:normaleblocke>]);

// We allow Basalt oregen around lava, but only to convert it from Underground biome 
recipes.addShapeless("TTM_BasaltUB",<chisel:basalt2:7>, [<tcomplement:chisel>, <undergroundbiomes:igneous_stone:5>]);
