import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;



var id = 5000;

var loc = "gasoline_engine";

val gasolineEngine = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT) //orientation makes it so the first is the "face" and each is a slice
			.aisle(
				"III",
				"ISI",
				"III")
			.aisle(
				"CCC",
				"CGB",
				"CCC")
			.aisle(
				"CCC",
				"DGB",
				"CCC")
			.aisle(
				"CCC",
				"CGB",
				"CCC")
			.aisle(
				"CCC",
				"CAC",
				"CCC")
			.where('I', <contenttweaker:advanced_engine_intake>)
			.where('C', <metastate:gregtech:metal_casing:7>)                          
            .where('G', <metastate:gtadditions:ga_multiblock_casing:15>)
			.where('A', IBlockMatcher.abilityPartPredicate(MultiblockAbility.OUTPUT_ENERGY))
			.where('B', IBlockMatcher.abilityPartPredicate(MultiblockAbility.IMPORT_FLUIDS))
			.where('D', IBlockMatcher.abilityPartPredicate(MultiblockAbility.IMPORT_ITEMS))
			.where('S', IBlockMatcher.controller(loc))
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start() //preview orientation is a slice from the side
            .aisle(
				"ICCCC",
				"ICDCC",
				"ICCCC")
			.aisle(
				"ICCCC",
				"SGGGA",
				"ICCCC")
			.aisle(
				"ICCCC",
				"IBBBC",
				"ICCCC")
            .where('S', IBlockInfo.controller(loc))
            .where('C', <metastate:gregtech:metal_casing:7>)
            .where('G', <metastate:gtadditions:ga_multiblock_casing:15>)
            .where('I', <metastate:contenttweaker:advanced_engine_intake:0>)
			.where('B', MetaTileEntities.FLUID_IMPORT_HATCH[3], IFacing.south())
            .where('A', MetaTileEntities.ENERGY_OUTPUT_HATCH[5], IFacing.east())
			.where('D', MetaTileEntities.ITEM_IMPORT_BUS[0], IFacing.north())
            .build())
    .withZoom(0.9f)
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
			.minInputs(1)
			.maxInputs(1)
			.minFluidInputs(2)
			.maxFluidInputs(3)
			.build())
			.withTexture(Textures.ROBUST_TUNGSTENSTEEL_CASING)
.buildAndRegister();
	
recipes.addShaped(<gregtech:machine:5000>, [
	[<gregtech:meta_item_1:32644>, <ore:circuitMaster>, <gregtech:meta_item_1:32644>],
	[<gregtech:meta_item_1:32604>, <gregtech:machine:505>, <gregtech:meta_item_1:32604>],
	[<ore:gearTungstenSteel>, <ore:cableGtDoubleNiobiumTitanium>, <ore:gearTungstenSteel>]]);

<multiblock:multiblocktweaker:gasoline_engine>
    .recipeMap
	.recipeBuilder()
    .duration(220)
    .EUt(-8192)
    .fluidInputs(<liquid:high_octane> * 1000, <liquid:lubricant> * 3)
	.circuit(1)
    .buildAndRegister();
	
<multiblock:multiblocktweaker:gasoline_engine>
    .recipeMap
	.recipeBuilder()
    .duration(220)
    .EUt(-32768)
	.circuit(2)
    .fluidInputs(<liquid:high_octane> * 1000, <liquid:lubricant> * 3,<liquid:liquid_oxygen> * 2200)
    .buildAndRegister();
	
//hide duplicate JEI category
mods.jei.JEI.hideCategory("gregtech:gasoline_engine");