/// BOP

// @TODO : Add some recipes for dust for rare earth element

// <ore:dustTopaz>


// glowshroom to liquid 
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 50,<biomesoplenty:mushroom:3>);
mods.horsepower.Press.add(<biomesoplenty:mushroom:3>, <liquid:glowstone> * 50);

// Add support for BoP Wood

// Testing BoP @tODO : Should do an array for that later
mods.horsepower.ChoppingBlock.add(<biomesoplenty:log_3:5>,<biomesoplenty:planks_0:13>* 4, 1,true);
mods.advancedrocketry.CuttingMachine.addRecipe(<biomesoplenty:planks_0:13> * 6, 80, 100,<biomesoplenty:log_3:5>);
mods.techreborn.industrialSawmill.addRecipe(<biomesoplenty:planks_0:13>*8, <techreborn:dust:46> * 3, <minecraft:paper>, <biomesoplenty:log_3:5>, <liquid:water>, 100, 32);
