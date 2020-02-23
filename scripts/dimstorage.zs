// Dim Storage

recipes.remove(<dimstorage:dimensional_chest>);
recipes.remove(<dimstorage:dim_wall>);
recipes.remove(<dimstorage:dim_core>);
recipes.remove(<dimstorage:solid_dim_core>);

recipes.addShaped("dimensional_chest_1", <dimstorage:dimensional_chest> * 1, [[<ore:plateSteel>, <rs_ctr:wireless>,<ore:plateSteel>], [ <cd4017be_lib:m:401>,<indlog:buffer:1>,  <cd4017be_lib:m:401>], [<ore:plateSteel>, <ore:servo>, <ore:plateSteel>]]);

recipes.addShaped("dimensional_chest_2", <dimstorage:dimensional_chest> * 2, [[<ore:plateSteel>, <rs_ctr:wireless>,<ore:plateSteel>], [ <cd4017be_lib:m:401>,<indlog:buffer:5>,  <cd4017be_lib:m:401>], [<ore:plateSteel>, <ore:servo>, <ore:plateSteel>]]);

recipes.addShaped("dimensional_chest_4", <dimstorage:dimensional_chest> * 4, [[<ore:plateSteel>, <rs_ctr:wireless>,<ore:plateSteel>], [ <cd4017be_lib:m:401>,<indlog:buffer:9>,  <cd4017be_lib:m:401>], [<ore:plateSteel>, <ore:servo>, <ore:plateSteel>]]);

recipes.addShaped("dimensional_chest_8", <dimstorage:dimensional_chest> * 8, [[<ore:plateSteel>, <rs_ctr:wireless>,<ore:plateSteel>], [ <cd4017be_lib:m:401>,<indlog:buffer:13>,  <cd4017be_lib:m:401>], [<ore:plateSteel>, <ore:servo>, <ore:plateSteel>]]);


recipes.remove(<structuralrelocation:single_teleporter>);

recipes.addShaped("TTM_single_teleporter", <structuralrelocation:single_teleporter>, [[<ore:oc:wlanCard1>, <ore:plateEnderium>,<ore:plateSteel>], [ <ore:electronTube>,<portality:frame>,<ore:electronTube>], [<ore:plateSteel>, <immersiveengineering:metal_device0:1>, <ore:plateSteel>]]);

recipes.remove(<structuralrelocation:area_teleporter>);
recipes.addShaped("TTM_area_teleporter", <structuralrelocation:area_teleporter>, [[<ore:oc:wlanCard2>, <ore:plateEnderium>,<ore:plateTungsten>], [ <ore:electronTube>,<portality:frame>,<ore:electronTube>], [<ore:plateTungsten>, <immersiveengineering:metal_device0:1>, <ore:plateTungsten>]]);

recipes.addShaped("TTM_selector", <structuralrelocation:selector>, [[null,<ore:oc:wlanCard1>, null], [<ore:ingotGold>, <pneumaticcraft:gps_tool>, <ore:ingotGold>], [null, <ore:oc:tabletCase1>, null]]);
