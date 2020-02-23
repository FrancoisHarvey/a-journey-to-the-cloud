// Immersive Tech


// Allow Cross mod compatibility between nuclear craft / IE / Railcraft

mods.immersivetechnology.Boiler.addRecipe(<liquid:high_pressure_steam> * 1000, <liquid:preheated_water> * 100, 1);
mods.immersivetechnology.Boiler.addRecipe(<liquid:low_quality_steam> * 1000, <liquid:condensate_water> * 100, 1);
mods.immersivetechnology.Boiler.addRecipe(<liquid:distwater> * 100, <liquid:slush> * 100, 1);




mods.immersivetechnology.Boiler.addFuel(<liquid:kerosene> * 3, 1, 20);
mods.immersivetechnology.Boiler.addFuel(<liquid:gasoline> * 3, 1, 20);


mods.immersivetechnology.SolarTower.addRecipe(<liquid:preheated_water> * 100, <liquid:condensate_water> * 100, 1);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:steam> * 1000, <liquid:preheated_water> * 45, 1);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:slush> * 1000, <liquid:distwater> * 45, 1);


/* Normalize on Nuclear Craft approach */
mods.immersivetechnology.SteamTurbine.removeFuel(<liquid:steam>);
mods.immersivetechnology.SteamTurbine.addFuel( <liquid:exhaust_steam>, <liquid:high_pressure_steam> * 100, 1);
mods.immersivetechnology.SteamTurbine.addFuel( <liquid:exhaust_steam>, <liquid:low_quality_steam> * 150, 1);
mods.immersivetechnology.SteamTurbine.addFuel( <liquid:exhaust_steam>, <liquid:steam> * 200, 1);


// Allow steam to condenser
mods.nuclearcraft.condenser.addRecipe([<liquid:steam> * 1024,<liquid:condensate_water> * 37, 0.4, 30]);


recipes.remove(<immersivetech:connectors>);
recipes.addShaped("TTM_connectors_timer", <immersivetech:connectors>, [[<ore:paneGlass>, <immersiveengineering:connector:12>, <ore:paneGlass>], [<immersiveengineering:material:27>, <rs_ctr:clock>, <immersiveengineering:material:27>], [<ore:paneGlass>, <ore:gemQuartz>, <ore:paneGlass>]]);

recipes.addShaped("TTM_connector_wire", <immersiveengineering:connector:12> * 6, [[<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>], [<minecraft:hardened_clay>,<rs_ctr:wire>, <minecraft:hardened_clay>]]);
