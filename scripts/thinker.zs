// Thinker

import mods.artisanworktables.builder.RecipeBuilder;


// No Steel using the smeltery
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);




// Nor Alumnum
mods.tconstruct.Alloy.removeRecipe(<liquid:aluminum>);



// Allow SAP as a liquid
mods.tconstruct.Melting.addRecipe(<liquid:sap> * 144,<ore:materialResin>);
mods.tconstruct.Melting.addRecipe(<liquid:sap> * 144,<ore:materialResin>);

// Should add a chemical recipes for this one (Nitro 
recipes.remove(<tconstruct:throwball:1>);

// We use the melter to create smeltery
furnace.remove(<ore:ingotBrickSeared>);

// GROUT Can be done over any worktable (It's grout!)
// But it should be melted inside the melter.
// U can use ceramics
furnace.remove(<tconstruct:materials>);



// We can melt sulfur inside the melter / smeltery and do acid sulfuric with water :)
// Maybe not that realist, but will do for early game battery :)
// Dust from nuclear craft give 500 in place of 666 (75% efficacity)

mods.tconstruct.Melting.addRecipe(<liquid:sulfur> * 500,<ore:dustSulfur>);
// Less efficient
mods.tconstruct.Alloy.addRecipe(<liquid:sulfuric_acid> * 1000, [<liquid:sulfur> *500, <liquid:water> * 1000]);


// Add Arsenic to melting (Less Efficient than melter)
mods.tconstruct.Melting.addRecipe(<liquid:arsenic> * 500,<ore:dustArsenic>);

// Add Alugentum to melting (as we allow siver, same efficacity)
mods.tconstruct.Melting.addRecipe(<liquid:alugentum> * 144,<ore:dustAlugentum>);

// rock to liquid stone_decoration
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 36,<tinkersurvival:rock_stone>);


// Add a Silicon ingot for the smeltery
mods.tconstruct.Casting.addTableRecipe(<libvulpes:productingot:3>, <tconstruct:cast_custom>, <liquid:fluidsilicon>, 144);

// Add a Silicon `gem` for the smeltery

mods.tconstruct.Casting.addTableRecipe(<nuclearcraft:gem:6>, <tconstruct:cast_custom:2>, <liquid:fluidsilicon>, 144);

// Allow to do glowing mushroom using liquid glowstone casting table
mods.tconstruct.Casting.addTableRecipe(<nuclearcraft:glowing_mushroom>, <ore:listAllmushroom>, <liquid:glowstone>, 125);

// Allow to extract some glowstone from nuclear mushroom to farm it (they duplicate as most mushroom)
// And mushroom_stew for the other mushroom
mods.horsepower.Press.add(<nuclearcraft:glowing_mushroom>, <liquid:glowstone> * 50);
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 50,<nuclearcraft:glowing_mushroom>);

mods.horsepower.Press.add( <ore:listAllmushroom>, <liquid:mushroom_stew> * 50);


// Consistent with IE Hemp and Harvest Craft
// Allow more easy string at the beginning
recipes.addShaped("TTM_GrassFiber2String", <minecraft:string>,  [
 [<tinkerscompendium:grassfiber>, <tinkerscompendium:grassfiber>],
 [<tinkerscompendium:grassfiber>,null]]);

// Use string in place of fiber
recipes.remove(<tinkersurvival:crude_saw>);
recipes.addShaped("TTM_crude_saw", <tinkersurvival:crude_saw>, [[<tinkersurvival:crude_saw_blade>, null], [ <minecraft:string>, <ore:stickWood>]]);

// Use string in place of fiber
recipes.remove(<tinkersurvival:crude_saw_blade>);
recipes.addShaped("TTM_crude_saw_blade", <tinkersurvival:crude_saw_blade>, [[<ore:stickWood>, <tinkersurvival:flint_shard>], [<minecraft:string>, <tinkersurvival:flint_shard>]]);



// Add Stone Gear Casting
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>,  <ore:gearStone>, <liquid:gold>,  288, true, 20);


// wooden_hopper adjustement
recipes.remove(<tconstruct:wooden_hopper>);

RecipeBuilder.get("carpenter")
  .setShaped( [[<ore:plankWood>, <ore:gearStone>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>], [null, <ore:plankWood>, null]] )
  .addOutput( <tconstruct:wooden_hopper>)
  .addTool(<ore:artisansHandsaw>, 25)    
  .create();
 
 
RecipeBuilder.get("carpenter")
  .setShaped( [[<sem:brennbarholz>, <ore:gearStone>, <sem:brennbarholz>], [<sem:brennbarholz>, <ore:chestWood>, <sem:brennbarholz>], [null, <sem:brennbarholz>, null]] )
  .addOutput( <tconstruct:wooden_hopper> * 2)
  .addTool(<ore:artisansHandsaw>, 30)    
  .create();

RecipeBuilder.get("carpenter")
  .setShaped( [[<sem:brennbarholz>, <ore:gearBronze>, <sem:brennbarholz>], [<sem:brennbarholz>, <ore:chestWood>, <sem:brennbarholz>], [null, <sem:brennbarholz>, null]] )
  .addOutput( <tconstruct:wooden_hopper> * 3)
  .addTool(<ore:artisansHandsaw>, 40)    
  .create();


// Remove tinker_io
recipes.remove(<tinker_io:ore_crusher>);


<tinker_io:ore_crusher>.displayName = "Ore Crusher (Disabled)";
<tinker_io:ore_crusher>.addTooltip("Disabled in this pack. Use IE Crusher instead");


// Allow Some Copper (Iron Level) and bronze (Diamond level) tools using the blacksmith
// Added to a quest to allow the user to know it


RecipeBuilder.get("blacksmith")
  .setShaped( [[<ore:plateCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
  [null,null, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:pick_head>.withTag({Material: "copper"}))
  .addTool(<ore:artisansHammer>, 25)    
  .create();
 
RecipeBuilder.get("blacksmith")
  .setShaped( [[<ore:plateCopper>, <ore:ingotCopper>, null], 
  [<ore:plateCopper>,null, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:axe_head>.withTag({Material: "copper"}))
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateCopper>, null], 
  [null,null, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:shovel_head>.withTag({Material: "copper"}))
  .addTool(<ore:artisansHammer>, 25)    
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, null, null], 
  [null,<ore:ingotCopper>, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:tool_rod>.withTag({Material: "copper"}) )
  .addTool(<ore:artisansFile>, 25)    
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, null, null], 
  [null,<tconstruct:tool_rod>.withTag({Material: "copper"}), null], 
  [null, null, null]] )
  .addOutput(<tconstruct:binding>.withTag({Material: "copper"})  )
  .addTool(<ore:artisansPliers>, 25)    
  .create();
  
 // Bronze

RecipeBuilder.get("blacksmith")
  .setShaped( [[<ore:plateBronze>, <ore:ingotBronze>, <ore:ingotBronze>], 
  [null,null, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:pick_head>.withTag({Material: "bronze"}))
  .addTool(<ore:artisansHammer>, 25)    
  .create();
 
RecipeBuilder.get("blacksmith")
  .setShaped( [[<ore:plateBronze>, <ore:ingotBronze>, null], 
  [<ore:plateBronze>,null, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:axe_head>.withTag({Material: "bronze"}))
  .addTool(<ore:artisansHammer>, 25)    
  .create();
  
RecipeBuilder.get("blacksmith")
  .setShaped( [[null, <ore:plateBronze>, null], 
  [null,null, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:shovel_head>.withTag({Material: "bronze"}))
  .addTool(<ore:artisansHammer>, 25)    
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, null, null], 
  [null,<ore:ingotBronze>, null], 
  [null, null, null]] )
  .addOutput(<tconstruct:tool_rod>.withTag({Material: "bronze"}) )
  .addTool(<ore:artisansFile>, 25)    
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped( [[null, null, null], 
  [null,<tconstruct:tool_rod>.withTag({Material: "bronze"}), null], 
  [null, null, null]] )
  .addOutput(<tconstruct:binding>.withTag({Material: "bronze"})  )
  .addTool(<ore:artisansPliers>, 25)    
  .create();
  
// We can run a smeltery on high pressure steam
mods.tconstruct.Fuel.registerFuel(<liquid:high_pressure_steam> * 2, 450);

// Or fuel
mods.tconstruct.Fuel.registerFuel(<liquid:biodiesel> * 2, 400);
mods.tconstruct.Fuel.registerFuel(<liquid:diesel> * 2, 400);
mods.tconstruct.Fuel.registerFuel(<liquid:gasoline> * 2, 600);
mods.tconstruct.Fuel.registerFuel(<liquid:kerosene> * 2, 800);


// CREATING THE EFLN ! (Yeh, end game stuff) 
// Need to adjust the recipe
mods.techreborn.alloySmelter.addRecipe(<tconstruct:throwball:1>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "sulfur_trioxide", Amount: 1000}}), <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidglyceryl", Amount: 1000}}), 600, 128);

// 
recipes.addShapeless(<tinkersurvival:grass_fiber>, [<tinkerscompendium:grassfiber>]);


// Add some grout recipes using existing brick

mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:materials> ,<tconstruct:soil>,<biomesoplenty:mud_brick>, 1500);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:materials> ,<tconstruct:soil>,<tconstruct:materials:2>, 1500);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:materials> * 2 ,<tconstruct:soil>,<tconstruct:materials:1>, 1500);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:materials> * 2,<tconstruct:soil>,<minecraft:brick>, 1500);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:materials> * 3,<tconstruct:soil>,<ceramics:unfired_clay:5>, 1500);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:materials> * 4,<tconstruct:soil>,<ore:ingotBrickNether>, 1500);

// Reinforced give 2 more
recipes.addShaped("TTM_wood_rail_trapdoor", <tconstruct:wood_rail_trapdoor> * 6, [[<sem:brennbarholz>, null, <sem:brennbarholz>], [<sem:brennbarholz>, <ore:trapdoorWood>, <sem:brennbarholz>], [<sem:brennbarholz>, null, <sem:brennbarholz>]]);

