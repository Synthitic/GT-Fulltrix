#priority -100

initDissable();
initOreDict();
initRecipes();

function initDissable() {
    //scripts.disabled.init();
}

function initOreDict() {
    scripts.oreDict.init();
}

function initRecipes() {
    scripts.mods.Gregtech.init();
	scripts.mods.AdvancedRocketry.init();
	scripts.mods.OpenComputers.init();
	scripts.mods.AE2.init();
	scripts.mods.ThermalSeries.init();
	scripts.mods.EnderIO.init();
	scripts.mods.DraconicEvolution.init();
	scripts.mods.FluxNetworks.init();
	scripts.mods.DMLR.init();
	scripts.mods.Misc.init();
}