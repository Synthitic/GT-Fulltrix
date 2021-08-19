#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FuelRecipe;
import mods.gtadditions.recipe.Utils;


static shapedRecipes as IIngredient[][][][IItemStack] = {
	
	//scanner
	<gregtech:meta_item_2:32579>: [
		[
			[<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:32690>, <gregtech:meta_item_1:12111>],
			[<ore:circuitBasic>, <gregtech:meta_item_1:12209>, <ore:circuitBasic>], 
			[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32517>, <gregtech:meta_item_1:12184>]
		],
		[
			[<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:32690>, <gregtech:meta_item_1:12111>],
			[<ore:circuitBasic>, <gregtech:meta_item_1:12209>, <ore:circuitBasic>], 
			[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32518>, <gregtech:meta_item_1:12184>]
		],
		[
			[<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:32690>, <gregtech:meta_item_1:12111>],
			[<ore:circuitBasic>, <gregtech:meta_item_1:12209>, <ore:circuitBasic>], 
			[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32519>, <gregtech:meta_item_1:12184>]
		],
	],
	
	//distillation tower
	<gregtech:machine:2537>: [
		[
			[<ore:circuitExtreme>, <ore:pipeLargeStainlessSteel>, <ore:circuitExtreme>],
			[<gregtech:meta_item_1:32612>, <gregtech:machine:503>, <gregtech:meta_item_1:32612>], 
			[<ore:circuitExtreme>, <ore:pipeLargeStainlessSteel>, <ore:circuitExtreme>]
		],
	],
	
	//MV-IV motors
	<gregtech:meta_item_1:32604>: [
		[
			[<ore:cableGtDoubleTungsten>, <ore:wireGtQuadrupleGraphene>, <ore:stickTungstenSteel>],
			[<ore:wireGtQuadrupleGraphene>, <ore:stickNeodymiumMagnetic>, <ore:wireGtQuadrupleGraphene>],
			[<ore:stickTungstenSteel>, <ore:wireGtQuadrupleGraphene>, <ore:cableGtDoubleTungsten>]
		],
	],
	<gregtech:meta_item_1:32603>: [
		[
			[<ore:cableGtDoubleAluminium>, <ore:wireGtOctalAnnealedCopper>, <ore:stickTitanium>],
			[<ore:wireGtOctalAnnealedCopper>, <ore:stickNeodymiumMagnetic>, <ore:wireGtOctalAnnealedCopper>],
			[<ore:stickTitanium>, <ore:wireGtOctalAnnealedCopper>, <ore:cableGtDoubleAluminium>]
		],
	],
	<gregtech:meta_item_1:32602>: [
		[
			[<ore:cableGtDoubleGold>, <ore:wireGtDoubleElectrum>, <ore:stickStainlessSteel>],
			[<ore:wireGtDoubleElectrum>, <ore:stickSteelMagnetic>, <ore:wireGtDoubleElectrum>],
			[<ore:stickStainlessSteel>, <ore:wireGtDoubleElectrum>, <ore:cableGtDoubleGold>]
		],
	],
	<gregtech:meta_item_1:32601>: [
		[
			[<ore:cableGtDoubleCopper>, <ore:wireGtQuadrupleCupronickel>, <ore:stickAluminium>],
			[<ore:wireGtQuadrupleCupronickel>, <ore:stickSteelMagnetic>, <ore:wireGtQuadrupleCupronickel>],
			[<ore:stickAluminium>, <ore:wireGtQuadrupleCupronickel>, <ore:cableGtDoubleCopper>]
		],
	],
	
	//advanced engine intake
	<contenttweaker:advanced_engine_intake>: [
		[
			[<ore:rotorTungstenSteel>, <ore:gregHardHammers>, <ore:rotorTungstenSteel>],
			[<ore:pipeMediumTungstenSteel>, <gregtech:metal_casing:7>, <ore:pipeMediumTungstenSteel>],
			[<ore:rotorTungstenSteel>, <ore:gregWrenches>, <ore:rotorTungstenSteel>]
		],
	],

	//osmiridium casing
	<gregtech:metal_casing_osmiridium> * 3: [
		[
			[<gregtech:meta_item_1:12207>, <ore:craftingToolHardHammer>, <ore:plateOsmiridium>],
			[<ore:plateOsmiridium>, <ore:frameGtOsmiridium>, <ore:plateOsmiridium>],
			[<ore:plateOsmiridium>, <ore:craftingToolWrench>, <ore:plateOsmiridium>]
		],
	],
	
	//mv-iv sensors and emitters
	<gregtech:meta_item_1:32684>: [
		[
			[<ore:stickOsmium>, <ore:stickOsmium>, <ore:circuitElite>],
			[<ore:cableGtSingleTungsten>, <gregtech:meta_item_1:32725>, <ore:stickOsmium>],
			[<ore:circuitElite>, <ore:cableGtSingleTungsten>, <ore:stickOsmium>]
		],
	],
	<gregtech:meta_item_1:32683>: [
		[
			[<ore:stickPlatinum>, <ore:stickPlatinum>, <ore:circuitExtreme>],
			[<ore:cableGtSingleAluminium>, <gregtech:meta_item_1:32724>, <ore:stickPlatinum>], 
			[<ore:circuitExtreme>, <ore:cableGtSingleAluminium>, <ore:stickPlatinum>]
		],
	],
	<gregtech:meta_item_1:32682>: [
		[
			[<ore:stickChrome>, <ore:stickChrome>, <ore:circuitAdvanced>],
			[<ore:cableGtSingleGold>, <ore:pearlEnderEye>, <ore:stickChrome>],
			[<ore:circuitAdvanced>, <ore:cableGtSingleGold>, <ore:stickChrome>]
		],
	],
	<gregtech:meta_item_1:32681>: [
		[
			[<ore:stickElectrum>, <ore:stickElectrum>, <ore:circuitGood>],
			[<ore:cableGtSingleCopper>, <ore:materialEnderPearl>, <ore:stickElectrum>],
			[<ore:circuitGood>, <ore:cableGtSingleCopper>, <ore:stickElectrum>]
		],
	],
	<gregtech:meta_item_1:32694>: [
		[
			[<ore:plateTungstenSteel>, null, <gregtech:meta_item_1:32725>],
			[<ore:plateTungstenSteel>, <ore:stickOsmium>, null],
			[<ore:circuitElite>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>]
		],
	],
	<gregtech:meta_item_1:32693>: [
		[
			[<ore:plateTitanium>, null, <gregtech:meta_item_1:32724>],
			[<ore:plateTitanium>, <ore:stickPlatinum>, null], 
			[<ore:circuitExtreme>, <ore:plateTitanium>, <ore:plateTitanium>]
		],
	],
	<gregtech:meta_item_1:32692>: [
		[
			[<ore:plateStainlessSteel>, null, <ore:pearlEnderEye>],
			[<ore:plateStainlessSteel>, <ore:stickChrome>, null], 
			[<ore:circuitAdvanced>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]
		],
	],
	<gregtech:meta_item_1:32691>: [
		[
			[<ore:plateAluminium>, null, <ore:materialEnderPearl>],
			[<ore:plateAluminium>, <ore:stickElectrum>, null],
			[<ore:circuitGood>, <ore:plateAluminium>, <ore:plateAluminium>]
		],
	],

};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	//tin and red alloy cables
	<gregtech:cable:5071>: [
			[<gregtech:cable:71>,<gregtech:meta_item_1:32627>,<minecraft:carpet>],
	],
	<gregtech:cable:5237>: [
			[<gregtech:cable:237>,<gregtech:meta_item_1:32627>,<minecraft:carpet>],
	],
	
	//extended crafting table duplication
	/*
	<extendedcrafting:table_ultimate> * 2: [
		[<extendedcrafting:table_ultimate>],
	],
	<extendedcrafting:table_elite> * 2: [
		[<extendedcrafting:table_elite>],
	],
	<extendedcrafting:table_advanced> * 2: [
		[<extendedcrafting:table_advanced>],
	],
	*/
	
	//stainless steel dust
	<gregtech:meta_item_1:2183> * 7: [
		[<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2044>,<gregtech:meta_item_1:2039>,<gregtech:meta_item_1:2016>],
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
		
		//scanner
		<gregtech:meta_item_2:32579>,
		
		//stainless steel dust
		<gregtech:meta_item_1:2183> * 9,
		
		//forestry worktable
		<forestry:worktable>,
		
		//signalum and lumium dust
		<ore:dustLumium>.firstItem,
		<ore:dustSignalum>.firstItem,
		
		//distillation tower
		<gregtech:machine:2537>,
		
		//ender eye
		<minecraft:ender_eye>,
		
		//mv-iv motors
		<gregtech:meta_item_1:32601>,
		<gregtech:meta_item_1:32602>,
		<gregtech:meta_item_1:32603>,
		<gregtech:meta_item_1:32604>,
		
		//large miners
		<gregtech:machine:2550>,
		<gregtech:machine:2549>,
		<gregtech:machine:2548>,
		
		//mv-iv emitters and sensors
		<gregtech:meta_item_1:32684>,
		<gregtech:meta_item_1:32683>,
		<gregtech:meta_item_1:32682>,
		<gregtech:meta_item_1:32681>,
		<gregtech:meta_item_1:32694>,
		<gregtech:meta_item_1:32693>,
		<gregtech:meta_item_1:32692>,
		<gregtech:meta_item_1:32691>,
		
		//remove energy input hatch recipes
		<meta_tile_entity:gregtech:energy_hatch.input.ulv>,
        <meta_tile_entity:gregtech:energy_hatch.input.lv>,
        <meta_tile_entity:gregtech:energy_hatch.input.mv>,
        <meta_tile_entity:gregtech:energy_hatch.input.hv>,
        <meta_tile_entity:gregtech:energy_hatch.input.ev>,
        <meta_tile_entity:gregtech:energy_hatch.input.iv>,
        <meta_tile_entity:gregtech:energy_hatch.input.luv>,
        <meta_tile_entity:gregtech:energy_hatch.input.zpm>,
        <meta_tile_entity:gregtech:energy_hatch.input.uv>,
        <meta_tile_entity:gregtech:energy_hatch.input.max>,
		
		//remove energy output hatch recipes
		<meta_tile_entity:gregtech:energy_hatch.output.ulv>,
        <meta_tile_entity:gregtech:energy_hatch.output.lv>,
        <meta_tile_entity:gregtech:energy_hatch.output.mv>,
        <meta_tile_entity:gregtech:energy_hatch.output.hv>,
        <meta_tile_entity:gregtech:energy_hatch.output.ev>,
        <meta_tile_entity:gregtech:energy_hatch.output.iv>,
        <meta_tile_entity:gregtech:energy_hatch.output.luv>,
        <meta_tile_entity:gregtech:energy_hatch.output.zpm>,
        <meta_tile_entity:gregtech:energy_hatch.output.uv>,
        <meta_tile_entity:gregtech:energy_hatch.output.max>
];

static removeFurnace as IIngredient[] = [
	//slime to rubber. make an oredict slime recipe
	<gregtech:meta_item_1:32627>,
];

function machineRecipes() {
		gt.compressor.recipeBuilder()
        .inputs([<ore:dustInfinityCatalystDust> * 64])
        .outputs([<avaritia:resource:5>])
        .EUt(2013265920).duration(sec(1))
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
		
		//quite clear glass
		furnace.addRecipe(<enderio:block_fused_glass>, <minecraft:glass>, 0.0);
		
		//stainless steel balance
		mixer.findRecipe(8, [<ore:dustIron>.firstItem * 4, <ore:dustChrome>.firstItem, <ore:dustManganese>.firstItem, <ore:dustInvar>.firstItem * 3], null).remove();
		mixer.findRecipe(8, [<ore:dustTinyIron>.firstItem * 4, <ore:dustTinyChrome>.firstItem, <ore:dustTinyManganese>.firstItem, <ore:dustTinyInvar>.firstItem * 3], null).remove();
		mixer.findRecipe(30, [<ore:dustIron>.firstItem * 6, <ore:dustChrome>.firstItem, <ore:dustManganese>.firstItem, <ore:dustNickel>.firstItem], null).remove();
		large_mixer.findRecipe(8, [<ore:dustIron>.firstItem * 4, <ore:dustChrome>.firstItem, <ore:dustManganese>.firstItem, <ore:dustInvar>.firstItem * 3, <gregtech:meta_item_1:32766>.withTag({Configuration: 4})], null).remove();
		large_mixer.findRecipe(8, [<ore:dustTinyIron>.firstItem * 4, <ore:dustTinyChrome>.firstItem, <ore:dustTinyManganese>.firstItem, <ore:dustTinyInvar>.firstItem * 3, <gregtech:meta_item_1:32766>.withTag({Configuration: 4})], null).remove();
		large_mixer.findRecipe(30, [<ore:dustIron>.firstItem * 6, <ore:dustChrome>.firstItem, <ore:dustManganese>.firstItem, <ore:dustNickel>.firstItem, <gregtech:meta_item_1:32766>.withTag({Configuration: 4})], null).remove();
		blast_furnace.findRecipe(128, [<ore:dustStainlessSteel>.firstItem], null).remove();
		
		mixer.recipeBuilder()
			.inputs(<ore:dustIron> * 6, <ore:dustChrome>, <ore:dustManganese>, <ore:dustNickel>)
			.outputs(<ore:dustStainlessSteel>.firstItem * 9)
			.duration(sec(25)).EUt(120).buildAndRegister();
			
		large_mixer.recipeBuilder()
			.inputs(<ore:dustIron> * 6, <ore:dustChrome>, <ore:dustManganese>, <ore:dustNickel>, <gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
			.outputs(<ore:dustStainlessSteel>.firstItem * 9)
			.duration(sec(25)).EUt(120).buildAndRegister();
		
		
		blast_furnace.recipeBuilder()
			.inputs(<ore:dustStainlessSteel>)
			.outputs(<ore:ingotStainlessSteel>.firstItem)
			.circuit(1)
			.property("temperature", 1700)
			.duration(sec(60)).EUt(480).buildAndRegister();
		
		blast_furnace.recipeBuilder()
			.inputs(<ore:dustStainlessSteel>)
			.circuit(11)
			.fluidInputs(<liquid:oxygen> * 1000)
			.outputs(<ore:ingotStainlessSteel>.firstItem)
			.property("temperature", 1700)
			.duration(sec(40)).EUt(480).buildAndRegister();
			
		//integrate fluid extract fish oil recipe for pam's fish
		for fish in loadedMods["harvestcraft"].items as IItemStack[] {
			if (<ore:listAllfishfresh> has fish) {
				gt.fluid_extractor.recipeBuilder()
					.inputs(fish)
					.fluidOutputs(<liquid:fish_oil> * 40)
					.duration(sec(8)).EUt(4).buildAndRegister();
			}
		}

			
		//oredict slime to rubber furnace recipe
		furnace.addRecipe(<gregtech:meta_item_1:32627>, <ore:slimeball>, 0.0);
		
		//very heavy oil into heavy oil
		distillery.recipeBuilder()
			.circuit(1)
			.fluidInputs(<liquid:oil_very_heavy> * 100)
			.fluidOutputs(<liquid:oil_heavy> * 200)
			.duration(sec(5)).EUt(1920).buildAndRegister();
			
		//extra gelled toluene recipes
		chemical_reactor.recipeBuilder()
			.inputs(<ore:dustSugar>*9,<ore:dustPlastic>)
			.fluidInputs(<liquid:toluene>*1197)
			.outputs(<gregtech:meta_item_2:32010>*18)
			.duration(sec(63)).EUt(192).buildAndRegister();
		
		large_chemical_reactor.recipeBuilder()
			.inputs(<ore:dustSugar>*9,<ore:dustPlastic>)
			.fluidInputs(<liquid:toluene>*1197)
			.outputs(<gregtech:meta_item_2:32010>*18)
			.duration(sec(63)).EUt(192).buildAndRegister();
		
		
		//MV-IV motor changes
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32601>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32602>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32603>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32604>],null,false);
		assembler.recipeBuilder()
			.inputs(<ore:cableGtDoubleCopper> * 2, <ore:wireGtQuadrupleCupronickel> * 4, <ore:stickAluminium> * 2, <ore:stickSteelMagnetic>)
			.outputs(<gregtech:meta_item_1:32601>)
			.duration(sec(5)).EUt(120).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:cableGtDoubleGold> * 2, <ore:wireGtDoubleElectrum> * 4, <ore:stickStainlessSteel> * 2, <ore:stickSteelMagnetic>)
			.outputs(<gregtech:meta_item_1:32602>)
			.duration(sec(5)).EUt(480).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:cableGtDoubleAluminium> * 2, <ore:wireGtOctalAnnealedCopper> * 4, <ore:stickTitanium> * 2, <ore:stickNeodymiumMagnetic>)
			.outputs(<gregtech:meta_item_1:32603>)
			.duration(sec(5)).EUt(1920).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:cableGtDoubleTungsten> * 2, <ore:wireGtQuadrupleGraphene> * 4, <ore:stickTungstenSteel> * 2, <ore:stickNeodymiumMagnetic>)
			.outputs(<gregtech:meta_item_1:32604>)
			.duration(sec(5)).EUt(7680).buildAndRegister();

		//rebalance nano cpu wafer
		Utils.removeRecipeByOutput(chemical_reactor,[<gregtech:meta_item_2:32467>],null,false);
		Utils.removeRecipeByOutput(large_chemical_reactor,[<gregtech:meta_item_2:32467>],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32481>*7],null,false);
		chemical_reactor.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32504>*16, <gregtech:meta_item_2:32464>)
			.fluidInputs(<liquid:glowstone>*576)
			.outputs(<gregtech:meta_item_2:32467>)
			.duration(sec(60)).EUt(1920).buildAndRegister();
		large_chemical_reactor.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32504>*16, <gregtech:meta_item_2:32464>)
			.fluidInputs(<liquid:glowstone>*576)
			.outputs(<gregtech:meta_item_2:32467>)
			.duration(sec(60)).EUt(1920).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32467>)
			.outputs(<gregtech:meta_item_2:32481>*8)
			.duration(sec(30)).EUt(480).buildAndRegister();
			
		//rebalance energy cutting wafer costs
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32477>*8],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32485>*32],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32478>*8],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32482>*16],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32480>*32],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32486>*6],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32476>*6],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32484>*5],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gtadditions:ga_meta_item:32420>*6],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gtadditions:ga_meta_item:32422>*6],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gtadditions:ga_meta_item:32424>*2],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gtadditions:ga_meta_item:32426>*16],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32479>*2],null,false);
		Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32483>*4],null,false);
		
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32463>)
			.outputs(<gregtech:meta_item_2:32485>*8)
			.duration(sec(30)).EUt(64).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32471>)
			.outputs(<gregtech:meta_item_2:32485>*32)
			.duration(sec(30)).EUt(96).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32464>)
			.outputs(<gregtech:meta_item_2:32478>*8)
			.duration(sec(30)).EUt(120).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32468>)
			.outputs(<gregtech:meta_item_2:32482>*16)
			.duration(sec(30)).EUt(192).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32466>)
			.outputs(<gregtech:meta_item_2:32480>*32)
			.duration(sec(30)).EUt(192).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32469>)
			.outputs(<gregtech:meta_item_2:32483>*4)
			.duration(sec(30)).EUt(480).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32472>)
			.outputs(<gregtech:meta_item_2:32486>*6)
			.duration(sec(30)).EUt(1920).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32462>)
			.outputs(<gregtech:meta_item_2:32476>*6)
			.duration(sec(30)).EUt(1920).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32470>)
			.outputs(<gregtech:meta_item_2:32484>*6)
			.duration(sec(30)).EUt(1920).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32465>)
			.outputs(<gregtech:meta_item_2:32479>*2)
			.duration(sec(30)).EUt(1920).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gtadditions:ga_meta_item:32421>)
			.outputs(<gtadditions:ga_meta_item:32420>*6)
			.duration(sec(30)).EUt(7680).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gtadditions:ga_meta_item:32425>)
			.outputs(<gtadditions:ga_meta_item:32424>*2)
			.duration(sec(30)).EUt(7680).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gtadditions:ga_meta_item:32427>)
			.outputs(<gtadditions:ga_meta_item:32426>*16)
			.duration(sec(30)).EUt(7680).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<gtadditions:ga_meta_item:32423>)
			.outputs(<gtadditions:ga_meta_item:32422>*6)
			.duration(sec(30)).EUt(30720).buildAndRegister();
			
		//large miner assembler recipes
		assembler.recipeBuilder()
			.circuit(2)
			.inputs(<gregtech:machine:504>, <ore:frameGtTitanium>*4,<gregtech:meta_item_1:32603>*4,<gregtech:meta_item_1:32613>*4,<gregtech:meta_item_1:32633>*4,<ore:gearTungsten>*4,<ore:circuitExtreme>*4)
			.fluidInputs(<liquid:soldering_alloy>*1440)
			.outputs(<gregtech:machine:2548>)
			.duration(sec(30)).EUt(1920).buildAndRegister();
		assembler.recipeBuilder()
			.circuit(2)
			.inputs(<gregtech:machine:2548>, <ore:frameGtTungstenSteel>*4,<gregtech:meta_item_1:32604>*4,<gregtech:meta_item_1:32614>*4,<gregtech:meta_item_1:32634>*4,<ore:gearIridium>*4,<ore:circuitElite>*4)
			.fluidInputs(<liquid:soldering_alloy>*1440)
			.outputs(<gregtech:machine:2549>)
			.duration(sec(30)).EUt(7680).buildAndRegister();
		assembler.recipeBuilder()
			.circuit(2)
			.inputs(<gregtech:machine:2549>, <ore:frameGtOsmiridium>*4,<gregtech:meta_item_1:32606>*4,<gregtech:meta_item_1:32615>*4,<gregtech:meta_item_1:32635>*4,<ore:gearRhodiumPlatedPalladium>*4,<ore:circuitMaster>*4)
			.fluidInputs(<liquid:soldering_alloy>*1440)
			.outputs(<gregtech:machine:2550>)
			.duration(sec(30)).EUt(30720).buildAndRegister();
			
		//osmiridium casing
		assembler.recipeBuilder()
			.circuit(30)
			.inputs(<ore:plateOsmiridium>*6,<ore:frameGtOsmiridium>)
			.outputs(<gregtech:metal_casing_osmiridium>*3)
			.duration(50).EUt(16).buildAndRegister();
			
		//carbon fiber changed to polymers
		autoclave.findRecipe(40,[<ore:dustCarbon>.firstItem],[<liquid:palladium>*1]).remove();
		autoclave.findRecipe(40,[<ore:dustCarbon>.firstItem],[<liquid:platinum>*1]).remove();
		autoclave.findRecipe(6,[<ore:dustCarbon>.firstItem],[<liquid:cerium>*1]).remove();
		
		autoclave.recipeBuilder()
			.inputs(<ore:dustCarbon>*4)
			.fluidInputs(<liquid:plastic>*36)
			.outputs(<gregtech:meta_item_2:32504>)
			.duration(37).EUt(30).buildAndRegister();
			
		autoclave.recipeBuilder()
			.inputs(<ore:dustCarbon>*4)
			.fluidInputs(<liquid:polytetrafluoroethylene>*18)
			.outputs(<gregtech:meta_item_2:32504>*2)
			.duration(25).EUt(120).buildAndRegister();
			
		autoclave.recipeBuilder()
			.inputs(<ore:dustCarbon>*4)
			.fluidInputs(<liquid:epoxid>*9)
			.outputs(<gregtech:meta_item_2:32504>*4)
			.duration(18).EUt(480).buildAndRegister();
			
		autoclave.recipeBuilder()
			.inputs(<ore:dustCarbon>*8)
			.fluidInputs(<liquid:polybenzimidazole>*9)
			.outputs(<gregtech:meta_item_2:32504>*16)
			.duration(37).EUt(1920).buildAndRegister();
			
		//mv-iv sensors
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32691>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32692>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32693>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32694>],null,false);
		
		assembler.recipeBuilder()
			.inputs(<ore:plateAluminium>,<ore:materialEnderPearl>,<ore:stickElectrum>,<ore:circuitGood>)
			.outputs(<gregtech:meta_item_1:32691>)
			.duration(sec(5)).EUt(120).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:plateStainlessSteel>,<ore:pearlEnderEye>,<ore:stickChrome>,<ore:circuitAdvanced>)
			.outputs(<gregtech:meta_item_1:32692>)
			.duration(sec(5)).EUt(480).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:plateTitanium>,<gregtech:meta_item_1:32724>,<ore:stickPlatinum>,<ore:circuitExtreme>)
			.outputs(<gregtech:meta_item_1:32693>)
			.duration(sec(5)).EUt(1920).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:plateTungstenSteel>,<gregtech:meta_item_1:32725>,<ore:stickOsmium>,<ore:circuitElite>)
			.outputs(<gregtech:meta_item_1:32694>)
			.duration(sec(5)).EUt(7680).buildAndRegister();
		
		//mv-iv emitters
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32681>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32682>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32683>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32684>],null,false);
		
		assembler.recipeBuilder()
			.inputs(<ore:stickElectrum>*4,<ore:circuitGood>*2,<ore:cableGtSingleCopper>,<ore:materialEnderPearl>)
			.circuit(1)
			.outputs(<gregtech:meta_item_1:32681>)
			.duration(sec(5)).EUt(120).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:stickChrome>*4,<ore:circuitAdvanced>*2,<ore:cableGtSingleGold>,<ore:pearlEnderEye>)
			.circuit(1)
			.outputs(<gregtech:meta_item_1:32682>)
			.duration(sec(5)).EUt(480).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:stickPlatinum>*4,<ore:circuitExtreme>*2,<ore:cableGtSingleAluminium>,<gregtech:meta_item_1:32724>)
			.circuit(1)
			.outputs(<gregtech:meta_item_1:32683>)
			.duration(sec(5)).EUt(1920).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:stickOsmium>*4,<ore:circuitElite>*2,<ore:cableGtSingleTungsten>,<gregtech:meta_item_1:32725>)
			.circuit(1)
			.outputs(<gregtech:meta_item_1:32684>)
			.duration(sec(5)).EUt(7680).buildAndRegister();
			
		//quantum eye and star radon recipes
		chemical_bath.recipeBuilder()
			.inputs(<minecraft:ender_eye>)
			.fluidInputs(<liquid:radon>*250)
			.outputs(<gregtech:meta_item_1:32724>)
			.duration(sec(24)).EUt(384).buildAndRegister();
		chemical_bath.recipeBuilder()
			.inputs(<minecraft:nether_star>)
			.fluidInputs(<liquid:radon>*1000)
			.outputs(<gregtech:meta_item_1:32725>)
			.duration(sec(96)).EUt(384).buildAndRegister();
		
		//buff indium to small pile
		Utils.removeRecipeByOutput(chemical_reactor,[<gregtech:meta_item_1:31>],[<liquid:lead_zinc_solution>*1000],false);
		Utils.removeRecipeByOutput(large_chemical_reactor,[<gregtech:meta_item_1:31>],[<liquid:lead_zinc_solution>*1000],false);
		
		chemical_reactor.recipeBuilder()
			.inputs(<ore:dustAluminium>*4)
			.fluidInputs(<liquid:indium_concentrate>*1000)
			.outputs(<gregtech:meta_item_1:1031>)
			.duration(sec(50)).EUt(600).buildAndRegister();
			
		large_chemical_reactor.recipeBuilder()
			.inputs(<ore:dustAluminium>*4)
			.fluidInputs(<liquid:indium_concentrate>*1000)
			.outputs(<gregtech:meta_item_1:1031>)
			.duration(sec(50)).EUt(600).buildAndRegister();
			
		//add indium gallium phosphide + radon recipe for qbits
		chemical_reactor.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32467>,<ore:dustIndiumGalliumPhosphide>)
			.fluidInputs(<liquid:radon>*50)
			.outputs(<gregtech:meta_item_2:32470>)
			.duration(sec(15)).EUt(1920).buildAndRegister();
			
		large_chemical_reactor.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32467>,<ore:dustIndiumGalliumPhosphide>)
			.fluidInputs(<liquid:radon>*50)
			.outputs(<gregtech:meta_item_2:32470>)
			.duration(sec(15)).EUt(1920).buildAndRegister();
		
	//harder energy hatches
	
		//sodium potassium
		chemical_reactor.recipeBuilder()
			.inputs(<ore:dustSodium>,<ore:dustPotassium>)
			.fluidOutputs(<liquid:sodium_potassium>*1000)
			.duration(sec(10)).EUt(30).buildAndRegister();
		large_chemical_reactor.recipeBuilder()
			.inputs(<ore:dustSodium>,<ore:dustPotassium>)
			.fluidOutputs(<liquid:sodium_potassium>*1000)
			.duration(sec(10)).EUt(30).buildAndRegister();
		
		//ulpic
		laser_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32440>)
			.notConsumable(<ore:craftingLensMagenta>)
			.outputs(<contenttweaker:ulpic_w>)
			.duration(900).EUt(120).buildAndRegister();
		large_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32440>)
			.notConsumable(<ore:craftingLensMagenta>)
			.outputs(<contenttweaker:ulpic_w>)
			.duration(900).EUt(120).buildAndRegister();
		laser_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32441>)
			.notConsumable(<ore:craftingLensMagenta>)
			.outputs(<contenttweaker:ulpic_w>*4)
			.duration(900).EUt(120).buildAndRegister();
		large_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32441>)
			.notConsumable(<ore:craftingLensMagenta>)
			.outputs(<contenttweaker:ulpic_w>*4)
			.duration(900).EUt(120).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<contenttweaker:ulpic_w>)
			.outputs(<contenttweaker:ulpic>*6)
			.duration(900).EUt(120).buildAndRegister();
		//pic
		laser_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32440>)
			.notConsumable(<ore:craftingLensOrange>)
			.outputs(<contenttweaker:lpic_w>)
			.duration(900).EUt(480).buildAndRegister();
		large_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32440>)
			.notConsumable(<ore:craftingLensOrange>)
			.outputs(<contenttweaker:lpic_w>)
			.duration(900).EUt(480).buildAndRegister();
		laser_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32441>)
			.notConsumable(<ore:craftingLensOrange>)
			.outputs(<contenttweaker:lpic_w>*4)
			.duration(900).EUt(480).buildAndRegister();
		large_engraver.recipeBuilder()
			.inputs(<gregtech:meta_item_2:32441>)
			.notConsumable(<ore:craftingLensOrange>)
			.outputs(<contenttweaker:lpic_w>*4)
			.duration(900).EUt(480).buildAndRegister();
		cutting_saw.recipeBuilder()
			.inputs(<contenttweaker:lpic_w>)
			.outputs(<contenttweaker:lpic>*4)
			.duration(900).EUt(480).buildAndRegister();
		//extra recipes
		polarizer.recipeBuilder()
			.inputs(<ore:stickSamarium>)
			.outputs(<ore:stickSamariumMagnetic>.firstItem)
			.duration(16).EUt(16).buildAndRegister();
		//voltage coils
        assembler.recipeBuilder().duration(200).EUt(30)
                .inputs(<ore:stickIronMagnetic>,<ore:wireFineSteel>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_lv>)
                .buildAndRegister();
        assembler.recipeBuilder().duration(200).EUt(120)
                .inputs(<ore:stickSteelMagnetic>,<ore:wireFineAluminium>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_mv>)
                .buildAndRegister();
        assembler.recipeBuilder().duration(200).EUt(480)
                .inputs(<ore:stickSteelMagnetic>,<ore:wireFineBlackSteel>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_hv>)
                .buildAndRegister();
        assembler.recipeBuilder().duration(200).EUt(1920)
                .inputs(<ore:stickNeodymiumMagnetic>,<ore:wireFineTungstenSteel>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_ev>)
                .buildAndRegister();
        assembler.recipeBuilder().duration(200).EUt(1920)
                .inputs(<ore:stickNeodymiumMagnetic>,<ore:wireFineIridium>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_iv>)
                .buildAndRegister();
        assembler.recipeBuilder().duration(200).EUt(30720)
                .inputs(<ore:stickSamariumMagnetic>,<ore:wireFineOsmiridium>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_luv>)
                .buildAndRegister();
        assembler.recipeBuilder().duration(200).EUt(122880)
                .inputs(<ore:stickSamariumMagnetic>,<ore:wireFineEuropium>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_zpm>)
                .buildAndRegister();
        assembler.recipeBuilder().duration(200).EUt(491520)
                .inputs(<ore:stickSamariumMagnetic>,<ore:wireFineFluxedElectrum>*16)
                .circuit(1)
                .outputs(<contenttweaker:voltage_coil_uv>)
                .buildAndRegister();
		//input hatches
        assembler.recipeBuilder()
                    .inputs(hulls[1],tieredCables[1]*2,circuits[1],<contenttweaker:voltage_coil_lv>*2,pumps[1])
                    .fluidInputs(<liquid:lubricant>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.lv>)
                    .duration(200).EUt(30).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[2],tieredCables[2]*2,circuits[2],<contenttweaker:voltage_coil_mv>*2,pumps[2])
                    .fluidInputs(<liquid:lubricant>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.mv>)
                    .duration(200).EUt(120).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[3],tieredCables[3]*2,circuits[3],<contenttweaker:voltage_coil_hv>*2,<contenttweaker:ulpic>*2,pumps[3])
                    .fluidInputs(<liquid:helium>*1000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.hv>)
                    .duration(200).EUt(480).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[3],tieredCables[3]*2,circuits[3],<contenttweaker:voltage_coil_hv>*2,<contenttweaker:ulpic>*2,pumps[3])
                    .fluidInputs(<liquid:sodium_potassium>*1000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.hv>)
                    .duration(200).EUt(480).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[4],tieredCables[4]*2,circuits[4],<contenttweaker:voltage_coil_ev>*2,<contenttweaker:lpic>*2,pumps[4])
                    .fluidInputs(<liquid:helium>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.ev>)
                    .duration(200).EUt(1920).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[4],tieredCables[4]*2,circuits[4],<contenttweaker:voltage_coil_ev>*2,<contenttweaker:lpic>*2,pumps[4])
                    .fluidInputs(<liquid:sodium_potassium>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.ev>)
                    .duration(200).EUt(1920).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[5],tieredCables[5]*2,circuits[5],<contenttweaker:voltage_coil_iv>*2,<gregtech:meta_item_2:32483>*2,pumps[5])
                    .fluidInputs(<liquid:helium>*3000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.iv>)
                    .duration(200).EUt(7680).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[5],tieredCables[5]*2,circuits[5],<contenttweaker:voltage_coil_iv>*2,<gregtech:meta_item_2:32483>*2,pumps[5])
                    .fluidInputs(<liquid:sodium_potassium>*3000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.input.iv>)
                    .duration(200).EUt(7680).buildAndRegister();
		
        assembly_line.recipeBuilder()
					.inputs(hulls[6],tieredCables[6]*2,circuits[6]*2,<contenttweaker:voltage_coil_luv>*2,<gregtech:meta_item_2:32479>*2,pumps[6])
					.fluidInputs(<liquid:helium>*6000,<liquid:soldering_alloy>*720)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.input.luv>)
                    .duration(400).EUt(30720).buildAndRegister();
        assembly_line.recipeBuilder()
					.inputs(hulls[6],tieredCables[6]*2,circuits[6]*2,<contenttweaker:voltage_coil_luv>*2,<gregtech:meta_item_2:32479>*2,pumps[6])
					.fluidInputs(<liquid:sodium_potassium>*6000,<liquid:soldering_alloy>*720)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.input.luv>)
                    .duration(400).EUt(30720).buildAndRegister();
		assembly_line.recipeBuilder()
					.inputs(hulls[7],tieredCables[7]*2,circuits[7]*2,<contenttweaker:voltage_coil_zpm>*2,<gregtech:meta_item_2:32479>*4,pumps[7])
					.fluidInputs(<liquid:helium>*12000,<liquid:soldering_alloy>*1440)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.input.zpm>)
                    .duration(600).EUt(122880).buildAndRegister();
		assembly_line.recipeBuilder()
					.inputs(hulls[7],tieredCables[7]*2,circuits[7]*2,<contenttweaker:voltage_coil_zpm>*2,<gregtech:meta_item_2:32479>*4,pumps[7])
					.fluidInputs(<liquid:sodium_potassium>*12000,<liquid:soldering_alloy>*1440)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.input.zpm>)
                    .duration(600).EUt(122880).buildAndRegister();
        assembly_line.recipeBuilder()
					.inputs(hulls[8],tieredCables[8]*2,circuits[8]*2,<contenttweaker:voltage_coil_uv>*2,<gtadditions:ga_meta_item:32424>*4,pumps[8])
					.fluidInputs(<liquid:helium>*24000,<liquid:soldering_alloy>*2880)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.input.uv>)
                    .duration(800).EUt(491520).buildAndRegister();
        assembly_line.recipeBuilder()
					.inputs(hulls[8],tieredCables[8]*2,circuits[8]*2,<contenttweaker:voltage_coil_uv>*2,<gtadditions:ga_meta_item:32424>*4,pumps[8])
					.fluidInputs(<liquid:sodium_potassium>*24000,<liquid:soldering_alloy>*2880)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.input.uv>)
                    .duration(800).EUt(491520).buildAndRegister();
		//output hatches
				assembler.recipeBuilder()
                    .inputs(hulls[1],<ore:springTin>,circuits[1],<contenttweaker:voltage_coil_lv>*2,pumps[1])
                    .fluidInputs(<liquid:lubricant>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.lv>)
                    .duration(200).EUt(30).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[2],<ore:springCopper>,circuits[2],<contenttweaker:voltage_coil_mv>*2,pumps[2])
                    .fluidInputs(<liquid:lubricant>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.mv>)
                    .duration(200).EUt(120).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[3],<ore:springGold>,circuits[3],<contenttweaker:voltage_coil_hv>*2,<contenttweaker:ulpic>*2,pumps[3])
                    .fluidInputs(<liquid:helium>*1000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.hv>)
                    .duration(200).EUt(480).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[3],<ore:springGold>,circuits[3],<contenttweaker:voltage_coil_hv>*2,<contenttweaker:ulpic>*2,pumps[3])
                    .fluidInputs(<liquid:sodium_potassium>*1000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.hv>)
                    .duration(200).EUt(480).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[4],<ore:springAluminium>,circuits[4],<contenttweaker:voltage_coil_ev>*2,<contenttweaker:lpic>*2,pumps[4])
                    .fluidInputs(<liquid:helium>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.ev>)
                    .duration(200).EUt(1920).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[4],<ore:springAluminium>,circuits[4],<contenttweaker:voltage_coil_ev>*2,<contenttweaker:lpic>*2,pumps[4])
                    .fluidInputs(<liquid:sodium_potassium>*2000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.ev>)
                    .duration(200).EUt(1920).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[5],<ore:springTungsten>,circuits[5],<contenttweaker:voltage_coil_iv>*2,<gregtech:meta_item_2:32483>*2,pumps[5])
                    .fluidInputs(<liquid:helium>*3000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.iv>)
                    .duration(200).EUt(7680).buildAndRegister();
        assembler.recipeBuilder()
                    .inputs(hulls[5],<ore:springTungsten>,circuits[5],<contenttweaker:voltage_coil_iv>*2,<gregtech:meta_item_2:32483>*2,pumps[5])
                    .fluidInputs(<liquid:sodium_potassium>*3000)
                    .outputs(<meta_tile_entity:gregtech:energy_hatch.output.iv>)
                    .duration(200).EUt(7680).buildAndRegister();
		
        assembly_line.recipeBuilder()
					.inputs(hulls[6],<ore:springYttriumBariumCuprate>*2,circuits[6]*2,<contenttweaker:voltage_coil_luv>*2,<gregtech:meta_item_2:32479>*2,pumps[6])
					.fluidInputs(<liquid:helium>*6000,<liquid:soldering_alloy>*720)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.output.luv>)
                    .duration(400).EUt(30720).buildAndRegister();
        assembly_line.recipeBuilder()
					.inputs(hulls[6],<ore:springYttriumBariumCuprate>*2,circuits[6]*2,<contenttweaker:voltage_coil_luv>*2,<gregtech:meta_item_2:32479>*2,pumps[6])
					.fluidInputs(<liquid:sodium_potassium>*6000,<liquid:soldering_alloy>*720)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.output.luv>)
                    .duration(400).EUt(30720).buildAndRegister();
		assembly_line.recipeBuilder()
					.inputs(hulls[7],<ore:springVanadiumGallium>*4,circuits[7]*2,<contenttweaker:voltage_coil_zpm>*2,<gregtech:meta_item_2:32479>*4,pumps[7])
					.fluidInputs(<liquid:helium>*12000,<liquid:soldering_alloy>*1440)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.output.zpm>)
                    .duration(600).EUt(122880).buildAndRegister();
		assembly_line.recipeBuilder()
					.inputs(hulls[7],<ore:springVanadiumGallium>*4,circuits[7]*2,<contenttweaker:voltage_coil_zpm>*2,<gregtech:meta_item_2:32479>*4,pumps[7])
					.fluidInputs(<liquid:sodium_potassium>*12000,<liquid:soldering_alloy>*1440)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.output.zpm>)
                    .duration(600).EUt(122880).buildAndRegister();
        assembly_line.recipeBuilder()
					.inputs(hulls[8],<ore:springNiobiumTitanium>*4,circuits[8]*2,<contenttweaker:voltage_coil_uv>*2,<gtadditions:ga_meta_item:32424>*4,pumps[8])
					.fluidInputs(<liquid:helium>*24000,<liquid:soldering_alloy>*2880)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.output.uv>)
                    .duration(800).EUt(491520).buildAndRegister();
        assembly_line.recipeBuilder()
					.inputs(hulls[8],<ore:springNiobiumTitanium>*4,circuits[8]*2,<contenttweaker:voltage_coil_uv>*2,<gtadditions:ga_meta_item:32424>*4,pumps[8])
					.fluidInputs(<liquid:sodium_potassium>*24000,<liquid:soldering_alloy>*2880)
					.outputs(<meta_tile_entity:gregtech:energy_hatch.output.uv>)
                    .duration(800).EUt(491520).buildAndRegister();
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}

//special removal of hi-amp energy io hatches

var meta = [3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031,
 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050, 3051, 3052, 3053, 3054, 3055, 3056, 3057, 3058, 3059, 3060, 3061,
 3062, 3063, 3064, 3065, 3066, 3067, 3068, 3069, 3070, 3071, 3072, 3073, 3074, 3075, 3076, 4025, 4026, 4027, 4028, 4029, 4030, 4031, 4032, 4033, 4034, 4035, 4036, 4037, 4038, 4039,
 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049, 4050, 4051, 4052, 4053, 4054, 4055, 4056, 4057, 4058, 4059, 4060, 4061, 4062, 4063, 4064, 4065, 4066, 4067, 4068, 4069,
 4070, 4071, 4072, 4073, 4074] as int[];

for x in meta {
	recipes.remove(<gregtech:machine>.definition.makeStack(x));
}