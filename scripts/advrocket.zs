// AdvRocket

import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<ore:ingotTitaniumAlumide>);
recipes.remove(<advancedrocketry:productingot>);

furnace.remove(<ore:ingotTitaniumAlumide>);
furnace.remove(<advancedrocketry:productingot>);

recipes.remove(<ore:ingotTitaniumIridium>);
recipes.remove(<advancedrocketry:productingot:1>);

furnace.remove(<ore:ingotTitaniumIridium>);
furnace.remove(<advancedrocketry:productingot:1>);

furnace.remove(<ore:ingotTitanium>);
furnace.remove(<libvulpes:productingot:7>);

furnace.remove(<libvulpes:productingot:10>);


// Use the Coal Generator as a 1 block Iron age Generator 
// But it need RebornTech battery
recipes.remove(<libvulpes:coalgenerator>);

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:cobblestone>, <techreborn:cable:1>, <ore:cobblestone>], 
  [<ore:cobblestone>, <ore:itemBattery>, <ore:cobblestone>],
  [<ore:cobblestone>, <techreborn:iron_furnace>, <ore:cobblestone>]])
  .addOutput( <libvulpes:coalgenerator>)
  .addTool(<ore:artisansSolderer>, 35)
  .create();
  
  
  // Battery from libvulpes must be done using TechReborn
recipes.remove(<libvulpes:battery>);
recipes.remove(<libvulpes:battery:1>);

recipes.addShapeless("TTM_vulpes_battery",<libvulpes:battery> * 4, [<techreborn:rebattery>]);
recipes.addShapeless("TTM_vulpes_batteryLithium",<libvulpes:battery> * 16, [<techreborn:lithiumbattery>]);


recipes.addShaped("TTM_advbattery", <libvulpes:battery:1>, [[null, null, null], [<libvulpes:battery>, <ore:plateCopper>, <libvulpes:battery>], [<libvulpes:battery>, <ore:plateCopper>, <libvulpes:battery>]]);

recipes.addShaped("TTM_advbattery4X", <libvulpes:battery:1> * 4, [[null, null, null], [<techreborn:rebattery>, <ore:plateCopper>, <techreborn:rebattery>], [<techreborn:rebattery>, <ore:plateCopper>, <techreborn:rebattery>]]);


// Small Plate
recipes.remove(<advancedrocketry:platepress>);

RecipeBuilder.get("engineer")
  .setShaped( [[null, null, null], 
  [null, <minecraft:piston>, null], 
  [<ore:plateIron>,<immersiveengineering:material:8>, <ore:plateIron>]])
  .addOutput( <advancedrocketry:platepress>)
  .addTool(<ore:artisansHammer>, 35)
  .create();


mods.immersiveengineering.Blueprint.addRecipe("frame",<libvulpes:structuremachine> , [<jaopca:item_platedensealuminium>,<ore:circuitStorage>]);


// Structure Machine - Use  Iron
recipes.remove(<libvulpes:structuremachine>);
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine>)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:iron> * 250)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <ore:circuitAdvanced>, <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 2)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:iron> * 250)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 2)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:steel> * 250)
  .create();
 
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>,<ore:circuitStorage>, <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 3)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:steel> * 250)
  .create();


RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>,  <ore:circuitAdvanced>, <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 4)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:steel> * 250)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <techreborn:machine_frame> , <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 2)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:iron> * 250)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <techreborn:machine_frame> , <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 4)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:steel> * 250)
  .create();
  
  
// TIER 2
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <techreborn:machine_frame:1> , <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 6)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:steel> * 300)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <techreborn:machine_frame:1> , <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 8)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:titanium> * 300)
  .create();
  
// TIER 3
RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <techreborn:machine_frame:2> , <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 10)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:iron> * 300)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>], 
  [<ore:plateIron>, <techreborn:machine_frame:2> , <ore:plateIron>], [
  <ore:stickIron>,<ore:plateIron>, <ore:stickIron>]])
  .addOutput( <libvulpes:structuremachine> * 12)
  .addTool(<ore:artisansSolderer>, 25)
  .setFluid(<liquid:steel> * 300)
  .create();

// ADV Rocket Solor Block
recipes.remove(<advancedrocketry:solargenerator>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:plateIron>, <stevescarts:modulecomponents:44>, <ore:plateIron>], 
  [<ore:plateIron>,  <libvulpes:structuremachine>, <ore:plateIron>], 
  [<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>]
  ] )
  .addOutput(<advancedrocketry:solarpanel> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
  

// ADV Rocket Solor Generator Level 1 - Keep the same design as the other generator
// We remove the input plug
// # 1 FE / tick
recipes.remove(<advancedrocketry:solargenerator>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:plateIron>, <stevescarts:modulecomponents:44>, <ore:plateIron>], 
  [<ore:plateIron>,  <libvulpes:battery>, <ore:plateIron>], 
  [<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>]
  ] )
  .addOutput(<advancedrocketry:solargenerator> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
// Same for Satellite

recipes.remove(<advancedrocketry:satellitepowersource>);
recipes.addShaped("TTM_Satbasicsolarpanel", <advancedrocketry:satellitepowersource>, [[<stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>], [<stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>], [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);


// Add recipes for nugget silicon using MetalPress
recipes.remove(<libvulpes:productnugget:3>);
mods.immersiveengineering.MetalPress.addRecipe(<libvulpes:productnugget:3> * 9, <ore:plateSilicon>, <immersiveengineering:mold:6>, 500, 1);

// Remove this rod as we use the other one
recipes.remove(<libvulpes:productrod:1>);
recipes.remove(<libvulpes:productrod:2>);
recipes.remove(<libvulpes:productrod:3>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<libvulpes:productrod:5>);
recipes.remove(<libvulpes:productrod:6>);
recipes.remove(<libvulpes:productrod:7>);
recipes.remove(<libvulpes:productrod:8>);
recipes.remove(<libvulpes:productrod:9>);
recipes.remove(<libvulpes:productrod:10>);

// End game so Use Lathe from Adv
recipes.remove(<advancedrocketry:productrod:1>);
recipes.remove(<advancedrocketry:productrod>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod:1>);


// 
// Normalize quartz crucible using quartz plaque and remove the cauldron
// Quartz plaque need a compressor
recipes.remove( <advancedrocketry:iquartzcrucible>);
RecipeBuilder.get("blacksmith")
  .setShaped( [[<ore:plateQuartz>, null, <ore:plateQuartz>], 
  [<ore:plateQuartz>, null, <ore:plateQuartz>], 
  [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>]])
  .addOutput(<advancedrocketry:iquartzcrucible> )
  .addTool(<ore:artisansHammer>, 15)  
  .create();

// We mask JEI tab for this furnace
recipes.remove(<advancedrocketry:arcfurnace>);
recipes.remove(<advancedrocketry:blastbrick>);
<advancedrocketry:arcfurnace>.addTooltip("Disabled - Use IE Arc Furnace, Nuclear Alloy Furnace or Techreborn Blast Furnace for end game metal");
<advancedrocketry:blastbrick>.addTooltip("Disable - Use IE Arc Furnace, Nuclear Alloy Furnace or Techreborn Blast Furnace for end game metal");



// Liquidtank Need glass Reinforced from TC
recipes.remove(<advancedrocketry:liquidtank>);
recipes.addShaped("TTM_iquidtank", <advancedrocketry:liquidtank>, [[<advancedrocketry:pressuretank:3>, <ore:glassReinforced>, <advancedrocketry:pressuretank:3>],
 [<advancedrocketry:pressuretank:3>, <ore:glassReinforced>, <advancedrocketry:pressuretank:3>],
 [<advancedrocketry:pressuretank:3>,<ore:glassReinforced>, <advancedrocketry:pressuretank:3>]]);

// Sear Need Wool + Rubber + Liquid plastic
recipes.remove(<advancedrocketry:seat>);
RecipeBuilder.get("tailor")
  .setShaped( [[<minecraft:wool:*>,<ore:materialRubber>, <minecraft:wool:*>]])
  .addOutput( <advancedrocketry:seat> )
  .setFluid(<liquid:plastic> * 250)
  .create();
  
  
// Add Basalt to ore dict
var basalt = <ore:basalt>;
basalt.add(<advancedrocketry:basalt>);

// Add Some Lathe recipes
// Wood stick
mods.advancedrocketry.Lathe.addRecipe(<minecraft:stick>*32, 80, 100,<ore:logWood>*1 );
mods.advancedrocketry.Lathe.addRecipe(<minecraft:stick>*8, 80, 100,<ore:plankWood>*1);
mods.advancedrocketry.Lathe.addRecipe(<immersiveengineering:material>*8, 80, 100,<ore:plankTreatedWood>*1);
mods.advancedrocketry.Lathe.addRecipe(<growthcraft_bamboo:bamboo_stick>*8, 80, 100,<growthcraft_bamboo:bamboo_plank>*1);
// Stick from sapling
mods.advancedrocketry.Lathe.addRecipe(<minecraft:stick>*3, 80, 100,<ore:treeSapling>*1);




// Electrode
mods.advancedrocketry.Lathe.addRecipe(<immersiveengineering:graphite_electrode>, 80, 100,<ore:ingotHOPGraphite> * 1);

// Plastic rod
mods.advancedrocketry.Lathe.addRecipe(<emergingtechnology:plasticrod>, 80, 100,<ore:blockPlastic> * 1);

// Cable
mods.advancedrocketry.Lathe.addRecipe(<techreborn:cable> * 3, 80, 100,<ore:stickCopper> * 1);
recipes.remove(<jaopca:item_sticktin>);
mods.advancedrocketry.Lathe.addRecipe(<techreborn:cable:1> * 4, 80, 100,<ore:rodTin>* 1);

// Gold and more need Lathe
recipes.remove(<techreborn:cable:2>);
mods.advancedrocketry.Lathe.addRecipe(<techreborn:cable:2> * 4, 80, 100,<ore:stickGold>* 1);

recipes.remove(<techreborn:cable:3>);
mods.advancedrocketry.Lathe.addRecipe(<techreborn:cable:3> * 4, 80, 100,<ore:stickAluminum> * 1);


// Railcraft tie using slabTreatedWood (3x optimized in place of the crafting)
mods.advancedrocketry.Lathe.addRecipe(<railcraft:tie> * 1, 80, 100,<ore:slabTreatedWood>*1);



// Stone rod
mods.advancedrocketry.Lathe.addRecipe(<tconstruct:stone_stick> * 8, 80, 100,<ore:stone> * 1);


// Upgrade Some IO circuit
recipes.remove(<advancedrocketry:ic:3>);
recipes.addShaped("TTM_controlcircuitboard", <advancedrocketry:ic:3>, [[<rs_ctr:wire>, <ore:oc:materialCU>, <rs_ctr:wire>],
 [<ore:dustCopper>, <stevescarts:modulecomponents:9>, <ore:dustCopper>], [<ore:dustCopper>, <ore:plateSteel>, <ore:dustCopper>]]);

recipes.remove(<advancedrocketry:ic:4>);
recipes.addShaped("TTM_iocircuitboard", <advancedrocketry:ic:4>, [[<rs_ctr:wire>, <rs_ctr:block_wire>, <rs_ctr:wire>], 
[<ore:dustGold>, <stevescarts:modulecomponents:9>, <ore:dustGold>], [<ore:dustGold>, <ore:plateSteel>, <ore:dustGold>]]);

recipes.remove(<advancedrocketry:ic:5>);
recipes.addShaped("TTM_liquidiocircuitboard", <advancedrocketry:ic:5>, [[<rs_ctr:wire>, <rs_ctr:block_wire>, <rs_ctr:wire>],
 [<ore:gemLapis>, <stevescarts:modulecomponents:9>, <ore:gemLapis>], [<ore:gemLapis>, <ore:plateSteel>, <ore:gemLapis>]]);

recipes.remove(<advancedrocketry:misc>);
recipes.addShaped("TTM_userinterface", <advancedrocketry:misc>, [[null, null, null], [<ore:plateIron>, <ore:electronTube>, <ore:plateIron>], [<techreborn:part:29>, <stevescarts:cartmodule:41>, <techreborn:part:29>]]);

// No Steel gear, we use Thermal one as they are oredict
recipes.remove(<libvulpes:productgear:6>);


// Lathe Recipe need a Servo
recipes.remove(<advancedrocketry:lathe>);
recipes.addShaped("TTM_lathe", <advancedrocketry:lathe>, [[<ore:stickIron>, <advancedrocketry:misc>, <ore:stickIron>], [<advancedrocketry:ic:4>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], [<ore:plateSteel>, <ore:servo>, <ore:plateSteel>]]);



// Normalize Titanium Gear

recipes.remove(<libvulpes:productgear:7>);
recipes.addShaped("TTM_GearTitanium", <thermalfoundation:material:26>, [[null, <ore:ingotTitanium>, null], [<ore:ingotTitanium>,  <ore:gearStone>, <ore:ingotTitanium>], [null, <ore:ingotTitanium>, null]]);


// Add some blast recipes

// Titanium alloy should be done using a Blast furnace
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<advancedrocketry:productingot:1>);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<advancedrocketry:productingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<advancedrocketry:productingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<advancedrocketry:productingot:1>);


mods.techreborn.blastFurnace.addRecipe(<advancedrocketry:productingot:1>, null,<ore:dustTitaniumIridium>,null, 600,  2048,1900);
mods.techreborn.blastFurnace.addRecipe(<advancedrocketry:productingot>, null,<ore:dustTitaniumAluminide>,null, 600,  2048,1700);

mods.techreborn.blastFurnace.addRecipe(<advancedrocketry:productingot:1> * 2, null,<ore:ingotTitanium>,<ore:ingotIridium>, 800,  2048,1900);
mods.techreborn.blastFurnace.addRecipe(<advancedrocketry:productingot> * 3, null,<ore:ingotTitanium> * 3,<ore:ingotAluminum> * 7, 1200,  2048,1700);

// Use the pneumatic craft to do the charcoal brick using dust
recipes.remove(<advancedrocketry:misc:1>);
mods.pneumaticcraft.pressurechamber.addRecipe( [<ore:dustCharcoal>], 5, [<advancedrocketry:misc:1>]);


// Add some more wood to be coherent
mods.advancedrocketry.CuttingMachine.addRecipe(<minecraft:planks:1> * 6, 80, 100,<harvestcraft:pammaple>);
mods.advancedrocketry.CuttingMachine.addRecipe(<techreborn:rubber_planks> * 6, 80, 100,<techreborn:rubber_log>);
mods.horsepower.ChoppingBlock.add(<growthcraft_bamboo:bamboo_stalk>, <growthcraft_bamboo:bamboo_plank> * 4,1, true);

mods.advancedrocketry.CuttingMachine.addRecipe(<growthcraft_bamboo:bamboo_plank> * 6, 80, 100,<growthcraft_bamboo:bamboo_stalk>);
mods.horsepower.ChoppingBlock.add(<techreborn:rubber_log>,<techreborn:rubber_planks> * 4, 1,true);




// Titanum Alloy

//mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:27>,<tconstruct:cast_custom:4>, <liquid:titanium>, 576);

//mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:27> , <ore:plateEmerald> * 4, <immersiveengineering:mold:1>, 500, 1);



//////////////////////////

//Space age Circuit

recipes.remove(<advancedrocketry:precisionassemblingmachine>);
 
recipes.addShaped("TTM_precisionassemblingmachine", <advancedrocketry:precisionassemblingmachine>, [[<pneumaticcraft:printed_circuit_board>, <advancedrocketry:misc>, <pneumaticcraft:printed_circuit_board>], [<advancedrocketry:ic:4>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], [<minecraft:furnace>, <ore:servo>, <minecraft:dropper>]]);

recipes.remove(<libvulpes:forgepowerinput>);

recipes.addShapeless("TTM_forgepowerouttoin", <libvulpes:forgepowerinput>, [<libvulpes:forgepoweroutput>]);
recipes.addShaped("TTM_forgepowerinput", <libvulpes:forgepowerinput>, [[<ore:itemCapacitor>, <libvulpes:battery>, <ore:itemCapacitor>], [<libvulpes:battery>, <libvulpes:structuremachine>, <libvulpes:battery>], [<ore:itemCapacitor>, <libvulpes:battery>, <ore:itemCapacitor>]]);


// Alter PrecisionAssembler
mods.advancedrocketry.PrecisionAssembler.clear();
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:3>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:4>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:5>);

// mods.advancedrocketry.Lathe.addRecipe(<techreborn:cable:1> * 3, 80, 100,<ore:rodTin>* 1);


mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:3>*3, 80, 100,null, <opencomputers:material:11>, <pneumaticcraft:printed_circuit_board>,<jaopca:item_platedensecopper>);

mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:4>*3, 80, 100,null, <opencomputers:material:11>, <pneumaticcraft:printed_circuit_board>,<jaopca:item_platedensegold>);

mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:5>*3, 80, 100,null,<opencomputers:material:11>, <pneumaticcraft:printed_circuit_board>,<jaopca:item_platedenselapis>);


// Add Circuit Using IC
mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate>, 80, 100,null,<opencomputers:material:8>, <pneumaticcraft:printed_circuit_board>,<techreborn:part:2>);

mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate:1>, 160, 100,null, <opencomputers:material:9>, <pneumaticcraft:advanced_pcb>,<advancedrocketry:itemcircuitplate>,<techreborn:part:1>);

recipes.remove(<advancedrocketry:rocketbuilder>);
recipes.addShaped("TTM_rocketbuilder", <advancedrocketry:rocketbuilder>, [[<ore:stickTitanium>, <advancedrocketry:misc>, <ore:stickTitanium>], [<advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], [<ore:gearTitanium>, <ore:oc:server1>, <ore:gearTitanium>]]);

recipes.remove(<advancedrocketry:satellite>);

recipes.addShaped("TTM_satellite", <advancedrocketry:satellite>, [[<ore:sheetAluminum>, <ore:sheetAluminum>, <ore:sheetAluminum>], [<ore:rodTitanium>, <advancedrocketry:ic:3>, <ore:rodTitanium>], [<ore:sheetAluminum>,<ore:oc:terminal>, <ore:sheetAluminum>]]);

recipes.remove(<advancedrocketry:satellitecontrolcenter>);
recipes.addShaped("TTM_satellitecontrolcenter", <advancedrocketry:satellitecontrolcenter>, [[<advancedrocketry:satelliteprimaryfunction>, <advancedrocketry:misc>, <advancedrocketry:satelliteprimaryfunction>], [<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>], [<ore:oc:terminalServer>, <ore:itemBattery>, <ore:oc:server2>]]);

// USE IE COIL (more economical if plate machine)
recipes.remove(<libvulpes:motor>);
recipes.addShaped("TTM_basicmotor", <libvulpes:motor>, [[null, <immersiveengineering:metal_decoration0>, <ore:plateSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:plateSteel>], [null,<immersiveengineering:metal_decoration0>, <ore:plateSteel>]]);


recipes.addShaped("coil_copper_selo", <immersiveengineering:metal_decoration0> * 2, [[<ore:solenoidCopper>, <ore:solenoidCopper>, <ore:solenoidCopper>], [<ore:solenoidCopper>, null, <ore:solenoidCopper>], [<ore:solenoidCopper>, <ore:solenoidCopper>, <ore:solenoidCopper>]]);

// Allow reuse from the motor, not economical if hand made 
recipes.addShaped("TTM_basicmotor2", <libvulpes:motor> * 2 , [[null, <immersiveengineering:metal_decoration0>, null], [<ore:stickSteel>, <ore:motor>, <ore:plateSteel>], [null,<immersiveengineering:metal_decoration0>, null]]);

recipes.remove(<libvulpes:advancedmotor>);
recipes.addShaped("TTM_advancedmotor", <libvulpes:advancedmotor>, [[null, <immersiveengineering:metal_decoration0:1>, <ore:plateSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:plateSteel>], [null, <immersiveengineering:metal_decoration0:1>, <ore:plateSteel>]]);

recipes.remove(<libvulpes:enhancedmotor>);
recipes.addShaped("TTM_enhancedmotor", <libvulpes:enhancedmotor>, [[null, <immersiveengineering:metal_decoration0:2>, <ore:plateTitanium>], [<ore:stickTitanium>, <ore:stickTitanium>, <ore:plateTitanium>], [null, <immersiveengineering:metal_decoration0:2>, <ore:plateTitanium>]]);

//
recipes.remove(<advancedrocketry:solarpanel>);

recipes.remove(<advancedrocketry:rocketmotor>);
recipes.addShaped("TTM_rocket_engine", <advancedrocketry:rocketmotor>, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<pneumaticcraft:pressure_tube>, <ore:plateTitanium>, <pneumaticcraft:pressure_tube>], [<ore:plateTitanium>, null, <ore:plateTitanium>]]);

recipes.remove(<advancedrocketry:advrocketmotor>);
recipes.addShaped("TTM_rocket_advengine", <advancedrocketry:advrocketmotor>, [[<ore:ingotTitaniumAluminide>, <ore:ingotTitaniumAluminide>, <ore:ingotTitaniumAluminide>], [<pneumaticcraft:advanced_pressure_tube>, <ore:plateTitaniumIridium>, <pneumaticcraft:advanced_pressure_tube>], [<ore:plateTitaniumIridium>, null, <ore:plateTitaniumIridium>]]);


recipes.remove(<advancedrocketry:structuretower>);



RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], [null, <ore:stickSteel>, null], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]])
  .addOutput(  <immersiveengineering:metal_decoration1:1> * 6)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 40)   
  .addTool(<ore:artisansPliers>, 40)      
  .create();
  
RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], [null, <ore:stickTungsten>, null], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]])
  .addOutput(  <immersiveengineering:metal_decoration1:1> * 9)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 60)   
  .addTool(<ore:artisansPliers>, 60)      
  .create();
  
RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], [null, <ore:stickTitaniumAluminide>, null], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]])
  .addOutput(  <immersiveengineering:metal_decoration1:1> * 12)
  .setMinimumTier(1)
  .addTool(<ore:artisansHammer>, 80)   
  .addTool(<ore:artisansPliers>, 80)      
  .create();
   
 
// Add A Beryllium Recipes for the optica sensor 
recipes.addShaped("TTM_opticalsensor2", <advancedrocketry:satelliteprimaryfunction> * 2, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [null, <ore:ingotBeryllium>, null], [null, <ore:plateGold>, null]]);

// HAtch need pipes (Fluid/Item/Injection/Extraction)
// Or Give * 3 If used Immersive Engineering Loader
recipes.remove(<libvulpes:hatch>);
recipes.addShaped("TTM_inputhatch", <libvulpes:hatch>, [[<minecraft:chest>], [<libvulpes:structuremachine>],[<indlog:item_pipe:1>]]);
recipes.addShaped("TTM_inputhatchIR", <libvulpes:hatch> * 3, [[<minecraft:chest>], [<libvulpes:structuremachine>],[<immersiverailroading:item_augment>.withTag({augment: 3})]]);


recipes.remove( <libvulpes:hatch:1>);
recipes.addShaped("TTM_outputhatch", <libvulpes:hatch:1>, [[<indlog:item_pipe:2>],[<libvulpes:structuremachine>], [<minecraft:chest>]]);
recipes.addShaped("TTM_outputhatchIR", <libvulpes:hatch:1> * 3, [[<immersiverailroading:item_augment>.withTag({augment: 4})],[<libvulpes:structuremachine>], [<minecraft:chest>]]);


recipes.remove( <libvulpes:hatch:2>);
recipes.addShaped("TTM_fluidinputhatch", <libvulpes:hatch:2>, [[<buildcraftfactory:tank>], [<libvulpes:structuremachine>],[<indlog:fluid_pipe:1>]]);
recipes.addShaped("TTM_fluidinputhatchIR", <libvulpes:hatch:2> * 3, [[<buildcraftfactory:tank>], [<libvulpes:structuremachine>],[<immersiverailroading:item_augment>.withTag({augment: 5})]]);


recipes.remove(<libvulpes:hatch:3>);
recipes.addShaped("TTM_fluidoutputhatch", <libvulpes:hatch:3>, [[<indlog:fluid_pipe:2>],[<libvulpes:structuremachine>], [<buildcraftfactory:tank>]]);
recipes.addShaped("TTM_fluidoutputhatchIR", <libvulpes:hatch:3> * 3, [[<immersiverailroading:item_augment>.withTag({augment: 6})],[<libvulpes:structuremachine>], [<buildcraftfactory:tank>]]);


// We dont need Electrolizer for a specific recipes
recipes.remove(<advancedrocketry:electrolyser>);
mods.jei.JEI.hideCategory("zmaster587.AR.electrolyzer");
<advancedrocketry:electrolyser>.addTooltip("Disable - Use Nuclearcraft Electrolyzer/Chemical Reactor/Fusion");

// Add a Chemical reactor recipes for rocket fuel
mods.nuclearcraft.chemical_reactor.addRecipe(<liquid:hydrogen> * 100, <liquid:oxygen> * 100, <liquid:rocketfuel> * 100, null);

recipes.remove(<advancedrocketry:circlelight>);
recipes.addShaped("TTM_circlelight", <advancedrocketry:circlelight>, [[<ore:glassReinforced>, <ore:sheetIron>, <ore:glassReinforced>], [null, <techreborn:lamp_incandescent>, null], [null, null, null]]);


recipes.addShaped("TTM_circlelight_2", <advancedrocketry:circlelight> * 2, [[<ore:glassReinforced>, <ore:sheetIron>, <ore:glassReinforced>], [null, <floodlights:electric_floodlight>, null], [null, null, null]]);


 recipes.addShaped("TTM_wirelesstransciever2", <advancedrocketry:wirelesstransciever> * 2, [[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>], [<ore:oc:wlanCard1>, <advancedrocketry:dataunit>, <ore:oc:wlanCard1>], [<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>]]);
 
 recipes.addShaped("TTM_wirelesstransciever4", <advancedrocketry:wirelesstransciever> * 4, [[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>], [<ore:oc:wlanCard2>, <advancedrocketry:dataunit>, <ore:oc:wlanCard2>], [<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>]]);
