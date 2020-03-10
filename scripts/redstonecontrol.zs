
// redstone control
import mods.artisanworktables.builder.RecipeBuilder;


// We add also a recipe for 1 Small Battery -> 4 small battery 
recipes.addShapeless(<cd4017be_lib:m:400> * 4, [<libvulpes:battery>]);


// Use the shared solor component
recipes.remove(<rs_ctr:solar_cell>);
recipes.addShaped("TTM_rs_solar_cell", <rs_ctr:solar_cell>, [[null, <stevescarts:modulecomponents:44>,null], [<rs_ctr:wire_e>, <engineersdecor:halfslab_sheetmetal_iron>, <rs_ctr:wire_e>]]);

// Allow wirecoil from wire, the inverse need alu so we leave it
recipes.addShaped("TTM_wirecoil_redstone2", <immersiveengineering:wirecoil:5> * 1, [[<rs_ctr:wire>, <rs_ctr:wire>, <rs_ctr:wire>], [<rs_ctr:wire>,  <ore:stickTreatedWood>, <rs_ctr:wire>], [<rs_ctr:wire>, <rs_ctr:wire>, <rs_ctr:wire>]]);

// We use the Alloy smelter to do the Cable for cable 
// Some Copper/Electrum in IE, But All TR and NC
recipes.remove(<rs_ctr:wire>);
recipes.remove(<rs_ctr:wire_e>);
recipes.remove(<rs_ctr:block_wire>);

mods.immersiveengineering.AlloySmelter.addRecipe( <rs_ctr:wire> * 4, <ore:dustRedstone>, <ore:wireCopper>,2000);
mods.immersiveengineering.AlloySmelter.addRecipe( <rs_ctr:wire> * 8, <ore:dustRedstone>, <ore:wireElectrum>,2000);

mods.immersiveengineering.AlloySmelter.addRecipe( <rs_ctr:wire_e> * 4, <ore:dustGold>, <ore:wireCopper>,2000);
mods.immersiveengineering.AlloySmelter.addRecipe( <rs_ctr:wire_e> * 8, <ore:dustGold>, <ore:wireElectrum>,2000);

mods.immersiveengineering.AlloySmelter.addRecipe( <rs_ctr:block_wire> * 4, <cd4017be_lib:m:402>, <ore:wireCopper>,2000);
mods.immersiveengineering.AlloySmelter.addRecipe( <rs_ctr:block_wire> * 8, <cd4017be_lib:m:402>, <ore:wireElectrum>,2000);

mods.techreborn.alloySmelter.addRecipe(<rs_ctr:wire> * 4,<ore:dustRedstone>,  <ore:wireCopper>, 180, 15);
mods.techreborn.alloySmelter.addRecipe(<rs_ctr:wire> * 8,<ore:dustRedstone>,  <ore:wireElectrum>, 180, 15);
mods.techreborn.alloySmelter.addRecipe( <rs_ctr:wire> * 12,<ore:dustRedstone>,  <ore:wireConstantan>, 180, 15);
mods.techreborn.alloySmelter.addRecipe( <rs_ctr:wire> * 16,<ore:dustRedstone>,  <ore:wireSteel>, 180, 15);

mods.techreborn.alloySmelter.addRecipe(<rs_ctr:wire_e> * 4,<ore:dustGold>,  <ore:wireCopper>, 180, 15);
mods.techreborn.alloySmelter.addRecipe(<rs_ctr:wire_e> * 8,<ore:dustGold>,  <ore:wireElectrum>, 180, 15);
mods.techreborn.alloySmelter.addRecipe( <rs_ctr:wire_e> * 12,<ore:dustGold>,  <ore:wireConstantan>, 180, 15);
mods.techreborn.alloySmelter.addRecipe( <rs_ctr:wire_e> * 16,<ore:dustGold>,  <ore:wireSteel>, 180, 15);

mods.techreborn.alloySmelter.addRecipe(<rs_ctr:block_wire> * 4,<cd4017be_lib:m:402>,  <ore:wireCopper>, 180, 15);
mods.techreborn.alloySmelter.addRecipe(<rs_ctr:block_wire> * 8,<cd4017be_lib:m:402>,  <ore:wireElectrum>, 180, 15);
mods.techreborn.alloySmelter.addRecipe(<rs_ctr:block_wire> * 12,<cd4017be_lib:m:402>,  <ore:wireConstantan>, 180, 15);
mods.techreborn.alloySmelter.addRecipe(<rs_ctr:block_wire> * 16,<cd4017be_lib:m:402>,  <ore:wireSteel>, 180, 15);

mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireCopper>,  <ore:dustRedstone>, <rs_ctr:wire> * 4 );
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireElectrum>,  <ore:dustRedstone>, <rs_ctr:wire> * 8 );
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireConstantan>,  <ore:dustRedstone>, <rs_ctr:wire> * 12);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireSteel>,  <ore:dustRedstone>, <rs_ctr:wire> * 16);

mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireCopper>,  <ore:dustGold>, <rs_ctr:wire_e> * 4 );
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireElectrum>,  <ore:dustGold>, <rs_ctr:wire_e> * 8 );
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireConstantan>,  <ore:dustGold>, <rs_ctr:wire_e> * 12);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireSteel>,  <ore:dustGold>, <rs_ctr:wire_e> * 16);

mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireCopper>,  <cd4017be_lib:m:402>, <rs_ctr:block_wire> * 4 );
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireElectrum>,  <cd4017be_lib:m:402>, <rs_ctr:block_wire> * 8 );
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireConstantan>,  <cd4017be_lib:m:402>, <rs_ctr:block_wire> * 12);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:wireSteel>,  <cd4017be_lib:m:402>, <rs_ctr:block_wire> * 16);

// Telekinetic Alloy seem to be a Dust, So we use dust in place of gem
// We also add Alloy recipes for IE
recipes.remove(<cd4017be_lib:m:402>);
recipes.addShapeless("TTM_TelekineticAlloy", <cd4017be_lib:m:402> * 4, [<ore:dustDiamond>, <ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>]);

mods.immersiveengineering.AlloySmelter.addRecipe( <cd4017be_lib:m:402> * 5, <ore:dustDiamond>,<ore:dustLapis> * 4,1500);

	



// Similar to other fabricator, Need Steel + Liquid Iron

recipes.remove(<rs_ctr:assembler>);

RecipeBuilder.get("engineer")
  .setShaped( 
  [[<ore:plateSteel>, <ore:workbench>,<ore:plateSteel>], 
  [<rs_ctr:wire>,<ore:circuitBasic>,<rs_ctr:wire>], 
  [<ore:motor>,<immersiveengineering:material:8>, <ore:motor>]] )
  .addOutput(<rs_ctr:assembler>)
  .addTool(<ore:artisansHammer>, 15)  
  .addTool(<ore:artisansSolderer>, 15) 
  .setMinimumTier(1)  
  .setFluid(<liquid:iron> * 250)
  .create();
  



// Energy Valve use IE Breaker

recipes.remove(<rs_ctr:energy_valve>);

RecipeBuilder.get("engineer")
  .setShaped( [ [<ore:plateGold>, <rs_ctr:rs_port:1>, <ore:plateGold>], 
  [<rs_ctr:rs_port:1>, <immersiveengineering:connector:10>, <rs_ctr:rs_port>],
  [<ore:plateGold>, <minecraft:stone_slab:7>, <ore:plateGold>]])
  .addOutput(<rs_ctr:energy_valve>)
  .addTool(<ore:artisansHammer>, 30)    
  .create();

recipes.remove( <rs_ctr:block_breaker>);
recipes.addShaped("TTM_block_breaker", <rs_ctr:block_breaker>, [[<engineersdecor:small_block_breaker>, <ore:plateIron>, <engineersdecor:factory_hopper>], [<ore:plateIron>, <cd4017be_lib:m:401>, <ore:plateIron>], [<rs_ctr:rs_port:1>, null, <rs_ctr:rs_port>]]);

recipes.addShaped("TTM_block_breaker_2", <rs_ctr:block_breaker>, [[<engineersdecor:small_block_breaker>, <ore:plateSteel>, <engineersdecor:factory_hopper>], [<ore:plateSteel>, <cd4017be_lib:m:401>, <ore:plateSteel>], [<rs_ctr:rs_port:1>, null, <rs_ctr:rs_port>]]);

recipes.remove(<cd4017be_lib:m:401>);

recipes.addShaped("TTM_m_401", <cd4017be_lib:m:401> * 1, [[<cd4017be_lib:m:402>, <ore:enderpearl>, <cd4017be_lib:m:402>], [<minecraft:stone_slab:7>,  <immersiveengineering:material:9>, <minecraft:stone_slab:7>], [<ore:dustRedstone>, <rs_ctr:wire_e>, <ore:dustRedstone>]]);

recipes.addShaped("TTM_m_401_2a", <cd4017be_lib:m:401> * 2, [[<cd4017be_lib:m:402>, <ore:enderpearl>, <cd4017be_lib:m:402>], [<minecraft:stone_slab:7>,  <nuclearcraft:part:9>, <minecraft:stone_slab:7>], [<ore:dustRedstone>, <rs_ctr:wire_e>, <ore:dustRedstone>]]);

recipes.addShaped("TTM_m_401_4a", <cd4017be_lib:m:401> * 4, [[<cd4017be_lib:m:402>, <waystones:warp_stone>, <cd4017be_lib:m:402>], [<minecraft:stone_slab:7>,  <nuclearcraft:part:9>, <minecraft:stone_slab:7>], [<ore:dustRedstone>, <rs_ctr:wire_e>, <ore:dustRedstone>]]);


recipes.addShaped("TTM_m_401_24b", <cd4017be_lib:m:401> * 3, [[<cd4017be_lib:m:402>, <ore:gearEnderium>, <cd4017be_lib:m:402>], [<ore:plateQuartz>,  <nuclearcraft:part:9>, <ore:plateQuartz>], [<ore:plateRedstone>, <rs_ctr:wire_e>,<ore:plateRedstone>]]);

recipes.addShaped("TTM_m_401_4b", <cd4017be_lib:m:401> * 4, [[<cd4017be_lib:m:402>, <ore:gearEnderium>, <cd4017be_lib:m:402>], [<jaopca:item_platedensequartz>,  <nuclearcraft:part:9>, <jaopca:item_platedensequartz>], [<ore:plateRedstone>, <rs_ctr:wire_e>,<ore:plateRedstone>]]);




recipes.remove(<rs_ctr:item_placer>);
recipes.addShaped("TTM_item_placer", <rs_ctr:item_placer>, [[<ore:oc:experienceUpgrade>, <immersiveengineering:material:9>, <ore:stickSteel>], [<ore:plateIron>, <cd4017be_lib:m:401>, <ore:plateIron>], [<rs_ctr:rs_port:1>, <rs_ctr:rs_port:1>, <rs_ctr:rs_port>]]);

recipes.addShaped("TTM_item_placer_2", <rs_ctr:item_placer> * 2, [[<ore:oc:experienceUpgrade>,<nuclearcraft:part:9>, <ore:stickSteel>], [<ore:plateIron>, <cd4017be_lib:m:401>, <ore:plateIron>], [<rs_ctr:rs_port:1>, <rs_ctr:rs_port:1>, <rs_ctr:rs_port>]]);