#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	//industrial machine chassis
	<enderio:item_material:1>: [
		[
			[<ore:stickLongDarkSteel>, <ore:ingotDarkSteel>, <ore:stickLongDarkSteel>],
			[<ore:ingotDarkSteel>, <enderio:block_infinity>, <ore:ingotDarkSteel>],
			[<ore:stickLongDarkSteel>, <ore:ingotDarkSteel>, <ore:stickLongDarkSteel>]
		],
	],
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [

];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {

		//conductive iron in alloy smelter
		alloy_smelter.recipeBuilder()
			.inputs(<ore:dustRedstone>, <ore:ingotIron>)
			.outputs(<ore:ingotConductiveIron>.firstItem)
			.duration(sec(5)).EUt(30).buildAndRegister();
			
		alloy_smelter.recipeBuilder()
			.inputs(<ore:dustRedstone>, <ore:dustIron>)
			.outputs(<ore:ingotConductiveIron>.firstItem)
			.duration(sec(5)).EUt(30).buildAndRegister();
			
		//pulsating iron in alloy smelter
		alloy_smelter.recipeBuilder()
			.inputs(<ore:dustEnderPearl>, <ore:ingotConductiveIron>)
			.outputs(<ore:ingotPulsatingIron>.firstItem)
			.duration(sec(5)).EUt(30).buildAndRegister();
			
		//soularium in alloy smelter
		alloy_smelter.recipeBuilder()
			.inputs(<minecraft:soul_sand>, <ore:ingotGold>)
			.outputs(<ore:ingotSoularium>.firstItem)
			.duration(sec(5)).EUt(30).buildAndRegister();
			
		//crude steel in alloy smelter
		alloy_smelter.recipeBuilder()
			.inputs(<ore:dustClay>, <ore:dustStone>)
			.outputs(<ore:ingotCrudeSteel>.firstItem)
			.duration(sec(10)).EUt(30).buildAndRegister();
			
		//crystalline alloy in alloy smelter
		alloy_smelter.recipeBuilder()
			.inputs(<ore:ingotGold>, <ore:itemPulsatingPowder>)
			.outputs(<ore:ingotCrystallineAlloy>.firstItem)
			.duration(sec(5)).EUt(7680).buildAndRegister();
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}

