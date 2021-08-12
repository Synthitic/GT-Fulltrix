#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	
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
	//computer case tier 1
	<opencomputers:case1>,
	
	//microchip tier 1
	<opencomputers:material:7>
];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {

		//microchip tier 1
		circuit_assembler.recipeBuilder()
			.inputs(<ore:circuitAdvanced>, <gregtech:meta_item_2:32485> * 8, <gregtech:meta_item_2:32477> * 4, <gregtech:meta_item_2:32478> * 4)
			.fluidInputs(<liquid:soldering_alloy>*576)
			.outputs(<opencomputers:material:7>*8)
			.duration(sec(16)).EUt(480).buildAndRegister();
			
		//computer case tier 1
		assembler.recipeBuilder()
			.inputs(<opencomputers:material:7>, <ore:plateStainlessSteel> * 4, <ore:chest>, <ore:rotorStainlessSteel>)
			.fluidInputs(<liquid:soldering_alloy>*576)
			.outputs(<opencomputers:case1>)
			.duration(sec(30)).EUt(480).buildAndRegister();
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}