array_push(obj_player.keys, obj_blueKey);
instance_destroy(self);
var ui_flexpanels = layer_get_flexpanel_node("UILayer_1");
var blueKey_panel = flexpanel_node_get_child(ui_flexpanels, "blueKey");
flexpanel_node_style_set_display(blueKey_panel, flexpanel_display.flex);