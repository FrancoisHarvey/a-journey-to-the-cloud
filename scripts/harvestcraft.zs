// harvestcraft



// sushi need cooked rice, and not crop rice
recipes.remove(<harvestcraft:sushiitem>);
recipes.addShapeless("TTM_sushiitem", <harvestcraft:sushiitem>, [<ore:toolCuttingboard>, <ore:listAllfishraw>, <ore:cropSeaweed>, <growthcraft_rice:rice_cooked>]);

// Same for Onigiri
recipes.remove(<harvestcraft:onigiriitem>);
recipes.addShapeless("TTM_onigiriitem", <harvestcraft:onigiriitem>, [<ore:toolMixingbowl>, <growthcraft_rice:rice_cooked>, <ore:cropSeaweed>, <ore:cropSesame>]);

// We use integrated market with money
recipes.remove(<harvestcraft:shippingbin>);
recipes.remove(<harvestcraft:market>);
recipes.remove(<harvestcraft:well>);



// We move to bronze the Waterfilter
recipes.remove(<harvestcraft:waterfilter>);
recipes.addShaped("TTM_WaterFilter", <harvestcraft:waterfilter>, [[<ore:stone>, <ceramics:clay_bucket>, <ore:stone>], [<ore:stone>, <harvestcraft:watertrap>, <ore:stone>], [<ore:stone>, <ore:craftingPiston>, <ore:stone>]]);

// We use Growcraft Bee one not Pam or BoP
recipes.remove(<harvestcraft:apiary>);
recipes.remove(<harvestcraft:waxcomb>);
recipes.remove(<harvestcraft:honeycomb>);
recipes.remove(<harvestcraft:waxcombitem>);

// We use Growcraft Chesse 
recipes.remove(<harvestcraft:cheeseitem>);

// We use the Ham from SEM
recipes.addShapeless("TTM_bakedhamitem", <harvestcraft:bakedhamitem>, [<ore:toolBakeware>, <ore:foodHam>, <ore:cropApple>, <ore:listAllsugar>]);

// We use Growcraft for butter
recipes.remove(<harvestcraft:butteritem>);

val foodButter = <ore:foodButter>;
foodButter.remove(<harvestcraft:butteritem>);

// Allow portobello
val listAllmushroom = <ore:listAllmushroom>;
listAllmushroom.add(<biomesoplenty:mushroom:1>);

// Normalize tinkerscompendium cotton as HC cotton (OReDict)
var cropCotton = <ore:cropCotton>;
cropCotton.add(<tinkerscompendium:cotton>);

// Remove bread without furnace
recipes.remove(<minecraft:bread>);

// No recipes, but we allow the grinder/water filter
recipes.remove(<harvestcraft:saltitem>);

// Normalize doughitem as salt are normalized
recipes.remove( <harvestcraft:doughitem>);
recipes.addShapeless("TTM_doughitem_dustsalt", <harvestcraft:doughitem>, [<ore:toolMixingbowl>, <ore:listAllwater>, <ore:foodFlour>, <ore:dustSalt>]);

// Normalize bamboo
// Harvestcraft bush give bamboo shoot in place of harvestcraft one.
var cropBambooshoot =  <ore:cropBambooshoot>;
cropBambooshoot.add(<growthcraft_bamboo:bamboo_shoot>);

var treeLeaves = <ore:treeLeaves>;
treeLeaves.add(<growthcraft_bamboo:bamboo_leaves>);

// Normalize foodDough -> bread
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>);

// Add Some more paper pulp recipes
mods.techreborn.grinder.addRecipe( <emergingtechnology:paperpulp> , <minecraft:reeds>, 20,64);
mods.techreborn.grinder.addRecipe( <emergingtechnology:paperpulp> * 6, <harvestcraft:pampaperbark>, 20,64);
mods.techreborn.industrialGrinder.addRecipe( <emergingtechnology:paperpulp> * 4, <thermalfoundation:material:800>,null,null, <harvestcraft:pampaperbark>,null, 20, 128);