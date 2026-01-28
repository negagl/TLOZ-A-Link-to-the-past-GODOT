extends Control

var dataNode

@onready var moneyLabel = $UIItems/Money/Label
@onready var bombsLabel = $UIItems/Bombs/Label
@onready var arrowsLabel = $UIItems/Arrows/Label
@onready var manaBar = $UIManaBar/TextureProgressBar
@onready var healthContainer = $UIHealthContainer/LifeFull


func _ready() -> void:
	dataNode = get_node("/root/MainRoom/DataController")
	dataNode.dataChange.connect(updateData)
	updateData()


func updateData() -> void:
	handleActualObject()
	handleHealthContainer()
	handleMana()
	handleItems()


func handleActualObject() -> void:
	pass


func handleHealthContainer() -> void:
	healthContainer.size.x = (dataNode.hearts * 8)


func handleMana() -> void:
	manaBar.value = dataNode.magic


func handleItems() -> void:
	moneyLabel.text = str(dataNode.coins)
	bombsLabel.text = str(dataNode.bombs)
	arrowsLabel.text = str(dataNode.arrows)
