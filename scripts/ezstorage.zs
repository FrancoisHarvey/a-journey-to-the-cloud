// ezstorage


import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<ezstorage:blank_box>);

// blank_box Use Treated Wood
recipes.addShaped("TTM_ezStoragerecipe0", <ezstorage:blank_box> * 2, [
[<ore:logWood>, <ore:plankTreatedWood>, <ore:logWood>],
 [<ore:plankTreatedWood>, <ore:stickTreatedWood>, <ore:plankTreatedWood>], 
 [<ore:logWood>, <ore:plankTreatedWood>, <ore:logWood>]]);

// Level 1 - Create
recipes.remove(<ezstorage:storage_box>);

RecipeBuilder.get("carpenter")
  .setShaped( [[null, <immersiveengineering:wooden_device0>, null], [<immersiveengineering:wooden_device0>, <ezstorage:blank_box>, <immersiveengineering:wooden_device0>], [null, <immersiveengineering:wooden_device0>, null]])
  .addOutput( <ezstorage:storage_box>)
  .addTool(<ore:artisansHammer>, 25)
  .create();
 
// Level 2 - Renforced Crate
recipes.remove(<ezstorage:condensed_storage_box>);

RecipeBuilder.get("carpenter")
  .setShaped( [[null, <ore:oc:databaseUpgrade1>, null], [<immersiveengineering:wooden_device0:5>, <ezstorage:blank_box>, <immersiveengineering:wooden_device0:5>], [null, <immersiveengineering:wooden_device0:5>, null]])
  .addOutput( <ezstorage:condensed_storage_box>)
  .addTool(<ore:artisansHammer>, 25)
  .create();


// Level 3 - Super Crate
recipes.remove(<ezstorage:super_storage_box>);

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:circuitStorage>,<ore:oc:databaseUpgrade2>, <ore:circuitStorage>], [<techreborn:machine_frame>, <ezstorage:blank_box>, <techreborn:machine_frame>], [<ore:circuitStorage>, <techreborn:machine_frame>, <ore:circuitStorage>]])
  .addOutput(<ezstorage:super_storage_box>)
  .addTool(<ore:artisansHammer>, 50)
  .create();
  
// Level 3 - Ultra Crate
recipes.remove(<ezstorage:ultra_storage_box>);

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:circuitElite>,<ore:oc:databaseUpgrade3>, <ore:circuitElite>], [<ore:machineBlockAdvanced>, <ezstorage:blank_box>,<ore:machineBlockAdvanced>], [<ore:circuitElite>, <ore:machineBlockAdvanced>, <ore:circuitElite>]])
  .addOutput(<ezstorage:ultra_storage_box>)
  .addTool(<ore:artisansHammer>, 75)
  .setMinimumTier(1)
  .create();
  
 recipes.remove(<ezstorage:hyper_storage_box>);

 RecipeBuilder.get("carpenter")
  .setShaped( [[<techreborn:part:3>,<ore:machineBlockElite>, <techreborn:part:3>], [<ore:machineBlockElite>, <ezstorage:blank_box>,<ore:machineBlockElite>], [<techreborn:part:3>, <ore:machineBlockElite>, <techreborn:part:3>]])
  .addOutput(<ezstorage:hyper_storage_box>)
  .addTool(<ore:artisansHammer>, 75)
  .setMinimumTier(1)
  .create(); 

 // ezStorage Controller
  recipes.remove(<ezstorage:storage_core>);
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateSteel>, <ore:motor>, <ore:plateSteel>], 
  [ <ezstorage:blank_box>, <ore:circuitBasic>, <ezstorage:blank_box>], 
  [<ore:plateSteel>, <immersiveengineering:metal_decoration0:3>, <ore:plateSteel>]])
  .setMinimumTier(1)
  .addOutput( <ezstorage:storage_core>)
  .addTool(<ore:artisansSolderer>, 75)
  .addTool(<ore:artisansDriver>, 75)   
  .create();
  
