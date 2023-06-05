extends Resource
class_name Item

@export var name: String
@export var icon: Texture
@export var display_name: String
@export_multiline var description: String
@export var level: int = 1
@export var prerequisite: Array[Item] = []
@export_enum("Weapon", "Food") var type := "Weapon"
