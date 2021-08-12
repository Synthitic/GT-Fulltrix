#priority 0



import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FuelRecipe;
import mods.tconstruct.Alloy;
import mods.gtadditions.recipe.Utils;


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
	
	//circuit etcher
	<threng:machine:2>: [
		[
			[<appliedenergistics2:material:19>, <ae2stuff:inscriber>, <appliedenergistics2:material:13>],
			[<appliedenergistics2:quartz_glass>, <threng:material:4>, <appliedenergistics2:quartz_glass>],
			[<appliedenergistics2:material:15>, <appliedenergistics2:material:43>, <appliedenergistics2:material:14>]
		],
	],
	
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
	
	//forestry worktable
	<forestry:worktable>: [
		[
			[<ore:chest>, <ore:plankWood>, <ore:chest>],
			[<ore:plankWood>, <avaritia:compressed_crafting_table>, <ore:plankWood>], 
			[<ore:chest>, <ore:plankWood>, <ore:chest>]
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
	
	//industrial machine chassis
	<enderio:item_material:1>: [
		[
			[<ore:stickLongDarkSteel>, <ore:ingotDarkSteel>, <ore:stickLongDarkSteel>],
			[<ore:ingotDarkSteel>, <enderio:block_infinity>, <ore:ingotDarkSteel>],
			[<ore:stickLongDarkSteel>, <ore:ingotDarkSteel>, <ore:stickLongDarkSteel>]
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
			[<ore:cableGtDoubleCopper>, <ore:wireGtDoubleCupronickel>, <ore:stickAluminium>],
			[<ore:wireGtDoubleCupronickel>, <ore:stickSteelMagnetic>, <ore:wireGtDoubleCupronickel>],
			[<ore:stickAluminium>, <ore:wireGtDoubleCupronickel>, <ore:cableGtDoubleCopper>]
		],
	],
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	//tin and red alloy cables
	<gregtech:cable:5071>: [
			[<gregtech:cable:71>,<gregtech:meta_item_1:32627>],
	],
	<gregtech:cable:5237>: [
			[<gregtech:cable:237>,<gregtech:meta_item_1:32627>],
	],
	
	//extended crafting table duplication
	<extendedcrafting:table_ultimate> * 2: [
		[<extendedcrafting:table_ultimate>],
	],
	<extendedcrafting:table_elite> * 2: [
		[<extendedcrafting:table_elite>],
	],
	<extendedcrafting:table_advanced> * 2: [
		[<extendedcrafting:table_advanced>],
	],
	
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
		
		//circuit etcher
		<threng:machine:2>,
		
		//scanner
		<gregtech:meta_item_2:32579>,
		
		//stainless steel dust
		<gregtech:meta_item_1:2183> * 9,
		
		//forestry worktable
		<forestry:worktable>,
		
		//signalum and lumium dust
		<ore:dustLumium>.firstItem,
		<ore:dustSignalum>.firstItem,
		
		//dynamos, augments specializations
		<thermalexpansion:augment:672>,
		<thermalexpansion:augment:673>,
		<thermalexpansion:augment:656>,
		<thermalexpansion:dynamo>,
		<thermalexpansion:dynamo:1>,
		<thermalexpansion:dynamo:2>,
		<thermalexpansion:augment:576>,
		
		//distillation tower
		<gregtech:machine:2537>,
		
		//ender eye
		<minecraft:ender_eye>,
		
		//mv-iv motors
		<gregtech:meta_item_1:32601>,
		<gregtech:meta_item_1:32602>,
		<gregtech:meta_item_1:32603>,
		<gregtech:meta_item_1:32604>,
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
		
		//quite clear glass
		furnace.addRecipe(<enderio:block_fused_glass>, <minecraft:glass>, 0.0);
		
		//sand into clay
		gt.chemical_reactor.recipeBuilder()
			.inputs(<minecraft:sand> * 1)
			.inputs(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
			.fluidInputs(<liquid:water> * 1000)
			.outputs(<minecraft:clay> * 1)
			.duration(sec(10)).EUt(8).buildAndRegister();
		
		gt.large_chemical_reactor.recipeBuilder()
			.inputs(<minecraft:sand> * 1)
			.inputs(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
			.fluidInputs(<liquid:water> * 1000)
			.outputs(<minecraft:clay> * 1)
			.duration(sec(10)).EUt(8).buildAndRegister();
		
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
			.inputs(<ore:dustStainlessSteel>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
			.outputs(<ore:ingotStainlessSteel>.firstItem)
			.property("temperature", 1700)
			.duration(sec(60)).EUt(480).buildAndRegister();
		
		blast_furnace.recipeBuilder()
			.inputs(<ore:dustStainlessSteel>, <gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
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
		
		
		//MV-IV motor changes
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32601>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32602>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32603>],null,false);
		Utils.removeRecipeByOutput(assembler,[<gregtech:meta_item_1:32604>],null,false);
		assembler.recipeBuilder()
			.inputs(<ore:cableGtDoubleCopper> * 2, <ore:wireGtDoubleCupronickel> * 4, <ore:stickAluminium> * 2, <ore:stickSteelMagnetic>)
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

			
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}