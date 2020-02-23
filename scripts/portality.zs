// Portability
// 


// Will fix the recipes later,for now, just gate the frame.


// Temporary recipes for the frame, Need Moon (Helium3), Killing the ender dragon (endstone) or a working reactor nuclear
recipes.remove(<portality:frame>);
mods.immersiveengineering.Blueprint.addRecipe("frame", <portality:frame> , [<techreborn:machine_frame>,<floodlights:electric_incandescent_light_bulb>,<rs_ctr:frame>]);

mods.immersiveengineering.Blueprint.addRecipe("frame", <portality:frame> * 2 , [<ore:machineBlockAdvanced>,<floodlights:electric_incandescent_light_bulb>,<rs_ctr:frame>]);

mods.immersiveengineering.Blueprint.addRecipe("frame", <portality:frame> * 4 , [<ore:machineBlockElite>,<floodlights:electric_incandescent_light_bulb>,<rs_ctr:frame>]);


recipes.remove(<portality:controller>);
recipes.addShaped("TTM_portal_controller", <portality:controller>, [[<portality:frame>,<ore:oc:circuitChip1>, <portality:frame>], [<ore:plateEnderium>, <immersiveengineering:metal_device0>, <ore:plateEnderium>], [<portality:frame>, <nuclearcraft:fusion_electromagnet_idle>, <portality:frame>]]);



// ENERGY
recipes.remove( <portality:module_energy>);

recipes.remove( <portality:module_energy:1>);

recipes.addShaped("TTM_portal_eoutput", <portality:module_energy:1>, [[<portality:frame>, null, <portality:frame>], [null, <libvulpes:forgepoweroutput>, null], [<portality:frame>, null, <portality:frame>]]);

recipes.addShaped("TTM_portal_einput", <portality:module_energy>, [[<portality:frame>, null, <portality:frame>], [null, <libvulpes:forgepowerinput>, null], [<portality:frame>, null, <portality:frame>]]);


// FLUID

recipes.remove(<portality:module_fluids>);
recipes.remove(<portality:module_fluids:1>);

recipes.addShaped("TTM_portal_fluid_output",<portality:module_fluids:1>, [[<portality:frame>, null, <portality:frame>], [null, <libvulpes:hatch:3>, null], [<portality:frame>, null, <portality:frame>]]);

recipes.addShaped("TTM_portal_fluid_input",<portality:module_fluids>, [[<portality:frame>, null, <portality:frame>], [null,<libvulpes:hatch:2>, null], [<portality:frame>, null, <portality:frame>]]);


// ITEM
recipes.remove(<portality:module_items>);
recipes.remove(<portality:module_items:1>);

recipes.addShaped("TTM_portal_item_output",<portality:module_items:1>, [[<portality:frame>, null, <portality:frame>], [null, <libvulpes:hatch:1>, null], [<portality:frame>, null, <portality:frame>]]);

recipes.addShaped("TTM_portal_item_input",<portality:module_items>, [[<portality:frame>, null, <portality:frame>], [null,<libvulpes:hatch>, null], [<portality:frame>, null, <portality:frame>]]);

// NO Interdimensional portal before Moon

// VOID PORTAL
recipes.remove(<simplevoidworld:portal>);

recipes.addShaped("TTM_simplevoidworld", <simplevoidworld:portal>, [[<ore:turfMoon>, <minecraft:ender_eye:*>, <ore:turfMoon>], [<minecraft:ender_eye:*>, <techreborn:machine_casing:2>, <minecraft:ender_eye:*>], [ <ore:turfMoon>, <minecraft:ender_eye:*>, <ore:turfMoon>]]);


recipes.remove(<portality:module_interdimensional>);
recipes.addShaped("TTM_portal_dimension",<portality:module_interdimensional>, [[<portality:frame>, null, <portality:frame>], [null,<simplevoidworld:portal>, null], [<portality:frame>, null, <portality:frame>]]);

