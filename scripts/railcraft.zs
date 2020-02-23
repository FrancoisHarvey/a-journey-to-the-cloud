// railcraft.zs

import mods.artisanworktables.builder.RecipeBuilder;





// No coke oven, 

recipes.remove(<railcraft:coke_oven>);
<railcraft:coke_oven>.addTooltip("Disable, use IE one");


// Railcraft use Barrel from IE
recipes.remove(<railcraft:cart_tank>);
recipes.addShapeless("TTM_CartCart", <railcraft:cart_tank>, [<minecraft:minecart>, <immersiveengineering:wooden_device0:1>]);

// Use IE Explosive barrel for TNT Car
recipes.remove(<railcraft:cart_tnt_wood>);
recipes.addShaped("TTM_TntCart", <railcraft:cart_tnt_wood>, [[<ore:slabWood>, <immersiveengineering:wooden_device0:4>, <ore:slabWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

<railcraft:tank_iron_wall>.addTooltip("Less capacity par block and limited at 5x5, use IE Tank instead. Also keep iron tank in 1 chunk.");

recipes.remove(<railcraft:blast_furnace>);
<railcraft:blast_furnace>.addTooltip("Disable, use IE one");

# Moving to Steel 
recipes.remove(<railcraft:equipment>);
<railcraft:equipment>.addTooltip("Only the powered in steel age is allowed");

# To be consistent with RF stockage
recipes.remove(<railcraft:cart_redstone_flux>);
recipes.addShapeless("TTM_RFCart", <railcraft:cart_redstone_flux>, [<immersiveengineering:metal_device0:1>,<immersiveengineering:metal_device0:1>,<minecraft:minecart>]);

// We can use cement powder inside the Mixer to create liquid concrete

mods.immersiveengineering.Mixer.addRecipe(<liquid:concrete> * 1296 , <liquid:water> *500, [<railcraft:concrete>], 1024);


// Add Oredict Motor (Should move to engineer t)
recipes.remove(<railcraft:equipment:1>);
recipes.addShaped("TTM_RailcraftRolling", <railcraft:equipment:1>, [[<ore:gearSteel>, <minecraft:piston:*>, <ore:gearSteel>], [<minecraft:piston:*>, <ore:workbench>, <minecraft:piston:*>], [<ore:gearSteel>, <railcraft:charge:5> | <ore:motor>, <ore:gearSteel>]]);

// Add brass and rubber ore dict  and TAR  (Should move carpenter)
recipes.remove(<railcraft:tank_water>);
recipes.addShaped("TTM_tank_water", <railcraft:tank_water> * 6, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plateBronze> | <ore:plateBrass>, <ore:slimeball> | <ore:itemRubber> | <thermalfoundation:material:833>, <ore:plateBronze> | <ore:plateBrass>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// We remove RC glass as we have many more options
recipes.remove(<railcraft:glass>);
recipes.remove(<railcraft:glass:*>);
<railcraft:glass>.addTooltip("This modpack use reinforced glass from TechReborn");

// RAIL Normalisation

// No Rail inside the RC Rolling
recipes.remove(<minecraft:rail>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:rail>);


mods.railcraft.RollingMachine.addShaped("rail", <minecraft:rail> * 16,  [[<railcraft:rail>, null, <railcraft:rail>],
 [<railcraft:rail>, <railcraft:railbed>, <railcraft:rail>], 
 [<railcraft:rail>, null, <railcraft:rail>]]);
 
// Same for Golden
recipes.remove(<minecraft:golden_rail>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:golden_rail>);

recipes.remove(<minecraft:detector_rail>);
mods.railcraft.RollingMachine.addShaped("detector_rail", <minecraft:golden_rail> * 16,  [[<railcraft:rail:1>, null, <railcraft:rail:1>],
 [<railcraft:rail:1>, <railcraft:railbed>, <railcraft:rail:1>],
 [<railcraft:rail:1>, <ore:dustRedstone>, <railcraft:rail:1>]]);


// We move the detector plate to RC Rolling also
recipes.remove(<minecraft:detector_rail>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:detector_rail>);

mods.railcraft.RollingMachine.addShaped("detector_rail",<minecraft:detector_rail> * 16, [[<railcraft:rail>, <railcraft:railbed>, <railcraft:rail>],
 [<railcraft:rail>, <minecraft:stone_pressure_plate:*>, <railcraft:rail>],
 [<railcraft:rail>, <ore:dustRedstone>, <railcraft:rail>]]);


recipes.remove(<minecraft:activator_rail>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:activator_rail>);
mods.railcraft.RollingMachine.addShaped("activator_rail",<minecraft:activator_rail> * 16, [[<railcraft:rail>, <minecraft:redstone_torch>, <railcraft:rail>],
 [<railcraft:rail>, <railcraft:railbed>, <railcraft:rail>], 
 [<railcraft:rail>, <minecraft:redstone_torch>, <railcraft:rail>]]);

recipes.remove(<railcraft:track_elevator>);

mods.railcraft.RollingMachine.addShaped("track_elevator",<railcraft:track_elevator> * 8, [[<railcraft:rail:1>, <ore:dustRedstone>, <railcraft:rail:1>],
 [<railcraft:rail:1>, <railcraft:rail>, <railcraft:rail:1>], 
 [<railcraft:rail:1>, <ore:dustRedstone>, <railcraft:rail:1>]]);

// We allow manual creation of the abandonned one, but lower the output (They are broken, so should be bad engineer work )
recipes.remove( <railcraft:track_flex_abandoned> );
recipes.addShaped("TTM_TrackAband", <railcraft:track_flex_abandoned> * 8,[[<railcraft:rail>, null, <railcraft:rail>],
 [<railcraft:rail>, <railcraft:tie>, <railcraft:rail>],
 [<railcraft:rail>, null, <railcraft:rail>]]);

mods.railcraft.RollingMachine.addShaped("TTM_TrackAband", <railcraft:track_flex_abandoned>  * 16,  [[<railcraft:rail>, null, <railcraft:rail>], 
[<railcraft:rail>, <railcraft:tie>, <railcraft:rail>],
 [<railcraft:rail>, null, <railcraft:rail>]]);


recipes.remove(<railcraft:track_flex_electric>);
mods.railcraft.RollingMachine.addShaped("track_flex_electric",<railcraft:track_flex_electric>  * 32, [[<railcraft:rail>, <railcraft:rail:5>, <railcraft:rail>], [<railcraft:rail>, <railcraft:railbed>, <railcraft:rail>], [<railcraft:rail>, <railcraft:rail:5>, <railcraft:rail>]]);

recipes.remove(<railcraft:track_flex_high_speed>);
mods.railcraft.RollingMachine.addShaped("track_flex_high_speed", <railcraft:track_flex_high_speed>  * 32, [[<railcraft:rail:3>, null, <railcraft:rail:3>], [<railcraft:rail:3>, <railcraft:railbed:1>, <railcraft:rail:3>], [<railcraft:rail:3>, null, <railcraft:rail:3>]]);


recipes.remove(<railcraft:track_flex_hs_electric>);
mods.railcraft.RollingMachine.addShaped("track_flex_hs_electric",<railcraft:track_flex_hs_electric>  * 32, [[<railcraft:rail:3>, <railcraft:rail:5>, <railcraft:rail:3>], [<railcraft:rail:3>, <railcraft:railbed:1>, <railcraft:rail:3>], [<railcraft:rail:3>, <railcraft:rail:5>, <railcraft:rail:3>]]);

recipes.remove(<railcraft:track_flex_reinforced>);
mods.railcraft.RollingMachine.addShaped("track_flex_reinforced", <railcraft:track_flex_reinforced>  * 32, [[<railcraft:rail:4>, null, <railcraft:rail:4>], [<railcraft:rail:4>, <railcraft:railbed:1>, <railcraft:rail:4>], [<railcraft:rail:4>, null, <railcraft:rail:4>]]);

// Lower the boiler to Bronze/Brass et normzalize item/fluid
recipes.remove(<railcraft:boiler_firebox_solid>);

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>],
  [<ore:ingotBrickSeared>, <ore:plateBronze> , <ore:ingotBrickSeared>],
  [<ore:ingotBrickSeared>, <minecraft:furnace:*>, <ore:ingotBrickSeared>]])
  .addOutput( <railcraft:boiler_firebox_solid>)
  .addTool(<ore:artisansHammer>, 25)   
  .create();

recipes.remove(<railcraft:boiler_firebox_fluid>);

RecipeBuilder.get("engineer")
  .setShaped( [[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>],
  [<ore:ingotBrickSeared>, <ore:plateBrass> , <ore:ingotBrickSeared>],
  [<ore:ingotBrickSeared>, <minecraft:furnace:*>, <ore:ingotBrickSeared>]])
  .addOutput( <railcraft:boiler_firebox_fluid>)
  .addTool(<ore:artisansHammer>, 25)   
  .create();
  


  
// Allow different recipes of pressure_low and a All Bronze/COpper option
recipes.remove(<railcraft:boiler_tank_pressure_low>);

 RecipeBuilder.get("carpenter")
  .setShaped( [[null, <ore:plateBronze> | <ore:plateBrass>, null],
  [null, <ore:plateCopper> , null],
  [null, <ore:plateBronze>  | <ore:plateBrass>, null]])
  .addOutput( <railcraft:boiler_tank_pressure_low>)
  .addTool(<ore:artisansHammer>, 25)   
  .create();

 RecipeBuilder.get("carpenter")
  .setShaped( [[null, <ore:plateIron>, null],
  [null, <ore:plateCopper> , null],
  [null, <ore:plateIron>, null]])
  .addOutput( <railcraft:boiler_tank_pressure_low> * 3)
  .addTool(<ore:artisansHammer>, 25)   
  .create();
  
   RecipeBuilder.get("carpenter")
  .setShaped( [[null, <ore:plateInvar>, null],
  [null, <ore:plateConstantan> , null],
  [null, <ore:plateInvar>, null]])
  .addOutput( <railcraft:boiler_tank_pressure_low> * 4)
  .addTool(<ore:artisansHammer>, 25)   
  .create();
 
// Need Kinetic for this one or bronze Steam engine
recipes.remove(<railcraft:steam_turbine>);

RecipeBuilder.get("engineer")
  .setShaped( [[null, <ore:plateIron>,null],
  [<ore:plateIron>,<immersiveengineering:metal_device1:2> ,<ore:plateIron>],
  [<immersiveengineering:material:8>, <ore:plateIron>, <immersiveengineering:material:8>]])
  .addOutput( <railcraft:steam_turbine> * 4)
  .addTool(<ore:artisansHammer>, 25)   
  .create();
 
 // If you have some Steam engine to reuse 
 RecipeBuilder.get("engineer")
  .setShaped( [[null, <ore:plateIron>,null],
  [<ore:plateIron>,<sem:steamengine> ,<ore:plateIron>],
  [<immersiveengineering:material:8>, <ore:plateIron>, <immersiveengineering:material:8>]])
  .addOutput( <railcraft:steam_turbine>)
  .addTool(<ore:artisansHammer>, 25)   
  .create();
 
 
 // Circuit
 recipes.remove(<railcraft:circuit>);
 recipes.addShaped("TTM_Circuit", <railcraft:circuit>, [[null, <minecraft:repeater:*>, <minecraft:wool:14>], [null, <ore:plateGold>, <ore:dustRedstone>], [<minecraft:wool:14>, <rs_ctr:wire>, <ore:circuitBasic>]]);

 recipes.remove(<railcraft:circuit:1>);

recipes.addShaped("TTM_Circuit1", <railcraft:circuit:1>, [[null, <minecraft:repeater:*>, <minecraft:wool:13>], [null, <ore:plateGold>, <ore:dustRedstone>], [<minecraft:wool:13>, <rs_ctr:wire>, <ore:circuitBasic>]]);

 recipes.remove(<railcraft:circuit:2>);

recipes.addShaped("TTM_Circuit2", <railcraft:circuit:2>, [[null, <minecraft:repeater:*>, <minecraft:wool:4>], [null, <ore:plateGold>, <ore:dustRedstone>], [<minecraft:wool:4>, <rs_ctr:wire>, <ore:circuitBasic>]]);

