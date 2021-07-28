#priority -9999

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


/* Hide all of AE2's facades (can still be crafted, just hiding from JEI) */
val ae2 as IMod = loadedMods["appliedenergistics2"];
if(!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {
            mods.jei.JEI.hide(item);
        }
    }
}


/* Hide all of fluid pattern AE Additions */
for fluidpattern in [<aeadditions:pattern.fluid>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.hide(fluidpattern.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}

/* Hide all forestry cans */
for can in [<forestry:can:1>, <forestry:capsule:1>, <forestry:refractory:1>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.hide(can.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}

mods.jei.JEI.hideCategory("minecraft.anvil");
mods.jei.JEI.hideCategory("Painter");
mods.jei.JEI.hideCategory("extrautils2.blockPatterns");
mods.jei.JEI.hide(<appliedenergistics2:facade>);

mods.jei.JEI.removeAndHide(<theoneprobe:iron_helmet_probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:gold_helmet_probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:diamond_helmet_probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:probenote>);
mods.jei.JEI.removeAndHide(<theoneprobe:creativeprobe>);

//for orePure in [<ore:crushedPurified>] as IItemStack[] {
	//mods.jei.JEI.hide(orePure);
//}
