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


mods.jei.JEI.hideCategory("minecraft.anvil");
mods.jei.JEI.hideCategory("Painter");
mods.jei.JEI.hideCategory("extrautils2.blockPatterns");
mods.jei.JEI.hideCategory("jeresources.enchantment");
mods.jei.JEI.hideCategory("forestry.bottler");
mods.jei.JEI.hideCategory("forestry.squeezer");
mods.jei.JEI.hideCategory("EIOTank");
mods.jei.JEI.hideCategory("tconstruct.smeltery");

mods.jei.JEI.hideCategory("thermalexpansion.factorizer_split");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_combine");
mods.jei.JEI.hideCategory("thermalexpansion.furnace");
mods.jei.JEI.hideCategory("thermalexpansion.furnace_food");
mods.jei.JEI.hideCategory("thermalexpansion.furnace_ore");
mods.jei.JEI.hideCategory("thermalexpansion.furnace_pyrolysis");
mods.jei.JEI.hideCategory("thermalexpansion.pulverizer");
mods.jei.JEI.hideCategory("thermalexpansion.pulverizer_petrotheum");
mods.jei.JEI.hideCategory("thermalexpansion.sawmill");
mods.jei.JEI.hideCategory("thermalexpansion.sawmill_tapper");
mods.jei.JEI.hideCategory("thermalexpansion.smelter");
mods.jei.JEI.hideCategory("thermalexpansion.smelter_pyrotheum");
mods.jei.JEI.hideCategory("thermalexpansion.compactor");
mods.jei.JEI.hideCategory("thermalexpansion.compactor_mint");
mods.jei.JEI.hideCategory("thermalexpansion.compactor_gear");
mods.jei.JEI.hideCategory("thermalexpansion.refinery");
mods.jei.JEI.hideCategory("thermalexpansion.refinery_fossil");
mods.jei.JEI.hideCategory("thermalexpansion.refinery_potion");
mods.jei.JEI.hideCategory("thermalexpansion.centrifuge");
mods.jei.JEI.hideCategory("thermalexpansion.centrifuge_mobs");
mods.jei.JEI.hideCategory("thermalexpansion.extruder");
mods.jei.JEI.hideCategory("thermalexpansion.extruder_sedimentary");

mods.jei.JEI.hide(<appliedenergistics2:facade>);
mods.jei.JEI.hide(<utilityworlds:portal_mining>);
mods.jei.JEI.hide(<utilityworlds:portal_garden>);
mods.jei.JEI.hide(<utilityworlds:portal_void>);
mods.jei.JEI.hide(<utilityworlds:portal_return>);
mods.jei.JEI.removeAndHide(<theoneprobe:iron_helmet_probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:gold_helmet_probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:diamond_helmet_probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:probenote>);
mods.jei.JEI.removeAndHide(<theoneprobe:creativeprobe>);


