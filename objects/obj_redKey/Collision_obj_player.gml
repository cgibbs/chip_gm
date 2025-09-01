array_push(obj_player.keys, obj_redKey);
instance_destroy(self);
var ui_flexpanels = layer_get_flexpanel_node("UILayer_1");
var redKey_panel = flexpanel_node_get_child(ui_flexpanels, "redKey");
flexpanel_node_style_set_display(redKey_panel, flexpanel_display.flex);