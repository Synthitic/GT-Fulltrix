#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;
import mods.gtadditions.recipe.Utils;

//cleanup unbalanced vanilla recipes
recipes.removeShaped(<minecraft:hopper>, [[<ore:ingotIron>, <ore:logWood>, <ore:ingotIron>],[<ore:ingotIron>, <ore:logWood>, <ore:ingotIron>], [null, <ore:ingotIron>, null]]);
recipes.removeByRecipeName("enderio:tweak_chest_from_wood");
recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("enderio:tweak_wood_hopper");

static shapedRecipes as IIngredient[][][][IItemStack] = {
	//time in a bottle
	<randomthings:timeinabottle>: [
		[
			[<minecraft:gold_block>, <ore:circuitGood>, <minecraft:gold_block>],
			[<minecraft:diamond_block>, <minecraft:clock>, <minecraft:diamond_block>], 
			[<minecraft:lapis_block>, <minecraft:glass_bottle>, <minecraft:lapis_block>]
		],
	],
	
	//ender tank and ender chest
	<enderstorage:ender_storage> * 2: [
		[
			[<gregtech:meta_item_1:32671>, <minecraft:ender_eye>, <gregtech:meta_item_1:32681>],
			[<gregtech:meta_item_1:32631>, <gregtech:machine:804>, <gregtech:meta_item_1:32631>], 
			[<enderio:block_reinforced_obsidian>, <minecraft:ender_eye>, <enderio:block_reinforced_obsidian>]
		],
	],
	<enderstorage:ender_storage:1> * 2: [
		[
			[<gregtech:meta_item_1:32671>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:32681>],
			[<minecraft:ender_eye>, <gregtech:machine:814>, <minecraft:ender_eye>], 
			[<enderio:block_reinforced_obsidian>, <gregtech:meta_item_1:32611>, <enderio:block_reinforced_obsidian>],
		],
	],
	
	//snad
	<snad:snad>: [
		[
			[null, <extrautils2:compressedsand:1>, null],
			[null, <extrautils2:compressedsand:1>, null],
			[null, null, null]
		],
	],
	
	//Block O' Water
	<blockowater:block_o_water>: [
		[
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
			[<minecraft:water_bucket>, <gregtech:machine_casing:10>, <minecraft:water_bucket>], 
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
		],
	],
	
	//forestry worktable
	<forestry:worktable>: [
		[
			[<ore:chest>, <ore:plankWood>, <ore:chest>],
			[<ore:plankWood>, <avaritia:compressed_crafting_table>, <ore:plankWood>], 
			[<ore:chest>, <ore:plankWood>, <ore:chest>]
		],
	],
	
	//stick and chest convience recipes
	<minecraft:chest> * 2: [	
		[
			[<ore:logWood>, <ore:logWood>, <ore:logWood>],
			[<ore:logWood>, null, <ore:logWood>], 
			[<ore:logWood>, <ore:logWood>, <ore:logWood>]
		],
	],
	<minecraft:stick> * 4: [
		[
			[null, <ore:logWood>, null],
			[null, <ore:logWood>, null],
			[null, null, null]
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
	<minecraft:chest:0> * 4,
	<minecraft:stick:0> * 16,
	<minecraft:trapped_chest:0> * 4,
];

static removeFurnace as IIngredient[] = [
	<minecraft:coal:1>,
];

function machineRecipes() {

		//remove assembler ender eye recipes
		Utils.removeRecipeByOutput(assembler, [<minecraft:ender_eye>], null, false);
		
		//chemical reactor recipes for ender eyes
		chemical_reactor.recipeBuilder()
			.inputs(<ore:gemEnderPearl>,<ore:dustBlaze>)
			.outputs(<minecraft:ender_eye>)
			.duration(sec(5)).EUt(480).buildAndRegister();
		
		chemical_reactor.recipeBuilder()
			.inputs(<ore:blockEnderPearl>,<ore:dustBlaze>*9)
			.outputs(<ore:blockEnderEye>.firstItem)
			.duration(sec(45)).EUt(480).buildAndRegister();
		
		large_chemical_reactor.recipeBuilder()
			.inputs(<ore:gemEnderPearl>,<ore:dustBlaze>)
			.outputs(<minecraft:ender_eye>)
			.duration(sec(5)).EUt(480).buildAndRegister();
			
		large_chemical_reactor.recipeBuilder()
			.inputs(<ore:blockEnderPearl>,<ore:dustBlaze>*9)
			.outputs(<ore:blockEnderEye>.firstItem)
			.duration(sec(45)).EUt(480).buildAndRegister();
		
		//remove LCR recipes for golden apple and enchanted golden apple
		Utils.removeRecipeByOutput(large_chemical_reactor,[<minecraft:golden_apple>],null,false);
		Utils.removeRecipeByOutput(large_chemical_reactor,[<minecraft:golden_apple:1>],null,false);
		
		//sand into clay
		chemical_reactor.recipeBuilder()
			.inputs(<minecraft:sand> * 1)
			.inputs(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
			.fluidInputs(<liquid:water> * 1000)
			.outputs(<minecraft:clay> * 1)
			.duration(sec(10)).EUt(8).buildAndRegister();
		
		large_chemical_reactor.recipeBuilder()
			.inputs(<minecraft:sand> * 1)
			.inputs(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
			.fluidInputs(<liquid:water> * 1000)
			.outputs(<minecraft:clay> * 1)
			.duration(sec(10)).EUt(8).buildAndRegister();
			
		//ender pearl autoclave recipe instead of implosion
		Utils.removeRecipeByOutput(implosion_compressor, [<minecraft:ender_pearl>*3], null, false);
		
		autoclave.recipeBuilder()
			.inputs(<ore:dustEnderPearl>)
			.fluidInputs(<liquid:water>*1000)
			.chancedOutput(<minecraft:ender_pearl>,7000,500)
			.duration(sec(60)).EUt(30).buildAndRegister();
			
		autoclave.recipeBuilder()
			.inputs(<ore:dustEnderPearl>)
			.fluidInputs(<liquid:distilled_water>*500)
			.chancedOutput(<minecraft:ender_pearl>,9000,1000)
			.duration(sec(30)).EUt(30).buildAndRegister();
			
}

function init() {
	// Un-named recipes
	craft.removeRecipes(removeRecipes);
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}
