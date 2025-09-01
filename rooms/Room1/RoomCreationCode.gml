global.chipsRequired = 10;
global.roomCount = 1;

var ui_flexpanels = layer_get_flexpanel_node("UILayer_1");
var redKey_panel = flexpanel_node_get_child(ui_flexpanels, "redKey");
flexpanel_node_style_set_display(redKey_panel, flexpanel_display.none);
var blueKey_panel = flexpanel_node_get_child(ui_flexpanels, "blueKey");
flexpanel_node_style_set_display(blueKey_panel, flexpanel_display.none);
var greenKey_panel = flexpanel_node_get_child(ui_flexpanels, "greenKey");
flexpanel_node_style_set_display(greenKey_panel, flexpanel_display.none);
var yellowKey_panel = flexpanel_node_get_child(ui_flexpanels, "yellowKey");
flexpanel_node_style_set_display(yellowKey_panel, flexpanel_display.none);