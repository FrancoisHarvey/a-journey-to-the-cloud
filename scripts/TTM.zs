// TTM



// Bronze Age

import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.liquid.ILiquidDefinition;


// I added custom support for ashenwheat to Agricraft, it allow to create, bone meal, gunpowder, glowstone, and a coal like bale
// No seeds from the grass, only from mutation
// Combine some of it for a blaze_powder recipes.
// It allow have the blaze in peacefull mode and force agricraft setup
// Cloche support should follow

recipes.addShapeless(<minecraft:blaze_powder>, [<ashenwheat:scintillatingash>, <ashenwheat:scintillatingash>, <ashenwheat:calcifiedash>, <ashenwheat:unstablesoot>] );

// Alloy Oil inside a bucket to power furnace
furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "oil", Amount: 1000}}), 48000);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}), 48000);

// Crude oil 32000
furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "fluidoil", Amount: 1000}}), 32000);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName: "fluidoil", Amount: 1000}), 32000);

// Crude oil 16000
furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "crude_oil", Amount: 1000}}), 16000);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName: "crude_oil", Amount: 1000}), 16000);

// Fuel 
furnace.setFuel(<minecraft:deadbush>, 100);

// Copper
furnace.addRecipe(<techreborn:ingot:4>,<geolosys:cluster:2>);

// tin
furnace.addRecipe(<techreborn:ingot:13>,<geolosys:cluster:3>);

// lead
furnace.addRecipe(<techreborn:ingot:8>,<geolosys:cluster:5>);

// gold
furnace.addRecipe(<minecraft:gold_ingot>,<geolosys:cluster:1>);

// Silver
furnace.addRecipe(<techreborn:ingot:11>,<geolosys:cluster:4>);

// Zinc
furnace.addRecipe(<techreborn:ingot:18>,<geolosys:cluster:10>);


///  Rock Tools
///  Like tinker without setencil

// Rock Hatchet
recipes.addShapeless("TTM_RockHatchet", <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 160, HarvestLevel: 1, Attack: 3.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 128, HarvestLevel: 1, Attack: 3.5 as float}, Special: {Categories: ["tool", "harvest", "weapon", "aoe"]}, TinkerData: {Materials: ["wood", "stone", "wood"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}], Traits: ["ecological", "cheapskate"]}), [<tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>,<minecraft:stick>]);


// Pickaxe
recipes.addShaped("TTM_RockPickaxe", 
<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 160, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 128, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "stone", "wood"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}], Traits: ["ecological", "cheapskate"]}), [
[<tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>, <tinkersurvival:rock_stone>],
[null,<minecraft:stick>, null],
[null,<minecraft:stick>, null]]);

// Shovel
recipes.addShaped("TTM_RockShovel",
<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 20, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 16, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "stone", "wood"], Modifiers: []}, Modifiers: [{identifier: "cheap", color: -6710887, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}], Traits: ["ecological", "cheapskate"]}), [
[null, <tinkersurvival:rock_stone>, null],
[null,<minecraft:stick>, null],
[null,<minecraft:stick>, null]]);

/// Same for flint
///  Like tinker without setencil
recipes.addShapeless("TTM_FlintHatchet", <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 160, HarvestLevel: 1, Attack: 3.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 128, HarvestLevel: 1, Attack: 3.5 as float}, Special: {Categories: ["tool", "harvest", "weapon", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}], Traits: ["ecological", "cheapskate"]}), [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>,<minecraft:stick>]);
// Pickaxe
recipes.addShaped("TTM_FlintPickaxe", 
<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 160, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 128, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}], Traits: ["ecological", "cheapskate"]}), [
[<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
[null,<minecraft:stick>, null],
[null,<minecraft:stick>, null]]);

// Shovel
recipes.addShaped("TTM_FlintShovel",
<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 20, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 16, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: []}, Modifiers: [{identifier: "cheap", color: -6710887, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}], Traits: ["ecological", "cheapskate"]}), [
[null, <minecraft:flint>, null],
[null,<minecraft:stick>, null],
[null,<minecraft:stick>, null]]);


// Allow stone for horse power TTM_stone_chopping_block
recipes.addShapeless("TTM_stone_chopping_block", <horsepower:chopping_block>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}), 
[<ore:logWood>, <tinkersurvival:rock_stone>]);

// Shortcut in place of in game action
// 2 stone = 1 flint
recipes.addShapeless('TTM_Stone2Flint', <minecraft:flint>, [<tinkersurvival:rock_stone>,<tinkersurvival:rock_stone>]);

// 1 stone + flint = flint shard
recipes.addShapeless('TTM_Flint2Flintshard', <tinkersurvival:flint_shard>, [<minecraft:flint>,<tinkersurvival:rock_stone>]);



/* Steam is hot */
val steam = <liquid:steam>.definition;
steam.temperature = 380;


// Alternative to plate machine and smeltery for plate, support only Copper, Tin, 
// blacksmith -> 3 -> 2 ratio
RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<ore:ingotBronze>, null], 
  [null,<ore:ingotBronze>,null], 
  [null,null, null]])
  .addOutput(<techreborn:plates:19>)
  .addTool(<ore:artisansHammer>, 10)  
  .create(); 

RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<ore:ingotCopper>, null], 
  [null,<ore:ingotCopper>,null], 
  [null,null, null]])
  .addOutput(<techreborn:plates:21> )
  .addTool(<ore:artisansHammer>, 8)  
  .create(); 
 
// Very ineficient to do plate as durability is -125 (So Iron Hammer = 2 Plate before broken)
RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<ore:ingotSteel>, null], 
  [null,<ore:ingotSteel>,null], 
  [null,null, null]])
  .addOutput(<techreborn:plates:29> )
  .addTool(<ore:artisansHammer>, 100)  
  .create(); 
  
RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<ore:ingotTin>, null], 
  [null,<ore:ingotTin>,null], 
  [null,null, null]])
  .addOutput(<techreborn:plates:30>)
  .addTool(<ore:artisansHammer>, 5)  
  .create(); 

RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<ore:ingotGold>, null], 
  [null,<ore:ingotGold>,null], 
  [null,null, null]])
  .addOutput(<techreborn:plates:1> )
  .addTool(<ore:artisansHammer>, 5)  
  .create(); 


RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<ore:ingotZinc>, null], 
  [null,<ore:ingotZinc>,null], 
  [null,null, null]])
  .addOutput(<techreborn:plates:34> )
  .addTool(<ore:artisansHammer>, 10)  
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped( [[null,<ore:ingotBrass>, null], 
  [null,<ore:ingotBrass>,null], 
  [null,null, null]])
  .addOutput(<techreborn:plates:18> )
  .addTool(<ore:artisansHammer>, 15)  
  .create();



// Normalize Concrete using TC castin bassin (Both for minecraft concrete and modded one)

mods.tconstruct.Casting.addBasinRecipe(<minecraft:concrete>,<minecraft:concrete_powder>, <liquid:water>, 250);

// Concrete to dust using grinder
mods.horsepower.Grindstone.add(<minecraft:concrete>, <minecraft:concrete_powder>, 20, false, <techreborn:smalldust:44>,5);

// Same pour TR but advance extract the dye
mods.techreborn.industrialGrinder.addRecipe(<minecraft:concrete_powder> * 2, <minecraft:dye:15>, null, null, <minecraft:concrete>, null, 100, 64);

//
recipes.remove(<immersiveengineering:stone_decoration:5>);
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:stone_decoration:5>,null, <liquid:concrete>, 250);

recipes.addShapeless("TTM_concrete_tile_uncraft", <immersiveengineering:stone_decoration:5>, [<immersiveengineering:stone_decoration:6>]);
recipes.addShaped("TTM_concrete_slab_back", <immersiveengineering:stone_decoration:5>, [[<immersiveengineering:stone_decoration_slab:5>], [<immersiveengineering:stone_decoration_slab:5>]]);

// Add a Item Slag recipe for concrete
mods.immersiveengineering.Mixer.addRecipe(<liquid:concrete> * 1296 , <liquid:water> *500, [<ore:sand>, <minecraft:gravel>, <ore:itemSlag>], 1024);


mods.tconstruct.Casting.addBasinRecipe(<advancedrocketry:concrete>,<ore:scaffoldingAluminum>, <liquid:concrete>, 250);
recipes.remove(<advancedrocketry:concrete>);
// Add a castin bassin recipes for concrete
mods.tconstruct.Casting.addBasinRecipe(<advancedrocketry:concrete>,<ore:scaffoldingAluminum>, <liquid:concrete>, 250);

recipes.remove(<engineersdecor:rebar_concrete>);
mods.tconstruct.Casting.addBasinRecipe(<engineersdecor:rebar_concrete>,<ore:scaffoldingSteel>, <liquid:concrete>, 250);

recipes.remove(<immersivepetroleum:stone_decoration>);
mods.tconstruct.Casting.addBasinRecipe(<immersivepetroleum:stone_decoration>,<immersivepetroleum:material>, <liquid:concrete>, 250);

// Soul sand + Coarse Dirt Alloying = NetherRack
mods.immersiveengineering.AlloySmelter.addRecipe( <minecraft:netherrack> * 2, <minecraft:dirt:1>,<minecraft:soul_sand>,1500);
mods.techreborn.alloySmelter.addRecipe(<minecraft:netherrack> *2 ,<minecraft:dirt:1>,<minecraft:soul_sand>, 180, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<minecraft:dirt:1>,<minecraft:soul_sand>,<minecraft:netherrack> * 2 );


// Sandstone + ender eye = endstone
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:end_stone>, <ore:sandstone>,<ore:enderpearl>,1500);
mods.techreborn.alloySmelter.addRecipe(<minecraft:end_stone> ,<ore:sandstone>,<ore:enderpearl>, 180, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:sandstone>,<ore:enderpearl>,<minecraft:end_stone> );


// Devil ingot from yellorium and source of ender eye

furnace.addRecipe(<sem:devils_ingot>, <geolosys:cluster:11>);
mods.horsepower.Grindstone.add(<sem:devils_ingot>, <sem:devils_dust>, 20, false, null);
mods.horsepower.Grindstone.add(<ore:oreYellorium>, <sem:devils_dust>, 20, false, <thermalfoundation:material:895>,25);


