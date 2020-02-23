// Serene seasons


import mods.artisanworktables.builder.RecipeBuilder;

// Glass need bronze or iron
recipes.remove(<sereneseasons:greenhouse_glass>);

RecipeBuilder.get("farmer")
  .setShaped([[<ore:dyeCyan>, <ore:blockGlass>, <ore:dyeCyan>], 
  [<ore:blockGlass>, <ore:ingotBronze>, <ore:blockGlass>], 
  [<ore:dyeCyan>, <ore:blockGlass>, <ore:dyeCyan>]])
  .addOutput(<sereneseasons:greenhouse_glass> * 4)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();


// No change for sensor and clock