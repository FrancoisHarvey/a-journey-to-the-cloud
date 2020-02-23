//  Water Strainer / Sifter

import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<waterstrainer:net>);  
recipes.remove(<waterstrainer:net:1>);
  
RecipeBuilder.get("tailor")
  .setShaped( [[<ore:string>, <ore:string>, <ore:string>]])
  .addOutput(<waterstrainer:net>)
  .addTool(<ore:artisansNeedle>, 10)    
  .create();

RecipeBuilder.get("tailor")
  .setShaped( [[<waterstrainer:net>, <waterstrainer:net>, <waterstrainer:net>]])
  .addOutput(<waterstrainer:net:1>)
  .addTool(<ore:artisansNeedle>, 10)    
  .create();
  
  
 recipes.remove(<zephsift:sieve>);
 RecipeBuilder.get("carpenter")
  .setShaped([[<ore:stickTreatedWood>, <waterstrainer:net:1>, <ore:stickTreatedWood>], [<ore:stickTreatedWood>,<waterstrainer:net:1>, <ore:stickTreatedWood>], [<ore:logWood>, null, <ore:logWood>]] )
  .addOutput( <zephsift:sieve> )
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();   
    
// Water stainer
  
recipes.remove(<waterstrainer:strainer_base>);

RecipeBuilder.get("carpenter")
  .setShaped([[<ore:stickTreatedWood>, null, <ore:stickTreatedWood>], [<ore:plankWood>, <tconstruct:wooden_hopper>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]] )
  .addOutput( <waterstrainer:strainer_base>)
  .setFluid(<liquid:creosote> * 500) 	
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();
  
RecipeBuilder.get("carpenter")
  .setShaped([[<ore:stickTreatedWood>, null, <ore:stickTreatedWood>], [<sem:brennbarholz>, <tconstruct:wooden_hopper>, <sem:brennbarholz>], [<sem:brennbarholz>, <ore:chestWood>, <sem:brennbarholz>]] )
  .addOutput( <waterstrainer:strainer_base>)
  .setFluid(<liquid:creosote> * 500) 	
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();  

// Normalise strainer_survivalist_solid to use Brass Iron Steel
recipes.remove(<waterstrainer:strainer_survivalist_solid>);
recipes.addShaped("TTM_strainer_survivalist_solid", <waterstrainer:strainer_survivalist_solid>, [[<ore:ingotIron>, <ore:ingotBrass>, <ore:ingotIron>], [<ore:ingotBrass>, <waterstrainer:net>,<ore:ingotBrass>], [<ore:ingotIron>, <ore:ingotBrass>, <ore:ingotIron>]]);
 
recipes.remove(<waterstrainer:strainer_survivalist_reinforced>); 
recipes.addShaped("TTM_strainer_survivalist_reinforced", <waterstrainer:strainer_survivalist_reinforced>, [[<ore:ingotSteel>, <ore:ingotBrass>, <ore:ingotSteel>], [<ore:ingotBrass>, <waterstrainer:net>,<ore:ingotBrass>], [<ore:ingotSteel>, <ore:ingotBrass>, <ore:ingotSteel>]]);
  
recipes.remove(<waterstrainer:strainer_survivalist_dense_solid>);
recipes.addShaped("TTM_strainer_survivalist_dense_solid", <waterstrainer:strainer_survivalist_dense_solid>, [[<ore:ingotIron>, <ore:ingotBrass>, <ore:ingotIron>], [<ore:ingotBrass>, <waterstrainer:net:1>,<ore:ingotBrass>], [<ore:ingotIron>, <ore:ingotBrass>, <ore:ingotIron>]]);

recipes.remove(<waterstrainer:strainer_survivalist_dense_reinforced>);
recipes.addShaped("TTM_strainer_survivalist_dense_reinforced", <waterstrainer:strainer_survivalist_dense_reinforced>,[[<ore:ingotSteel>, <ore:ingotBrass>, <ore:ingotSteel>], [<ore:ingotBrass>, <waterstrainer:net:1>,<ore:ingotBrass>], [<ore:ingotSteel>, <ore:ingotBrass>, <ore:ingotSteel>]]);