import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;	
	
	
recipes.addShapeless("chargebottle", <randomthings:timeinabottle>,[ <randomthings:timeinabottle>.marked("mark"),<minecraft:gold_block>],
	function(out, ins, cInfo) {
	val i = ins.mark.tag as IData;
	val x = (i.timeData.storedTime as IData);
	if (isNull(x)) {
		return <randomthings:timeinabottle>.withTag({timeData: {storedTime: 72000}});
	} else {
		val s = x.asInt();
		if(s > 2000000000) {
			return <randomthings:timeinabottle>.withTag({timeData: {storedTime: s}});
		} else {
			return <randomthings:timeinabottle>.withTag({timeData: {storedTime: s+72000}});
		}
	}
	}, null);
	
<minecraft:gold_block>.addTooltip(format.aqua("Adds One Hour to Time in a Bottle"));
<randomthings:timeinabottle>.addTooltip(format.red("DOES NOT CHARGE OVER TIME"));
<randomthings:timeinabottle>.addTooltip("Use " + format.aqua("gold block") + format.gray(" to charge."));