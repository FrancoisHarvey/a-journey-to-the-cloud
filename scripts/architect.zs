// Architect
// Move to bronze

recipes.remove(<architecturecraft:sawblade>);
recipes.remove(<architecturecraft:largepulley>);

// Any Chisel + Orange Dye
recipes.remove(<architecturecraft:chisel>);
recipes.addShapeless(<architecturecraft:chisel>, [<tcomplement:chisel>,<ore:dyeOrange>]);

// Any Framing Hammer + Orange Dye
recipes.remove(<architecturecraft:hammer>);
recipes.addShapeless(<architecturecraft:hammer>, [<ore:artisansFramingHammer>,<ore:dyeOrange>]);

recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped("TTM_architecturecraft_sawbench0", <architecturecraft:sawbench>, [[<ore:plateBronze>, <ore:artisansHandsaw>, <ore:plateBronze>], [<ore:plateBronze>, <buildcraftcore:engine>, <ore:plateBronze>], [<ore:plateBronze>, <ore:craftingPiston>, <ore:plateBronze>]]);


