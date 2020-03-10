// Nuclearcraft

//import mods.inworldcrafting.FluidToFluid
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.liquid.ILiquidDefinition;

// Some Manual recipes

// Normalize cooler recipes
// Some allow the use of smeltery 
// Most allow the use of the IE bottling machine
// All have the manual way disable

// Remove Water manual recipes
recipes.remove(<nuclearcraft:cooler:1>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:1>, <nuclearcraft:cooler>, <liquid:water>, 1000, true);
mods.immersiveengineering.BottlingMachine.addRecipe(<nuclearcraft:cooler:1>, <nuclearcraft:cooler>, <liquid:water>);


// Move Redstone one to using destablized redstone
recipes.remove(<nuclearcraft:cooler:2>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:redstone>, <nuclearcraft:cooler:2>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:2>, <nuclearcraft:cooler>,<liquid:redstone>, 1000, true);

// Move Quartz to quartz
recipes.remove(<nuclearcraft:cooler:3>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:quartz>, <nuclearcraft:cooler:3>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:3>, <nuclearcraft:cooler>,<liquid:quartz>, 1000, true);

// Iron
recipes.remove(<nuclearcraft:cooler:4>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:gold>, <nuclearcraft:cooler:4>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:4>, <nuclearcraft:cooler>,<liquid:gold>, 1000, true);

// Glowstone, no Basin Recipe as glowstone is a gaz more than a liquid
recipes.remove(<nuclearcraft:cooler:5>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:glowstone>, <nuclearcraft:cooler:5>);

// Lapis
recipes.remove(<nuclearcraft:cooler:6>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:lapis>, <nuclearcraft:cooler:6>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:6>, <nuclearcraft:cooler>,<liquid:lapis>, 1000, true);

// Diamond
recipes.remove(<nuclearcraft:cooler:7>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:diamond>, <nuclearcraft:cooler:7>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:7>, <nuclearcraft:cooler>,<liquid:diamond>, 1000, true);

// Liquid Helium, Too cold for the smeltery, and infuser recipes allready exist
recipes.remove(<nuclearcraft:cooler:8>);

// Enderium
recipes.remove(<nuclearcraft:cooler:9>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:enderium>, <nuclearcraft:cooler:9>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:9>, <nuclearcraft:cooler>,<liquid:enderium>, 1000, true);

// Cryotherum, Too cold for the smeltery, and infuser recipes allready exist
recipes.remove(<nuclearcraft:cooler:10>);

// Iron
recipes.remove(<nuclearcraft:cooler:11>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:iron>, <nuclearcraft:cooler:11>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:11>, <nuclearcraft:cooler>,<liquid:iron>, 1000, true);

// Emerald
recipes.remove(<nuclearcraft:cooler:12>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:emerald>, <nuclearcraft:cooler:12>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:12>, <nuclearcraft:cooler>,<liquid:emerald>, 1000, true);


// Copper
recipes.remove(<nuclearcraft:cooler:13>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:copper>, <nuclearcraft:cooler:13>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:13>, <nuclearcraft:cooler>,<liquid:copper>, 1000, true);

// tin
recipes.remove(<nuclearcraft:cooler:14>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:tin>, <nuclearcraft:cooler:14>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:14>, <nuclearcraft:cooler>,<liquid:tin>, 1000, true);

// magnesium
recipes.remove(<nuclearcraft:cooler:15>);
mods.nuclearcraft.infuser.addRecipe(<nuclearcraft:cooler>,<liquid:magnesium>, <nuclearcraft:cooler:15>);
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:cooler:15>, <nuclearcraft:cooler>,<liquid:magnesium>, 1000, true);



//////////////////////
///  Make smore, more oredict like Pam.
//////////////////////
// IE Add HOP Graphite in the IngotGraphite OreDict
val foodSmores = <ore:foodSmores>;
foodSmores.add(<nuclearcraft:smore>);

val foodCrackers = <ore:foodCrackers>;
foodCrackers.add(<nuclearcraft:graham_cracker:*>);

val foodMarshmellows = <ore:foodMarshmellows>;
foodMarshmellows.addAll(<ore:ingotMarshmallow>);

val foodChocolatebar = <ore:foodChocolatebar>;
foodChocolatebar.addAll(<ore:ingotChocolate>);


recipes.remove(<nuclearcraft:smore>);
recipes.remove(<nuclearcraft:moresmore>);

recipes.addShapeless("TTM_NC_smore", <nuclearcraft:smore>, [<ore:foodCrackers>, <ore:foodChocolatebar>, <ore:foodMarshmellows>, <ore:foodCrackers>]);
recipes.addShapeless("TTM_NC_moressmore", <nuclearcraft:moresmore>, [<ore:foodSmores>, <ore:foodChocolatebar>, <ore:foodMarshmellows>, <ore:foodSmores>]);


// Smeltery isn't clean enough to food related stuff. 
mods.tconstruct.Melting.removeRecipe(<liquid:milk_chocolate>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_chocolate>);
mods.tconstruct.Melting.removeRecipe(<liquid:marshmallow>);

// Add a IE recipe for milk_chocolate
mods.immersiveengineering.BottlingMachine.addRecipe(<harvestcraft:chocolatemilkitem>,  <minecraft:glass_bottle>, <liquid:milk_chocolate> * 250);


// Remove Steel from Alloy
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<ore:ingotSteel>);

// Change recipes for Manufactory Use enginneer level 1
// Use Solderer + tin
// Use a battery (the machine have a internal buffer)

recipes.remove(<nuclearcraft:manufactory_idle>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateBasic>, <ore:itemBattery>, <ore:plateBasic>],
  [<immersiveengineering:material:8>, <advancedrocketry:platepress>, <immersiveengineering:material:8>],
  [<ore:plateBasic>, <ore:solenoidCopper>, <ore:plateBasic>]] )
  .addOutput(<nuclearcraft:manufactory_idle>)
  .addTool(<ore:artisansCutters>, 15)  
  .setFluid(<liquid:tin> * 1000)
  .create();
  
mods.horsepower.Grindstone.add(<techreborn:ore>, <techreborn:dust:23>, 20, false, null,20);

mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:material:19>);
//mods.tconstruct.Casting.addTableRecipe(<nuclearcraft:ingot:8>, <tconstruct:cast_custom>, <liquid:coal>, 216);

// Allow dustGraphite from 
mods.horsepower.Grindstone.add(<ore:ingotGraphite>, <nuclearcraft:dust:8>, 20, false, null,20);

  
// 	Basic Plating use Kiln (initial) or Alloy and plateLead + Graphite Dust
recipes.remove(<nuclearcraft:part>);
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:part>, <ore:plateLead>, <ore:dustGraphite>,2000);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:plateLead>,  <ore:dustGraphite>, <nuclearcraft:part> );
mods.techreborn.alloySmelter.addRecipe( <nuclearcraft:part>, <ore:plateLead>,   <ore:dustGraphite>, 180, 15);



// Solar Nuclearcraft
// No Stockage, give 5 RF
// We use the same recipes of Tier 1 TechReborn but without the battery

recipes.remove(<nuclearcraft:solar_panel_basic>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>], 
  [<ore:plateIron>,  null , <ore:plateIron>], 
  [<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>]
  ] )
  .addOutput(<nuclearcraft:solar_panel_basic> * 2)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
// Motor a other generic piece
recipes.remove( <nuclearcraft:part:8>);
recipes.addShaped("TTM_motor", <nuclearcraft:part:8>, [
[<ore:plateSteel>, <ore:plateSteel>,null],
 [<techreborn:cable:1>, <ore:solenoidCopper>, <ore:stickIron>], 
 [<ore:plateSteel>, <ore:plateSteel>,null ]]);
 
// Motor a other generic piece
recipes.remove( <nuclearcraft:part:8>);
recipes.addShaped("TTM_motor2", <nuclearcraft:part:8> * 2, [
[<ore:plateSteel>, <ore:plateSteel>,<immersiveengineering:toolupgrade:1>],
 [<techreborn:cable:1>, <ore:solenoidCopper>, <ore:stickIron>], 
 [<ore:plateSteel>, <ore:plateSteel>,null ]]);
 
 
  
recipes.remove(<nuclearcraft:part:4>);
mods.immersiveengineering.Blueprint.addRecipe("components", <nuclearcraft:part:4>  , [<ore:ingotCopper>,<ore:ingotIron>,<ore:itemRubber>]);
// Cable + Rod = 3x
mods.immersiveengineering.Blueprint.addRecipe("components", <nuclearcraft:part:4> * 3 , [<techreborn:cable>,<ore:stickIron>,<ore:itemRubber>]);

mods.immersiveengineering.Blueprint.addRecipe("components", <nuclearcraft:part:4> * 3 , [<techreborn:cable:5>,<ore:stickIron>]);

 // Add a blueprint for the Mechanical components
 // Need a motor for the blueprint
recipes.addShaped("ttm_blueprints_mechanical", <immersiveengineering:blueprint>.withTag({blueprint: "mechanical"}), [[<ore:ingotSilver>, <ore:motor>, <ore:ingotSilver>], [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);



// 
recipes.remove(<nuclearcraft:part:5>);
mods.immersiveengineering.Blueprint.addRecipe("mechanical",<nuclearcraft:part:5>, [<nuclearcraft:alloy:3>, <nuclearcraft:alloy:1>,<ore:itemRubber>]);

// Move Servo to IE (Motor + Gear + FerroBorron + Cable)
recipes.remove(<nuclearcraft:part:7>);
mods.immersiveengineering.Blueprint.addRecipe("mechanical",<nuclearcraft:part:7>, [<ore:motor>,<ore:gearSteel>,<ore:ingotFerroboron>,<techreborn:cable:5>]);

// Move Servo to IE (Motor + Gear + FerroBorron + Cable)
recipes.remove(<nuclearcraft:part:7>);
mods.immersiveengineering.Blueprint.addRecipe("mechanical",<nuclearcraft:part:7> * 2, [<ore:motor>,<ore:gearTitanium>,<ore:ingotFerroboron>,<techreborn:cable:5>]);

// Move Servo to IE (Motor + Gear + FerroBorron + Cable)
recipes.remove(<nuclearcraft:part:7>);
mods.immersiveengineering.Blueprint.addRecipe("mechanical",<nuclearcraft:part:7> * 4, [<ore:motor>,<ore:gearTungsten>,<ore:ingotFerroboron>,<techreborn:cable:5>]);


// MOTOR

mods.immersiveengineering.Blueprint.addRecipe("mechanical", <nuclearcraft:part:8> * 2 , [<immersiveengineering:material:9>,<ore:stickSteel>,<immersiveengineering:toolupgrade:1>,<ore:solenoidCopper>]);

mods.immersiveengineering.Blueprint.addRecipe("mechanical", <nuclearcraft:part:8> * 3 , [<immersiveengineering:material:9>,<ore:stickSteel>,<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "lubricant", Amount: 1000}}),<ore:solenoidCopper>]);



//  Actuator use gear in place or ingot, tier of gear allow more Actuator
// Same logic from the servo (1,2,4)
recipes.remove(<nuclearcraft:part:9>);

recipes.addShaped("TTM_actuator", <nuclearcraft:part:9>, [[null, null, <ore:ingotSteel>], [<immersiveengineering:material:9>,<ore:motor>, null], [<ore:gearCopper>, <ore:ingotFerroboron>, null]]);

recipes.addShaped("TTM_actuator2", <nuclearcraft:part:9> * 2, [[null, null, <ore:ingotSteel>], [<immersiveengineering:material:9>,<ore:motor>, null], [<ore:gearTitanium>, <ore:ingotFerroboron>, null]]);

recipes.addShaped("TTM_actuator3", <nuclearcraft:part:9> * 4, [[null, null, <ore:ingotSteel>], [<immersiveengineering:material:9>, <ore:motor>, null], [<jaopca:item_geartungsten>, <ore:ingotFerroboron>, null]]);

// Add a IE Recipe using Steel Gear
mods.immersiveengineering.Blueprint.addRecipe("mechanical",<nuclearcraft:part:9> , [<immersiveengineering:material:9>,<ore:motor>,<ore:gearSteel>,<ore:ingotFerroboron>]);



// Add RC a rolling machine recipe for the Cell  (8X for Railcraft, 16X pour TechReborn)
//recipes.remove(<techreborn:part:13>);

recipes.remove(<techreborn:dynamiccell>);

mods.railcraft.RollingMachine.addShaped("emptycell", <techreborn:dynamiccell> * 8,   [[ null, <ore:ingotTin>, null], [<ore:ingotTin>, null, <ore:ingotTin>], [null, <ore:ingotTin>, null]]);
  

// Add A crusher recipes

// mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:6>, <ore:oreLithium>, 2048);


// Remove chocolate alloy (Smeltery is not food proof)
mods.tconstruct.Alloy.removeRecipe(<liquid:unsweetened_chocolate>);

mods.tconstruct.Alloy.removeRecipe(<liquid:dark_chocolate>);

// No advance alloy inside the smeltery (Need the salt mixer)
mods.tconstruct.Alloy.removeRecipe(<liquid:tough>);
mods.tconstruct.Alloy.removeRecipe(<liquid:ferroboron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:hard_carbon>);

mods.tconstruct.Melting.removeRecipe(<liquid:hard_carbon>);

mods.tconstruct.Melting.removeRecipe(<liquid:unsweetened_chocolate>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_chocolate>);


// No smelting of aluminum
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>);
mods.tcomplement.Blacklist.addRecipe(<liquid:aluminum>,null);



// No melting of end game metal
mods.tcomplement.Blacklist.addRecipe(<liquid:tough>,null);
mods.tcomplement.Blacklist.addRecipe(<liquid:hard_carbon>,null);
mods.tcomplement.Blacklist.addRecipe(<liquid:magnesium>,null);

mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreTungsten>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreBauxite>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreTitanium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<techreborn:dust:1>);



// Fix Volatic
recipes.remove(<nuclearcraft:voltaic_pile_basic>);
recipes.addShaped("TTM_voltaic_pile_basic", <nuclearcraft:voltaic_pile_basic>.withTag({maxTransfer: 80000, capacity: 1600000, energy: 0}), [[<ore:plateBasic>, <ore:solenoidCopper>, <ore:plateBasic>], [<techreborn:lithiumbattery>.withTag({energy: 0}), <ore:blockMagnesium>, <techreborn:lithiumbattery>.withTag({energy: 0})], [<ore:plateBasic>, <ore:solenoidCopper>, <ore:plateBasic>]]);




// Add a ferroborron alloy recipes pour Tinker
mods.tconstruct.Alloy.addRecipe(<liquid:ferroboron> * 144, [<liquid:steel> * 72, <liquid:boron> * 72]);

// Add a Tough alloy using Tinker
mods.tconstruct.Alloy.addRecipe(<liquid:tough> * 144, [<liquid:ferroboron> * 72, <liquid:lithium> * 72]);


// Alloy a recipes using TechReborn alloySmelter (but a little longer and more RF costly )
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:1> * 2,<ore:ingotLithium> , <ore:ingotFerroboron>, 200, 20);
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:1> * 2,<ore:dustLithium>, <ore:ingotFerroboron>, 190, 18);


//mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:6> * 2,<ore:ingotBoron>, <ore:ingotSteel>, 200, 20);

// Dust is more efficient
//mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:6> * 2, <ore:dustBoron>,  <ore:dustSteel>, 180, 15);
// No recipes for hardcarbon, Need Alloy furnace



// Magnesium diboride
//mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:3> * 3, <ore:ingotBoron>* 2,  <ore:ingotMagnesium>, 180, 15);

//mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:alloy:3> * 3, <ore:dustBoron>* 2,  <ore:dustMagnesium>, 180, 15);

// Yeh Need a Kanthal Heating Coal, So Need a good TC Setup (Blast Furnace to 1700 and Rolling Machine)
recipes.remove(<nuclearcraft:alloy_furnace_idle>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:plateBasic>, <ore:reBattery>, <ore:plateBasic>],
  [<immersiveengineering:material:8>,<techreborn:alloy_smelter>, <immersiveengineering:material:8>],
  [<ore:plateBasic>, <techreborn:part:15>, <ore:plateBasic>]] )
  .addOutput(<nuclearcraft:alloy_furnace_idle>)
  .addTool(<ore:artisansCutters>, 35)  
  .addTool(<ore:artisansSolderer>, 35)  
  .setFluid(<liquid:tin> * 1000)
  .setMinimumTier(1)
  .create();
 

// Sold Fuel Generator , Try to be consistent with the adv coalgenerator but with Iron and a better battery
recipes.remove(<techreborn:solid_fuel_generator>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>], 
  [<ore:plateIron>,  <ore:reBattery>, <ore:plateIron>], 
  [<ore:plateIron>, <techreborn:iron_furnace>, <ore:plateIron>]
  ] )
  .addOutput(<techreborn:solid_fuel_generator> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();

// Allow a IE recipe in the frame
mods.immersiveengineering.Blueprint.addRecipe("frame",<libvulpes:structuremachine> , [<ore:machineBlockAdvanced>, <ore:ingotTough>,<ore:plateSteel>]);

// Use Also dynamiccell Lithium for the IO
recipes.remove( <nuclearcraft:lithium_ion_cell>);
recipes.addShaped("TTM_lithium_ion_cell", <nuclearcraft:lithium_ion_cell>.withTag({maxTransfer: 400000, capacity: 8000000, energy: 0}), [[<ore:ingotHardCarbon>, <ore:ingotHardCarbon>, <ore:ingotHardCarbon>], [<ore:ingotFerroboron>,<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidlithium", Amount: 1000}}) | <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "lithium", Amount: 1000}}), <ore:ingotFerroboron>], [<ore:ingotLithiumManganeseDioxide>, <ore:ingotLithiumManganeseDioxide>, <ore:ingotLithiumManganeseDioxide>]]);



recipes.remove(<nuclearcraft:part:12>);
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>], 
  [<ore:ingotTough>, <ore:machineBasic>, <ore:ingotTough>],
  [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12>)
  .addTool(<ore:artisansSolderer>, 15)    
  .setFluid(<liquid:iron> * 250)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>], 
  [<ore:ingotTough>,<ore:machineBasic>, <ore:ingotTough>],
  [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 2)
  .addTool(<ore:artisansSolderer>, 15)    
  .setFluid(<liquid:steel> * 250)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotHardCarbon>, <ore:plateSteel>], 
  [<ore:ingotHardCarbon>, <ore:machineBasic>, <ore:ingotHardCarbon>],
  [<ore:plateSteel>, <ore:ingotHardCarbon>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 4)
  .addTool(<ore:artisansSolderer>, 15)    
  .setFluid(<liquid:steel> * 250)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotExtreme>, <ore:plateSteel>], 
  [<ore:ingotExtreme>, <ore:machineBasic>, <ore:ingotExtreme>],
  [<ore:plateSteel>, <ore:ingotExtreme>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 8)
  .addTool(<ore:artisansSolderer>, 45)    
  .setFluid(<liquid:steel> * 250)
  .setMinimumTier(1)
  .create();
 
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotExtreme>, <ore:plateSteel>], 
  [<ore:ingotExtreme>, <ore:machineBasic>, <ore:ingotExtreme>],
  [<ore:plateSteel>, <ore:ingotExtreme>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 10)
  .addTool(<ore:artisansSolderer>, 60)    
  .setFluid(<liquid:titanium> * 250)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>], 
  [<ore:ingotTough>, <ore:machineBasic>, <ore:ingotTough>],
  [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 4)
  .addTool(<ore:artisansSolderer>, 15)    
  .setFluid(<liquid:titanium> * 250)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>], 
  [<ore:ingotTough>, <ore:machineBlockAdvanced>, <ore:ingotTough>],
  [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 6)
  .addTool(<ore:artisansSolderer>, 30)    
  .setFluid(<liquid:steel> * 300)
  .setMinimumTier(1)
  .create();
 
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotHardCarbon>, <ore:plateSteel>], 
  [<ore:ingotHardCarbon>, <ore:machineBlockAdvanced>, <ore:ingotHardCarbon>],
  [<ore:plateSteel>, <ore:ingotHardCarbon>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 6)
  .addTool(<ore:artisansSolderer>, 30)    
  .setFluid(<liquid:iron> * 300)
  .setMinimumTier(1)
  .create(); 
 
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>], 
  [<ore:ingotTough>, <ore:machineBlockAdvanced>, <ore:ingotTough>],
  [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 6)
  .addTool(<ore:artisansSolderer>, 45)    
  .setFluid(<liquid:steel> * 300)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>], 
  [<ore:ingotTough>, <ore:machineBlockElite>, <ore:ingotTough>],
  [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 8)
  .addTool(<ore:artisansSolderer>, 60)    
  .setFluid(<liquid:iron> * 350)
  .setMinimumTier(1)
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotHardCarbon>, <ore:plateSteel>], 
  [<ore:ingotHardCarbon>, <ore:machineBlockElite>, <ore:ingotHardCarbon>],
  [<ore:plateSteel>, <ore:ingotHardCarbon>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 12)
  .addTool(<ore:artisansSolderer>, 60)    
  .setFluid(<liquid:iron> * 350)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>], 
  [<ore:ingotTough>, <ore:machineBlockElite>, <ore:ingotTough>],
  [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 10)
  .addTool(<ore:artisansSolderer>, 75)    
  .setFluid(<liquid:steel> * 350)
  .setMinimumTier(1)
  .create();

  RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:ingotExtreme>, <ore:plateSteel>], 
  [<ore:ingotExtreme>, <ore:machineBlockElite>, <ore:ingotExtreme>],
  [<ore:plateSteel>, <ore:ingotExtreme>, <ore:plateSteel>]] )
  .addOutput(<nuclearcraft:part:12> * 16)
  .addTool(<ore:artisansSolderer>, 90)    
  .setFluid(<liquid:titanium> * 350)
  .setMinimumTier(1)
  .create();
  
// Some Glass normalization
// Recipe
recipes.remove(<nuclearcraft:salt_fission_glass>);
mods.immersiveengineering.AlloySmelter.addRecipe( <nuclearcraft:salt_fission_glass>, <nuclearcraft:salt_fission_wall>, <ore:blockGlass>,2000);
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:salt_fission_glass>, <nuclearcraft:salt_fission_wall>,   <ore:blockGlass>, 180, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:blockGlass>, <nuclearcraft:salt_fission_wall>, <nuclearcraft:salt_fission_glass> );


recipes.remove(<nuclearcraft:heat_exchanger_glass>);
mods.immersiveengineering.AlloySmelter.addRecipe( <nuclearcraft:heat_exchanger_glass>, <nuclearcraft:heat_exchanger_wall>, <ore:blockGlass>,2000);
mods.techreborn.alloySmelter.addRecipe(<nuclearcraft:heat_exchanger_glass>, <nuclearcraft:heat_exchanger_wall>,   <ore:blockGlass>, 180, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:blockGlass>, <nuclearcraft:heat_exchanger_wall>,<nuclearcraft:heat_exchanger_glass> );

// Add somme more recipe using the Rock Crusher of NC For End game material without End Access or Nether	
mods.nuclearcraft.rock_crusher.addRecipe(<minecraft:end_stone>, <techreborn:smalldust:48>,<techreborn:smalldust:36>,<techreborn:nuggets:7>);
mods.nuclearcraft.rock_crusher.addRecipe(<ore:netherrack>,<techreborn:smalldust:39>,<techreborn:smalldust:11>,<jaopca:item_dusttinytungsten>);

// Remove bererlium to infot in furnace (Need High temp)

recipes.remove(<nuclearcraft:ingot:9>);
furnace.remove(<nuclearcraft:ingot:9>);

// I may use the HSLA recipes in place of brass for more pipe or output
// mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:15>);
recipes.removeByRecipeName("mysticalagriculture:ingotlithium");

// add a inneficient HSLA recipe using the blast furnace as the alloy melter need 1700
mods.techreborn.blastFurnace.addRecipe(<nuclearcraft:alloy:15> , null,<ore:dustCarbonManganese>,<ore:dustIron>, 75,  128,1650);

// Add Shibuichi and Thermal metal to IE
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:alloy:7> * 4, <ore:ingotCopper> * 3,<ore:ingotSilver>,1500);
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:alloy:9> * 4, <ore:ingotLead> * 3,<ore:ingotPlatinum>,1500);
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:alloy:8> * 4, <ore:ingotTin> * 3,<ore:ingotSilver>,1500);

mods.techreborn.blastFurnace.addRecipe(<nuclearcraft:ingot:9> , null,<ore:dustBeryllium>,null, 75,  128,1300);

mods.techreborn.blastFurnace.addRecipe(<nuclearcraft:alloy:6> , null,<ore:ingotBoron>,<ore:ingotSteel>, 75,  128,1500);

// Add a Extreme Alloy Blast furnace and Tough Alloy
mods.techreborn.blastFurnace.addRecipe(<nuclearcraft:alloy:1> , null,<nuclearcraft:alloy:6>,<ore:ingotLithium>, 75,  128,1950);

mods.techreborn.blastFurnace.addRecipe(<nuclearcraft:alloy:10> , null,<ore:ingotTough>,<ore:ingotHardCarbon>, 75,  128,1950);

furnace.remove(<nuclearcraft:ingot:11>);
mods.techreborn.blastFurnace.addRecipe(<nuclearcraft:ingot:11> , null,<ore:dustManganese>,null, 75,  128,1250);

// Manganese dioxide using Lithium
mods.techreborn.blastFurnace.addRecipe(<nuclearcraft:alloy:4> , null,<ore:ingotLithium>,<ore:ingotManganeseDioxide>, 75,  128,1650);

// Cooler use Frost Steel in place of Tin in the Cooler/Freeze recipe
recipes.remove(<nuclearcraft:cooler>);
recipes.addShaped("TTM_Coolerempty", <nuclearcraft:cooler> * 2, [[<ore:ingotTough>, <ore:ingotFroststeel>, <ore:ingotTough>], [<ore:ingotFroststeel>, null, <ore:ingotFroststeel>], [<ore:ingotTough>,<ore:ingotFroststeel>, <ore:ingotTough>]]);

recipes.remove( <nuclearcraft:active_cooler>);
recipes.addShaped("TTM_active_cooler", <nuclearcraft:active_cooler>, [[<ore:plateBasic>,  <ore:ingotFroststeel>, <ore:plateBasic>], [<ore:ingotCopper>,<buildcraftfactory:tank>, <ore:ingotCopper>], [<ore:plateBasic>,  <ore:ingotFroststeel>, <ore:plateBasic>]]);

recipes.remove(<nuclearcraft:electromagnet_supercooler_idle>);
recipes.addShaped("TTM_electromagnet_supercooler_idle", <nuclearcraft:electromagnet_supercooler_idle>, [[<ore:ingotFroststeel>, <nuclearcraft:block_ice:*>, <ore:ingotFroststeel>], [<nuclearcraft:block_ice:*>, <nuclearcraft:accelerator_electromagnet_idle:*>, <nuclearcraft:block_ice:*>], [<ore:ingotFroststeel>, <nuclearcraft:block_ice:*>, <ore:ingotFroststeel>]]);

// Infuser use Enderium and Lumium + tank
recipes.remove( <nuclearcraft:infuser_idle>);
recipes.addShaped("TTM_nuclearcraft_infuser_idle", <nuclearcraft:infuser_idle>, [[<ore:plateAdvanced>,<buildcraftfactory:tank>, <ore:plateAdvanced>], [<ore:gearLumium>, <ore:chassis>, <ore:gearEnderium>], [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]]);


// 
recipes.remove(<nuclearcraft:turbine_controller>);
recipes.addShaped("TTM_turbine_controller", <nuclearcraft:turbine_controller>, [[<ore:plateAdvanced>, <ore:ingotHSLASteel>, <ore:plateAdvanced>], [<ore:ingotHSLASteel>, <ore:steelFrame>, <ore:ingotHSLASteel>], [<ore:plateAdvanced>, <ore:oc:componentBus2>, <ore:plateAdvanced>]]);

recipes.remove( <nuclearcraft:heat_exchanger_controller>);
recipes.addShaped("TTM_heat_exchanger_controller", <nuclearcraft:heat_exchanger_controller>, [[<ore:plateAdvanced>, <ore:ingotThermoconducting>, <ore:plateAdvanced>], [<ore:ingotSteel>, <ore:steelFrame>, <ore:ingotSteel>], [<ore:plateAdvanced>, <ore:oc:componentBus2>, <ore:plateAdvanced>]]);

recipes.remove(<nuclearcraft:salt_fission_controller>);
recipes.addShaped("TTM_salt_fission_controller", <nuclearcraft:salt_fission_controller>, [[<ore:plateElite>, <ore:ingotExtreme>, <ore:plateElite>], [<ore:ingotHardCarbon>, <ore:steelFrame>, <ore:ingotHardCarbon>], [<ore:plateElite>,  <ore:oc:componentBus2>, <ore:plateElite>]]);

recipes.remove( <nuclearcraft:fission_controller_new_fixed>);
recipes.addShapeless("TTM_fission_controller_new_fixed_1", <nuclearcraft:fission_controller_new_fixed>, [<nuclearcraft:fission_controller_idle:*>]);
recipes.addShaped("TTM_fission_controller_new_fixed", <nuclearcraft:fission_controller_new_fixed>, [[<ore:plateAdvanced>, <ore:solenoidMagnesiumDiboride>, <ore:plateAdvanced>], [<nuclearcraft:nuclear_furnace_idle:*>, <ore:chassis>, <nuclearcraft:nuclear_furnace_idle:*>], [<ore:plateAdvanced>, <ore:solenoidMagnesiumDiboride>, <ore:plateAdvanced>]]);


// Add some molten metal recipe
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:tin> * 250, <liquid:copper> * 750, <liquid:bronze> * 1000);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:zinc> * 250, <liquid:copper> * 750, <liquid:brass> * 1000);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:gold> * 250, <liquid:copper> * 750, <liquid:brass> * 1000);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:copper> * 250, <liquid:nickel> * 250, <liquid:brass> * 500); // Less efficient Nickel = More heat
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:iron> * 288, <liquid:nickel> * 144, <liquid:invar> * 432); // Less efficient Nickel = More heat
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:gold> * 500, <liquid:silver> * 500, <liquid:electrum> * 1000);

recipes.remove(<nuclearcraft:part:1>);
recipes.addShaped("TTM_plate_advanced", <nuclearcraft:part:1>, [[<techreborn:plates:4>, <ore:ingotTough>, <techreborn:plates:4>], [<ore:plateAdvancedAlloy>, <ore:plateBasic>,<ore:plateAdvancedAlloy>], [<techreborn:plates:4>, <ore:ingotTough>, <techreborn:plates:4>]]);

recipes.addShaped("TTM_plate_advanced8", <nuclearcraft:part:1> * 8, [[<techreborn:plates:4>, <ore:ingotTough>, <techreborn:plates:4>], [<ore:plateIridiumAlloy>, <ore:plateBasic>,<ore:plateIridiumAlloy>], [<techreborn:plates:4>, <ore:ingotTough>, <techreborn:plates:4>]]);

// Remove Tough from nuclear chassis
recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped("TTM_nuclear_chassis", <nuclearcraft:part:10>, [[<ore:plateLead>, <ore:plateSteel>, <ore:plateLead>], [<ore:plateSteel>, <ore:machineBasic>, <ore:plateSteel>], [<ore:plateLead>, <ore:plateSteel>, <ore:plateLead>]]);

recipes.addShaped("TTM_nuclear_chassis2", <nuclearcraft:part:10> * 2, [[<ore:plateLead>, <ore:platetungsten>, <ore:plateLead>], [<ore:platetungsten>, <ore:machineBasic>, <ore:platetungsten>], [<ore:plateLead>, <ore:platetungsten>, <ore:plateLead>]]);

recipes.addShaped("TTM_nuclear_chassis4", <nuclearcraft:part:10> * 4, [[<ore:plateLead>, <ore:plateTungstensteel>, <ore:plateLead>], [<ore:plateTungstensteel>, <ore:machineBasic>, <ore:plateTungstensteel>], [<ore:plateLead>, <ore:plateTungstensteel>, <ore:plateLead>]]);

