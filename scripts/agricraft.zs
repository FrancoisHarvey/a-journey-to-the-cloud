// Agricraft
// Move to brass / bronze AGE most of the thing

import mods.artisanworktables.builder.RecipeBuilder;



// Sprinker need Brass
recipes.remove(<agricraft:sprinkler>);
RecipeBuilder.get("farmer")
  .setShaped([[null, <ore:slabWood>, null],
  [null, <ore:ingotBrass>, null],
  [null, null,null]])
  .addOutput(<agricraft:sprinkler>)
  .addTool(<ore:artisansHammer>, 25)    
  .create();

// No change to Seed analyzer but must be created on the farmer table and use treated wood
recipes.remove(<agricraft:seed_analyzer>);
RecipeBuilder.get("farmer")
  .setShaped( [[<ore:stickTreatedWood>, <ore:paneGlass>, <ore:stickTreatedWood>], 
  [null, <minecraft:stone_slab>, <ore:stickTreatedWood>], 
  [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]])
  .addOutput(<agricraft:seed_analyzer> )
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  

// Bronze the clipper
recipes.remove(<agricraft:clipper>);
RecipeBuilder.get("farmer")
  .setShaped( [[null, <ore:ingotBronze> | <ore:ingotIron> , null], 
  [<ore:stickTreatedWood>, <minecraft:shears> | <tinkerscompendium:shears> | <ore:shears>, null], 
  [null, <ore:stickTreatedWood>, null]])
  .addOutput(<agricraft:clipper> )
  .addTool(<ore:artisansHammer>, 25)    
  .create();

// Bronze the trowel
recipes.remove(<agricraft:trowel>);
RecipeBuilder.get("farmer")
  .setShaped( [[null, null, <ore:stickTreatedWood>],
  [<ore:ingotBronze> | <ore:ingotIron> , <ore:ingotBronze> | <ore:ingotIron>, null], 
[null, null, null]])
  .addOutput(<agricraft:trowel> )
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  


//  The Rake (Wood)
recipes.remove(<agricraft:rake>);
RecipeBuilder.get("farmer")
  .setShaped( [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
 [null, <ore:stickTreatedWood>, null], 
 [null, <ore:stickTreatedWood>, null]])
  .addOutput(<agricraft:rake>)
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
//  The Rake (Iron)
recipes.remove( <agricraft:rake:1>);
RecipeBuilder.get("farmer")
  .setShaped( [[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
 [null, <ore:stickTreatedWood>, null], 
 [null, <ore:stickTreatedWood>, null]])
  .addOutput( <agricraft:rake:1>)
  .addTool(<ore:artisansHammer>, 45)    
  .create();
  
 
  //  The magnifying_glass (Wood)
recipes.remove( <agricraft:magnifying_glass>);
RecipeBuilder.get("farmer")
  .setShaped( [[<ore:stickTreatedWood>, <ore:paneGlass>, <ore:stickTreatedWood>],
 [null, <ore:stickTreatedWood>, null], 
 [null, <ore:stickTreatedWood>, null]])
  .addOutput( <agricraft:magnifying_glass>)
  .addTool(<ore:artisansHammer>, 45)    
  .create();
  
// Iron is needed for the Valve

// computer assisted move with computer (Refined Iron)
recipes.remove( <agricraft:peripheral>);

RecipeBuilder.get("basic")
  .setShaped( [[<ore:plateIron>, <ore:electronTube>, <ore:plateIron>], 
  [<ore:paneGlass>, <agricraft:seed_analyzer> , <ore:paneGlass>],
  [<ore:plateIron>, <techreborn:machine_casing>, <ore:plateIron>]])
  .addOutput( <agricraft:peripheral>)
  .create();
  
#Merge oredict
val nuggetIron = <ore:nuggetIron>;
val nuggetCopper = <ore:nuggetCopper>;
val nuggetTin = <ore:nuggetTin>;
val nuggetLead = <ore:nuggetLead>;
val nuggetSilver = <ore:nuggetSilver>;
val nuggetNickel = <ore:nuggetNickel>;
val nuggetPlatinum = <ore:nuggetPlatinum>;
val nuggetEmerald = <ore:nuggetEmerald>;
val nuggetDiamond = <ore:nuggetDiamond>;
val nuggetAluminum = <ore:nuggetAluminum>;
nuggetIron.add(<agricraft:agri_nugget:3>);
nuggetCopper.add(<agricraft:agri_nugget:4>);
nuggetTin.add(<agricraft:agri_nugget:5>);
nuggetLead.add(<agricraft:agri_nugget:6>);
nuggetSilver.add(<agricraft:agri_nugget:7>);
nuggetNickel.add(<agricraft:agri_nugget:9>);
nuggetPlatinum.add(<agricraft:agri_nugget:10>);
nuggetEmerald.add(<agricraft:agri_nugget>);
nuggetDiamond.add(<agricraft:agri_nugget:1>);
nuggetAluminum.add(<agricraft:agri_nugget:8>);

// Crop stick
RecipeBuilder.get("farmer")
  .setShaped( [[<ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>]] )
  .setFluid(<liquid:plantoil> * 32) 	
  .addOutput(<agricraft:crop_sticks> * 8)
  .addTool(<ore:artisansHandsaw>, 5)    
  .create();
  
RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>]] )
  .setFluid(<liquid:plantoil> * 32) 	
  .addOutput(<agricraft:crop_sticks> * 8)
  .addTool(<ore:artisansHandsaw>, 5)    
  .create();
  