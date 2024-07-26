extends Control

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()

func _on_button_button_pressed():
	get_tree().change_scene_to_file("res://levels/buttons/button_example.tscn")

func _on_containers_button_pressed():
	get_tree().change_scene_to_file("res://levels/containers/layout_containers_example.tscn")

func _on_ddlb_button_pressed():
	get_tree().change_scene_to_file("res://levels/ddlb/ddlb_example.tscn")

func _on_drag_button_pressed():
	get_tree().change_scene_to_file("res://levels/drag_and_drop/drag_and_drop_demo.tscn")

func _on_grid_button_pressed():
	get_tree().change_scene_to_file("res://levels/grid/grid_container_example.tscn")

func _on_nine_patch_button_pressed():
	get_tree().change_scene_to_file("res://levels/nine_patch_rect/nine_patch_rect_demo.tscn")

func _on_panel_button_pressed():
	get_tree().change_scene_to_file("res://levels/panel/panel_example.tscn")

func _on_sizing_button_pressed():
	get_tree().change_scene_to_file("res://levels/sizing/sizing_example.tscn")

func _on_theme_button_pressed():
	pass # Replace with function body.
