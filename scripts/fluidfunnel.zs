// fluidfunnel

// Scope : End of stone / Beginning of Bronze
// Disable the tank (we have so many liquid tank and barrel...)
// use seared brick as the texture is similar and also the usage.

recipes.remove(<fluidfunnel:tank>);
recipes.remove(<fluidfunnel:funnel>);
recipes.remove(<fluidfunnel:tap>);


// Take liquid from top and place it
recipes.addShaped("TTM_funnel", <fluidfunnel:funnel>, [[<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>], [null, <tconstruct:faucet>, null]]);

// TAP Allow side access
recipes.addShaped("TTM_tap", <fluidfunnel:tap>, [[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>], [<tconstruct:faucet>, null], [null, null]]);
