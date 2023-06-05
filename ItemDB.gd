extends Node

var items: Array[Item] = []
@export var items_path: String = "res://items/"


func _ready() -> void:
	load_items(items_path)


func load_items(path: String):
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin()
		var file_name := dir.get_next()
		while file_name != "":
			if not dir.current_is_dir():
				var item := load(path + file_name) as Item
				items.append(item)
			elif dir.current_is_dir():
				load_items(path + file_name + "/")
			file_name = dir.get_next()
#		for item in items:
#			print(item.name)
	else:
		print("An error occurred when trying to access the path.")
	pass


func get_item(item_name: String) -> Item:
	for item in items:
		if item.name == item_name:
			return item
	return null
