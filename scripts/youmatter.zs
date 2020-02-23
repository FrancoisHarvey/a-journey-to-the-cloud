// Alternative if you go to end city without going to luna 
recipes.addShaped("ttm_portal_dimension2", <portality:module_interdimensional>, [[<portality:frame>, <techreborn:machine_casing:2>, <portality:frame>], [<techreborn:machine_casing:2>, <youmatter:black_hole>, <techreborn:machine_casing:2>], [<portality:frame>, <techreborn:machine_casing:2>, <portality:frame>]]);


// as a cross over between mystical agriculture and end game

// Normalize recipes
recipes.remove(<youmatter:transistor_raw>);
recipes.remove(<youmatter:compute_module>);
furnace.remove(<youmatter:transistor>);
recipes.remove(<youmatter:machine_casing>);


recipes.remove(<youmatter:creator>);
recipes.addShaped("TTM_youcreator", <youmatter:creator>, [[<techreborn:machine_casing:1>, <portality:frame>, <techreborn:machine_casing:1>],
[<nuclearcraft:voltaic_pile_basic>.withTag({maxTransfer: 80000, capacity: 1600000, energy: 0}), <mysticalagriculture:seed_reprocessor>, <nuclearcraft:extractor_idle>], [<techreborn:machine_casing:1>, <portality:frame>, <techreborn:machine_casing:1>]]);

recipes.remove(<youmatter:thumb_drive>);
recipes.addShaped("TTM_thumb_drive", <youmatter:thumb_drive>, [[null, <ore:sheetPlastic>, <ore:sheetPlastic>], [<ore:oc:materialCard>, <techreborn:part:3>, <techreborn:part:3>], [null, <ore:sheetPlastic>, <ore:sheetPlastic>]]);

recipes.remove(<youmatter:encoder>);
recipes.addShaped("TTM_encoder", <youmatter:encoder>, [[<techreborn:machine_casing:1>, <ore:oc:databaseUpgrade3>, <techreborn:machine_casing:1>],
[<nuclearcraft:voltaic_pile_basic>.withTag({maxTransfer: 80000, capacity: 1600000, energy: 0}), <mysticalagriculture:mystical_machine_frame>, <opensecurity:card_writer>], 
[<techreborn:machine_casing:1>,<ore:oc:databaseUpgrade3>, <techreborn:machine_casing:1>]]);

recipes.addShaped("TTM_scanner", <youmatter:scanner>, [[<techreborn:machine_casing:1>, <ore:oc:analyzer>, <techreborn:machine_casing:1>],
[<nuclearcraft:voltaic_pile_basic>.withTag({maxTransfer: 80000, capacity: 1600000, energy: 0}), <mysticalagriculture:mystical_machine_frame>, <techreborn:part:1>], 
[<techreborn:machine_casing:1>,<cd4017be_lib:m:401>, <techreborn:machine_casing:1>]]);

recipes.remove(<youmatter:replicator>);
recipes.addShaped("TTM_replicator", <youmatter:replicator>, [[<techreborn:machine_casing:2>,<techreborn:fluid_replicator>, <techreborn:machine_casing:2>],
[<nuclearcraft:voltaic_pile_basic>.withTag({maxTransfer: 80000, capacity: 1600000, energy: 0}), <mysticalagriculture:mystical_machine_frame>, <opensecurity:mag_reader>], 
[<techreborn:machine_casing:2>,<opencomputers:printer>, <techreborn:machine_casing:2>]]);

// We create stabilizer using vibrant + mystical essence
// So as much as you have XP (or Essence
// We can also convert umatter to uumater using melter/ingot_former
recipes.remove(<forge:bucketfilled>.withTag({FluidName: "stabilizer", Amount: 1000}));

// Convert umatter from/too liquid
mods.nuclearcraft.melter.addRecipe(<techreborn:uumatter>, <liquid:umatter> * 100 );
mods.nuclearcraft.ingot_former.addRecipe(<liquid:umatter> * 100, <techreborn:uumatter>);

// Using XP + Mystical liquid to create stabilize
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:experience> * 1000, <liquid:inferium> * 1000, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:experience> * 500, <liquid:prudentium> * 750, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:experience> * 250, <liquid:intermedium> * 500, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:experience> * 125, <liquid:superium> * 250, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:experience> * 75, <liquid:supremium> * 125, <liquid:stabilizer> * 100);

// Using Vibrant (XP) + Mystical liquid to create stabilize
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:vibrant> * 128, <liquid:inferium> * 1000, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:vibrant> * 64, <liquid:prudentium> * 750, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:vibrant> * 32, <liquid:intermedium> * 500, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:vibrant> * 16, <liquid:superium> * 250, <liquid:stabilizer> * 100);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:vibrant> * 8, <liquid:supremium> * 125, <liquid:stabilizer> * 100);

// We use steam + Vibrant to do experience...
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:vibrant> * 32, <liquid:steam> * 1000, <liquid:experience> * 250);
mods.nuclearcraft.salt_mixer.addRecipe(<liquid:vibrant> * 32, <liquid:high_pressure_steam> * 250, <liquid:experience> * 250);

// Allow to melt some thing inside the melter
mods.nuclearcraft.melter.addRecipe(<tconstruct:materials:19>, <liquid:vibrant> * 288 );
mods.nuclearcraft.melter.addRecipe(<mysticalagriculture:chunk:5>, <liquid:experience> * 72 );
mods.nuclearcraft.melter.addRecipe(<mysticalagriculture:xp_droplet>, <liquid:experience> * 32 );



recipes.remove(<minecraft:experience_bottle>);
// Vibrant to  XP Bottle
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:experience_bottle>,  <minecraft:glass_bottle>,<liquid:experience> * 250 );
mods.nuclearcraft.infuser.addRecipe(<minecraft:glass_bottle>,<liquid:experience> * 250,<minecraft:experience_bottle>);

