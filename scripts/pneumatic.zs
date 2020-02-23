// pneumatic craft

import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;


// We have compressor for that. No more explosioncrafting
// And yes, it allow to gate pneumatic to the step i want


// Pipe are like a "Upgrade" version of the Fluid pipe Brass
recipes.remove(<pneumaticcraft:pressure_tube> );
RecipeBuilder.get("engineer")
  .setShaped([[<pneumaticcraft:ingot_iron_compressed>, <ore:plateBrass>,<ore:ingotIronCompressed>], 
  [null, null,null], 
  [<ore:ingotIronCompressed>, <ore:plateBrass>,<ore:ingotIronCompressed>]])
  .setFluid(<liquid:glass> * 750) 	
  .addOutput(<pneumaticcraft:pressure_tube> * 4)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

recipes.remove(<pneumaticcraft:pressure_tube> );
RecipeBuilder.get("engineer")
  .setShaped([[<pneumaticcraft:ingot_iron_compressed>, <ore:plateBrass>,<ore:ingotIronCompressed>], 
  [null, null,null], 
  [<ore:ingotIronCompressed>, <ore:plateBrass>,<ore:ingotIronCompressed>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<pneumaticcraft:pressure_tube> * 4)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
   

// And we can reuse our
RecipeBuilder.get("engineer")
  .setShaped([[<pneumaticcraft:ingot_iron_compressed>, <ore:ingotZircaloy>,<ore:ingotIronCompressed>], 
  [null, null,null], 
  [<ore:ingotIronCompressed>, <ore:ingotZircaloy>,<ore:ingotIronCompressed>]])
  .setFluid(<liquid:glass> * 750) 	
  .addOutput(<pneumaticcraft:pressure_tube> * 8)
  .addTool(<ore:artisansHammer>, 10)    
  .create();
  

// And we can reuse our
RecipeBuilder.get("engineer")
  .setShaped([[<pneumaticcraft:ingot_iron_compressed>, <ore:ingotZircaloy>,<ore:ingotIronCompressed>], 
  [null, null,null], 
  [<ore:ingotIronCompressed>, <ore:ingotZircaloy>,<ore:ingotIronCompressed>]])
  .setFluid(<liquid:plastic> * 500) 	
  .addOutput(<pneumaticcraft:pressure_tube> * 8)
  .addTool(<ore:artisansHammer>, 10)    
  .create();

// Solid Fuel Generator , Try to be consistent with the adv coalgenerator but with Iron and a better battery
recipes.remove(<pneumaticcraft:air_compressor> );
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:ingotIronCompressed>,<pneumaticcraft:pressure_tube>, <ore:ingotIronCompressed>], 
  [<immersiveengineering:material:9>, <ore:circuitAdvanced>, <immersiveengineering:material:9>], 
  [<ore:ingotIronCompressed>, <techreborn:iron_furnace>, <ore:ingotIronCompressed>]
  ] )
  .addOutput(<pneumaticcraft:air_compressor> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
  
recipes.remove(<pneumaticcraft:liquid_compressor> );
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:ingotIronCompressed>,<pneumaticcraft:pressure_tube>, <ore:ingotIronCompressed>], 
  [<immersiveengineering:material:9>,  <ore:circuitAdvanced>, <immersiveengineering:material:9>], 
  [<ore:ingotIronCompressed>, <immersiveengineering:metal_device1:2>, <ore:ingotIronCompressed>]
  ] )
  .addOutput(<pneumaticcraft:liquid_compressor> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
  
recipes.remove(<pneumaticcraft:thermal_compressor>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:ingotIronCompressed>,<pneumaticcraft:advanced_pressure_tube>, <ore:ingotIronCompressed>], 
  [<immersiveengineering:material:9>,  <ore:circuitAdvanced>, <immersiveengineering:material:9>], 
  [<ore:ingotIronCompressed>, <immersiveengineering:metal_device1:3>, <ore:ingotIronCompressed>]
  ] )
  .addOutput(<pneumaticcraft:thermal_compressor> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  

recipes.remove(<pneumaticcraft:flux_compressor>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:ingotIronCompressed>,<pneumaticcraft:advanced_pressure_tube>, <ore:ingotIronCompressed>], 
  [<immersiveengineering:material:9>,  <ore:circuitAdvanced>, <immersiveengineering:material:9>], 
  [<ore:ingotIronCompressed>, <techreborn:compressor>, <ore:ingotIronCompressed>]
  ] )
  .addOutput(<pneumaticcraft:flux_compressor> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
//   Early game Capacitor using porcelain
recipes.addShaped("TTM_Capacitor", <pneumaticcraft:capacitor>, [[<ore:nuggetIron>, null, <ore:nuggetIron>], [<ceramics:unfired_clay:5>,<ore:dustCoal>, <ceramics:unfired_clay:5>], [null, <ore:paper>, null]]);

//   Mid game using purified coal (Need Blast furnace) (*4)
recipes.addShaped("TTM_Capacitor4", <pneumaticcraft:capacitor> * 4, [[<ore:nuggetIron>, null, <ore:nuggetIron>], [<ceramics:unfired_clay:5>,<ore:dustGraphite>,<ceramics:unfired_clay:5>], [null, <ore:paper>, null]]);

//   Mid End game using plastic and refined iron (*8)
recipes.addShaped("TTM_Capacitor8", <pneumaticcraft:capacitor> * 8, [[<ore:nuggetRefinedIron>, null, <ore:nuggetRefinedIron>], [<ore:plasticCyan>,<techreborn:part:34>,<ore:plasticCyan>], [null, <ore:paper>, null]]);

var itemCapacitor = <ore:itemCapacitor>;
itemCapacitor.add(<pneumaticcraft:capacitor>);

// Normalize Transistor
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);

// Normalize capacitor
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);

recipes.remove(<pneumaticcraft:network_component:5>);
recipes.addShaped("TTM_network_component", <pneumaticcraft:network_component:5> * 16, [[<ore:oc:materialTransistor>, <ore:oc:materialTransistor>, <ore:oc:materialTransistor>], [<ore:oc:materialTransistor>, <ore:chestWood>, <ore:oc:materialTransistor>], [<ore:oc:materialTransistor>,<ore:oc:materialTransistor>, <ore:oc:materialTransistor>]]);

recipes.remove(<pneumaticcraft:printed_circuit_board>);
mods.immersiveengineering.Blueprint.addRecipe("components",<pneumaticcraft:printed_circuit_board>  , [<opencomputers:material:7>,<techreborn:plates:35>,<opencomputers:material:6>, <opencomputers:material:4>,<pneumaticcraft:capacitor>]);


mods.pneumaticcraft.pressurechamber.addRecipe( [<opencomputers:material:7>,<techreborn:plates:35>,<opencomputers:material:6>, <opencomputers:material:4>,<pneumaticcraft:capacitor>], -0.7, [<pneumaticcraft:printed_circuit_board> * 3]);


// Glass, So Alloy using material
recipes.remove(<pneumaticcraft:pressure_chamber_glass>);
mods.immersiveengineering.AlloySmelter.addRecipe(<pneumaticcraft:pressure_chamber_glass>,<ore:ingotIronCompressed>,<ore:blockGlass>,2000);
//mods.techreborn.alloySmelter.addRecipe(<pneumaticcraft:pressure_chamber_glass>,<ore:ingotIronCompressed>,  <ore:blockGlass>, 180, 15);
mods.nuclearcraft.alloy_furnace.addRecipe( <ore:blockGlass>,<ore:ingotIronCompressed>, <pneumaticcraft:pressure_chamber_glass>);

recipes.remove( <pneumaticcraft:remote>);
recipes.addShaped("TTM_remote", <pneumaticcraft:remote>, [[null, <pneumaticcraft:network_component:3>, null], [<ore:oc:materialTransistor>, <pneumaticcraft:gps_tool>, <ore:oc:materialTransistor>], [<ore:oc:materialTransistor>, <pneumaticcraft:network_component:2>,<ore:oc:materialTransistor>]]);




// Add PC plastic to ore dict
var sheetPlastic = <ore:sheetPlastic>;
sheetPlastic.add(<pneumaticcraft:plastic>);
sheetPlastic.add(<pneumaticcraft:plastic:1>);
sheetPlastic.add(<pneumaticcraft:plastic:2>);
sheetPlastic.add(<pneumaticcraft:plastic:3>);
sheetPlastic.add(<pneumaticcraft:plastic:4>);
sheetPlastic.add(<pneumaticcraft:plastic:5>);
sheetPlastic.add(<pneumaticcraft:plastic:6>);
sheetPlastic.add(<pneumaticcraft:plastic:7>);
sheetPlastic.add(<pneumaticcraft:plastic:8>);
sheetPlastic.add(<pneumaticcraft:plastic:9>);
sheetPlastic.add(<pneumaticcraft:plastic:10>);
sheetPlastic.add(<pneumaticcraft:plastic:11>);
sheetPlastic.add(<pneumaticcraft:plastic:12>);
sheetPlastic.add(<pneumaticcraft:plastic:13>);
sheetPlastic.add(<pneumaticcraft:plastic:14>);
sheetPlastic.add(<pneumaticcraft:plastic:15>);



// Add a casting recipes for the bassin (bloc) and table (sheet)

mods.tconstruct.Casting.addBasinRecipe(<emergingtechnology:plasticblock>,null, <liquid:plastic>, 1296,false);
mods.tconstruct.Casting.addTableRecipe(<emergingtechnology:plasticsheet>, <tconstruct:cast_custom:3>,<liquid:plastic>, 144);

// Modify the UV Light to use a UV Light in place of buy it over a tablet...

//recipes.remove(<pneumaticcraft:uv_light_box>);
//recipes.addShaped("TTM_uv_light_box", <pneumaticcraft:uv_light_box>, [[<emergingtechnology:purplebulb>, <emergingtechnology:purplebulb>, <emergingtechnology:purplebulb>], [<ore:ingotIronCompressed>, <ore:circuitAdvanced>, <pneumaticcraft:pressure_tube>], [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]]);

// USE IE Distillation Tower
recipes.remove(<pneumaticcraft:refinery>);


<pneumaticcraft:refinery>.displayName = "Refinery (Disabled)";
<pneumaticcraft:refinery>.addTooltip("Recipes from pneumaticcraft was moved to IE Distillation / Refinery");

// Allow to do Electron Tube using negative 
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:glassReinforced>,<minecraft:glowstone_dust>,<rs_ctr:wire_e>], -0.5, [<immersiveengineering:material:26> * 8]);
// mods.pneumaticcraft.pressurechamber.removeRecipe([<minecraft:diamond:0>]);


mods.techreborn.implosionCompressor.addRecipe(<pneumaticcraft:ingot_iron_compressed>, null, <minecraft:iron_ingot>,<stevescarts:modulecomponents:6>, 20, 32);

mods.techreborn.implosionCompressor.addRecipe(<pneumaticcraft:compressed_iron_block>, null, <minecraft:iron_block>,<immersiveengineering:wooden_device0:4> * 4, 20, 32);

mods.techreborn.implosionCompressor.addRecipe(<pneumaticcraft:compressed_iron_block>, null, <minecraft:iron_block>,<minecraft:tnt>, 20, 32);

mods.techreborn.implosionCompressor.addRecipe(<pneumaticcraft:compressed_iron_gear>, null, <thermalfoundation:material:24>,<stevescarts:modulecomponents:6>, 20, 32);

//mods.techreborn.compressor.addRecipe(<pneumaticcraft:ingot_iron_compressed>, <ore:dustSteel>,120, 20);
//mods.horsepower.Press.add(<ore:dustSteel>, <pneumaticcraft:ingot_iron_compressed>);


// Allow to do the eching acid using the Mixer (Liqui Plastic needed) (We use liquid plastic, gunpowder, glowing_mushroom and Beef)
// Not the original, but should work in peacefull
mods.immersiveengineering.Mixer.addRecipe(<liquid:etchacid> * 1000, <liquid:plastic> * 500, [<minecraft:gunpowder>, <ore:listAllbeefraw>], 2048);


recipes.remove(<pneumaticcraft:liquid_hopper>);
recipes.addShaped("TTM_iquid_hopper", <pneumaticcraft:liquid_hopper>, [[<ore:blockGlass>, <ore:circuitBasic>, <ore:blockGlass>], [<ore:blockGlass>, <fluidfunnel:funnel>, <ore:blockGlass>], [null, <ore:blockGlass>, null]]);

// pneumatic_cylinder use actuator
recipes.remove( <pneumaticcraft:pneumatic_cylinder>);
recipes.addShaped("TTM_pneumatic_cylinder", <pneumaticcraft:pneumatic_cylinder> * 2, [[<ore:plasticBlue>, <ore:ingotIronCompressed>, <ore:plasticBlue>], [<ore:plasticBlue>, <ore:actuator>, <ore:plasticBlue>], [<ore:plasticBlue>, <pneumaticcraft:cannon_barrel>, <ore:plasticBlue>]]);

recipes.remove(<pneumaticcraft:gas_lift>);
recipes.addShaped("TTM_gas_lift", <pneumaticcraft:gas_lift>, [[null, <pneumaticcraft:pressure_tube>, null], [<pneumaticcraft:pressure_tube>, <buildcraftfactory:pump>, <pneumaticcraft:pressure_tube>], [<ore:ingotIronCompressed>, <buildcraftfactory:mining_well>, <ore:ingotIronCompressed>]]);

recipes.remove(<pneumaticcraft:turbine_rotor>);
recipes.addShaped("TTM_turbine_rotor", <pneumaticcraft:turbine_rotor>, [[null, <pneumaticcraft:turbine_blade>, null], [null, <ore:motor>, null], [<pneumaticcraft:turbine_blade>, null, <pneumaticcraft:turbine_blade>]]);

// Allow a aluminium (2X)
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:dustRedstone>,<ore:ingotAluminum>], 1.5, [<pneumaticcraft:turbine_blade> * 2]);
mods.techreborn.alloySmelter.addRecipe(<pneumaticcraft:turbine_blade>,<ore:dustRedstone>,<ore:ingotAluminum>, 50, 15);
mods.techreborn.alloySmelter.addRecipe(<pneumaticcraft:turbine_blade> * 2,<ore:dustRedstone>,<ore:sheetAluminium>, 50, 15);



// Titanium = 3
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:dustRedstone>,<ore:ingotTitanium>], 1.5, [<pneumaticcraft:turbine_blade> * 3]);

// Carbon = 4
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:dustRedstone>,<ore:ingotCarbon>], 1.5, [<pneumaticcraft:turbine_blade> * 4]);



// plastic_mixer us a motor
recipes.addShaped("TTM_plastic_mixer", <pneumaticcraft:plastic_mixer>, [[<ore:ingotIronCompressed>, <ore:blockGlass>, <ore:ingotIronCompressed>], [<ore:blockGlass>, null, <ore:blockGlass>], [<ore:ingotIronCompressed>, <ore:motor>, <ore:ingotIronCompressed>]]);


// Use thermopneumaticprocessingplant Like a kind of presser/heater/mixer
recipes.remove(<pneumaticcraft:thermopneumatic_processing_plant>);
recipes.addShaped("TTM_Thermopneumatic", <pneumaticcraft:thermopneumatic_processing_plant>, [[<ore:ingotIronCompressed>, <buildcraftfactory:tank>, <ore:ingotIronCompressed>], [<pneumaticcraft:pressure_tube>, <immersiveengineering:material:9>, <immersiveengineering:metal_decoration0>], [<ore:ingotIronCompressed>,<buildcraftfactory:tank>, <ore:ingotIronCompressed>]]);



mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 50, null, 2.0, 373, <liquid:steam> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:condensate_water> * 50, null, 2.0, 373, <liquid:preheated_water> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:distwater> * 50, null, 2.0, 373, <liquid:low_quality_steam> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:preheated_water> * 50, null, 2.0, 373, <liquid:high_pressure_steam> * 1000);


// Thermal compatibility
// Tier 3 1 MB (IE give 600)
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, <thermalfoundation:ore_fluid>, 3.0, 573, <liquid:oil> * 950);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, <thermalfoundation:ore_fluid:1>, 3.0, 573, <liquid:oil> * 950);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, <thermalfoundation:ore_fluid:5>, 3.0, 573, <liquid:oil> * 950);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 250, <thermalfoundation:ore_fluid>, 3.0, 573, <liquid:oil> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 250, <thermalfoundation:ore_fluid:1>, 3.0, 573, <liquid:oil> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 250, <thermalfoundation:ore_fluid:5>, 3.0, 573, <liquid:oil> * 1000);


mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 250,<minecraft:redstone>, 4.0, 473, <liquid:redstone> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 250, <minecraft:ender_pearl>, 4.0, 573, <liquid:ender> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 250, <minecraft:glowstone_dust>, 4.0, 573, <liquid:glowstone> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 250, <nuclearcraft:glowing_mushroom>, 4.0, 573, <liquid:glowstone> * 100);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 250, <minecraft:glowstone>, 5, 573, <liquid:glowstone> * 900);

// Steam need less pression
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam>* 150,<minecraft:redstone>, 3.5, 473, <liquid:redstone> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam>* 150, <minecraft:ender_pearl>, 3.5, 573, <liquid:ender> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam>* 150, <minecraft:glowstone_dust>, 3.5, 573, <liquid:glowstone> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam>* 150, <nuclearcraft:glowing_mushroom>, 3.5, 573, <liquid:glowstone> * 100);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam>* 150, <minecraft:glowstone>, 4.5, 573, <liquid:glowstone> * 900);

// so is  high_pressure_steam 
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <minecraft:redstone>, 2.5, 473, <liquid:redstone> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <minecraft:ender_pearl>, 2.5, 573, <liquid:ender> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <minecraft:glowstone_dust>, 2.5, 573, <liquid:glowstone> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <nuclearcraft:glowing_mushroom>, 2.0, 573, <liquid:glowstone> * 100);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <minecraft:glowstone>, 3.5, 573, <liquid:glowstone> * 900);



// Slush 
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam> * 150, <minecraft:packed_ice>, 2.5, 273, <liquid:slush> * 2000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam> * 150, <minecraft:ice>, 2.5, 273, <liquid:slush> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam> * 150, <nuclearcraft:block_ice>, 2.5, 373, <liquid:slush> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam> * 150, <biomesoplenty:hard_ice>, 3.5, 373, <liquid:slush> * 1000);


// Less pressure 
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <minecraft:packed_ice>, 1.5, 273, <liquid:slush> * 2000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <minecraft:ice>, 1.5, 273, <liquid:slush> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <nuclearcraft:block_ice>, 1.5, 373, <liquid:slush> * 1000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 100, <biomesoplenty:hard_ice>, 2.5, 373, <liquid:slush> * 1000);


// Growcraft
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 50,<growthcraft_bees:honey_comb_filled>, 1.5, 350, <liquid:fluid_honey> * 200);

// Nuclear craft
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:ethanol> * 75,<nuclearcraft:glowing_mushroom>, 1.5, 375, <liquid:radaway> * 100);

mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:radaway> * 250,<minecraft:redstone>, 1.5, 375, <liquid:radaway_slow> * 250);

// Techreborn
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam> * 250,<techreborn:part:31>,3, 425, <liquid:sap> * 300);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:high_pressure_steam> * 125,<techreborn:part:31>,2, 425, <liquid:sap> * 250);

// IE
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam> * 250,<immersiveengineering:seed>,3, 425, <liquid:plantoil> * 250);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:steam> * 125,<immersiveengineering:seed>,2, 425, <liquid:plantoil> * 250);



// Drone
// 1 Drone = 1 Recipe no change between drone
recipes.remove(<pneumaticcraft:harvesting_drone>);
recipes.addShaped("TTM_harvesting_drone", <pneumaticcraft:harvesting_drone>.withTag({volume: 12000.0 as float, currentAir: 0.0 as float}), [[<ore:oc:circuitChip3>, <pneumaticcraft:turbine_rotor>, null], [<pneumaticcraft:turbine_rotor>, <stevescarts:cartmodule:89>, <pneumaticcraft:turbine_rotor>], [null, <pneumaticcraft:turbine_rotor>, <ore:oc:circuitChip3>]]);

recipes.remove( <pneumaticcraft:drone>);
recipes.addShaped("TTM_pneu_drone", <pneumaticcraft:drone>.withTag({volume: 12000.0 as float, currentAir: 0.0 as float}), [[<ore:oc:circuitChip3>, <pneumaticcraft:turbine_rotor>, null], [<pneumaticcraft:turbine_rotor>, <opencomputers:material:11>, <pneumaticcraft:turbine_rotor>], [null, <pneumaticcraft:turbine_rotor>, <ore:oc:circuitChip3>]]);

recipes.remove( <pneumaticcraft:logistic_drone>);
recipes.addShaped("TTM_logistic_drone", <pneumaticcraft:logistic_drone>.withTag({volume: 12000.0 as float, currentAir: 0.0 as float}), [[<ore:oc:circuitChip3>, <pneumaticcraft:turbine_rotor>, null], [<pneumaticcraft:turbine_rotor>, <pneumaticcraft:logistics_module>, <pneumaticcraft:turbine_rotor>], [null, <pneumaticcraft:turbine_rotor>, <ore:oc:circuitChip3>]]);

recipes.remove(<pneumaticcraft:heat_frame>);
recipes.addShaped("TTM_heat_frame", <pneumaticcraft:heat_frame>, [[<ore:ingotIronCompressed>, <ore:ingotFroststeel>, <ore:ingotIronCompressed>], [<ore:ingotIronCompressed>, <nuclearcraft:heat_exchanger_glass>, <ore:ingotIronCompressed>], [<ore:ingotIronCompressed>, <ore:ingotSignalum>, <ore:ingotIronCompressed>]]);
