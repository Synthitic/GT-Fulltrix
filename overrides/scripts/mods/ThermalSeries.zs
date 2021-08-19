#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;
import mods.tconstruct.Alloy;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	//thermal series
	<thermalfoundation:material:515>: [
		[
			[<minecraft:redstone_block>, null, null],
			[null, <gregtech:meta_item_1:12112>, null], 
			[null, null, <minecraft:redstone_block>]
		],
	],
	<thermalfoundation:material:513>: [
		[
			[null, null, <minecraft:redstone_block>],
			[null, <gregtech:meta_item_1:12026>, null],
			[<minecraft:redstone_block>, null, null]
		],
	],
	<thermalfoundation:material:514>: [
		[
			[null, null, <minecraft:redstone_block>],
			[null, <gregtech:meta_item_1:12062>, null], 
			[<minecraft:redstone_block>, null, null]
		],
	],
	
	//dynamos, augments specializations
	<thermalexpansion:augment:673>: [
		[
			[<gregtech:meta_item_1:32613>, <thermalfoundation:material:293>, <gregtech:meta_item_1:32613>],
			[<gregtech:meta_item_1:13072>, <thermalfoundation:material:515>, <gregtech:meta_item_1:13072>],
			[<gregtech:meta_item_1:32613>, <gregtech:meta_item_1:2503>, <gregtech:meta_item_1:32613>]
		],
	],
	<thermalexpansion:augment:672>: [
		[
			[<gregtech:meta_item_1:32612>, <ore:gearLumium>, <gregtech:meta_item_1:32612>],
			[<ore:plateStainlessSteel>, <thermalfoundation:material:515>, <ore:plateStainlessSteel>], 
			[<gregtech:meta_item_1:32612>, <ore:dustRegularRedstone>, <gregtech:meta_item_1:32612>]
		],
	],
	<thermalexpansion:augment:656>: [
		[
			[<gregtech:meta_item_1:32612>, <ore:gearLumium>, <gregtech:meta_item_1:32612>],
			[<ore:plateInvar>, <thermalfoundation:material:515>, <ore:plateInvar>],
			[<gregtech:meta_item_1:32612>, <ore:dustCryotheum>, <gregtech:meta_item_1:32612>]
		],
	],
	<thermalexpansion:dynamo>: [
		[
			[<ore:gearCopper>, <thermalfoundation:material:514>, <ore:gearCopper>],
			[<ore:ingotIron>, <gregtech:machine_casing:10>, <ore:ingotIron>],
			[<ore:ingotCopper>, <ore:dustRegularRedstone>, <ore:ingotCopper>]
		],
	],
	<thermalexpansion:dynamo:1>: [
		[
			[<gregtech:meta_item_1:32641>, <thermalfoundation:material:514>, <gregtech:meta_item_1:32641>],
			[<ore:ingotIron>, <gregtech:machine:502>, <ore:ingotIron>],
			[<ore:ingotInvar>, <ore:dustRegularRedstone>, <ore:ingotInvar>]
		],
	],
	<thermalexpansion:dynamo:2>: [
		[
			[<gregtech:meta_item_1:32642>, <thermalfoundation:material:514>, <gregtech:meta_item_1:32642>],
			[<ore:ingotIron>, <gregtech:machine:503>, <ore:ingotIron>], 
			[<ore:ingotTin>, <ore:dustRegularRedstone>, <ore:ingotTin>]
		],
	],
	<thermalexpansion:augment:576>: [
		[
			[null, <ore:gearIron>, null],[<ore:plateCopper>, <minecraft:bucket>, <ore:plateCopper>], 
			[null, <ore:blockGlassColorless>, null]
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
	//dynamos, augments specializations
	<thermalexpansion:augment:672>,
	<thermalexpansion:augment:673>,
	<thermalexpansion:augment:656>,
	<thermalexpansion:dynamo>,
	<thermalexpansion:dynamo:1>,
	<thermalexpansion:dynamo:2>,
	<thermalexpansion:augment:576>,
];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {

		//refined fuel recipes for thermal compression dynamo
		large_chemical_reactor.recipeBuilder()
			.inputs(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
			.fluidInputs(<liquid:high_octane> * 800, <liquid:nitro_fuel> * 150, <liquid:light_e_naquadah_fuel> * 200, <liquid:medium_e_naquadah_fuel> * 75, <liquid:heavy_e_naquadah_fuel> * 25)
			.fluidOutputs(<liquid:refined_fuel> * 360000)
			.duration(sec(1)).EUt(30720).buildAndRegister();
			
		large_chemical_reactor.recipeBuilder()
			.inputs(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
			.fluidInputs(<liquid:high_octane> * 800, <liquid:nitro_fuel> * 150, <liquid:light_naquadah_fuel> * 500, <liquid:medium_naquadah_fuel> * 175, <liquid:heavy_naquadah_fuel> * 50)
			.fluidOutputs(<liquid:refined_fuel> * 180000)
			.duration(sec(1)).EUt(7680).buildAndRegister();	
			
		//remove alloying lumium, signalum, enderium in smeltery
		Alloy.removeRecipe(<liquid:lumium>);
		Alloy.removeRecipe(<liquid:signalum>);
		Alloy.removeRecipe(<liquid:enderium>);
		
		//extruder recipes for lumium and signalum gears
		extruder.recipeBuilder()
			.inputs(<ore:ingotLumium>)
			.notConsumable(<metaitem:shape.extruder.gear>)
			.outputs(<ore:gearLumium>.firstItem)
			.duration(sec(15)).EUt(64).buildAndRegister();
			
		extruder.recipeBuilder()
			.inputs(<ore:ingotSignalum>)
			.notConsumable(<metaitem:shape.extruder.gear>)
			.outputs(<ore:gearSignalum>.firstItem)
			.duration(sec(30)).EUt(128).buildAndRegister();
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}