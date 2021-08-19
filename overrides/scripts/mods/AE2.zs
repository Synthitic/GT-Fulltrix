#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	//circuit etcher
	<threng:machine:2>: [
		[
			[<appliedenergistics2:material:19>, <ae2stuff:inscriber>, <appliedenergistics2:material:13>],
			[<appliedenergistics2:quartz_glass>, <threng:material:4>, <appliedenergistics2:quartz_glass>],
			[<appliedenergistics2:material:15>, <appliedenergistics2:material:43>, <appliedenergistics2:material:14>]
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
	//circuit etcher
	<threng:machine:2>,
];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {

	//charged certus
	gt.chemical_reactor.recipeBuilder()
		.inputs(<ore:gemCertusQuartz> * 1, <ore:dustRedstone> * 1)
		.fluidInputs(<liquid:water> * 250)
		.outputs(<appliedenergistics2:material:1> * 1)
		.duration(sec(30)).EUt(30).buildAndRegister();
		
	gt.chemical_reactor.recipeBuilder()
		.inputs(<ore:gemCertusQuartz> * 1, <ore:dustRedstone> * 1)
		.fluidInputs(<liquid:distilled_water> * 100)
		.outputs(<appliedenergistics2:material:1> * 1)
		.duration(sec(10)).EUt(30).buildAndRegister();
			
	//fluix dust macerator
	gt.macerator.recipeBuilder()
		.inputs(<appliedenergistics2:material:7> * 1)
		.outputs(<appliedenergistics2:material:8> * 1)
		.duration(30).EUt(8).buildAndRegister();
			
	gt.macerator.recipeBuilder()
		.inputs(<appliedenergistics2:material:12> * 2)
		.outputs(<appliedenergistics2:material:8> * 1)
		.duration(30).EUt(8).buildAndRegister();
		
	//remove sag mill fluix recipe
	mods.enderio.SagMill.removeRecipe(<appliedenergistics2:material:7>);
		
	//fused quartz
	alloy_smelter.recipeBuilder()
		.inputs(<ore:gemQuartz> * 2, <ore:dustRegularNetherQuartz> * 2)
		.outputs(<ore:fusedQuartz>.firstItem * 4)
		.duration(100).EUt(30).buildAndRegister();
		
	//efficient blank pattern recipes
	assembler.recipeBuilder()
		.inputs(<appliedenergistics2:material:10> * 4, <ore:plateGlowstone> * 4, <ore:plateIron> * 4, <appliedenergistics2:quartz_glass> * 4)
		.fluidInputs(<liquid:plastic> * 144)
		.outputs(<appliedenergistics2:material:52> * 4)
		.duration(sec(5)).EUt(480).buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(<appliedenergistics2:material:10> * 4, <ore:plateGlowstone> * 4, <ore:plateIron> * 4, <appliedenergistics2:quartz_glass> * 4)
		.fluidInputs(<liquid:polytetrafluoroethylene> * 144)
		.outputs(<appliedenergistics2:material:52> * 8)
		.duration(sec(5)).EUt(7680).buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(<appliedenergistics2:material:10> * 4, <ore:plateGlowstone> * 4, <ore:plateIron> * 4, <appliedenergistics2:quartz_glass> * 4)
		.fluidInputs(<liquid:polybenzimidazole> * 144)
		.outputs(<appliedenergistics2:material:52> * 16)
		.duration(sec(5)).EUt(122880).buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(<appliedenergistics2:material:10> * 4, <ore:plateGlowstone> * 4, <ore:plateIron> * 4, <appliedenergistics2:quartz_glass> * 4)
		.fluidInputs(<liquid:polyetheretherketone> * 144)
		.outputs(<appliedenergistics2:material:52> * 32)
		.duration(sec(5)).EUt(1966080).buildAndRegister();
		
	assembler.recipeBuilder()
		.inputs(<appliedenergistics2:material:10> * 4, <ore:plateGlowstone> * 4, <ore:plateIron> * 4, <appliedenergistics2:quartz_glass> * 4)
		.fluidInputs(<liquid:zylon> * 144)
		.outputs(<appliedenergistics2:material:52> * 64)
		.duration(sec(5)).EUt(31457280).buildAndRegister();
		
	//presses	
	laser_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensWhite>)
		.outputs(<appliedenergistics2:material:13>)
		.duration(sec(30)).EUt(120).buildAndRegister();
		
	laser_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensBlue>)
		.outputs(<appliedenergistics2:material:14>)
		.duration(sec(30)).EUt(120).buildAndRegister();
		
	laser_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensRed>)
		.outputs(<appliedenergistics2:material:15>)
		.duration(sec(30)).EUt(120).buildAndRegister();
		
	laser_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensGreen>)
		.outputs(<appliedenergistics2:material:19>)
		.duration(sec(30)).EUt(120).buildAndRegister();
		
	large_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensWhite>)
		.outputs(<appliedenergistics2:material:13>)
		.duration(sec(30)).EUt(120).buildAndRegister();
		
	large_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensBlue>)
		.outputs(<appliedenergistics2:material:14>)
		.duration(sec(30)).EUt(120).buildAndRegister();
		
	large_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensRed>)
		.outputs(<appliedenergistics2:material:15>)
		.duration(sec(30)).EUt(120).buildAndRegister();
		
	large_engraver.recipeBuilder()
		.inputs(<ore:blockIron>)
		.notConsumable(<ore:craftingLensGreen>)
		.outputs(<appliedenergistics2:material:19>)
		.duration(sec(30)).EUt(120).buildAndRegister();
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}