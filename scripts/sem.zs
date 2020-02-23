// SEM

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;


// Food Ore Dict

var bread = <ore:bread>;
var foodBread = <ore:foodBread>;

bread.add(<sem:kartoffelbrot>);
foodBread.add(<sem:kartoffelbrot>);

// Remove Steel
recipes.remove(<sem:metallbloecke:6>);

// As the nail are mainly decorative we move iron to Bronze
<sem:iron_nail>.displayName = "Bronze nail";
mods.immersiveengineering.AlloySmelter.addRecipe(<sem:iron_nail> * 8 , <ore:ingotBronze>, <sem:sand_mold>, 1000);

mods.immersiveengineering.AlloySmelter.addRecipe(<sem:gold_nail> * 8 , <ore:ingotGold>, <sem:sand_mold>, 1000);
mods.immersiveengineering.AlloySmelter.addRecipe(<sem:grease_box_full>, <sem:paste>, <sem:grease_box>, 1000);
mods.immersiveengineering.AlloySmelter.addRecipe(<sem:grease_box_full>, <harvestcraft:sweetpotatoitem>, <sem:grease_box>, 1000);
mods.immersiveengineering.AlloySmelter.addRecipe(<sem:grease_box_full>, <sem:fat>, <sem:grease_box>, 1000);


// Water tank nomenclature isn't as we want, and use Iron for Tier2 and Bucket, not want we want
// All Tank need Engineer table with Liquid Water


// Tier 1 - Treated Wood

recipes.remove(<sem:holzdrucktank>);

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:ingotBronze>, <ore:blockGlass>, null], [<ore:plankTreatedWood>, <ceramics:clay_bucket>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]])
  .setFluid(<liquid:water> * 1000) 	
  .addOutput(<sem:holzdrucktank>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
<sem:holzdrucktank>.displayName = "Wooden Water Tank";
<sem:holzdrucktank>.addTooltip("For Steam Machine without water input");
<sem:holzdrucktankleer>.displayName = "Wooden Water Tank (Empty)";
<sem:holzdrucktankleer>.addTooltip("For Steam Machine without water input. Right click on water to fill or use IE bottling machine");

 // Tier 2 - Copper
 recipes.remove(<sem:eisendrucktank>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:ingotBronze>, <ore:blockGlass>, null], [<ore:plateCopper>, <sem:holzdrucktank>, <ore:plateCopper>], [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]])
  .setFluid(<liquid:water> * 1000) 	
  .addOutput(<sem:eisendrucktank>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

<sem:eisendrucktank>.displayName = "Copper Water Tank";
<sem:eisendrucktank>.addTooltip("For Steam Machine without water input");
<sem:eisendrucktankleer>.displayName = "Copper Water Tank (Empty)";
<sem:eisendrucktankleer>.addTooltip("For Steam Machine without water input. Right click on water to fill or use IE bottling machine");

// TIER 3 - BRASS


 recipes.remove(<sem:messingdrucktank>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:ingotBronze>, <ore:blockGlass>, null], [<ore:plateBrass>, <sem:eisendrucktank>, <ore:plateBrass>], [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]])
  .setFluid(<liquid:water> * 1000) 	
  .addOutput(<sem:messingdrucktank>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

<sem:messingdrucktank>.displayName = "Brass Water Tank";
<sem:messingdrucktank>.addTooltip("For Steam Machine without water input");
<sem:messingdrucktankleer>.displayName = "Brass Water Tank (Empty)";
<sem:messingdrucktankleer>.addTooltip("For Steam Machine without water input. Right click on water to fill or use IE bottling machine");

 recipes.remove(<sem:kupferdrucktank>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:ingotBronze>, <ore:blockGlass>, null], [<ore:plateBronze>, <ceramics:clay_bucket>, <ore:plateBronze>], [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]])
  .setFluid(<liquid:water> * 1000) 	
  .addOutput(<sem:kupferdrucktank>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

<sem:kupferdrucktank>.displayName = "Bronze Water Tank";
<sem:kupferdrucktank>.addTooltip("For Steam Machine without water input");
<sem:kupferdrucktankleer>.displayName = "Bronze Water Tank (Empty)";
<sem:kupferdrucktankleer>.addTooltip("For Steam Machine without water input. Right click on water to fill or use IE bottling machine");

recipes.remove(<sem:golddrucktank>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:ingotBronze>, <ore:blockGlass>, null], [<ore:plateGold>, <sem:kupferdrucktank>, <ore:plateGold>], [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]])
  .setFluid(<liquid:water> * 1000) 	
  .addOutput(<sem:golddrucktank>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

<sem:golddrucktank>.displayName = "Gold Water Tank";
<sem:golddrucktank>.addTooltip("For Steam Machine without water input");
<sem:golddrucktankleer>.displayName = "Gold Water Tank (Empty)";
<sem:golddrucktankleer>.addTooltip("For Steam Machine without water input. Right click on water to fill or use IE bottling machine");


// this furnace allow a non configurable iron + sufur -> Steel (Oredict... So we remove it) 
//It's only used for 7 items, I should be able to migrate the recipes elsewhere
recipes.remove( <sem:doppelofenaus>);

/*
RecipeBuilder.get("mason")
  .setShaped(  [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
  [<ore:cobblestone>, null, <ore:cobblestone>], 
  [<ore:cobblestone>, <minecraft:furnace>, <ore:cobblestone>]])
  .addOutput(<sem:doppelofenaus>)
  .addTool(<ore:artisansTrowel>, 10)    
  .create();
 
*/
// Steam Engine move to Bronze and modify the recipes
// As the motor look as buildcraft, take a  similar recipes
recipes.remove( <sem:steamengine>);
RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:plankTreatedWood>, <ore:plankTreatedWood>,  <ore:plankTreatedWood>],
  [null, <ore:blockGlass>, null], 
  [<ore:gearBronze>, <minecraft:piston>, <ore:gearBronze>]])
  .addOutput(<sem:steamengine>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
<sem:golddrucktank>.addTooltip("Use portable Water tank for Water");

// Key block, Use engineer et gearBronze
recipes.remove( <sem:keyboxoff>);
RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
  [<ore:cobblestone>, <ore:gearBronze>, <ore:cobblestone>],
  [<ore:cobblestone>, <minecraft:lever>, <ore:cobblestone>]])
  .addOutput(<sem:keyboxoff>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

// SawMill and Grinder go to bronze Age, no more horse :) 
recipes.remove( <sem:saw>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:cobblestone>,<ore:gearBronze>, <ore:cobblestone>],
 [<ore:cobblestone>, <tconstruct:axe_head>.withTag({Material: "bronze"}), <ore:cobblestone>],
 [<ore:cobblestone>, <sem:steamengine>, <ore:cobblestone>]])
  .addOutput(<sem:saw>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
// Grinder
recipes.remove( <sem:muehleaus>);
RecipeBuilder.get("engineer")
  .setShaped(  [[<ore:cobblestone>, <ore:gearBronze>, <ore:cobblestone>], 
[<ore:cobblestone>, <tconstruct:hammer_head>.withTag({Material: "bronze"}), <ore:cobblestone>], 
[<ore:cobblestone>, <sem:steamengine>, <ore:cobblestone>]])
  .addOutput(<sem:muehleaus>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
// We remove the cheese from SEM as we use the cheese from  
recipes.remove(<sem:kaese>);
  
// We Oredict and HC the cheese sandwitch from SEM 
recipes.remove(<sem:kaesebrot>);
recipes.addShapeless("TTM_CheeseSandw", <sem:kaesebrot>, [<ore:toolCuttingboard>,<ore:foodCheese>, <ore:bread>]);

// We oredict the Ham and move the recipe to alloy
var foodHam = <ore:foodHam>;
foodHam.add(<sem:schinken>);

mods.immersiveengineering.AlloySmelter.addRecipe(<sem:schinken> , <ore:listAllporkraw>, <ore:salt>, 1000);

// Remove double axe
recipes.remove(<sem:kriegsaxtstahl>);
recipes.remove(<sem:kriegsaxtholz>);
recipes.remove(<sem:kriegsaxtstein>);
recipes.remove(<sem:kriegsaxteisen>);
recipes.remove(<sem:kriegsaxtgold>);
recipes.remove(<sem:kriegsaxtdiamant>);
recipes.remove(<sem:teufelseisenkriegsaxt>);

// OreDict Marble
var materialMarble =  <ore:materialMarble>;
materialMarble.add(<undergroundbiomes:metamorphic_stone:2>);
 
// Unifi black granite / Marble from undergroundbiomes to SEM using Hammer

recipes.addShapeless(<sem:finsternispflasterstein>, [<sem:hammer>, <undergroundbiomes:igneous_cobble:1>]);
recipes.addShapeless(<sem:finsternisstein>, [<sem:hammer>, <undergroundbiomes:igneous_stone:1>]);

recipes.addShapeless(<sem:normaleblocke>, [<sem:hammer>, <undergroundbiomes:metamorphic_stone:2>]);

// Same for hay (conflit with agricaft)
recipes.addShapeless(<sem:stroh>, [<sem:hammer>, <minecraft:hay_block>]);

//Add Gear Oredict, SEM Gear need iron, but not TF one, so it's possible to build to a lower tier
var gearCopper = <ore:gearCopper>;
gearCopper.add(<sem:kupferzahnrad>);

var gearBronze = <ore:gearBronze>;
gearBronze.add(<sem:bronzezahnrad>);


recipes.remove( <sem:muehleaus>);


// Hop box MK1, Move the Stone using Wooden Hopper + Net
recipes.remove(<sem:hopboxmki>);

RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:cobblestone>,<tconstruct:wooden_hopper>, <ore:cobblestone>],
  [<ore:gearStone>, <waterstrainer:net:1>, <ore:gearStone>], 
  [<ore:cobblestone>, <minecraft:dropper>, <ore:cobblestone>]])
  .addOutput(<sem:hopboxmki>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

// MK2 Use but Copper Gear
recipes.remove(<sem:hopboxmkii>);
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:cobblestone>,<tconstruct:wooden_hopper>, <ore:cobblestone>],
  [<ore:gearCopper>, <waterstrainer:net:1>,<ore:gearCopper>], 
  [<ore:cobblestone>, <minecraft:dropper>, <ore:cobblestone>]])
  .addOutput(<sem:hopboxmkii>)
  .addTool(<ore:artisansHammer>, 20)    
  .create();

// MK3  
recipes.remove(<sem:hopboxmkiii>);
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:cobblestone>,<tconstruct:wooden_hopper>, <ore:cobblestone>],
  [<ore:gearBronze>, <waterstrainer:net:1>, <ore:gearBronze>], 
  [<ore:cobblestone>, <minecraft:dropper>, <ore:cobblestone>]])
  .addOutput(<sem:hopboxmkiii>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

// Not Box
recipes.remove(<sem:notbox>);
RecipeBuilder.get("engineer")
  .setShaped(   [[<ore:netherrack>,<tconstruct:wooden_hopper>, <ore:netherrack>],
  [<ore:gearBronze>, <waterstrainer:net:1>, <ore:gearBronze>], 
  [<ore:netherrack>, <minecraft:dropper>, <ore:netherrack>]])
  .addOutput(<sem:notbox>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  

// Normalize pipe as other pipe (Plate + Hammer + Liquid Glass)
// Use tin
recipes.remove(<sem:bambusrohr>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>], 
  [null, null,null], 
  [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]])
  .setFluid(<liquid:glass> * 750) 	
  .addOutput(<sem:bambusrohr> * 3)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
  
// Normalize pipe as other pipe
recipes.remove(<sem:rohrdistanz>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateTin>, <ore:plateIron>, <ore:plateTin>], 
  [null, null,null], 
  [<ore:plateTin>, <ore:plateIron>, <ore:plateTin>]])
  .setFluid(<liquid:glass> * 750) 	
  .addOutput(<sem:rohrdistanz> * 3)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
  
// Steel pipe
recipes.remove(<sem:rohrtempo>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:plateTin>, <ore:plateSteel>, <ore:plateTin>], 
  [null, null,null], 
  [<ore:plateTin>, <ore:plateSteel>, <ore:plateTin>]])
  .setFluid(<liquid:glass> * 750) 	
  .addOutput(<sem:rohrtempo> * 3)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
  
// Block detector
recipes.remove(<sem:blocksensoraus>);
RecipeBuilder.get("engineer")
  .setShaped([[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ore:cobblestone>, <minecraft:daylight_detector>, <ore:cobblestone>],
  [<ore:cobblestone>, <rs_ctr:rs_port:1>, <ore:cobblestone>]])
  .addOutput(<sem:blocksensoraus>)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  
// No battle axe from nether
recipes.remove(<sem:kriegsaxtnether>);


// Harvest craft compatibility
var  foodFlour = <ore:foodFlour>;
foodFlour.add(<sem:flour>);

var foodWaffles = <ore:foodWaffles>;
foodWaffles.add(<sem:waffel>);

var foodPancakes = <ore:foodPancakes>;
foodPancakes.add(<sem:pfannkuchen>);

// No salt from this mod
recipes.remove(<sem:salt>); 
recipes.remove(<sem:salzblock>);

// Use Techreborn Brass
recipes.remove(<sem:brass_dust>);
recipes.addShapeless("TTM_BrassDust",<techreborn:dust:6> * 4, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustZinc>]);

// Use Techreborn Bronze
recipes.remove(<sem:bronze_dust>);
recipes.addShapeless("TTM_BronzeDust",<techreborn:dust:7> * 4, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);

// Add a recipes for Dark Wood using charcoal
mods.immersiveengineering.AlloySmelter.addRecipe( <sem:finsternisbaumstamm>, <minecraft:coal:1>,<ore:logWood>,500);

// We remove the steel chest for now as it crash with nuclear craft radiation
recipes.remove(<sem:eisenkiste>);

// Ceramic Darkbrick to SEM Darkbrick
furnace.addRecipe(<sem:finsternisbrick>,<ceramics:clay_hard:1>);
furnace.addRecipe(<sem:finsternisbricktreppe>,<ceramics:dark_bricks_stairs>);
furnace.addRecipe(<sem:halbblock:4>,<ceramics:clay_slab:1>);

// Add Some Chisel support to switch decoration
mods.chisel.Carving.addGroup("dark_stone_brick");
mods.chisel.Carving.addVariation("dark_stone_brick", <sem:normaleblocke:2>);
mods.chisel.Carving.addVariation("dark_stone_brick", <sem:normaleblocke:3>);
mods.chisel.Carving.addVariation("dark_stone_brick", <sem:normaleblocke:4>);

mods.chisel.Carving.addVariation("haybale", <minecraft:hay_block>);
mods.chisel.Carving.addVariation("haybale", <sem:stroh>);

mods.chisel.Carving.addVariation("truss_cobble",<sem:fachwerk:3>);
mods.chisel.Carving.addVariation("truss_cobble",<sem:fachwerk:2>);
mods.chisel.Carving.addVariation("truss_cobble",<sem:fachwerk:1>);
mods.chisel.Carving.addVariation("truss_cobble",<sem:fachwerk>);

mods.chisel.Carving.addVariation("truss_marble",<sem:fachwerk:7>);
mods.chisel.Carving.addVariation("truss_marble",<sem:fachwerk:6>);
mods.chisel.Carving.addVariation("truss_marble",<sem:fachwerk:5>);
mods.chisel.Carving.addVariation("truss_marble",<sem:fachwerk:4>);

mods.chisel.Carving.addVariation("truss_sand",<sem:fachwerk:8>);
mods.chisel.Carving.addVariation("truss_sand",<sem:fachwerk:9>);
mods.chisel.Carving.addVariation("truss_sand",<sem:fachwerk:10>);
mods.chisel.Carving.addVariation("truss_sand",<sem:fachwerk:11>);

mods.chisel.Carving.addVariation("truss_straw",<sem:fachwerk:12>);
mods.chisel.Carving.addVariation("truss_straw",<sem:fachwerk:13>);
mods.chisel.Carving.addVariation("truss_straw",<sem:fachwerk:14>);
mods.chisel.Carving.addVariation("truss_straw",<sem:fachwerk:15>);