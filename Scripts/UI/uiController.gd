extends Control

@onready var moneyLabel = $UIItems/Money/Label
@onready var bombsLabel = $UIItems/Bombs/Label
@onready var arrowsLabel = $UIItems/Arrows/Label
@onready var manaBar = $UIManaBar/TextureProgressBar
@onready var healthContainer = $UIHealthContainer/LifeFull
@onready var healthEmpty = $UIHealthContainer/LifeFull


func _ready() -> void:
	GameData.dataChange.connect(updateData)
	updateData()


func updateData() -> void:
	handleActualObject()
	handleHealthContainer()
	handleMana()
	handleItems()


func handleActualObject() -> void:
	pass


func handleHealthContainer() -> void:
	healthContainer.size.x = (GameData.hearts * 8)


func handleMana() -> void:
	manaBar.value = GameData.magic


func handleItems() -> void:
	moneyLabel.text = str(GameData.coins)
	bombsLabel.text = str(GameData.bombs)
	arrowsLabel.text = str(GameData.arrows)
