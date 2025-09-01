array_push(obj_player.keys, obj_yellowKey);
instance_destroy(self);
var ui_flexpanels = layer_get_flexpanel_node("UILayer_1");
var yellowKey_panel = flexpanel_node_get_child(ui_flexpanels, "yellowKey");
flexpanel_node_style_set_display(yellowKey_panel, flexpanel_display.flex);