#priority 0



import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.thermalexpansion.CompressionDynamo;

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:seed_oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:creosote>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:tree_oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:oil_heavy>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:crude_oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:fire_water>);

mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:high_octane>, 1800000);

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:gasoline>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:gasoline>, 540000);

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:oil>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:oil>, 16000);

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:refined_oil>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:naphtha>, 256000);

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:coal>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:coal>, 100000);

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:bio.ethanol>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:bio.ethanol>, 192000);

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:rocket_fuel>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:rocket_fuel>, 2730000);
