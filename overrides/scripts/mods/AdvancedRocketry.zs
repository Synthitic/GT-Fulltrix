#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMaps;
import mods.gtadditions.recipe.Utils;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	//machine structure
	<libvulpes:structuremachine> * 16: [
		[
			[<ore:stickCompressedAlloyT1>, <ore:plateCompressedAlloyT1>, <ore:stickCompressedAlloyT1>],
			[<ore:plateCompressedAlloyT1>, null, <ore:plateCompressedAlloyT1>], 
			[<ore:stickCompressedAlloyT1>, <ore:plateCompressedAlloyT1>, <ore:stickCompressedAlloyT1>]
		],
	],	

	//rocket assembler
	<advancedrocketry:rocketbuilder>: [
		[
			[<gregtech:meta_item_1:32670>, <advancedrocketry:misc>, <gregtech:meta_item_1:32670>],
			[<ore:circuitExtreme>, <gregtech:machine:102>, <ore:circuitExtreme>],
			[<ore:plateCompressedAlloyT1>, <libvulpes:structuremachine>, <ore:plateCompressedAlloyT1>]
		],
	],
	
	//user interface
	<advancedrocketry:misc>: [
		[
			[null, null, null],
			[<ore:dyeBlue>, <ore:dustRegularRedstone>, <ore:dyeGreen>], 
			[<ore:dustRegularGlowstone>, <gregtech:meta_item_1:12209>, <ore:dustRegularGlowstone>]
		],
	],
	
	//fueling station
	<advancedrocketry:fuelingstation>: [
		[
			[<gregtech:meta_item_1:32612>, <ore:circuitAdvanced>, <gregtech:meta_item_1:32612>],
			[<ore:pipeLargeStainlessSteel>, <libvulpes:structuremachine>, <ore:pipeLargeStainlessSteel>],
			[<gregtech:meta_item_1:32612>, <ore:pipeLargeStainlessSteel>, <gregtech:meta_item_1:32612>]
		],
	],

	//space suit
	<advancedrocketry:spaceboots>: [
		[
			[<ore:platePolycaprolactam>, <ore:platePolycaprolactam>, <ore:platePolycaprolactam>],
			[<ore:plateCompressedAlloyT1>, null, <ore:plateCompressedAlloyT1>],
			[null, null, null]
		],
	],
	<advancedrocketry:spaceleggings>: [
		[
			[<ore:platePolycaprolactam>, <ore:platePolycaprolactam>, <ore:platePolycaprolactam>],
			[<ore:platePolycaprolactam>, null, <ore:platePolycaprolactam>],
			[<ore:platePolycaprolactam>, null, <ore:platePolycaprolactam>]
		],
	],
	<advancedrocketry:spacechestplate>: [
		[
			[<ore:platePolycaprolactam>, <ore:plateCompressedAlloyT1>, <ore:platePolycaprolactam>],
			[<ore:platePolycaprolactam>, <ore:platePolycaprolactam>, <ore:platePolycaprolactam>],
			[<ore:platePolycaprolactam>, <ore:platePolycaprolactam>, <ore:platePolycaprolactam>]
		],
	],
	<advancedrocketry:spacehelmet>: [
		[
			[<ore:platePolycaprolactam>, <ore:platePolycaprolactam>, <ore:platePolycaprolactam>],
			[<ore:platePolycaprolactam>, <ore:plateGlass>, <ore:platePolycaprolactam>], 
			[null, null, null]
		],
	],

	//suit workstation
	<advancedrocketry:suitworkstation>: [
		[
			[<gregtech:meta_item_1:32652>, <ore:craftingTableWood>, <gregtech:meta_item_1:32652>],
			[<ore:platePolycaprolactam>, <libvulpes:structuremachine>, <ore:platePolycaprolactam>],
			[<ore:platePolycaprolactam>, <ore:platePolycaprolactam>, <ore:platePolycaprolactam>]
		],
	],
	
	//linker
	<libvulpes:linker>: [
		[
			[null, <ore:platePlastic>, <gregtech:meta_item_1:32682>],
			[<ore:platePlastic>, <minecraft:stone_button>, <ore:platePlastic>],
			[<ore:platePlastic>, <ore:platePlastic>, <ore:platePlastic>]
		],
	],
	
	//liquid fuel tank and engine
	<advancedrocketry:fueltank>: [
		[
			[<ore:plateCompressedAlloyT1>, <ore:plateCompressedAlloyT1>, <ore:plateCompressedAlloyT1>],
			[<ore:plateCompressedAlloyT1>, <gregtech:machine:814>, <ore:plateCompressedAlloyT1>],
			[<ore:plateCompressedAlloyT1>, <gregtech:meta_item_1:32612>, <ore:plateCompressedAlloyT1>]
		],
	],
	<advancedrocketry:rocketmotor>: [
		[
			[<ore:plateCompressedAlloyT1>, <gregtech:meta_item_1:32612>, <ore:plateCompressedAlloyT1>],
			[<ore:plateCompressedAlloyT1>, <gregtech:machine:2241>, <ore:plateCompressedAlloyT1>],
			[<ore:plateCompressedAlloyT1>, null, <ore:plateCompressedAlloyT1>]
		],
	],

	//gas charge pad
	<advancedrocketry:oxygencharger>: [
		[
			[<gregtech:meta_item_1:32612>, <ore:rotorStainlessSteel>, <gregtech:meta_item_1:32612>],
			[<gregtech:meta_item_1:32762>, <libvulpes:structuremachine>, <gregtech:meta_item_1:32762>],
			[<ore:plateStainlessSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:plateStainlessSteel>]
		],
	],


};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	//AR basic circuits
	<advancedrocketry:ic> * 4: [
		[<ore:circuitAdvanced>],
	],

	//data unit reset
	<advancedrocketry:dataunit>: [
		[<advancedrocketry:dataunit:*>],
	],
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	//launchpad
	<advancedrocketry:launchpad>,
	
	//structuretower
	<advancedrocketry:structuretower>,
	
	//machine structure
	<libvulpes:structuremachine>,
	
	//rocket assembler
	<advancedrocketry:rocketbuilder>,
	
	//user interface
	<advancedrocketry:misc>,
	
	//fueling station
	<advancedrocketry:fuelingstation>,
	
	//space suit
	<advancedrocketry:spaceboots>,
	<advancedrocketry:spaceleggings>,
	<advancedrocketry:spacechestplate>,
	<advancedrocketry:spacehelmet>,
	
	//suit workstation
	<advancedrocketry:suitworkstation>,
	
	//linker
	<libvulpes:linker>,
	
	//liquid fuel tank and engine
	<advancedrocketry:fueltank>,
	<advancedrocketry:rocketmotor>,
	
	//gas charge pad
	<advancedrocketry:oxygencharger>,
	
	//circuits
	<advancedrocketry:asteroidchip>,
	<advancedrocketry:planetidchip>,
	<advancedrocketry:satelliteidchip>,
	<advancedrocketry:spacestationchip>,
	
	//guidance computer
	<advancedrocketry:guidancecomputer>
	
];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {
		//compressed alloys
		
		implosion_compressor.recipeBuilder()
			.inputs(<ore:plateDoubleBronze>)
			.property("explosives", 4)
			.outputs(<ore:plateCompressedBronze>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
		
		implosion_compressor.recipeBuilder()
			.inputs(<ore:plateDoubleAluminium>)
			.property("explosives", 4)
			.outputs(<ore:plateCompressedAluminium>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
		
		implosion_compressor.recipeBuilder()
			.inputs(<ore:plateDoubleSteel>)
			.property("explosives", 4)
			.outputs(<ore:plateCompressedSteel>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();

		assembler.recipeBuilder() 
			.inputs(<ore:plateCompressedSteel>*2,<ore:plateCompressedAluminium>*2,<ore:plateCompressedBronze>*2)
			.fluidInputs(<liquid:stainless_steel> * 144)
			.outputs(<ore:ingotCompressedAlloyT1>.firstItem*2)
			.duration(sec(20)).EUt(480).buildAndRegister();
		
		implosion_compressor.recipeBuilder()
			.inputs(<ore:ingotCompressedAlloyT1>)
			.property("explosives", 8)
			.outputs(<ore:plateCompressedAlloyT1>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
			
		assembler.recipeBuilder() 
			.inputs(<ore:plateMeteoricIron>*4,<ore:plateCompressedAlloyT1>*2)
			.fluidInputs(<liquid:tungsten_steel>* 144)
			.outputs(<ore:ingotCompressedAlloyT2>.firstItem*2)
			.duration(sec(20)).EUt(1920).buildAndRegister();
			
		implosion_compressor.recipeBuilder()
			.inputs(<ore:ingotCompressedAlloyT2>)
			.property("explosives", 16)
			.outputs(<ore:plateCompressedAlloyT2>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();

		//compressed alloys iTNT
		implosion_compressor.recipeBuilder()
			.inputs(<ore:plateDoubleBronze>)
			.property("explosives", <gtadditions:ga_explosive:4> * 2)
			.outputs(<ore:plateCompressedBronze>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
		
		implosion_compressor.recipeBuilder()
			.inputs(<ore:plateDoubleAluminium>)
			.property("explosives", <gtadditions:ga_explosive:4> * 2)
			.outputs(<ore:plateCompressedAluminium>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
		
		implosion_compressor.recipeBuilder()
			.inputs(<ore:plateDoubleSteel>)
			.property("explosives", <gtadditions:ga_explosive:4> * 2)
			.outputs(<ore:plateCompressedSteel>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
			
		implosion_compressor.recipeBuilder()
			.inputs(<ore:ingotCompressedAlloyT1>)
			.property("explosives", <gtadditions:ga_explosive:4> * 4)
			.outputs(<ore:plateCompressedAlloyT1>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
			
		implosion_compressor.recipeBuilder()
			.inputs(<ore:ingotCompressedAlloyT2>)
			.property("explosives", <gtadditions:ga_explosive:4> * 8)
			.outputs(<ore:plateCompressedAlloyT2>.firstItem)
			.duration(sec(1)).EUt(30).buildAndRegister();
			
		//disable fluid extraction of compressed alloy T1
		Utils.removeRecipeByOutput(fluid_extractor,null,[<liquid:compressed_alloy_t1>],false);
		Utils.removeRecipeByOutput(fluid_extractor,null,[<liquid:compressed_alloy_t2>],false);
		
		//launchpad
		assembler.recipeBuilder()
			.inputs(<ore:plateCompressedAlloyT1>*6,<gregtech:concrete>*3)
			.fluidInputs(<liquid:soldering_alloy>*144)
			.circuit(10)
			.outputs(<advancedrocketry:launchpad>*5)
			.duration(sec(10)).EUt(480).buildAndRegister();
		
		
		//structuretower
		assembler.recipeBuilder()
			.inputs(<ore:stickCompressedAlloyT1>*5,<ore:plateCompressedAlloyT1>*3)
			.fluidInputs(<liquid:soldering_alloy>*144)
			.circuit(10)
			.outputs(<advancedrocketry:structuretower>*4)
			.duration(sec(10)).EUt(480).buildAndRegister();
			
			
		//gt titanium block to advrkt titanium block
		assembler.recipeBuilder()
			.inputs(<gregtech:meta_block_compressed_4:8>)
			.circuit(10)
			.outputs(<libvulpes:metal0:7>)
			.duration(sec(1)).EUt(2).buildAndRegister();
			
		//machine structure
		assembler.recipeBuilder()
			.inputs(<ore:stickCompressedAlloyT1>*4, <ore:plateCompressedAlloyT1>*4)
			.fluidInputs(<liquid:polytetrafluoroethylene>*288)
			.circuit(10)
			.outputs(<libvulpes:structuremachine> * 32)
			.duration(sec(10)).EUt(480).buildAndRegister();
			
		//pressure tanks
		assembler.recipeBuilder()
			.inputs(<ore:plateDoubleStainlessSteel>,<gregtech:meta_item_2:32702>)
			.circuit(10)
			.outputs(<advancedrocketry:pressuretank>)
			.duration(sec(10)).EUt(480).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:plateDoubleTitanium>,<gregtech:meta_item_2:32703>)
			.circuit(10)
			.outputs(<advancedrocketry:pressuretank:1>)
			.duration(sec(10)).EUt(1920).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:plateDoubleTungstenSteel>,<gregtech:meta_item_2:32703>)
			.circuit(10)
			.outputs(<advancedrocketry:pressuretank:2>)
			.duration(sec(10)).EUt(7680).buildAndRegister();
		assembler.recipeBuilder()
			.inputs(<ore:plateDoubleRhodiumPlatedPalladium>,<gregtech:meta_item_2:32704>)
			.circuit(10)
			.outputs(<advancedrocketry:pressuretank:3>)
			.duration(sec(10)).EUt(30720).buildAndRegister();
			
		//data storage unit
		assembler.recipeBuilder()
			.inputs(<gregtech:meta_item_1:32708>)
			.outputs(<advancedrocketry:dataunit>)
			.circuit(10)
			.duration(sec(1)).EUt(480).buildAndRegister();
			
		//tracking circuit
		circuit_assembler.recipeBuilder()
			.inputs(<advancedrocketry:ic> * 8, <gregtech:meta_item_1:32692>)
			.fluidInputs(<liquid:soldering_alloy>*576)
			.outputs(<advancedrocketry:ic:1> * 8)
			.duration(sec(16)).EUt(480).buildAndRegister();
			
		//planet id chip
		circuit_assembler.recipeBuilder()
			.inputs(<advancedrocketry:ic:1>, <gregtech:meta_item_2:32485> * 8, <gregtech:meta_item_2:32477> * 4, <gregtech:meta_item_2:32478> * 4)
			.fluidInputs(<liquid:soldering_alloy>*72)
			.outputs(<advancedrocketry:planetidchip>)
			.duration(sec(2)).EUt(480).buildAndRegister();
			
		//satellite id chip
		circuit_assembler.recipeBuilder()
			.inputs(<advancedrocketry:ic:1>*4,<gregtech:meta_item_1:32682>)
			.fluidInputs(<liquid:soldering_alloy>*288)
			.outputs(<advancedrocketry:satelliteidchip> * 4)
			.duration(sec(8)).EUt(480).buildAndRegister();
		
		//space station id chip
		circuit_assembler.recipeBuilder()
			.inputs(<libvulpes:linker>,<advancedrocketry:ic>)
			.fluidInputs(<liquid:soldering_alloy>*72)
			.outputs(<advancedrocketry:spacestationchip>)
			.duration(sec(2)).EUt(1920).buildAndRegister();
			
		//space station elevator chip
		circuit_assembler.recipeBuilder()
			.inputs(<advancedrocketry:spacestationchip>,<advancedrocketry:ic:1>)
			.fluidInputs(<liquid:soldering_alloy>*144)
			.outputs(<advancedrocketry:elevatorchip>*2)
			.duration(sec(4)).EUt(1920).buildAndRegister();
			
		//asteroid circuit
		circuit_assembler.recipeBuilder()
			.inputs(<advancedrocketry:dataunit>, <advancedrocketry:ic:1>)
			.fluidInputs(<liquid:soldering_alloy>*72)
			.outputs(<advancedrocketry:asteroidchip>)
			.duration(sec(2)).EUt(1920).buildAndRegister();
			
		//guidancecomputer
		assembler.recipeBuilder()
			.inputs(<opencomputers:case1>, <opencomputers:keyboard>, <libvulpes:structuremachine>, <advancedrocketry:misc>, <advancedrocketry:ic:1>*4)
			.fluidInputs(<liquid:soldering_alloy>*576)
			.outputs(<advancedrocketry:guidancecomputer>)
			.duration(sec(30)).EUt(480).buildAndRegister();	
		
		//warp units
		mods.extendedcrafting.TableCrafting.addShaped(2, <contenttweaker:warp_unit_1>, [
			[null, <ore:plateCompressedAlloyT2>, <ore:plateCompressedAlloyT2>, <ore:plateCompressedAlloyT2>, null], 
			[<ore:plateCompressedAlloyT2>, <gregtech:meta_item_1:32672>, <ore:materialEnderPearl>, <gregtech:meta_item_1:32672>, <ore:plateCompressedAlloyT2>], 
			[<ore:plateCompressedAlloyT2>, <gregtech:meta_item_1:32693>, <ore:gemAquamarine>, <gregtech:meta_item_1:32693>, <ore:plateCompressedAlloyT2>], 
			[<ore:plateCompressedAlloyT2>, <gregtech:meta_item_1:32672>, <gregtech:meta_item_1:32683>, <gregtech:meta_item_1:32672>, <ore:plateCompressedAlloyT2>], 
			[null, <ore:plateCompressedAlloyT2>, <ore:plateCompressedAlloyT2>, <ore:plateCompressedAlloyT2>, null]
		]);
	
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}