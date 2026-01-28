extends Node

signal dataChange

# Coins
var coins: int = 0:
	get:
		return coins
	set(value):
		coins += clamp(value, 1, max_coins)
		if(coins >= max_coins):
			coins = max_coins
		dataChange.emit()

var max_coins: int = 99:
	get:
		return max_coins
	set(value):
		max_coins = max(value, max_coins)
		dataChange.emit()

# Magic
var magic: int = 50:
	get:
		return magic
	set(value):
		magic += clamp(value, 1, max_magic)
		if(magic >= max_magic):
			magic = max_magic
		dataChange.emit()

var max_magic: int = 100:
	get:
		return max_magic
	set(value):
		max_magic = max(value, max_magic)
		dataChange.emit()

# Bombs
var bombs: int = 0:
	get:
		return bombs
	set(value):
		bombs += clamp(value, 1, max_bombs)
		if(bombs >= max_bombs):
			bombs = max_bombs
		dataChange.emit()

var max_bombs: int = 25:
	get:
		return max_bombs
	set(value):
		max_bombs = max(value, max_bombs)
		dataChange.emit()

# Arrows
var arrows: int = 0:
	get:
		return arrows
	set(value):
		arrows += clamp(value, 1, max_arrows)
		if(arrows >= max_arrows):
			arrows = max_arrows
		dataChange.emit()

var max_arrows: int = 25:
	get:
		return max_arrows
	set(value):
		max_arrows = max(value, max_arrows)
		dataChange.emit()

# Hearts
var hearts: int = 1:
	get:
		return hearts
	set(value):
		hearts += clamp(value, 1, max_hearts)
		if(hearts >= max_hearts):
			hearts = max_hearts
		dataChange.emit()

var max_hearts: int = 3:
	get:
		return max_hearts
	set(value):
		max_hearts = max(value, max_hearts)
		dataChange.emit()
