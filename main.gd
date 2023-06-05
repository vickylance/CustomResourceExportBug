extends Node

@onready var lbl := %Label as Label

func _ready() -> void:
	for item in ItemDb.items:
		lbl.text += "Name: " + item.name + "\n"
		lbl.text += "Display Name: " + item.display_name + "\n"
		lbl.text += "Display Name: " + item.description + "\n"
		lbl.text += "Display Name: " + str(item.level) + "\n"
		var spr = Sprite2D.new()
		spr.texture = item.icon
		spr.position = Vector2(randi_range(50, 400), randi_range(50, 500))
		add_child(spr)
	pass
