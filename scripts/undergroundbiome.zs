// Under biome


// Allow Basalt 2 Basalt dust -> Give a Flint dust 1/5 (Allowing Peridot and Calcite mid game) 
mods.horsepower.Grindstone.add(<ore:basalt>, <techreborn:dust:4>, 20, false, <techreborn:dust:22>,20);
mods.techreborn.grinder.addRecipe(<techreborn:dust:4> * 2, <ore:basalt>, 20, 64);


// Marble dust and give some carcite
mods.horsepower.Grindstone.add(<ore:materialMarble>, <techreborn:dust:32>,20,false,<techreborn:smalldust:44>,5);
mods.techreborn.grinder.addRecipe( <techreborn:dust:32> * 2, <ore:materialMarble>, 20,64);



// Add A Calcite from Chalk with a by product from calcium sulfate rarely
mods.horsepower.Grindstone.add(<undergroundbiomes:sedimentary_stone:1>,<techreborn:dust:8>, 20, false, <nuclearcraft:compound>,5);
mods.techreborn.grinder.addRecipe( <techreborn:dust:8> * 2, <undergroundbiomes:sedimentary_stone:1>, 20,64);
mods.techreborn.industrialGrinder.addRecipe( <techreborn:dust:8> * 2, <nuclearcraft:compound>,null,null,<undergroundbiomes:sedimentary_stone:1>,null, 20, 128);

// Add A Calcite from Limestone with a by product from calcium sulfate rarely
mods.horsepower.Grindstone.add(<undergroundbiomes:sedimentary_stone>,<techreborn:dust:8>, 20, false, <nuclearcraft:compound>,5);
mods.techreborn.grinder.addRecipe( <techreborn:dust:8> * 2, <undergroundbiomes:sedimentary_stone>, 20,64);
mods.techreborn.industrialGrinder.addRecipe( <techreborn:dust:8> * 2, <nuclearcraft:compound>,null,null,<undergroundbiomes:sedimentary_stone>,null, 20, 128);

// Add A Dolimite grinder, same family but with more magnesium recipe, but the by product is magnesium
mods.horsepower.Grindstone.add(<undergroundbiomes:sedimentary_stone>,<techreborn:dust:8>, 20, false, <techreborn:smalldust:30>,5);
mods.techreborn.grinder.addRecipe( <techreborn:dust:8> * 2, <undergroundbiomes:sedimentary_stone>, 20,64);
mods.techreborn.industrialGrinder.addRecipe( <techreborn:dust:8> * 2, <techreborn:dust:30>,null,null,<undergroundbiomes:sedimentary_stone>,null, 20, 128);


