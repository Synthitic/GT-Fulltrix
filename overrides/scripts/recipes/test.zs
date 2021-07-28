#priority 0



import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FuelRecipe;


static shapedRecipes as IIngredient[][][][IItemStack] = {
	/*
    <abyssalcraft:necronomicon:0>: [
		[
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>],
			[<abyssalcraft:corflesh:0>, <primal:plant_cloth:0>, <abyssalcraft:corflesh:0>],
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>]
		]
	]
    */
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
		gt.compressor.recipeBuilder()
        .inputs([<ore:dustInfinityCatalystDust> * 64])
        .outputs([<avaritia:resource:5>])
        .EUt(500000).duration(sec(1))
        .buildAndRegister();
		
		
		RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(FuelRecipe.create(<liquid:plasma.infinity_catalyst_dust> * 15, sec(30), 2048)); 
		
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}