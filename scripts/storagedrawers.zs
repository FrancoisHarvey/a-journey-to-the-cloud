// Storage Drawer
// Complexify most recipes
// TIER : Bronze -> Iron -> Steel -> Refined Iron -> Aluminium / EA2 component (For Créatif)

// Most recipe upgrade of controller use Carpenter OR Enginner
// Automatisation is allowed from the beginning
// Controller need Iron
// Creative tiers is allowed but too pricey to be usefull, should look at that

import mods.artisanworktables.builder.RecipeBuilder;

// We dont change the basic drawer, but upgrade to gate it more.
recipes.remove(<storagedrawers:upgrade_template>);

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>],
  [<ore:stickWood>, <ore:drawerBasic>, <ore:stickWood>],
  [<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>]] )
  .addOutput( <storagedrawers:upgrade_template> * 2)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();
 
 
 // 1 Stock stockage..
 
 // Bronze Level (I)
 recipes.remove(<storagedrawers:upgrade_storage>);
 RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>], 
  [<ore:plateBronze>, <storagedrawers:upgrade_template>, <ore:plateBronze>], 
  [<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>]])
  .addOutput( <storagedrawers:upgrade_storage>)
  .addTool(<ore:artisansHandsaw>, 50)    
  .create();
 
 
 // Iron level (II)
  recipes.remove(<storagedrawers:upgrade_storage:1>);
 RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>], 
  [<ore:plateIron>, <storagedrawers:upgrade_template>, <ore:plateIron>], 
  [<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>]])
  .setMinimumTier(1)  
  .addOutput( <storagedrawers:upgrade_storage:1>)
  .addTool(<ore:artisansHandsaw>, 100)    
  .addTool(<ore:artisansHammer>, 100)  
  .create();
 
  // Steel level (III)
  recipes.remove(<storagedrawers:upgrade_storage:2>);
 RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>], 
  [<ore:plateSteel>, <storagedrawers:upgrade_template>, <ore:plateSteel>], 
  [<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>]])
  .setMinimumTier(1)
  .addOutput( <storagedrawers:upgrade_storage:2>)
  .addTool(<ore:artisansHandsaw>, 200)
  .addTool(<ore:artisansHammer>, 200)   
  .create();
  
  // Refined level (IV)
    recipes.remove(<storagedrawers:upgrade_storage:3>);
 RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>], 
  [<ore:plateRefinedIron>, <storagedrawers:upgrade_template>, <ore:plateRefinedIron>], 
  [<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>]])
  .setMinimumTier(1)
  .addOutput( <storagedrawers:upgrade_storage:3>)
  .addTool(<ore:artisansHandsaw>, 400)    
  .addTool(<ore:artisansHammer>, 400)   
  .create();
  
  
  // Aluminium (5)
      recipes.remove(<storagedrawers:upgrade_storage:4>);
 RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>], 
  [<ore:plateRefinedIron>, <storagedrawers:upgrade_template>, <ore:plateRefinedIron>], 
  [<ore:stickTreatedWood>, <ore:stickWood>, <ore:stickTreatedWood>]])
  .setMinimumTier(1)
  .addOutput( <storagedrawers:upgrade_storage:4>)
  .addTool(<ore:artisansHandsaw>, 500)    
  .addTool(<ore:artisansHammer>, 500)   
  .create();
  
  
 // No compacting 
recipes.remove(<storagedrawers:compdrawers>);

 // Controller
  recipes.remove(<storagedrawers:controller>);
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateSteel>, <ore:motor>, <ore:plateSteel>], 
  [ <ore:drawerBasic>, <ore:circuitBasic>, <ore:drawerBasic>], 
  [<ore:plateSteel>, <immersiveengineering:metal_decoration0:3>, <ore:plateSteel>]])
  .setMinimumTier(1)
  .addOutput( <storagedrawers:controller>)
  .addTool(<ore:artisansSolderer>, 200)
  .addTool(<ore:artisansDriver>, 200)   
  .create();
  
   //Slave
  recipes.remove(<storagedrawers:controllerslave>);
 RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateIron>, <ore:motor>, <ore:plateIron>], 
  [<rs_ctr:rs_port:2>, <ore:drawerBasic>,<rs_ctr:rs_port:3>], 
  [<ore:plateIron>, <immersiveengineering:metal_decoration0:3>, <ore:plateIron>]])
  .setMinimumTier(1)
  .addOutput( <storagedrawers:controllerslave>)
  .addTool(<ore:artisansSolderer>, 150)
  .addTool(<ore:artisansDriver>, 150)   
  .create();
  

  
  
  