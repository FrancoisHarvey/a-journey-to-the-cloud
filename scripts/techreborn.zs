// Tech Reborn




import mods.artisanworktables.builder.RecipeBuilder;




// Refined Metal going to Immersive IE furnace...	So No Techreborn without a good IE infrastructure
furnace.remove(<techreborn:ingot:19>);


// Battery Nerfing.....
// Yeh nobody will love me
recipes.remove(<techreborn:rebattery>);
RecipeBuilder.get("chemist")
  .setShaped( [
  [null, <techreborn:cable>, null],
  [<ore:plateTin>, <minecraft:glass_bottle>, <ore:plateTin>], 
  [<ore:plateTin>, <ore:ingotLead>, <ore:plateTin>] 
  ] )
  .addOutput(<techreborn:rebattery>.withTag({energy: 0}))
  .addTool(<ore:artisansCutters>, 15)  
  .setFluid(<liquid:sulfuric_acid> * 1000)
  .create();
  
// Rod Give 2 battery ( Lead Rod need a Lathe or IE Press / Solderer and chemist Level 2)
RecipeBuilder.get("chemist")
  .setShaped( [
  [null, <techreborn:cable>, null],
  [<ore:plateTin>, <minecraft:glass_bottle>, <ore:plateTin>], 
  [<ore:plateTin>, <ore:stickLead>, <ore:plateTin>] 
  ] )
  .addOutput(<techreborn:rebattery>.withTag({energy: 0}) * 2)
  .addTool(<ore:artisansCutters>, 15)  
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:sulfuric_acid> * 1000)
  .setMinimumTier(1)
  .create();
 
 // Allow A Kiln (IE) recipes to create rubber
 mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:part:32> * 3, <ore:dustSulfur>, <ore:materialResin>, 1000);
 mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:part:32>, <ore:dustSulfur>, <ore:slimeball>, 1500);

furnace.remove(<techreborn:ingot:19>);
furnace.remove(<techreborn:storage2:10>);
recipes.remove(<techreborn:ingot:19>);
recipes.remove(<techreborn:storage2:10>);
// No Alumnium in furnace, only blast
recipes.remove(<techreborn:ingot>);
furnace.remove(<techreborn:ingot>);

//
// No melting of iridium
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>);
mods.tcomplement.Blacklist.addRecipe(<liquid:iridium>,null);
mods.tcomplement.Blacklist.addRecipe(<liquid:iridium>,<techreborn:ore:1>);
//mods.tcomplement.Blacklist.addRecipe(<liquid:iridium>,<ore:oreIridium>);



// Refined Iron need a arc furnace



mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19>, <ore:ingotIron>, <immersiveengineering:material:7>, 500, 1024);
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:storage2:10>, <ore:blockIron>, <immersiveengineering:material:7>, 4000, 1024);

// 
mods.techreborn.blastFurnace.addRecipe(<minecraft:iron_ingot> , null,<ore:dustIron>,null, 150,  128,850);
mods.techreborn.blastFurnace.addRecipe(<minecraft:iron_ingot> * 2 , <thermalfoundation:material:864>,<ore:oreIron>,null, 150,  128,850);

// Iron without coal = Refined Iron
mods.techreborn.blastFurnace.addRecipe(<techreborn:ingot:19> , null,<ore:ingotIron>,null, 150,  128,900);
mods.techreborn.blastFurnace.addRecipe(<techreborn:storage2:10> , null,<ore:blockIron>,null, 1050,  128,900);

// sand = Clear Glass
mods.techreborn.blastFurnace.addRecipe(<tconstruct:clear_glass> , null,<ore:sand>,null, 75,  128,900);
mods.techreborn.blastFurnace.addRecipe(<tconstruct:clear_stained_glass> , null,<ore:sand>,<ore:dyeWhite>, 80,  128,900);
// @TODO : Add more dye

mods.techreborn.blastFurnace.addRecipe(<techreborn:ingot:7> , null,<ore:dustIridium>,null, 250,  512,1700);

// Advanced alloy need Arc Furnace or Blast (Later)
furnace.remove(<techreborn:ingot:20>);
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:20>, <techreborn:ingot:21>, null, 800, 1024);
mods.techreborn.blastFurnace.addRecipe(<techreborn:ingot:20> , null,<techreborn:ingot:21>,null, 250,  512,1400);



// Use Iron Plate for Iron Furnace
// Use Soldering + Liquid Iron
recipes.remove(<techreborn:iron_furnace>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [null, <ore:plateIron>, null], 
  [<ore:plateIron>, null, <ore:plateIron>], 
  [<ore:plateIron>, <minecraft:furnace>, <ore:plateIron>]
  ] )
  .addOutput(<techreborn:iron_furnace>)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  

// Alloy furnace, This Alloy generate only Iron Age Alloy, so no need to have refined Iron
recipes.remove(<techreborn:iron_alloy_furnace>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
  [<techreborn:iron_furnace>, null, <techreborn:iron_furnace>],
  [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]] )
  .addOutput(<techreborn:iron_alloy_furnace>)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
 
// Machine Frame
// Refined Iron Give 4
recipes.remove(<techreborn:machine_frame>);
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], 
  [<ore:plateAluminum>,  <opencomputers:material:6>, <ore:plateAluminum>], 
  [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]
  ] )
  .addOutput(<techreborn:machine_frame> * 4)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 150)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>], 
  [<ore:plateRefinedIron>,  <opencomputers:material:6>, <ore:plateRefinedIron>], 
  [<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]
  ] )
  .addOutput(<techreborn:machine_frame> * 2)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
// Machine Frame
// Refined Iron Give 4
recipes.remove(<techreborn:machine_frame>);
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], 
  [<ore:plateAluminum>,  <ore:oc:materialCU>, <ore:plateAluminum>], 
  [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]
  ] )
  .addOutput(<techreborn:machine_frame> * 6)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 200)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>], 
  [<ore:plateRefinedIron>,  <ore:oc:materialCU>, <ore:plateRefinedIron>], 
  [<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]
  ] )
  .addOutput(<techreborn:machine_frame> * 4)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 300)
  .create();
 
// Machine Frame
// Refined Iron Give 4
recipes.remove(<techreborn:machine_frame>);
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], 
  [<ore:plateAluminum>,  <ore:oc:componentBus1>, <ore:plateAluminum>], 
  [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]
  ] )
  .addOutput(<techreborn:machine_frame> * 8)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 250)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>], 
  [<ore:plateRefinedIron>, <ore:oc:componentBus1>, <ore:plateRefinedIron>], 
  [<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]
  ] )
  .addOutput(<techreborn:machine_frame> * 6)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 350)
  .setMinimumTier(1)
  .create();
  
  // Next Tier
recipes.remove(<techreborn:machine_frame:1>);

// Shortcut using Steel frame

RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], 
  [<ore:plateBasic>,<ore:steelFrame>, <ore:plateBasic>],
  [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 3)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
// Liquid Iron

RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateBasic>, <ore:machineBlockBasic>, <ore:plateBasic>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 1)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateAdvanced>, <ore:machineBlockBasic>, <ore:plateAdvanced>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 2)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 300)
  .setMinimumTier(1)
  .create();
   
  RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateDU>, <ore:machineBlockBasic>, <ore:plateDU>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 4)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 350)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateElite>, <ore:machineBlockBasic>, <ore:plateElite>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 8)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 400)
  .setMinimumTier(1)
  .create();
  
  
// Using Steel


RecipeBuilder.get("engineer")
  .setShaped( 
   [[null, <ore:plateCarbon>, null], [<ore:plateBasic>, <ore:machineBlockBasic>, <ore:plateBasic>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 2)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 250)
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateAdvanced>, <ore:machineBlockBasic>, <ore:plateAdvanced>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 3)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 300)
  .setMinimumTier(1)
  .create();
   
  RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateDU>, <ore:machineBlockBasic>, <ore:plateDU>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 5)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 350)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateElite>, <ore:machineBlockBasic>, <ore:plateElite>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 10)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 400)
  .setMinimumTier(1)
  .create();
  
// Using Titanum


RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateBasic>, <ore:machineBlockBasic>, <ore:plateBasic>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 3)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:titanium> * 250)
  .create();
  
  RecipeBuilder.get("engineer")
  .setShaped( 
  [[null, <ore:plateCarbon>, null], [<ore:plateAdvanced>, <ore:machineBlockBasic>, <ore:plateAdvanced>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 6)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:titanium> * 300)
  .setMinimumTier(1)
  .create();
   
  RecipeBuilder.get("engineer")
  .setShaped( 
   [[null, <ore:plateCarbon>, null], [<ore:plateDU>, <ore:machineBlockBasic>, <ore:plateDU>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 9)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:titanium> * 350)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
   [[null, <ore:plateCarbon>, null], [<ore:plateElite>, <ore:machineBlockBasic>, <ore:plateElite>], [null, <ore:plateCarbon>, null]])
  .addOutput(<techreborn:machine_frame:1> * 12)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:titanium> * 400)
  .setMinimumTier(1)
  .create();

// Final Tier


  // Use Du Plating from RC
recipes.remove( <techreborn:machine_frame:2>);


RecipeBuilder.get("engineer")
  .setShaped( 
   [[<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>],
  [<ore:plateDU>, <ore:machineBlockAdvanced>, <ore:plateDU>],
  [<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>]])
  .addOutput(<techreborn:machine_frame:2>)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 250)
  .setMinimumTier(1)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( 
   [[<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>],
  [<ore:plateDU>, <ore:machineBlockAdvanced>, <ore:plateDU>],
  [<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>]])
  .addOutput(<techreborn:machine_frame:2> * 2)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:titanium> * 250)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
   [[<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>],
  [<ore:plateDU>, <ore:machineBlockAdvanced>, <ore:plateDU>],
  [<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>]])
  .addOutput(<techreborn:machine_frame:2> * 3)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:tungsten> * 250)
  .setMinimumTier(1)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( 
   [[<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>],
  [<ore:plateElite>, <ore:machineBlockAdvanced>, <ore:plateElite>],
  [<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>]])
  .addOutput(<techreborn:machine_frame:2> * 2)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:steel> * 250)
  .setMinimumTier(1)
  .create();

RecipeBuilder.get("engineer")
  .setShaped( 
   [[<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>],
  [<ore:plateElite>, <ore:machineBlockAdvanced>, <ore:plateElite>],
  [<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>]])
  .addOutput(<techreborn:machine_frame:2> * 4)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:titanium> * 250)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped( 
   [[<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>],
  [<ore:plateElite>, <ore:machineBlockAdvanced>, <ore:plateElite>],
  [<ore:plateChrome>, <ore:plateTitanium>, <ore:plateChrome>]])
  .addOutput(<techreborn:machine_frame:2> * 6)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:tungsten> * 250)
  .setMinimumTier(1)
  .create();
  



// Sold Fuel Generator , Try to be consistent with the adv coalgenerator but with Iron and a better battery
recipes.remove(<techreborn:solid_fuel_generator>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>], 
  [<ore:plateIron>,  <techreborn:rebattery>, <ore:plateIron>], 
  [<ore:plateIron>, <techreborn:iron_furnace>, <ore:plateIron>]
  ] )
  .addOutput(<techreborn:solid_fuel_generator> )
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
//////////


 
  
 
  // We have Constantan with IE, it's a CoproNickel Alloy
  // Make more sense to use alloy in place of 3 différent, so we give 4 output for the techreborn machine, and 2 for railcraft one (else 3 and 1) 
  
mods.techreborn.rollingMachine.addShaped( <techreborn:part:13> * 4,  [[ <ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>], [<ore:ingotConstantan>, null, <ore:ingotConstantan>], [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]]);

mods.railcraft.RollingMachine.addShaped("coilcupronickel1", <techreborn:part:13>,   [[ <ore:ingotNickel>, <ore:ingotCopper>, <ore:ingotNickel>], [<ore:ingotCopper>, null, <ore:ingotCopper>], [<ore:ingotNickel>, <ore:ingotCopper>, <ore:ingotNickel>]]);


mods.railcraft.RollingMachine.addShaped("coilcupronickel2", <techreborn:part:13> * 2,   [[ <ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>], [<ore:ingotConstantan>, null, <ore:ingotConstantan>], [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]]);

// Solar Panel
// Less stockage than ADV (4k) vs 10k
// 4 RF / Tick (4 more than ADV one ) 
// To Balance, use 3 solarpanel and 1 battery, but give 2 solar panel.

recipes.remove(<techreborn:solar_panel>);
RecipeBuilder.get("engineer")
  .setShaped( [
  [<stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>], 
  [<ore:plateIron>,  <libvulpes:battery>, <ore:plateIron>], 
  [<ore:plateIron>, <techreborn:cable:1>, <ore:plateIron>]
  ] )
  .addOutput(<techreborn:solar_panel> * 2)
  .addTool(<ore:artisansSolderer>, 15)  
  .setFluid(<liquid:iron> * 250)
  .create();
  
  
// No Manual Circuit, use IE recipes
recipes.remove( <techreborn:part:29> );
recipes.remove( <techreborn:part:30> );





mods.immersiveengineering.Blueprint.addRecipe("components", <techreborn:part:30> , [<ore:circuitBasic>,<techreborn:plates:34>,<opencomputers:material:8>]);


// Add a IE press for the Wooden plate, I should find use for it inside steve cart (as wooden hull or chest), as they aren't used in techreborn yet :) 
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:3> , <ore:plankWood>, <immersiveengineering:mold>, 500, 1);

// Add also a adv rocket press because it's cool
mods.advancedrocketry.PlatePresser.addRecipe(<techreborn:plates:3>*1,<ore:plankWood>*1);

// Data storage
recipes.remove(<techreborn:part:2>);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <techreborn:part:2> , [<ore:circuitBasic>,<ore:plateEmerald>,<opencomputers:component:6>]);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <techreborn:part:2> * 2, [<ore:circuitBasic>,<ore:plateEmerald>,<ore:oc:ram2>]);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <techreborn:part:2> * 4 , [<ore:circuitBasic>,<ore:plateEmerald>,<ore:oc:ram3>]);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <techreborn:part:2> * 6 , [<ore:circuitBasic>,<ore:plateEmerald>,<ore:oc:ram5>]);
mods.immersiveengineering.Blueprint.addRecipe("electronics", <techreborn:part:2> * 8 , [<techreborn:part:41>,<ore:plateDenseEmerald>,<ore:oc:ram5>]);



// Add A Cobalt Lithium battery (2X)
recipes.addShaped("TTM_lithiumbattery2", <techreborn:lithiumbattery>.withTag({energy: 0}) * 2, [[null, <techreborn:cable:6>, null], [<ore:plateAluminum>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidlithium", Amount: 1000}}) | <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "lithium", Amount: 1000}}), <ore:plateAluminum>], [<ore:plateAluminum>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "cobalt", Amount: 1000}}), <ore:plateAluminum>]]);


// Normalize some glass recipes 
// Reinforced Need Advanced Alloy Plate + Glasses inside a Alloy
// Used as a shared component for some recipes 
recipes.remove(<techreborn:reinforced_glass>);
mods.immersiveengineering.AlloySmelter.addRecipe( <techreborn:reinforced_glass> * 3, <ore:plateAdvancedAlloy>, <ore:glass>,2000);

// Titanium
// Need TR Blast furnace for Titanium and Not IE
mods.tconstruct.Alloy.removeRecipe(<liquid:titanium>);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>);
recipes.remove(<ore:dustTitanium>);
furnace.remove(<ore:ingoTitanium>);

// We remove magnesium to use the melter of NC and Arc Furnace
mods.tconstruct.Alloy.removeRecipe(<liquid:magnesium>);
mods.tconstruct.Melting.removeRecipe(<liquid:magnesium>);
recipes.remove(<ore:ingotMagnesium>);
furnace.remove(<ore:ingotMagnesium>);
recipes.remove(<nuclearcraft:ingot_block:7>); // Must use casting

mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<techreborn:ingot:14>);

furnace.remove(<techreborn:ingot:10>);
recipes.remove(<techreborn:ingot:10>);
recipes.remove(<techreborn:ingot:14>);
//mods.immersiveengineering.ArcFurnace.removeRecipe(<techreborn:ingot:10>); (Leave for now)

// No end game metal inside IE (Need a Blast)
mods.immersiveengineering.ArcFurnace.removeRecipe(<techreborn:ingot:15>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<techreborn:ingot:3>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<techreborn:ingot>);


// Computer Screen for TR Need OpenComputer Level 2
recipes.remove(<techreborn:part:24>);
recipes.addShaped("TTM_part_7", <techreborn:part:24>, [[<ore:ingotAluminum>, <ore:dye>, <ore:ingotAluminum>], [<ore:dye>,  <opencomputers:screen2>, <ore:dye>], [<ore:ingotAluminum>, <ore:dye>, <ore:ingotAluminum>]]);


 // Add a blueprint for the Mechanical components
 // Need a motor for the blueprint
recipes.addShaped("TTM_blueprint_frame", <immersiveengineering:blueprint>.withTag({blueprint: "frame"}), [[<ore:ingotSilver>, <techreborn:machine_frame>, <ore:ingotSilver>], [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Shortcut for building machine Frame when we have  NC pressurer
mods.immersiveengineering.Blueprint.addRecipe("frame",<techreborn:machine_frame> , [<jaopca:item_platedensealuminium>,<ore:oc:circuitChip1>]);



// Normalize energycrystal
// 8 lithiumbattery and no more redstone....
recipes.remove(<techreborn:energycrystal>);
recipes.addShaped("TTM_energycrystal", <techreborn:energycrystal>.withTag({energy: 0}), [[<techreborn:lithiumbattery>.withTag({energy: 0}), <techreborn:lithiumbattery>.withTag({energy: 0}), <techreborn:lithiumbattery>.withTag({energy: 0})], [<techreborn:lithiumbattery>.withTag({energy: 0}), <ore:gemDiamond>,<techreborn:lithiumbattery>.withTag({energy: 0})], [<techreborn:lithiumbattery>.withTag({energy: 0}),<techreborn:lithiumbattery>.withTag({energy: 0}), <techreborn:lithiumbattery>.withTag({energy: 0})]]);

recipes.remove(<techreborn:lapotroncrystal>);
recipes.addShaped("TTM_lapotroncrystal", <techreborn:lapotroncrystal>.withTag({energy: 0}), [[<ore:dyeBlue>, <ore:circuitAdvanced>, <ore:dyeBlue>], [<nuclearcraft:lithium_ion_cell>.withTag({maxTransfer: 400000, capacity: 8000000, energy: 0}), <ore:energyCrystal>, <nuclearcraft:lithium_ion_cell>.withTag({maxTransfer: 400000, capacity: 8000000, energy: 0})], [<ore:dyeBlue>,<ore:circuitAdvanced>, <ore:dyeBlue>]]);

// Remove TC tungsten metling

mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>);
mods.tcomplement.Blacklist.addRecipe(<liquid:tungsten>,null);

// Gold Cable
recipes.remove(<techreborn:cable:6>);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:cable:6>, <ore:materialRubber>,<techreborn:cable:2>,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:cable:6>, <ore:materialRubber>,   <techreborn:cable:2>, 50, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<techreborn:cable:2>, <ore:materialRubber>,<techreborn:cable:6> );

// HV Cable
recipes.remove(<techreborn:cable:7>);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:cable:7>, <ore:materialRubber>,<techreborn:cable:3>,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:cable:7>, <ore:materialRubber>,   <techreborn:cable:3>, 50, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<techreborn:cable:3>, <ore:materialRubber>,<techreborn:cable:7> );

// Copper Cable
recipes.remove(<techreborn:cable:5>);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:cable:5>, <ore:materialRubber>,<techreborn:cable>,100);
mods.techreborn.alloySmelter.addRecipe(<techreborn:cable:5>, <ore:materialRubber>,   <techreborn:cable>, 50, 15);
mods.nuclearcraft.alloy_furnace.addRecipe(<techreborn:cable>, <ore:materialRubber>,<techreborn:cable:5> );


//
recipes.remove(<techreborn:vacuum_freezer>);
recipes.addShaped("TTM_vacuum_freezer", <techreborn:vacuum_freezer>, [[<ore:ingotFroststeel>, <techreborn:extractor>, <ore:ingotFroststeel>], [<ore:circuitAdvanced>, <pneumaticcraft:heat_frame>, <ore:circuitAdvanced>], [<ore:ingotFroststeel>, <techreborn:extractor>, <ore:ingotFroststeel>]]);



mods.techreborn.industrialElectrolyzer.addRecipe(<techreborn:dust:16>, <jaopca:item_dustlapis> * 4, null,null, <techreborn:dynamiccell>, <cd4017be_lib:m:402> * 5,  400,  100);

// Allow Lithium Dust to Litium Cell for compatibility between TR et NC
mods.techreborn.industrialElectrolyzer.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidlithium", Amount: 1000}}), null, null,null, <ore:dustLithium> , <techreborn:dynamiccell>,  200,  50);

// Compressor need a ADVRocket Small plate 
recipes.remove(<techreborn:compressor>);
recipes.addShaped("TTM_compressor", <techreborn:compressor>, [[<ore:plateIron>, <advancedrocketry:platepress>, <ore:plateIron>], [<ore:plateIron>, <ore:circuitBasic>,<ore:plateIron>], [<ore:plateIron>, <ore:machineBlockBasic>, <ore:plateIron>]]);


// Pump need a Buildcraft pump
recipes.remove(<techreborn:pump>);
recipes.addShaped("TTM_pump", <techreborn:pump>, [[<ore:plateIron>, <buildcraftfactory:pump>, <ore:plateIron>], [<ore:plateIron>, <ore:circuitBasic>,<ore:plateIron>], [<ore:plateIron>, <ore:machineBlockBasic>, <ore:plateIron>]]);



mods.nuclearcraft.extractor.addRecipe(<techreborn:part:31>,<techreborn:part:32> * 3, <liquid:plantoil> * 25);


