// buildcraft


import mods.artisanworktables.builder.RecipeBuilder;



// Same recipe but treated wood and engineer Table
recipes.remove(<buildcraftcore:engine>);

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
  [null, <ore:blockGlassColorless>, null], 
  [<ore:gearWood>, <minecraft:piston>, <ore:gearWood>]])
  .addOutput( <buildcraftcore:engine>)
  .addTool(<ore:artisansHammer>, 25)
  .create();

// We Alter copper gearCopper to add Gear Stone to be coherent
recipes.remove(<thermalfoundation:material:256>);
recipes.addShaped("TTM_CopperGear", <thermalfoundation:material:256>, [[null, <ore:ingotCopper>, null], 
[<ore:ingotCopper>, <ore:gearStone>, <ore:ingotCopper>], 
[null, <ore:ingotCopper>, null]]);


// Similar recipes but Copper Gear
recipes.remove(<buildcraftcore:engine:1>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
  [null, <ore:blockGlassColorless>, null], [<ore:gearCopper>, <minecraft:piston>,<ore:gearCopper>]])
  .addOutput(<buildcraftcore:engine:1>)
  .addTool(<ore:artisansHammer>, 40)
  .create();
  
// Same recipes  as Iron is Tier 3, we modify nothing (except plate)
recipes.remove(<buildcraftcore:engine:2>);

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
  [null, <ore:blockGlassColorless>, null], [<ore:gearIron>, <minecraft:piston>,<ore:gearIron>]])
  .addOutput(<buildcraftcore:engine:2>)
  .addTool(<ore:artisansHammer>, 40)
  .create();
  
// Wrench is bronze age
recipes.remove(<buildcraftcore:wrench>);
recipes.addShaped("TTM_bcwrench", <buildcraftcore:wrench>, [[<ore:ingotBronze>, null, <ore:ingotBronze>], [null, <ore:gearStone>, null], [null, <ore:ingotBronze>, null]]);

// We use Tin for Chute
recipes.remove(<buildcraftfactory:chute>);
recipes.remove(<buildcraftcore:engine:2>);

RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plateTin>, <minecraft:chest>, <ore:plateTin>], 
  [<ore:plateTin>, <ore:gearStone>, <ore:plateTin>], 
  [null, <ore:plateTin>, null]])
  .addOutput( <buildcraftfactory:chute>)
  .addTool(<ore:artisansHammer>, 35)
  .create();

// Autocrafter, No Sorry we use IE one... Else who want to build a big steel machine when 8 stone and 4 wood do the job...
recipes.remove( <buildcraftfactory:autoworkbench_item>);


// mining well go to Mid iron   but Before Core sample Drill (Make sense)
recipes.remove( <buildcraftfactory:mining_well>);
  RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plateIron>, <opencomputers:material:6>, <ore:plateIron>], [<immersiveengineering:material:8>, <minecraft:piston>, <immersiveengineering:material:8>], [<ore:plateIron>, <thermalfoundation:material:656>, <ore:plateIron>]])
  .addOutput(<buildcraftfactory:mining_well>)
  .addTool(<ore:artisansHammer>, 40)
  .create();
  
  // Steel give 2
  RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plateIron>, <opencomputers:material:6>, <ore:plateIron>], [<immersiveengineering:material:9>, <minecraft:piston>, <immersiveengineering:material:9>], [<ore:plateIron>, <thermalfoundation:material:656>, <ore:plateIron>]])
  .addOutput(<buildcraftfactory:mining_well> * 2)
  .addTool(<ore:artisansHammer>, 50)
  .create();



// Iron give 1
recipes.remove( <buildcraftfactory:pump>);
  RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plateIron>, <opencomputers:material:6>, <ore:plateIron>], [<immersiveengineering:material:8>, <minecraft:piston>, <immersiveengineering:material:8>], [<buildcraftfactory:tank>, <minecraft:bucket>, <buildcraftfactory:tank>]])
  .addOutput(<buildcraftfactory:pump> * 1 )
  .addTool(<ore:artisansHammer>, 40)
  .create();

// steel give 2
  RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plateIron>, <opencomputers:material:6>, <ore:plateIron>], [<immersiveengineering:material:9>, <minecraft:piston>, <immersiveengineering:material:9>], [<buildcraftfactory:tank>, <minecraft:bucket>, <buildcraftfactory:tank>]])
  .addOutput(<buildcraftfactory:pump> * 2)
  .addTool(<ore:artisansHammer>, 50)
  .create();

  
// We use IE for Distiller and Distiller
recipes.remove(<buildcraftfactory:heat_exchange>);
recipes.remove(<buildcraftfactory:distiller>);

// We use Gear from Thermal
// We keep stone as it use cobble stone
recipes.remove(<buildcraftcore:gear_wood>);
recipes.remove(<buildcraftcore:gear_iron>);
recipes.remove(<buildcraftcore:gear_gold>);
recipes.remove(<buildcraftcore:gear_diamond>);

