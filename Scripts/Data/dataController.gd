extends Node

signal dataChange

# -- VARIABLES --
# Coins
var coins: int = 0
var max_coins: int = 99

# Magic
var magic: int = 50
var max_magic: int = 100

# Bombs
var bombs: int = 0
var max_bombs: int = 25

# Arrows
var arrows: int = 0
var max_arrows: int = 25

# Hearts
var hearts: int = 1
var max_hearts: int = 3

# Game Files
var dataPath = "user://dataGame.json"

# -- FUNCTIONS --
func _ready() -> void:
	load_game()


func add_coins(amount: int) -> void:
	coins = clamp(coins + amount, 0, max_coins)
	dataChange.emit()
	save_game()


func increase_max_coins(amount: int) -> void:
	max_coins += amount
	dataChange.emit()
	save_game()


func add_magic(amount: int) -> void:
	magic = clamp(magic + amount, 0, max_magic)
	dataChange.emit()
	save_game()


func increase_max_magic(amount: int) -> void:
	max_magic += amount
	dataChange.emit()
	save_game()


func add_bombs(amount: int) -> void:
	bombs = clamp(bombs + amount, 0, max_bombs)
	dataChange.emit()
	save_game()


func increase_max_bombs(amount: int) -> void:
	max_bombs += amount
	dataChange.emit()
	save_game()


func add_arrows(amount: int) -> void:
	arrows = clamp(arrows + amount, 0, max_arrows)
	dataChange.emit()
	save_game()


func increase_max_arrows(amount: int) -> void:
	max_arrows += amount
	dataChange.emit()
	save_game()


func add_hearts(amount: int) -> void:
	hearts = clamp(hearts + amount, 0, max_hearts)
	dataChange.emit()
	save_game()


func increase_max_hearts(amount: int) -> void:
	max_hearts += amount
	dataChange.emit()
	save_game()


func save_game() -> void:
	var file = FileAccess.open(dataPath, FileAccess.WRITE)
	
	var data = {
		"coins": coins,
		"magic": magic,
		"bombs": bombs,
		"arrows": arrows,
		"hearts": hearts
	}
	
	var json = JSON.stringify(data)
	file.store_string(json)
	file.close()


func load_game() -> void:
	var file = FileAccess.open(dataPath, FileAccess.READ)
	
	if file == null:
		return
	
	var json = file.get_as_text()
	var data = JSON.parse_string(json)
	
	coins = data["coins"]
	magic = data["magic"]
	bombs = data["bombs"]
	arrows = data["arrows"]
	hearts = data["hearts"]
