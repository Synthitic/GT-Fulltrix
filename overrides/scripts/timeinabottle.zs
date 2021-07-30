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
	
<minecraft:gold_ingot>.addTooltip(format.aqua("Adds 1 Hour to the Time in a Bottle"));
<randomthings:timeinabottle>.addTooltip(format.red("Does not charge over Time!"));
<randomthings:timeinabottle>.addTooltip("Use " + format.aqua("gold block") + format.gray(" to charge"));