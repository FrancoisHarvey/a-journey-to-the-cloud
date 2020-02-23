/// thermal
// Not very used inside this modpack
// But usefull for some Nuclear Craft and Jetpack recipes
// Also for some craft tech component

import mods.artisanworktables.builder.RecipeBuilder;

// Advanced blend with fluid need chemist table level 1

recipes.remove(<ore:dustSignalum>);
recipes.remove(<ore:dustLumium>);
recipes.remove(<ore:dustEnderium>);

RecipeBuilder.get("chemist")
  .setShapeless( [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustSilver> ] )
  .addOutput(<thermalfoundation:material:101> * 4)
  .addTool(<ore:artisansBeaker>, 15)  
  .addTool(<ore:artisansMortar>, 15)  
  .setFluid(<liquid:redstone> * 1000)
  .setMinimumTier(1)
  .create();
  
RecipeBuilder.get("chemist")
  .setShapeless( [<ore:dustTin>, <ore:dustTin>, <ore:dustTin>, <ore:dustSilver> ] )
  .addOutput(<thermalfoundation:material:102> * 4)
  .addTool(<ore:artisansBeaker>, 15)  
  .addTool(<ore:artisansMortar>, 15)  
  .setFluid(<liquid:glowstone> * 1000)
  .setMinimumTier(1)
  .create();


RecipeBuilder.get("chemist")
  .setShapeless( [<ore:dustLead>, <ore:dustLead>, <ore:dustLead>, <ore:dustPlatinum> ] )
  .addOutput(<thermalfoundation:material:103> * 4)
  .addTool(<ore:artisansBeaker>, 15)  
  .addTool(<ore:artisansMortar>, 15)  
  .setFluid(<liquid:ender> * 1000)
  .setMinimumTier(1)
  .create();
  
// We Add Surface Oil Sand Using Thermal One, we considere it Heavy and it should be more process
// We removed Oil  from UnderGround Biome due to textures problem but dont cause any issues.
// 4 Bitumen = 4 TAR  + 2 Bucket Of Heavy Oil  -> 1 Bucket of Light Oil 
// Heavy Oil --> Refinery -> (Steam + Heavy Oil) = --> refined_oil
// Heavy Oil ->  Refinery (Naphta + Heavy Oil)  --> Light Oil 

//<thermalfoundation:material:892>.displayName = "Heavy Crude Bitumen";
//<thermalfoundation:material:892>.addTooltip("Can be burn,  pressed to extract some Crude Oil or ");

mods.horsepower.Press.add(<ore:clathrateOil>, <liquid:crude_oil> * 200);
mods.horsepower.Press.add(<ore:oreClathrateOilSand>, <liquid:crude_oil> * 300);
mods.horsepower.Press.add(<ore:oreClathrateOilShale>, <liquid:crude_oil> * 400);


mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:material:833>,  <liquid:crude_oil> * 400, <ore:clathrateOil>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:material:833>,  <liquid:crude_oil> * 600,<ore:oreClathrateOilSand>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:material:833>,  <liquid:crude_oil> * 800, <ore:oreClathrateOilShale>, 2048);

// Allow to use Tar to do Rubber with the alloy Smelter
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:part:32>, <ore:dustSulfur>, <thermalfoundation:material:833>, 2000);


//<liquid:crude_oil>.addTooltip("Heavy Crude Oil - Use IE Pumpjack on Oil reservoir to get Light Crude Oil (Better Quality)");
//<liquid:crude_oil>.displayName = "Heavy Crude Oil";

mods.immersiveengineering.Refinery.addRecipe(<liquid:oil> * 1000, <liquid:crude_oil> * 1000, <liquid:ethanol> *250, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:oil> * 1000, <liquid:crude_oil> * 1000, <liquid:refined_oil> *100, 2048);


//mods.immersiveengineering.Refinery.addRecipe(<liquid:refined_oil> * 100, <liquid:crude_oil> * 1000, <liquid:steam> * 10000, 2048);
//mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel> * 100, <liquid:refined_oil> * 100, <liquid:ethanol> * 20, 2048);


//<liquid:oil>.addTooltip("Light Crude Oil - Use IE Distillation tower in place of Refinery");


//mods.immersiveengineering.Refinery.addRecipe(<liquid:fluidnitrodiesel> * 1000, <liquid:diesel> * 800, <liquid:fluidglyceryl> *200, 4096);


// We dont use the saw from this mod
recipes.remove(<thermalfoundation:material:657>);


// Remove  some pyro dust recipes

recipes.remove(<thermalfoundation:material:71>);
recipes.remove(<thermalfoundation:material:135>);
furnace.remove(<thermalfoundation:material:135>);

recipes.remove(<thermalfoundation:material:70>);

recipes.remove(<thermalfoundation:material:132>);
furnace.remove(<thermalfoundation:material:132>);

recipes.remove(<thermalfoundation:material:69>);
recipes.remove(<thermalfoundation:material:131>);
furnace.remove(<thermalfoundation:material:131>);

recipes.remove(<thermalfoundation:material:68>);

recipes.remove(<thermalfoundation:material:134>);
furnace.remove(<thermalfoundation:material:134>);


// Some Bio mass from trash
mods.horsepower.Grindstone.add(<ore:plantMediumgrass>,<thermalfoundation:material:816>, 5);
mods.horsepower.Grindstone.add(<biomesoplenty:coral:4>,<thermalfoundation:material:816>, 5);
mods.horsepower.Grindstone.add(<ore:lilypad>,<thermalfoundation:material:816> * 2, 5);


recipes.remove(<thermalfoundation:material:291>);
recipes.addShaped("TTM_GearBronze", <thermalfoundation:material:291>, [[null, <ore:ingotBronze>, null], [<ore:ingotBronze>, <ore:gearStone>, <ore:ingotBronze>], [null, <ore:ingotBronze>, null]]);



recipes.remove(<thermalfoundation:material:24>);
recipes.addShaped("TTM_GearIron", <thermalfoundation:material:24>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:gearStone>, <ore:ingotIron>], [null, <ore:ingotIron>, null]]);

recipes.remove(<thermalfoundation:material:62>);
recipes.addShaped("TTM_GearGold", <thermalfoundation:material:62>, [[null, <ore:ingotGold>, null], [<ore:ingotGold>,  <ore:gearStone>, <ore:ingotGold>], [null, <ore:ingotGold>, null]]);

// Diamond Gear, Add a Press plate and casting
recipes.remove(<thermalfoundation:material:26>);
recipes.addShaped("TTM_GearDiamond", <thermalfoundation:material:26>, [[null, <ore:gemDiamond>, null], [<ore:gemDiamond>,  <ore:gearStone>, <ore:gemDiamond>], [null, <ore:gemDiamond>, null]]);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:26>,<tconstruct:cast_custom:4>, <liquid:diamond>, 576);

mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:26> , <ore:plateDiamond> * 4, <immersiveengineering:mold:1>, 500, 1);

// Emerald
recipes.remove(<thermalfoundation:material:27>);
recipes.addShaped("TTM_GearEmerald", <thermalfoundation:material:27>, [[null, <ore:gemEmerald>, null], [<ore:gemEmerald>,  <ore:gearStone>, <ore:gemEmerald>], [null, <ore:gemEmerald>, null]]);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:27>,<tconstruct:cast_custom:4>, <liquid:emerald>, 576);

mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:27> , <ore:plateEmerald> * 4, <immersiveengineering:mold:1>, 500, 1);

// Tin
recipes.remove(<thermalfoundation:material:257>);
recipes.addShaped("TTM_GearTin", <thermalfoundation:material:257>, [[null, <ore:ingotTin>, null], [<ore:ingotTin>, <ore:gearStone>, <ore:ingotTin>], [null, <ore:ingotTin>, null]]);

// Steel
recipes.remove(<thermalfoundation:material:288>);
recipes.addShaped("TTM_GearSteel", <thermalfoundation:material:288>, [[null, <ore:ingotSteel>, null], [<ore:ingotSteel>,  <ore:gearStone>, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);


// Use Aluminium only for Bauxite
val oreAluminium = <ore:oreAluminium>;
oreAluminium.remove(<geolosys:cluster:6>);

val oreAluminum = <ore:oreAluminum>;
oreAluminum.remove(<geolosys:cluster:6>);

// No smelting of platinum
mods.tconstruct.Melting.removeRecipe(<liquid:platinum>);
mods.tcomplement.Blacklist.addRecipe(<liquid:platinum>,null);


// Remove Bronze dust as our is oredict
recipes.remove(<thermalfoundation:material:99>);
recipes.remove(<thermalfoundation:material:100>);

// remove coal/charcoal from thermal
recipes.remove(<thermalfoundation:material:768>);
recipes.remove(<thermalfoundation:material:769>);

recipes.remove(<thermalfoundation:material:98> );
recipes.addShapeless("TTM_invarDust", <techreborn:dust:26> * 3, [<ore:dustIron>, <ore:dustIron>, <ore:dustNickel>]);



