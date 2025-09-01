array_push(obj_player.keys, obj_greenKey);
instance_destroy(self);
var ui_flexpanels = layer_get_flexpanel_node("UILayer_1");
var greenKey_panel = flexpanel_node_get_child(ui_flexpanels, "greenKey");
flexpanel_node_style_set_display(greenKey_panel, flexpanel_display.flex);