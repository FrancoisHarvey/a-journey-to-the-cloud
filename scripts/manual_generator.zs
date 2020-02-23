// Manual Generator
// Handcrack 
// Allow Manual electricity production (Crank)  to kick start machine 
// Available in Iron Age

// remove yet another rod
recipes.remove(<manualgenerators:ironrod_item>);

// Change the handle to use Treated Wood Stick
recipes.remove(<manualgenerators:handle_item>);
recipes.addShaped("TTM_manual_generators_handle", <manualgenerators:handle_item>, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>, null],
 [null, <ore:stickTreatedWood>, null], 
 [null, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);


// USE IE Kinetic Generator in place or Manual Generator one
recipes.remove(<manualgenerators:generator_item>);
recipes.remove(<manualgenerators:manualgenerator_item>);


recipes.addShaped("TTM_manual_generator", <manualgenerators:manualgenerator_item>, [[<ore:plateIron>, <ore:plateIron>, null], [<ore:plateIron>, <immersiveengineering:metal_device1:2>, <manualgenerators:handle_item>], [<ore:plateIron>, <ore:plateIron>, null]]);
