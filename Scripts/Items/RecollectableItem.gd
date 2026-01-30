extends Area2D

enum ItemType {
	COIN = 1,
	MAGIC = 2,
	BOMB = 3,
	ARROW = 4,
	HEART = 5
}

@export var item_type: ItemType = ItemType.COIN
@export var value: int = 0

func _ready() -> void:
	match item_type:
		ItemType.COIN:
			$Sprite2D.texture = preload("res://Resources/Items/Coin.png")
		ItemType.MAGIC:
			$Sprite2D.texture = preload("res://Resources/Items/Magic.png")
		ItemType.BOMB:
			$Sprite2D.texture = preload("res://Resources/Items/Bomb.png")
		ItemType.ARROW:
			$Sprite2D.texture = preload("res://Resources/Items/Arrow.png")
		ItemType.HEART:
			$Sprite2D.texture = preload("res://Resources/Items/Heart.png")


func _on_body_entered(body:Node2D) -> void:
	if (body.name == "Player"):
		match item_type:
			ItemType.COIN:
				GameData.add_coins(value)
			ItemType.MAGIC:
				GameData.add_magic(value)
			ItemType.BOMB:
				GameData.add_bombs(value)
			ItemType.ARROW:
				GameData.add_arrows(value)
			ItemType.HEART:
				GameData.add_hearts(value)
		queue_free()
