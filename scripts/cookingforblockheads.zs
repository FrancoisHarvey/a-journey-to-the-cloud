// cooking for blockhead
// Try to use IE component 
// Bronze Age
// Plant oil
// Carpenter mostly except automated stuff
// Quartz / Marble


import mods.artisanworktables.builder.RecipeBuilder;

// Cooking table
recipes.remove(<cookingforblockheads:cooking_table>);
RecipeBuilder.get("carpenter")
  .setShaped(   [[<ore:blockQuartz> | <ore:quartz>, <ore:blockQuartz> | <ore:quartz>, <ore:blockQuartz> | <ore:quartz>], 
  [<minecraft:hardened_clay>, <cookingforblockheads:recipe_book:2>, <minecraft:hardened_clay>], 
  [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .addOutput(<cookingforblockheads:cooking_table>)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 
  

// Cooking table
recipes.remove(<cookingforblockheads:cooking_table>);
RecipeBuilder.get("carpenter")
  .setShaped(   [[<ore:blockQuartz> | <ore:quartz>, <ore:blockQuartz> | <artisanworktables:worktable:11> | <ore:quartz>], 
  [<minecraft:hardened_clay>, <cookingforblockheads:recipe_book:2>, <minecraft:hardened_clay>], 
  [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .addOutput(<cookingforblockheads:cooking_table>)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 
  
  
// Oven
recipes.remove(<cookingforblockheads:oven>);
RecipeBuilder.get("engineer")
  .setShaped(    [[<minecraft:stained_glass:15>, <immersiveengineering:material:8>, <minecraft:stained_glass:15>], 
  [<ore:plateIron>, <minecraft:furnace>, <ore:plateIron>],
  [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]])
  .addOutput(<cookingforblockheads:oven>)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 

// OVen Upgrade - 2 Coil, 1 small Battery (internal stockage = 10k RF)

recipes.remove(<cookingforblockheads:heating_unit>);
RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:itemRubber>, <immersiveengineering:metal_decoration0>, <ore:itemRubber>], 
  [<ore:itemRubber>, <libvulpes:battery>, <ore:itemRubber>],
  [<ore:itemRubber>, <immersiveengineering:metal_decoration0>, <ore:itemRubber>]])
  .addOutput(<cookingforblockheads:heating_unit>)
  .addTool(<ore:artisansSolderer>, 30)  
  .create(); 

// Fridge
recipes.remove(<cookingforblockheads:fridge>);

RecipeBuilder.get("carpenter")
  .setShaped(    [[<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>], 
  [<ore:plateIron>, <minecraft:chest>, <ore:plateIron>],
  [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]])
  .addOutput(<cookingforblockheads:fridge>)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 


// Sink
// Just a barrel with a ceramic faucet 
recipes.remove(<cookingforblockheads:sink>);
RecipeBuilder.get("carpenter")
  .setShaped(    [[<ore:blockQuartz> | <ore:quartz>, <ceramics:faucet>, <ore:blockQuartz> | <ore:blockQuartz>], 
  [<minecraft:hardened_clay>, <immersiveengineering:metal_device0:4>, <minecraft:hardened_clay>],
  [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .addOutput(<cookingforblockheads:sink>)
  .addTool(<ore:artisansHandSaw>, 30)  
  .create(); 
  
// Toaster, No lava for you
recipes.remove(<cookingforblockheads:toaster>);
RecipeBuilder.get("engineer")
  .setShaped(  [[null, null, null], 
  [<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>], 
  [<ore:plateIron>, <immersiveengineering:metal_decoration0>, <ore:plateIron>]])
  .addOutput(<cookingforblockheads:toaster>)
  .addTool(<ore:artisansSolderer>, 35)  
  .create();
  
// comptoir
recipes.remove(<cookingforblockheads:counter>);
RecipeBuilder.get("carpenter")
  .setShaped(    [[<ore:blockQuartz> | <ore:quartz>, <ceramics:faucet>, <ore:blockQuartz> | <ore:blockQuartz>], 
  [<minecraft:hardened_clay>,<ore:chestWood>, <minecraft:hardened_clay>],
  [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .addOutput(<cookingforblockheads:counter>)
  .addTool(<ore:artisansHandSaw>, 30)  
  .create(); 


  // Cabinet use wardrobe
recipes.remove(<cookingforblockheads:cabinet>);
RecipeBuilder.get("carpenter")
  .setShaped(    [[null,null,null], 
  [<minecraft:hardened_clay>,<minecraft:hardened_clay>, <minecraft:hardened_clay>],
  [<minecraft:hardened_clay>, <sem:schrank:*>, <minecraft:hardened_clay>]])
  .addOutput(<cookingforblockheads:cabinet>)
  .addTool(<ore:artisansHandSaw>, 25)  
  .create(); 

// comptoir
recipes.remove(<cookingforblockheads:corner>);
RecipeBuilder.get("carpenter")
  .setShaped(    [[<ore:blockQuartz> | <ore:quartz>, <ceramics:faucet>, <ore:blockQuartz> | <ore:blockQuartz>], 
  [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
  [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]])
  .addOutput(<cookingforblockheads:corner>)
  .addTool(<ore:artisansHandSaw>, 30)  
  .create(); 
  

// fruit_basket dont filter fruit and veggy element, so it's a visual chest for the cost of 2 wood
// We add a chest for this reason
recipes.remove(<cookingforblockheads:fruit_basket>);
RecipeBuilder.get("carpenter")
  .setShaped(   [[<ore:slabWood>, <minecraft:chest>, <ore:slabWood>]])
  .addOutput(<cookingforblockheads:fruit_basket>)
  .addTool(<ore:artisansHandSaw>, 20)  
  .create(); 

// spice_rack is like a basket on the wall... but limited to 9 element, we use the fruit basquet to fenerate 3 rack (27 / 3 = 9 so consistent)
recipes.remove(<cookingforblockheads:spice_rack>);
RecipeBuilder.get("carpenter")
  .setShaped(   [[<ore:slabWood>, <cookingforblockheads:fruit_basket>, <ore:slabWood>]])
  .addOutput(<cookingforblockheads:spice_rack> * 3)
  .addTool(<ore:artisansHandSaw>, 30)  
  .create(); 
  
  