#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

var advancedEngineIntake = VanillaFactory.createBlock("advanced_engine_intake", <blockmaterial:iron>);
advancedEngineIntake.register();

//warp units
var warpUnit1 = VanillaFactory.createItem("warp_unit_1");
warpUnit1.glowing = true;
warpUnit1.maxStackSize = 1;
warpUnit1.register();

//voltage coils
var voltageCoilLV = VanillaFactory.createItem("voltage_coil_lv");
voltageCoilLV.register();
var voltageCoilMV = VanillaFactory.createItem("voltage_coil_mv");
voltageCoilMV.register();
var voltageCoilHV = VanillaFactory.createItem("voltage_coil_hv");
voltageCoilHV.register();
var voltageCoilEV = VanillaFactory.createItem("voltage_coil_ev");
voltageCoilEV.register();
var voltageCoilIV = VanillaFactory.createItem("voltage_coil_iv");
voltageCoilIV.register();
var voltageCoilLuV = VanillaFactory.createItem("voltage_coil_luv");
voltageCoilLuV.register();
var voltageCoilZPM = VanillaFactory.createItem("voltage_coil_zpm");
voltageCoilZPM.register();
var voltageCoilUV = VanillaFactory.createItem("voltage_coil_uv");
voltageCoilUV.register();

//extra power ic
var ulpicW = VanillaFactory.createItem("ulpic_w");
ulpicW.register();
var lpicW = VanillaFactory.createItem("lpic_w");
lpicW.register();
var ulpic = VanillaFactory.createItem("ulpic");
ulpic.register();
var lpic = VanillaFactory.createItem("lpic");
lpic.register();




