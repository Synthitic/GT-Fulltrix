#loader gregtech
import mods.gregtech.material.MaterialRegistry;

var materialList = MaterialRegistry.getAllMaterials();

var matIndex as int = 500;

val infctystd = MaterialRegistry.createDustMaterial(matIndex, "infinity_catalyst_dust", 0xFFFFFF, "METALLIC", 4);
infctystd.addFlags(["GENERATE_ORE","EXCLUDE_BLOCK_CRAFTING_RECIPES","SMELT_INTO_FLUID", "GENERATE_PLASMA"]);

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