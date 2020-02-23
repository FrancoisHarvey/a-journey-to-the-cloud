// Stone Age

import mods.artisanworktables.builder.RecipeBuilder;



// Clay barrel

recipes.remove(<ceramics:clay_barrel_unfired>);

RecipeBuilder.get("potter")
  .setShaped([[<minecraft:clay_ball>, null, <minecraft:clay_ball>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], [null, <minecraft:clay_ball>, null]])
  .setFluid(<liquid:water> * 250)
  .addOutput(<ceramics:clay_barrel_unfired>)
  .addTool(<ore:artisansTrowel>, 10)
  .create();


recipes.remove(<ceramics:clay_barrel_unfired:1>);


RecipeBuilder.get("potter")
  .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>]])
  .setFluid(<liquid:water> * 250) 
  .addOutput(<ceramics:clay_barrel_unfired:1>)
  .addTool(<ore:artisansTrowel>, 10)  
  .create();
  
  

// Ceramic Barrel

recipes.remove(<ceramics:clay_barrel_unfired:2>);

RecipeBuilder.get("potter")
  .setShaped([[<ore:clayPorcelain>, null, <ore:clayPorcelain>], [<ore:clayPorcelain>, <ore:clayPorcelain>, <ore:clayPorcelain>], [null, <ore:clayPorcelain>, null]])
  .setFluid(<liquid:water> * 250)  
  .addOutput(<ceramics:clay_barrel_unfired:2>)
  .addTool(<ore:artisansTrowel>, 10)
  .create();
  

RecipeBuilder.get("potter")
  .setShaped([
    [<ore:clayPorcelain>, null, <ore:clayPorcelain>],
    [<ore:clayPorcelain>, null, <ore:clayPorcelain>],
    [<ore:clayPorcelain>, null, <ore:clayPorcelain>]])
  .setFluid(<liquid:water> * 250) 
  .addOutput(<ceramics:clay_barrel_unfired:1>)
  .addTool(<ore:artisansTrowel>, 10)  
  .create();
  
  

recipes.remove(<ceramics:faucet>);
  
RecipeBuilder.get("potter")
  .setShaped([[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>], [null, <ceramics:unfired_clay:5>, null]])
  .addOutput(<ceramics:faucet:1>)
  .addTool(<ore:artisansTrowel>, 10)  
  .create();
    
recipes.remove(<ceramics:channel:1>);

RecipeBuilder.get("potter")
  .setShaped([[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]])
  .addOutput(<ceramics:channel:1>)
  .addTool(<ore:artisansTrowel>, 10)  
  .create();	
  
  
//////////////////
// MELTER
//////////////////

recipes.remove(<tcomplement:porcelain_melter:8>);

RecipeBuilder.get("mason")
  .setShaped([
    [null, <ceramics:unfired_clay:5>, null],
    [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>, <minecraft:furnace>, <ceramics:unfired_clay:5>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<tcomplement:porcelain_melter:8>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
 
recipes.remove(<tcomplement:porcelain_melter>);

RecipeBuilder.get("mason")
  .setShaped([[null, <ceramics:unfired_clay:5>, null], [<ceramics:unfired_clay:5>, <tcomplement:porcelain_tank> | <tcomplement:porcelain_tank:1> | <tcomplement:porcelain_tank:2>, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<tcomplement:porcelain_melter>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();

recipes.remove( <tcomplement:porcelain_tank>);
RecipeBuilder.get("mason")
  .setShaped([[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ore:blockGlass>, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<tcomplement:porcelain_tank>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
  
 
recipes.remove(<tconstruct:seared_tank>);



RecipeBuilder.get("mason")
  .setShaped([[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:blockGlass>,<ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]])
  .setFluid(<liquid:stone> * 144) 	
  .addOutput(<tconstruct:seared_tank>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
  
RecipeBuilder.get("mason")
  .setShaped([[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <tcomplement:porcelain_tank>,<ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]])
  .setFluid(<liquid:stone> * 144) 	
  .addOutput(<tconstruct:seared_tank> * 2)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
  
  
recipes.remove(<tcomplement:porcelain_tank:1>);
RecipeBuilder.get("mason")
  .setShaped([[<ceramics:unfired_clay:5>, <ore:blockGlass>, <ceramics:unfired_clay:5>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ceramics:unfired_clay:5>, <ore:blockGlass>, <ceramics:unfired_clay:5>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<tcomplement:porcelain_tank:1>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
  
  
recipes.remove(<tconstruct:seared_tank:1>);
RecipeBuilder.get("mason")
  .setShaped([[<ore:ingotBrickSeared>, <ore:blockGlass>, <ore:ingotBrickSeared>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotBrickSeared>, <ore:blockGlass>, <ore:ingotBrickSeared>]])
  .setFluid(<liquid:stone> * 144) 	
  .addOutput(<tconstruct:seared_tank:1>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
  
RecipeBuilder.get("mason")
  .setShaped([[<ore:ingotBrickSeared>, <ore:blockGlass>, <ore:ingotBrickSeared>], [<ore:blockGlass>, <tcomplement:porcelain_tank:1>, <ore:blockGlass>], [<ore:ingotBrickSeared>, <ore:blockGlass>, <ore:ingotBrickSeared>]])
  .setFluid(<liquid:stone> * 144) 	
  .addOutput(<tconstruct:seared_tank:1> * 2)
  .addTool(<ore:artisansTrowel>, 15)    
  .create();

recipes.remove(<tcomplement:porcelain_tank:2>);
RecipeBuilder.get("mason")
  .setShaped([[<ceramics:unfired_clay:5>, <ore:blockGlass>, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ore:blockGlass>, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ore:blockGlass>, <ceramics:unfired_clay:5>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<tcomplement:porcelain_tank:2>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();

recipes.remove(<tconstruct:seared_tank:2>);

RecipeBuilder.get("mason")
  .setShaped([[<ore:ingotBrickSeared>, <ore:blockGlass>,<ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:blockGlass>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:blockGlass>, <ore:ingotBrickSeared>]])
  .setFluid(<liquid:stone> * 144) 	
  .addOutput(<tconstruct:seared_tank>)
  .addTool(<ore:artisansTrowel>, 15)    
  .create();

RecipeBuilder.get("mason")
  .setShaped([[<ore:ingotBrickSeared>, <ore:blockGlass>,<ore:ingotBrickSeared>], [<ore:ingotBrickSeared>,<tcomplement:porcelain_tank:2>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:blockGlass>, <ore:ingotBrickSeared>]])
  .setFluid(<liquid:stone> * 144) 	
  .addOutput(<tconstruct:seared_tank:2> * 2)
  .addTool(<ore:artisansTrowel>, 15)    
  .create();



recipes.remove(<tcomplement:porcelain_alloy_tank>);

RecipeBuilder.get("mason")
  .setShaped([[<ceramics:faucet>, <tcomplement:porcelain_tank> | <tcomplement:porcelain_tank:1> | <tcomplement:porcelain_tank:2>, <ceramics:faucet>]])
  .setFluid(<liquid:water> * 250) 	
  .addOutput(<tcomplement:porcelain_alloy_tank>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();


// Utilisation de la resine (sap) comme torche
recipes.addShaped("TMM_torchResin", <minecraft:torch> * 3, [[<ore:materialResin> ], [<ore:stickWood>]]);

// Use Lignite to do 1 torch
recipes.addShaped("TMM_torchLignite", <minecraft:torch> * 1, [[<ore:lignite_coal> ], [<ore:stickWood>]]);



recipes.remove(<minecraft:lead>);

RecipeBuilder.get("farmer")
  .setShaped( [[<ore:string>, <ore:string>, null], [<ore:string>, <ore:slimeball>, null], [null, null, <ore:string>]])
  .addOutput(<minecraft:lead> * 2)
  .addTool(<ore:artisansNeedle>, 10)    
  .create();

RecipeBuilder.get("farmer")
  .setShaped( [[<ore:string>, <ore:string>, null], [<ore:string>, <ore:materialResin>, null], [null, null, <ore:string>]])
  .addOutput(<minecraft:lead>)
  .addTool(<ore:artisansNeedle>, 10)    
  .create();


// Plus de hay block manuelle
recipes.remove(<minecraft:hay_block>);
RecipeBuilder.get("farmer")
  .setShaped( [[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>], [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>], [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]])
  .addOutput(<minecraft:hay_block>)
  .addTool(<ore:artisansNeedle>, 25)    
  .create();




// Entity Spring
recipes.remove(<entityspring:spring>);
RecipeBuilder.get("farmer")
  .setShaped( [[<minecraft:lead>, null, null], [null, <ore:ingotCopper>,null], [null, null, <minecraft:lead>]])
  .addOutput(<entityspring:spring>)
  .addTool(<ore:artisansNeedle>, 25)    
  .create();
 
  // Tank
recipes.remove(<jaff:tank>);
recipes.addShaped("TMM_tank", <jaff:tank> * 16, [[<minecraft:glass_pane>, null, <minecraft:glass_pane>], [<minecraft:glass_pane>, <minecraft:water_bucket> | <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <minecraft:glass_pane>], [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);

