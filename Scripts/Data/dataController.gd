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

# -- FUNCTIONS --
func add_coins(amount: int) -> void:
	coins = clamp(coins + amount, 0, max_coins)
	dataChange.emit()


func increase_max_coins(amount: int) -> void:
	max_coins += amount
	dataChange.emit()


func add_magic(amount: int) -> void:
	magic = clamp(magic + amount, 0, max_magic)
	dataChange.emit()


func increase_max_magic(amount: int) -> void:
	max_magic += amount
	dataChange.emit()


func add_bombs(amount: int) -> void:
	bombs = clamp(bombs + amount, 0, max_bombs)
	dataChange.emit()


func increase_max_bombs(amount: int) -> void:
	max_bombs += amount
	dataChange.emit()


func add_arrows(amount: int) -> void:
	arrows = clamp(arrows + amount, 0, max_arrows)
	dataChange.emit()


func increase_max_arrows(amount: int) -> void:
	max_arrows += amount
	dataChange.emit()


func add_hearts(amount: int) -> void:
	hearts = clamp(hearts + amount, 0, max_hearts)
	dataChange.emit()


func increase_max_hearts(amount: int) -> void:
	max_hearts += amount
	dataChange.emit()
