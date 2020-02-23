// Davincis Vessel
// Adapted for To The Moon
// 
// Bronze AGE			-> STEAM -> Limited production of Ballon 1X
// Iron AGE				-> STEAM + RUBBER  --> More Ballon       4X
// Steel Age and +		-> 


// Most Need engineer OR Tailor work
// And Creosote
import mods.artisanworktables.builder.RecipeBuilder;

// Engineer (2 -> 1 Ratio ) 
recipes.remove(<davincisvessels:marker>);

RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plankWood>, <ore:stickWood>, <ore:plankWood>], 
  [<ore:stickWood>, <ore:gearBronze>, <ore:stickWood>],
  [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>]])
  .addOutput(<davincisvessels:marker>)
  .addTool(<ore:artisansHammer>, 30)  
  .setFluid(<liquid:creosote> * 250) 	
  .create(); 
	

recipes.remove(<davincisvessels:balloon>);
//recipes.remove(<davincisvessels:balloon:*>);

RecipeBuilder.get("tailor")
  .setShaped(  [[<immersiveengineering:cloth_device>, <immersiveengineering:cloth_device>, <immersiveengineering:cloth_device>], 
  [<immersiveengineering:cloth_device>, null, <immersiveengineering:cloth_device>],
  [<immersiveengineering:cloth_device>, <immersiveengineering:cloth_device>, <immersiveengineering:cloth_device>]])
  .addOutput(<davincisvessels:balloon>)
  .addTool(<ore:artisansRazor>, 30)  
  .setFluid(<liquid:plantoil> * 250) 	
  .create(); 
  
RecipeBuilder.get("tailor")
  .setShaped(  [[<ore:itemRubber>, <immersiveengineering:cloth_device>, <ore:itemRubber>], 
  [<immersiveengineering:cloth_device>, null, <immersiveengineering:cloth_device>],
  [<ore:itemRubber>, <immersiveengineering:cloth_device>, <ore:itemRubber>]])
  .addOutput(<davincisvessels:balloon> * 4)
  .addTool(<ore:artisansRazor>, 30)  
  .setFluid(<liquid:steam> * 250) 	
  .create(); 
  
 RecipeBuilder.get("tailor")
  .setShaped(  [[<ore:itemRubber>, <immersiveengineering:cloth_device>, <ore:itemRubber>], 
  [<immersiveengineering:cloth_device>, null, <immersiveengineering:cloth_device>],
  [<ore:itemRubber>, <immersiveengineering:cloth_device>, <ore:itemRubber>]])
  .addOutput(<davincisvessels:balloon> * 4)
  .addTool(<ore:artisansRazor>, 45)  
  .setFluid(<liquid:helium> * 250) 	
  .create(); 
 
RecipeBuilder.get("tailor")
  .setShaped(  [[<ore:itemRubber>, <immersiveengineering:cloth_device>, <ore:itemRubber>], 
  [<immersiveengineering:cloth_device>, null, <immersiveengineering:cloth_device>],
  [<ore:itemRubber>, <immersiveengineering:cloth_device>, <ore:itemRubber>]])
  .addOutput(<davincisvessels:balloon> * 8)
  .addTool(<ore:artisansRazor>, 60)  
  .setFluid(<liquid:hydrogen> * 250) 	
  .create(); 
 
recipes.remove(<davincisvessels:floater>);
RecipeBuilder.get("engineer")
  .setShaped(  [[<davincisvessels:balloon>, <davincisvessels:balloon>, <davincisvessels:balloon>], 
  [<davincisvessels:balloon>, <ore:scaffoldingTreatedWood>, <davincisvessels:balloon>],
  [<davincisvessels:balloon>, <davincisvessels:balloon>, <davincisvessels:balloon>]])
  .addOutput(<davincisvessels:floater>)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 
  
RecipeBuilder.get("engineer")
  .setShaped(  [[<davincisvessels:balloon>, <davincisvessels:balloon>, <davincisvessels:balloon>], 
  [<davincisvessels:balloon>, <ore:scaffoldingSteel>, <davincisvessels:balloon>],
  [<davincisvessels:balloon>, <davincisvessels:balloon>, <davincisvessels:balloon>]])
  .addOutput(<davincisvessels:floater> * 4)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 
  
RecipeBuilder.get("engineer")
  .setShaped(  [[<davincisvessels:balloon>, <davincisvessels:balloon>, <davincisvessels:balloon>], 
  [<davincisvessels:balloon>,  <ore:scaffoldingAluminum>, <davincisvessels:balloon>],
  [<davincisvessels:balloon>, <davincisvessels:balloon>, <davincisvessels:balloon>]])
  .addOutput(<davincisvessels:floater> * 8)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 
  
recipes.remove(<davincisvessels:securedbed>);
recipes.addShapeless("TMM_securedbed", <davincisvessels:securedbed>, [<minecraft:bed:*>, <ore:ingotBronze> | <ore:ingotIron> ]);


// Use SEM Engine for Davincis.
recipes.remove(<davincisvessels:engine>);
RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plateBronze>, null, <ore:plateBronze>], 
  [<ore:plateBronze>, <sem:steamengine>, <ore:plateBronze>],
  [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]])
  .addOutput(<davincisvessels:engine>)
  .addTool(<ore:artisansHammer>, 30)  
  .create(); 
  
recipes.remove( <davincisvessels:gauge>);
recipes.remove(<davincisvessels:gauge:1>);

recipes.addShaped("TTM_davincis_gauge", <davincisvessels:gauge>, [[<minecraft:glass_pane:*>, <sem:reglerdampf>, <minecraft:glass_pane:*>], [<ore:ingotBronze>, <rs_ctr:wire>, <ore:ingotGold>], [null, <ore:ingotGold>, null]]);


recipes.addShaped("TTM_davincis_gauge_ext", <davincisvessels:gauge:1>, [[<minecraft:glass_pane:*>, <sem:reglerrotation>, <minecraft:glass_pane:*>], [<ore:ingotGold>, <davincisvessels:gauge:*>, <ore:ingotBronze>], [<minecraft:glass_pane:*>, <ore:ingotBronze>, <minecraft:glass_pane:*>]]);

// Keep Only the dye
recipes.removeShapeless(<davincisvessels:balloon:*>, [<minecraft:wool:*>, <ore:string>]);



// @TODO : Buffer & cie