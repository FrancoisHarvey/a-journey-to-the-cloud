// Inductive logistics
// Possible at bronze age and manually but costly
// Bronze * 3,  Iron -> * 6,  Steel -> * 9
// liquid glass over a engineer
// Many recipes removed for now.... Some Item are too powerfull for the mid game

import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<indlog:item_pipe>);
recipes.addShapeless("TTM_item_pipe_0_b", <indlog:item_pipe>, [<indlog:item_pipe:3>]);
recipes.addShapeless("TTM_item_pipe_0_c", <indlog:item_pipe>, [<indlog:item_pipe:4>]);

RecipeBuilder.get("farmer")
  .setShaped([[<ore:plateWood>, <ore:plateTin>, <ore:plateWood>], 
  [null, null,null], 
  [<ore:plateWood>, <ore:plateTin>, <ore:plateWood>]])
  .setFluid(<liquid:sap> * 500) 	
  .addOutput(<indlog:item_pipe> )
  .addTool(<ore:artisansHammer>, 15)    
  .create();

RecipeBuilder.get("farmer")
  .setShaped([[<ore:plateWood>, <ore:plateTin>, <ore:plateWood>], 
  [ <ore:itemRubber>,  <ore:itemRubber>, <ore:itemRubber>], 
  [<ore:plateWood>, <ore:plateTin>, <ore:plateWood>]])
  .addOutput(<indlog:item_pipe> )
  .addTool(<ore:artisansHammer>, 15)    
  .create();

RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 1000) 	
  .addOutput(<indlog:item_pipe> * 3)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateIron>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateIron>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 750) 	
  .addOutput(<indlog:item_pipe> * 6)
  .addTool(<ore:artisansHammer>, 20)    
  .create();

  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateSteel>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateSteel>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:item_pipe> * 9)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
    RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateAluminum>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateAluminum>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:item_pipe> * 12)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();

    RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>,<ore:plateTitanium>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateTitanium>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:item_pipe> * 15)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();
  
      RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>,<ore:ingotHSLASteel>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:ingotHSLASteel>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:item_pipe> * 18)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();
  
  
       RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>,<ore:plateTungsten>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateTungsten>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:item_pipe> * 24)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();
   

// Plastic
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]])
  .setFluid(<liquid:plastic> * 1000) 	
  .addOutput(<indlog:item_pipe> * 6)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateIron>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateIron>, <ore:plateBronze>]])
  .setFluid(<liquid:plastic> * 750) 	
  .addOutput(<indlog:item_pipe> * 9)
  .addTool(<ore:artisansHammer>, 20)    
  .create();

  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateSteel>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateSteel>, <ore:plateBronze>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:item_pipe> * 12)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
    RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>, <ore:plateAluminum>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateAluminum>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:item_pipe> * 15)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();

    RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>,<ore:plateTitanium>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateTitanium>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:item_pipe> * 18)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();
  
      RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>,<ore:ingotHSLASteel>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:ingotHSLASteel>, <ore:plateBronze>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:item_pipe> * 24)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();
  
  
       RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBronze>,<ore:plateTungsten>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBronze>, <ore:plateTungsten>, <ore:plateBronze>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:item_pipe> * 32)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)    
  .create();

recipes.remove(<indlog:fluid_pipe>);

recipes.addShapeless("TTM_fluid_pipe_0_b", <indlog:fluid_pipe>, [<indlog:fluid_pipe:3>]);
recipes.addShapeless("TTM_fluid_pipe_0_c", <indlog:fluid_pipe>, [<indlog:fluid_pipe:4>]);

RecipeBuilder.get("farmer")
  .setShaped([[<ore:plateWood>, <ore:plateCopper>, <ore:plateWood>], 
  [null, null,null], 
  [<ore:plateWood>, <ore:plateCopper>, <ore:plateWood>]])
  .setFluid(<liquid:sap> * 500) 	
  .addOutput(<indlog:fluid_pipe> )
  .addTool(<ore:artisansHammer>, 15)    
  .create();

RecipeBuilder.get("farmer")
  .setShaped([[<ore:plateWood>, <ore:plateCopper>, <ore:plateWood>], 
  [ <ore:itemRubber>,  <ore:itemRubber>, <ore:itemRubber>], 
  [<ore:plateWood>, <ore:plateCopper>, <ore:plateWood>]])
  .addOutput(<indlog:fluid_pipe> )
  .addTool(<ore:artisansHammer>, 15)    
  .create();
  
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 3)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateIron>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>, <ore:plateIron>, <ore:plateBrass>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 6)
  .addTool(<ore:artisansHammer>, 20)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateSteel>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>, <ore:plateSteel>, <ore:plateBrass>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 9)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:plateAluminum>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:plateAluminum>, <ore:plateBrass>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 12)
  .addTool(<ore:artisansHammer>, 30) 
  .setMinimumTier(1)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:plateTitanium>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:plateTitanium>, <ore:plateBrass>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 15)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)  
  .create();
 
  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:ingotHSLASteel>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:ingotHSLASteel>, <ore:plateBrass>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 18)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)  
  .create();
  
    RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:plateTungsten>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:plateTungsten>, <ore:plateBrass>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 24)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)  
  .create();
  
// Plastic

RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 6)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateIron>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>, <ore:plateIron>, <ore:plateBrass>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 9)
  .addTool(<ore:artisansHammer>, 20)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateSteel>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>, <ore:plateSteel>, <ore:plateBrass>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 12)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:plateAluminum>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:plateAluminum>, <ore:plateBrass>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 15)
  .addTool(<ore:artisansHammer>, 30) 
  .setMinimumTier(1)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:plateTitanium>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:plateTitanium>, <ore:plateBrass>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 18)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)  
  .create();
 
  RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:ingotHSLASteel>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:ingotHSLASteel>, <ore:plateBrass>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 24)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)  
  .create();
  
    RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>,<ore:plateTungsten>, <ore:plateBrass>], 
  [null, null,null], 
  [<ore:plateBrass>,<ore:plateTungsten>, <ore:plateBrass>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:fluid_pipe> * 32)
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)  
  .create();  
 
// Access extension
// Need plateEnderium
recipes.remove(<indlog:inv_connector>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>], 
  [null, null,null], 
  [<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:inv_connector>)
  .addTool(<ore:artisansHandsaw>, 40)    
  .addTool(<ore:artisansHammer>, 40)    
  .setMinimumTier(1)  
  .create();
  
recipes.remove(<indlog:inv_connector>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>], 
  [null, <ore:ingotHSLASteel>,null], 
  [<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:inv_connector> * 2)
  .addTool(<ore:artisansHandsaw>, 40)    
  .addTool(<ore:artisansHammer>, 40)    
  .setMinimumTier(1)  
  .create();
  
recipes.remove(<indlog:inv_connector>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>], 
  [null, <techreborn:ingot:15>,null], 
  [<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:inv_connector> * 4)
  .addTool(<ore:artisansHandsaw>, 40)    
  .addTool(<ore:artisansHammer>, 40)    
  .setMinimumTier(1)  
  .create();
  
recipes.remove(<indlog:inv_connector>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>], 
  [null, <ore:ingotTungstensteel>,null], 
  [<ore:plateBrass>, <ore:plateEnderium>, <ore:plateBronze>]])
  .setFluid(<liquid:glass> * 500) 	
  .addOutput(<indlog:inv_connector> * 8)
  .addTool(<ore:artisansHandsaw>, 40)    
  .addTool(<ore:artisansHammer>, 40)    
  .setMinimumTier(1)  
  .create();
  

// Autocrafter
// Move AFTER IE
recipes.remove(<indlog:auto_craft>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateSteel>, <immersiveengineering:metal_decoration0:5>, <ore:plateSteel>], 
  [<indlog:item_pipe>, <minecraft:crafting_table>, <indlog:item_pipe>], 
  [<ore:plateSteel>, <immersiveengineering:metal_decoration0:5>, <ore:plateSteel>]])
  .setFluid(<liquid:redstone> * 500) 	
  .addOutput(<indlog:auto_craft>)
  .addTool(<ore:artisansHandsaw>, 60)    
  .addTool(<ore:artisansHammer>, 60)    
  .setMinimumTier(1)  
  .create();
  
recipes.remove(<indlog:auto_craft>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateAluminum>, <immersiveengineering:metal_decoration0:5>, <ore:plateAluminum>], 
  [<indlog:item_pipe>, <minecraft:crafting_table>, <indlog:item_pipe>], 
  [<ore:plateAluminum>, <immersiveengineering:metal_decoration0:5>, <ore:plateAluminum>]])
  .setFluid(<liquid:redstone> * 500) 	
  .addOutput(<indlog:auto_craft> * 2)
  .addTool(<ore:artisansHandsaw>, 60)    
  .addTool(<ore:artisansHammer>, 60)    
  .setMinimumTier(1)  
  .create();
  
recipes.remove(<indlog:auto_craft>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateTungstensteel>, <immersiveengineering:metal_decoration0:5>, <ore:plateTungstensteel>], 
  [<indlog:item_pipe>, <minecraft:crafting_table>, <indlog:item_pipe>], 
  [<ore:plateTungstensteel>, <immersiveengineering:metal_decoration0:5>, <ore:plateTungstensteel>]])
  .setFluid(<liquid:redstone> * 500) 	
  .addOutput(<indlog:auto_craft> * 4)
  .addTool(<ore:artisansHandsaw>, 60)    
  .addTool(<ore:artisansHammer>, 60)    
  .setMinimumTier(1)  
  .create();
  
  
// Warpipee

recipes.remove(<indlog:warp_pipe>);
RecipeBuilder.get("engineer")
  .setShaped( [[<indlog:fluid_pipe>, <indlog:fluid_pipe>, <indlog:fluid_pipe>], 
  [null, <ore:dustLapis>, null],
  [<indlog:item_pipe>, <indlog:item_pipe>, <indlog:item_pipe>]])
  .setFluid(<liquid:ender> * 500) 	
  .addOutput(<indlog:warp_pipe> * 4)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  

RecipeBuilder.get("engineer")
  .setShaped( [[<indlog:fluid_pipe>, <indlog:fluid_pipe>, <indlog:fluid_pipe>], 
  [null, <ore:dustDiamond>, null],
  [<indlog:item_pipe>, <indlog:item_pipe>, <indlog:item_pipe>]])
  .setFluid(<liquid:ender> * 500) 	
  .addOutput(<indlog:warp_pipe> * 8)
  .addTool(<ore:artisansHammer>, 50)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( [[<indlog:fluid_pipe>, <indlog:fluid_pipe>, <indlog:fluid_pipe>], 
  [null, <ore:dustTitanium>, null],
  [<indlog:item_pipe>, <indlog:item_pipe>, <indlog:item_pipe>]])
  .setFluid(<liquid:ender> * 500) 	
  .addOutput(<indlog:warp_pipe> * 12)
  .addTool(<ore:artisansHammer>, 75)    
  .setMinimumTier(1)  
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( [[<indlog:fluid_pipe>, <indlog:fluid_pipe>, <indlog:fluid_pipe>], 
  [null, <ore:dustTungsten>, null],
  [<indlog:item_pipe>, <indlog:item_pipe>, <indlog:item_pipe>]])
  .setFluid(<liquid:ender> * 500) 	
  .addOutput(<indlog:warp_pipe> * 16)
  .addTool(<ore:artisansHammer>, 100)    
  .setMinimumTier(1)  
  .create();
  
  
// For now, no tank, I should adjust the level 
recipes.remove(<indlog:tank>);
recipes.remove(<indlog:tank:*>);

// We use a similar logic for tank as pipe 
// But we use Rod Tier
RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickWood>,<indlog:fluid_pipe>, <ore:stickWood>], 
  [<ore:paneGlass>, null,<ore:paneGlass>], 
  [<ore:stickWood>,<indlog:fluid_pipe>, <ore:stickWood>]])
  .setFluid(<liquid:glass> * 1000) 	
  .addOutput(<indlog:tank>)
  .addTool(<ore:artisansHammer>, 15)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickWood>,<indlog:fluid_pipe>, <ore:stickWood>], 
  [<ore:paneGlass>, null,<ore:paneGlass>], 
  [<ore:stickWood>,<indlog:fluid_pipe>, <ore:stickWood>]])
  .setFluid(<liquid:sap> * 1000) 	
  .addOutput(<indlog:tank>)
  .addTool(<ore:artisansHammer>, 15)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickWood>,<indlog:fluid_pipe>, <ore:stickWood>], 
  [<ore:paneGlass>, null,<ore:paneGlass>], 
  [<ore:stickWood>,<indlog:fluid_pipe>, <ore:stickWood>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:tank> * 2)
  .addTool(<ore:artisansHammer>, 15)    
  .create();

RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickIron>,<indlog:fluid_pipe>, <ore:stickIron>], 
  [<ore:paneGlass>, <indlog:tank>,<ore:paneGlass>], 
  [<ore:stickIron>,<indlog:fluid_pipe>, <ore:stickIron>]])
  .setFluid(<liquid:glass> * 1000) 	
  .addOutput(<indlog:tank:1>)
  .addTool(<ore:artisansHammer>, 20)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickIron>,<indlog:fluid_pipe>, <ore:stickIron>], 
  [<ore:paneGlass>, <indlog:tank>,<ore:paneGlass>], 
  [<ore:stickIron>,<indlog:fluid_pipe>, <ore:stickIron>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<indlog:tank:1> * 2)
  .addTool(<ore:artisansHammer>, 20)    
  .create();
  
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickSteel>,<indlog:fluid_pipe>, <ore:stickSteel>], 
  [<ore:paneGlass>, <indlog:tank:1>,<ore:paneGlass>], 
  [<ore:stickSteel>,<indlog:fluid_pipe>, <ore:stickSteel>]])
  .setFluid(<liquid:glass> * 1000) 		
  .addOutput(<indlog:tank:2>)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickSteel>,<indlog:fluid_pipe>, <ore:stickSteel>], 
  [<ore:paneGlass>, <indlog:tank:1>,<ore:paneGlass>], 
  [<ore:stickSteel>,<indlog:fluid_pipe>, <ore:stickSteel>]])
  .setFluid(<liquid:plastic> * 500) 		
  .addOutput(<indlog:tank:2>)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
  
RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickTitanium>,<indlog:fluid_pipe>, <ore:stickTitanium>], 
  [<ore:paneGlass>, <indlog:tank:2>,<ore:paneGlass>], 
  [<ore:stickTitanium>,<indlog:fluid_pipe>, <ore:stickTitanium>]])
  .setFluid(<liquid:plastic> * 1000) 	
  .addOutput(<indlog:tank:3>)
  .addTool(<ore:artisansHammer>, 50)   
  .setMinimumTier(1)  
  .create();

// force lathe
recipes.remove(<jaopca:item_sticktungsten>);
mods.immersiveengineering.MetalPress.removeRecipe(<jaopca:item_sticktungsten>);

RecipeBuilder.get("engineer")
  .setShaped([[<ore:stickTungsten>,<indlog:fluid_pipe>, <ore:stickTungsten>], 
  [<ore:paneGlass>, <indlog:tank:3>,<ore:paneGlass>], 
  [<ore:stickTungsten>,<indlog:fluid_pipe>, <ore:stickTungsten>]])
  .setFluid(<liquid:plastic> * 1000) 	
  .addOutput(<indlog:tank:4>)
  .addTool(<ore:artisansHammer>, 50)   
  .setMinimumTier(1)  
  .create();


// Tier 5 and 5 are uncraftable for now
  
  
 
// Same for buffer
recipes.remove(<indlog:buffer>);
recipes.remove(<indlog:buffer:*>);

// We use a similar logic from hopbox (See Buffer are an update version)
// storage_box = TIER
// GEAR = Variation
// Upgrade need lesser version (to do in place upgrade)
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plankWood>,<indlog:item_pipe>, <ore:plankWood>],
  [<ore:gearIron>, <ezstorage:storage_box>, <ore:gearIron>], 
  [<ore:plankWood>, <indlog:item_pipe>, <ore:plankWood>]])
  .addOutput(<indlog:buffer>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plankWood>,<indlog:item_pipe>, <ore:plankWood>],
  [<ore:gearSteel>, <indlog:buffer>, <ore:gearSteel>], 
  [<ore:plankWood>, <indlog:item_pipe>, <ore:plankWood>]])
  .addOutput(<indlog:buffer:1>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plankWood>,<indlog:item_pipe>, <ore:plankWood>],
  [<ore:gearTitanium>, <indlog:buffer:1>, <ore:gearTitanium>], 
  [<ore:plankWood>, <indlog:item_pipe>, <ore:plankWood>]])
  .addOutput(<indlog:buffer:2>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plankWood>,<indlog:item_pipe>, <ore:plankWood>],
  [<ore:gearTungsten>, <indlog:buffer:2>, <ore:gearTungsten>], 
  [<ore:plankWood>, <indlog:item_pipe>, <ore:plankWood>]])
  .addOutput(<indlog:buffer:3>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

// TIER 2

RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateIron>,<indlog:item_pipe>, <ore:plateIron>],
  [<ore:gearIron>, <ezstorage:condensed_storage_box>, <ore:gearIron>], 
  [<ore:plateIron>, <indlog:item_pipe>, <ore:plateIron>]])
  .addOutput(<indlog:buffer:4>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateIron>,<indlog:item_pipe>, <ore:plateIron>],
  [<ore:gearSteel>, <indlog:buffer:4>, <ore:gearSteel>], 
  [<ore:plateIron>, <indlog:item_pipe>, <ore:plateIron>]])
  .addOutput(<indlog:buffer:5>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateIron>,<indlog:item_pipe>, <ore:plateIron>],
  [<ore:gearTitanium>, <indlog:buffer:5>, <ore:gearTitanium>], 
  [<ore:plateIron>, <indlog:item_pipe>, <ore:plateIron>]])
  .addOutput(<indlog:buffer:6>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateIron>,<indlog:item_pipe>, <ore:plateIron>],
  [<ore:gearTungsten>, <indlog:buffer:6>, <ore:gearTungsten>], 
  [<ore:plateIron>, <indlog:item_pipe>, <ore:plateIron>]])
  .addOutput(<indlog:buffer:7>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

// TIER 3
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateGold>,<indlog:item_pipe>, <ore:plateGold>],
  [<ore:gearIron>, <ezstorage:super_storage_box>, <ore:gearIron>], 
  [<ore:plateGold>, <indlog:item_pipe>, <ore:plateGold>]])
  .addOutput(<indlog:buffer:8>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateGold>,<indlog:item_pipe>, <ore:plateGold>],
  [<ore:gearSteel>, <indlog:buffer:8>, <ore:gearSteel>], 
  [<ore:plateGold>, <indlog:item_pipe>, <ore:plateGold>]])
  .addOutput(<indlog:buffer:9>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateGold>,<indlog:item_pipe>, <ore:plateGold>],
  [<ore:gearTitanium>, <indlog:buffer:9>, <ore:gearTitanium>], 
  [<ore:plateGold>, <indlog:item_pipe>, <ore:plateGold>]])
  .addOutput(<indlog:buffer:10>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateGold>,<indlog:item_pipe>, <ore:plateGold>],
  [<ore:gearTungsten>, <indlog:buffer:10>, <ore:gearTungsten>], 
  [<ore:plateGold>, <indlog:item_pipe>, <ore:plateGold>]])
  .addOutput(<indlog:buffer:11>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

// TIER 4
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateDiamond>,<indlog:item_pipe>, <ore:plateDiamond>],
  [<ore:gearIron>, <ezstorage:ultra_storage_box>, <ore:gearIron>], 
  [<ore:plateDiamond>, <indlog:item_pipe>, <ore:plateDiamond>]])
  .addOutput(<indlog:buffer:12>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateDiamond>,<indlog:item_pipe>, <ore:plateDiamond>],
  [<ore:gearSteel>, <indlog:buffer:12>, <ore:gearSteel>], 
  [<ore:plateDiamond>, <indlog:item_pipe>, <ore:plateDiamond>]])
  .addOutput(<indlog:buffer:13>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateDiamond>,<indlog:item_pipe>, <ore:plateDiamond>],
  [<ore:gearTitanium>, <indlog:buffer:13>, <ore:gearTitanium>], 
  [<ore:plateDiamond>, <indlog:item_pipe>, <ore:plateDiamond>]])
  .addOutput(<indlog:buffer:14>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateDiamond>,<indlog:item_pipe>, <ore:plateDiamond>],
  [<ore:gearTungsten>, <indlog:buffer:14>, <ore:gearTungsten>], 
  [<ore:plateDiamond>, <indlog:item_pipe>, <ore:plateDiamond>]])
  .addOutput(<indlog:buffer:15>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();


// Trash use liquid lava
recipes.remove( <indlog:trash>);
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<indlog:item_pipe>, <indlog:tank>, <indlog:fluid_pipe>],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]])
  .addOutput(<indlog:trash>)
  .setFluid(<liquid:lava> * 1000) 	
  .addTool(<ore:artisansHammer>, 30)    
  .setMinimumTier(1)  
  .create();
  

recipes.remove(<indlog:fluid_intake>);
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateBrass>,<immersiveengineering:material:9>, <ore:plateBrass>],
  [<indlog:fluid_pipe>, <indlog:tank>, <indlog:fluid_pipe>],
  [<ore:plateBrass>, <buildcraftfactory:pump>, <ore:plateBrass>]])
  .addOutput(<indlog:fluid_intake>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();
recipes.remove(<indlog:fluid_outlet>);

  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateIron>, <immersiveengineering:material:9>, <ore:plateIron>],
  [<indlog:fluid_pipe>, <immersiveengineering:metal_device0:6>, <indlog:fluid_pipe>],
  [<ore:plateIron>, <fluidfunnel:funnel>, <ore:plateIron>]])
  .addOutput(<indlog:fluid_outlet>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

recipes.remove(<indlog:drop_interface>);
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateWood>, <engineersdecor:factory_hopper>, <ore:plateWood>],
  [<indlog:item_pipe>, <immersiveengineering:material:9>, <indlog:item_pipe>],
  [<ore:plateWood>, <engineersdecor:factory_dropper>, <ore:plateWood>]])
  .addOutput(<indlog:drop_interface>)
  .addTool(<ore:artisansHammer>, 45)    
  .setMinimumTier(1)  
  .create();
  

// the recipe is Bronze Age  as we want to use it to automatise horse/cart transportation
// So Hopper, Funnel, Piston
recipes.remove(<indlog:entity_interface>);
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateTin>, <tconstruct:wooden_hopper>, <ore:plateTin>],
  [<indlog:item_pipe>,<ore:craftingPiston>, <indlog:fluid_pipe>],
  [<ore:plateTin>,<fluidfunnel:funnel>, <ore:plateTin>]])
  .addOutput(<indlog:entity_interface>)
  .addTool(<ore:artisansHammer>, 45)    
  .create();


recipes.remove(<indlog:block_placer>);
  RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:plateTin>, <rs_ctr:block_wire>, <ore:plateTin>],
  [<indlog:item_pipe>,<engineersdecor:factory_placer>, <indlog:item_pipe>],
  [<ore:plateTin>,<rs_ctr:block_wire>, <ore:plateTin>]])
  .addOutput(<indlog:block_placer>)
  .addTool(<ore:artisansHammer>, 45)    
  .create();
  
  
  
