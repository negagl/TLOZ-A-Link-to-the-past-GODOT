extends Area2D

@export var idItem: int = 0
@export var value: int = 0

func _ready() -> void:
	match idItem:
		1:
			$Sprite2D.texture = preload("res://Resources/Items/Coin.png")
		2:
			$Sprite2D.texture = preload("res://Resources/Items/Magic.png")
		3:
			$Sprite2D.texture = preload("res://Resources/Items/Bomb.png")
		4:
			$Sprite2D.texture = preload("res://Resources/Items/Arrow.png")
		5:
			$Sprite2D.texture = preload("res://Resources/Items/Heart.png")


func _on_body_entered(body:Node2D) -> void:
	var dataNode = get_node("/root/MainRoom/DataController")
	if (body.name == "Player"):
		match idItem:
			1:
				dataNode.coins = value
			2:
				dataNode.magic = value
			3:
				dataNode.bombs = value
			4:
				dataNode.arrows = value
			5:
				dataNode.hearts = value
		queue_free()
