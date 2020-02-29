// Culinary Construct

// Use a cutting board in place of slab and a station in place of a workbench
// HC need cutting board for most sandwich...


recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShapeless("TTM_HCCuttingboard", <harvestcraft:cuttingboarditem>, [<ore:artisansCuttingBoard>]);

recipes.remove(<culinaryconstruct:sandwich_station>);
recipes.addShaped("TTM_sandwich_station", <culinaryconstruct:sandwich_station>, [[<harvestcraft:cuttingboarditem> | <ore:artisansCuttingBoard>], [<ore:workbench>]]);

