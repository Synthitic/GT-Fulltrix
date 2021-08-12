#priority 1
#loader gregtech
import mods.gregtech.material.MaterialRegistry;

var materialList = MaterialRegistry.getAllMaterials();

var index as int = 500;

val infctystd = MaterialRegistry.createDustMaterial(index, "infinity_catalyst_dust", 0xFFFFFF, "METALLIC", 4);
infctystd.addFlags(["GENERATE_ORE","EXCLUDE_BLOCK_CRAFTING_RECIPES","SMELT_INTO_FLUID", "GENERATE_PLASMA"]);

//thermal foundation alloys
val signalum = MaterialRegistry.createIngotMaterial(index+1, "signalum", 0xC54613, "METALLIC", 3, [<material:redstone>*1, <material:copper>*3, <material:silver>*1], 3, 0, 0, 3800);
signalum.addFlags(["NO_SMELTING"]);
val lumium = MaterialRegistry.createIngotMaterial(index+2, "lumium", 0xEFF3CE, "SHINY", 2, [<material:glowstone>*1, <material:tin>*3, <material:silver>*1], 2, 0, 0, 2800);
lumium.addFlags(["NO_SMELTING"]);

//enderio alloys
val redstoneAlloy = MaterialRegistry.createIngotMaterial(index+3,"redstone_alloy", 0xD63C3C, "METALLIC", 1, [<material:redstone>*1,<material:silicon>*1,<material:carbon>*1], 1, 0, 0, 1700);
redstoneAlloy.addFlags(["NO_SMELTING"]);
redstoneAlloy.setCableProperties(32, 4, 0);

val electricalSteel = MaterialRegistry.createIngotMaterial(index+4,"electrical_steel", 0xD2D2D2, "SHINY", 1, [<material:steel>*1,<material:silicon>*1], 1, 0, 0, 1700);
electricalSteel.addFlags(["NO_SMELTING"]);

val energeticAlloy = MaterialRegistry.createIngotMaterial(index+5,"energetic_alloy", 0xFFAC49 ,"METALLIC", 2, [<material:gold>*1,<material:redstone>*1,<material:glowstone>*1],1,0,0, 2700);
energeticAlloy.addFlags(["NO_SMELTING"]);

val vibrantAlloy = MaterialRegistry.createIngotMaterial(index+6,"vibrant_alloy",0xAEC039,"METALLIC", 3, [<material:energetic_alloy>*1,<material:ender_pearl>*1], 5, 16, 8000, 3700);
vibrantAlloy.addFlags(["NO_SMELTING"]);

val darkSteel = MaterialRegistry.createIngotMaterial(index+7,"dark_steel", 0x646464, "DULL", 1, [<material:steel>*1,<material:obsidian>*1],1,0,0,1700);
darkSteel.addFlags(["NO_SMELTING","GENERATE_LONG_ROD"]);

val endSteel = MaterialRegistry.createIngotMaterial(index+8, "end_steel", 0xB5AF7B, "METALLIC",1,[<material:dark_steel>*1,<material:endstone>*1,<material:obsidian>*1],1,0,0,4700);
endSteel.addFlags(["NO_SMELTING"]);

val melodicAlloy = MaterialRegistry.createIngotMaterial(index+9,"melodic_alloy", 0x9A6B9A,"METALLIC",1,[<material:end_steel>*1,<material:ender_eye>*1,<material:amethyst>*1],1,0,0,5700);
melodicAlloy.addFlags(["NO_SMELTING"]);

val stellarAlloy = MaterialRegistry.createIngotMaterial(index+10,"stellar_alloy", 0xF7F9AC,"SHINY",5,[<material:melodic_alloy>*1,<material:nether_star>*1, <material:clay>*1],9,40,1000000,6700);
stellarAlloy.addFlags(["NO_SMELTING"]);

val energeticSilver = MaterialRegistry.createIngotMaterial(index+11,"energetic_silver", 0x598DB3,"METALLIC",5,[<material:silver>*1,<material:redstone>*1, <material:glowstone>*1],1,0,0,2700);
energeticSilver.addFlags(["NO_SMELTING"]);

val vividAlloy = MaterialRegistry.createIngotMaterial(index+12,"vivid_alloy", 0x46BCDB,"SHINY",5,[<material:energetic_silver>*1,<material:ender_pearl>*1],1,0,0,3700);
vividAlloy.addFlags(["NO_SMELTING"]);

//very heavy oil
val oilVeryHeavy = MaterialRegistry.createFluidMaterial(index+13,"oil_very_heavy", 0x000000, "FLUID");

//compressed alloys
val compressedSteel = MaterialRegistry.createIngotMaterial(index+14,"compressed_steel", 0x3E3E3E, "SHINY", 0);
compressedSteel.addFlags(["GENERATE_PLATE", "NO_SMASHING", "NO_WORKING"]);
val compressedAluminium = MaterialRegistry.createIngotMaterial(index+15,"compressed_aluminium", 0x5F95B3, "SHINY", 0);
compressedAluminium.addFlags(["GENERATE_PLATE", "NO_SMASHING", "NO_WORKING"]);
val compressedBronze = MaterialRegistry.createIngotMaterial(index+16,"compressed_bronze", 0xB65B00, "SHINY", 0);
compressedBronze.addFlags(["GENERATE_PLATE", "NO_SMASHING", "NO_WORKING"]);
val compressedAlloyT1 = MaterialRegistry.createIngotMaterial(index+17,"compressed_alloy_t1", 0x685e4d, "SHINY", 0);
compressedAlloyT1.addFlags(["GENERATE_PLATE", "NO_SMASHING", "NO_WORKING", "GENERATE_ROD"]);

<material:copper>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:bronze>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:brass>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);

<material:gold>.addFlags(["GENERATE_DENSE"]);
<material:silver>.addFlags(["GENERATE_DENSE"]);
<material:cupronickel>.addFlags(["GENERATE_DENSE"]);
<material:platinum>.addFlags(["GENERATE_DENSE"]);

<material:ender_eye>.addFlags(["GENERATE_ROD"]);
<material:apatite>.addFlags(["GENERATE_ROD"]);

<material:plastic>.addFlags(["GENERATE_ROD"]);

<material:tantalum>.addFlags(["GENERATE_DENSE"]);

<material:nether_star>.addFlags(["GENERATE_ORE"]);

<material:iron>.addFlags(["GENERATE_SMALL_GEAR"]);

<material:uranium_radioactive>.addFlags(["GENERATE_ORE"]);
