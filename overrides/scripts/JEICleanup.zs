#priority -9999

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


// Hide all of AE2's facades
val ae2 as IMod = loadedMods["appliedenergistics2"];
if(!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {
            mods.jei.JEI.hide(item);
        }
    }
}


// Hide all of fluid pattern in extra cells 2
for fluidpattern in [<extracells:pattern.fluid>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.removeAndHide(fluidpattern.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}

// Hide all forestry cans
for can in [<forestry:can:1>, <forestry:capsule:1>, <forestry:refractory:1>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.hide(can.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}

// Hide and remove all florbs
for florb in [<thermalexpansion:florb>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.removeAndHide(florb.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}

//Hide crushed ores, dusts, purified etc.. 
for oreCrushed in <ore:crushed*> {
	mods.jei.JEI.hide(oreCrushed.firstItem);
}
for dustPurified in <ore:dustPure*> {
	mods.jei.JEI.hide(dustPurified.firstItem);
}
for dustImpurified in <ore:dustImpure*> {
	mods.jei.JEI.hide(dustImpurified.firstItem);
}

/* Hide extra ores NEEDS WORK
for ore in gregtechhItems {
	if(<ore:ore*> in ore) {
		for ore2 in <ore:ore*> {
			if(ore2 in ore) {
				if(ore.name != ore2.firstItem.name) {
					mods.jei.JEI.hide(ore);
				}
			}
		}
	}
}

*/

/*Hide frames NEEDS WORK
val gregtechh as IMod = loadedMods["gregtech"];
val gregtechhItems as IItemStack[] = gregtechh.items;
for item in gregtechhItems {
	if(item.displayName has " Frame") {
		mods.jei.JEI.hide(item);
	}
}
*/

val toHideCategory as string[] = [

	"minecraft.anvil",
	"Painter",
	"extrautils2.blockPatterns",
	"jeresources.enchantment",
	"forestry.bottler",
	"forestry.squeezer",
	"EIOTank",
	"tconstruct.smeltery",
	
	"thermalexpansion.factorizer_split",
	"thermalexpansion.factorizer_combine",
	"thermalexpansion.furnace",
	"thermalexpansion.furnace_food",
	"thermalexpansion.furnace_ore",
	"thermalexpansion.furnace_pyrolysis",
	"thermalexpansion.pulverizer",
	"thermalexpansion.pulverizer_petrotheum",
	"thermalexpansion.sawmill",
	"thermalexpansion.sawmill_tapper",
	"thermalexpansion.smelter",
	"thermalexpansion.smelter_pyrotheum",
	"thermalexpansion.compactor",
	"thermalexpansion.compactor_mint",
	"thermalexpansion.compactor_gear",
	"thermalexpansion.refinery",
	"thermalexpansion.refinery_fossil",
	"thermalexpansion.refinery_potion",
	"thermalexpansion.centrifuge",
	"thermalexpansion.centrifuge_mobs",
	"thermalexpansion.extruder",
	"thermalexpansion.extruder_sedimentary",
];

for category in toHideCategory {
	mods.jei.JEI.hideCategory(category);
}



mods.jei.JEI.hide(<appliedenergistics2:facade>);
mods.jei.JEI.hide(<utilityworlds:portal_mining>);
mods.jei.JEI.hide(<utilityworlds:portal_garden>);
mods.jei.JEI.hide(<utilityworlds:portal_void>);
mods.jei.JEI.hide(<utilityworlds:portal_return>);


val toRemoveAndHide as IItemStack[] = [
	<thermalfoundation:material:101>,
	<thermalfoundation:material:166>,
	<thermalfoundation:material:165>,
	<thermalfoundation:material:102>,
	<thermalfoundation:material:101>,
	
	<enderio:item_material:39>,
	<enderio:item_alloy_ingot>,
	<enderio:item_alloy_ingot:3>,
	<enderio:item_alloy_ingot:1>,
	<enderio:item_alloy_ingot:2>,
	<enderio:item_alloy_ingot:6>,
	<enderio:item_alloy_ingot:8>,
	<enderio:item_alloy_ingot:9>,
	<enderio:item_alloy_endergy_ingot:2>,
	<enderio:item_alloy_endergy_ingot:3>,
	<enderio:item_alloy_endergy_ingot:5>,
	<enderio:item_alloy_endergy_ingot:6>,
	
	<enderio:block_simple_alloy_smelter>,
	<enderio:block_alloy_smelter>,
	<enderio:block_enhanced_alloy_smelter>,
	
	<theoneprobe:iron_helmet_probe>,
	<theoneprobe:gold_helmet_probe>,
	<theoneprobe:diamond_helmet_probe>,
	<theoneprobe:probenote>,
	<theoneprobe:creativeprobe>,
];

for items in toRemoveAndHide {
	mods.jei.JEI.removeAndHide(items);
}