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
	<randomthings:timeinabottle>: [
		[
			[<minecraft:golden_apple>, <ore:circuitGood>, <minecraft:golden_apple>],
			[<minecraft:diamond_block>, <minecraft:clock>, <minecraft:diamond_block>], 
			[<minecraft:lapis_block>, <minecraft:glass_bottle>, <minecraft:lapis_block>]
		],
	],
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
	<snad:snad>: [
		[
			[null, <extrautils2:compressedsand:1>, null],
			[null, <extrautils2:compressedsand:1>, null],
			[null, null, null]
		],
	],
	
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
	
	//Block O' Water
	<blockowater:block_o_water>: [
		[
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
			[<minecraft:water_bucket>, <gregtech:machine_casing:10>, <minecraft:water_bucket>], 
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
		],
	],
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<gregtech:cable:5071>: [
			[<gregtech:cable:71>,<gregtech:meta_item_1:32627>],
	],
	<gregtech:cable:5237>: [
			[<gregtech:cable:237>,<gregtech:meta_item_1:32627>],
	],
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [

		<randomthings:timeinabottle>,
		
		//field generators lv-iv
		<gregtech:meta_item_1:32670>,
		<gregtech:meta_item_1:32671>,
		<gregtech:meta_item_1:32672>,
		<gregtech:meta_item_1:32673>,
		<gregtech:meta_item_1:32674>,
		
		//deep dark portal
		<extrautils2:teleporter:1>,
		
		//enderstorage
		<enderstorage:ender_storage>,
		<enderstorage:ender_storage:1>,
		
		//solars
		<solarflux:solar_panel_1>,
		<solarflux:solar_panel_2>,
		<solarflux:solar_panel_3>,
		<solarflux:solar_panel_4>,
		<solarflux:solar_panel_5>,
		<solarflux:solar_panel_6>,
		<solarflux:solar_panel_7>,
		<solarflux:solar_panel_8>,
		<solarflux:custom_solar_panel_solar_panel_ix>,
		<solarflux:custom_solar_panel_solar_panel_x>,
		<solarflux:custom_solar_panel_solar_panel_xi>,
		<solarflux:custom_solar_panel_solar_panel_xii>,
		<solarflux:custom_solar_panel_solar_panel_xiii>,
		
		//Snad
		<snad:snad>,
		
		//Block O' Water
		<blockowater:block_o_water>,
		
		//red alloy and tin cable
		<gregtech:cable:5237>,
		<gregtech:cable:5071>,
		
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
		
		//remove field gens lv-iv
		/*
		gt.assembler.findRecipe(30, [<ore:dustEnderPearl>.firstItem, <ore:circuitBasic>.firstItem * 2], [<liquid:osmium> * 72]).remove();
		gt.assembler.findRecipe(120, [<ore:dustEnderEye>.firstItem, <ore:circuitGood>.firstItem * 2], [<liquid:osmium> * 144]).remove();
		gt.assembler.findRecipe(480, [<gregtech:meta_item_1:32724>, <ore:circuitAdvanced>.firstItem * 2], [<liquid:osmium> * 288]).remove();
		gt.assembler.findRecipe(1920, [<ore:dustNetherStar>.firstItem, <ore:circuitExtreme>.firstItem * 2], [<liquid:osmium> * 576]).remove();
		gt.assembler.findRecipe(7680, [<gregtech:meta_item_1:32725>, <ore:circuitElite>.firstItem * 2], [<liquid:osmium> * 1152]).remove();
		*/
		
		//field generators lv-iv
		gt.assembler.recipeBuilder()
                .inputs(<ore:dustEnderPearl> * 1)
                .inputs(<ore:circuitGood> * 2)
                .fluidInputs(<liquid:aluminium> * 288)
                .outputs(<gregtech:meta_item_1:32670>)
                .duration(100).EUt(30).buildAndRegister();

        gt.assembler.recipeBuilder()
                .inputs(<ore:dustEnderEye> * 1)
                .inputs(<ore:circuitAdvanced> * 2)
                .fluidInputs(<liquid:titanium> * 288)
                .outputs(<gregtech:meta_item_1:32671>)
                .duration(100).EUt(120).buildAndRegister();

        gt.assembler.recipeBuilder()
                .inputs(<gregtech:meta_item_1:32724> * 1)
                .inputs(<ore:circuitExtreme> * 2)
                .fluidInputs(<liquid:niobium_titanium> * 288)
                .outputs(<gregtech:meta_item_1:32672>)
                .duration(100).EUt(480).buildAndRegister();

        gt.assembler.recipeBuilder()
                .inputs(<ore:dustNetherStar> * 1)
                .inputs(<ore:circuitElite> * 2)
                .fluidInputs(<liquid:hssg> * 288)
                .outputs(<gregtech:meta_item_1:32673>)
                .duration(100).EUt(1920).buildAndRegister();

        gt.assembler.recipeBuilder()
                .inputs(<gregtech:meta_item_1:32725> * 1)
                .inputs(<ore:circuitMaster> * 2)
                .fluidInputs(<liquid:hsss> * 288)
                .outputs(<gregtech:meta_item_1:32674>)
                .duration(100).EUt(7680).buildAndRegister();
				
		//deep dark portal

		
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}