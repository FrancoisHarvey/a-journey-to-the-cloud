// Hotornot.zs

import mods.artisanworktables.builder.RecipeBuilder;


// Use tailor and rubber
recipes.remove(<hotornot:mitts>);
// Need Rubber	
furnace.remove(<ore:itemRubber>);

RecipeBuilder.get("tailor")
  .setShaped( [[<ore:string>, <ore:string>, <techreborn:part:32>], [<ore:string>, <techreborn:part:32>, null], [<techreborn:part:32>, null, null]] )
  .addOutput(<hotornot:mitts>)
  .addTool(<ore:artisansNeedle>, 10)    
  .create();
  
  
  
  
  