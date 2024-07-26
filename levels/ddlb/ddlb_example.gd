extends Control

@export var dropdown_path : NodePath
@onready var dropdown : OptionButton = get_node(dropdown_path)

var fruits = ["Apple", "Orange", "Banana", "Lemon"]


func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://menus/main_menu.tscn")

func _ready():
	dropdown.clear()
	#add_items()
	add_fruits()
	#remove_item(1)
	#disable_item(1)
	### You can also rename with set_item_text(id,name)
	dropdown.select(3)
	
	#dropdown.connect("item_selected", self, "on_item_changed")
	
func add_items():
	dropdown.add_item("")
	dropdown.add_separator()
	dropdown.add_item("A")
	dropdown.add_item("b")
	dropdown.add_item("Si")

func add_fruits():
	#for item in fruits:
		#dropdown.add_item(item + " $1")
	for i in fruits.size():
		var id = 10 * i
		dropdown.add_item(fruits[i] + " $" + str(i), id)
		var props = {
			"name": fruits[i],
			"id": id,
			"price": i
		}
		dropdown.set_item_metadata(i, props)

## Note: This re-indexes all the items in the list. There's never a gap in the indices.
func remove_item(id):
	dropdown.remove_item(id)

func disable_item(id):
	dropdown.set_item_disabled(id, true)

func _on_dropdown_item_selected(index):
	var idx2 = dropdown.get_selected_id()
	dropdown.get_selected_metadata()
	print("Selected ID=" + str(idx2))
	var id = dropdown.get_item_id(index)
	var props = dropdown.get_item_metadata(idx2)
	print("Picked " + dropdown.get_item_text(index) + " index=" + str(index) + " id=" + str(id) + " object=" + fruits[index] + " props=" + str(props))
	$Output.text = "You're getting " + dropdown.get_item_text(dropdown.selected) \
		+ "\nindex=" + str(index) \
		+ "\nid=" + str(id) \
		+ "\nobject=" + fruits[index] \
		+ "\nprops=" + str(props)
	
#func on_item_changed(id):
	#print("manual event. Picked " + dropdown.get_item_text(id))
	
