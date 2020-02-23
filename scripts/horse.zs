// horsepower

 
 
 
// Allow plant oil using Horse Power

mods.horsepower.Press.add(<ore:listAllseed>, <liquid:plantoil> * 50);
 
 // Allow IE plant oil from Hemp seed
mods.horsepower.Press.add(<immersiveengineering:seed>, <liquid:plantoil> * 60);


 mods.horsepower.Press.add(<minecraft:packed_ice>, <liquid:distwater> * 750);
 mods.horsepower.Press.add(<ore:blockMud>, <liquid:water> * 125);


// Allow some plate using Horse Power

mods.horsepower.Press.add(<ore:ingotCopper>,<techreborn:plates:21>);
mods.horsepower.Press.add(<ore:ingotLead>, <techreborn:plates:25>);
mods.horsepower.Press.add(<ore:ingotBronze>, <techreborn:plates:19>);
mods.horsepower.Press.add(<ore:ingotZinc>, <techreborn:plates:34>);
mods.horsepower.Press.add(<ore:ingotBrass>, <techreborn:plates:18>);
mods.horsepower.Press.add(<ore:ingotTin>, <techreborn:plates:30>);
mods.horsepower.Press.add(<ore:ingotGold>, <techreborn:plates:1>);

mods.horsepower.Press.add(<ore:ingotSilver>, <techreborn:plates:28>);


// Allow Wood plant
mods.horsepower.Press.add(<ore:plankWood>, <techreborn:plates:3>);
mods.horsepower.Press.add(<ore:slabWood>, <techreborn:plates:3>);



mods.horsepower.Press.add(<ore:leavesRubber>, <liquid:sap> * 25);
mods.horsepower.Press.add(<ore:sapplingRubber>, <liquid:sap> * 50);
mods.horsepower.Press.add(<ore:logRubber>, <liquid:sap> * 75);


mods.horsepower.Press.add(<growthcraft_bees:honey_comb_filled>, <liquid:fluid_honey> * 100);



// Allow dust for ingot for initial bronze / Brass
mods.horsepower.Grindstone.add(<ore:ingotCopper>, <techreborn:dust:14>, 20, false, null,20);
mods.horsepower.Grindstone.add(<ore:ingotTin>, <techreborn:dust:53>, 10, false, null,20);
mods.horsepower.Grindstone.add(<ore:ingotZinc>, <techreborn:dust:59>, 10, false, null,20);

// Normalize dust
mods.horsepower.Grindstone.add(<ore:ingotBronze>,<techreborn:dust:7>, 20, false, null,20);
mods.horsepower.Grindstone.add(<ore:ingotBrass>, <techreborn:dust:6>, 20, false, null,20);



// Add a flint dust using flint dust
mods.horsepower.Grindstone.add(<minecraft:flint>, <techreborn:smalldust:22>, 20, false, null,20);


//mods.horsepower.Grindstone.remove(<output>);

mods.horsepower.Grindstone.add(<ore:oreTin>, <techreborn:dust:53>, 10);

mods.horsepower.Grindstone.add(<ore:oreCopper>, <techreborn:dust:14>, 15);

mods.horsepower.Grindstone.add(<ore:oreIron>, <techreborn:dust:27>, 30);

mods.horsepower.Grindstone.add(<ore:charcoal>, <techreborn:dust:9>, 10);

mods.horsepower.Grindstone.add(<ore:coal>, <techreborn:dust:13>, 10);

mods.horsepower.Grindstone.add(<ore:oreZinc>, <techreborn:dust:59>, 10);





// Arrete de poisson (4X or 3X in place of 2x)
mods.horsepower.Grindstone.add(<jaff:fish_bones> , <minecraft:dye:15> * 3, 10);
mods.techreborn.grinder.addRecipe( <minecraft:dye:15> * 4, <jaff:fish_bones>, 10,32);
// No Adv Grinder for that...


// Wood pulp from stick and ore dict with Thermal
mods.horsepower.Grindstone.add(<ore:stickWood>, <techreborn:dust:46> , 10);
var dustWood = <ore:dustWood>;
dustWood.add(<techreborn:dust:46>);

// Glowstone
mods.horsepower.Grindstone.add(<minecraft:glowstone>, <minecraft:glowstone_dust> * 4, 10);





// End stone

mods.horsepower.Grindstone.add(<ore:endstone>, <techreborn:dust:21>,10);


// Allo Salpeter from Sand (the time we setup the grinder)
mods.horsepower.Grindstone.add(<ore:sandstone>, <minecraft:sand>, 20, false, <techreborn:smalldust:44>,5);

// Remove Dough as we use Harvestcraft one
recipes.remove(<horsepower:dough>);


