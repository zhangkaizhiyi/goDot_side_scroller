extends CanvasLayer
@onready var lb_coin_count: Label = $MarginContainer/HBoxContainer/lbCoinCount



func _ready() -> void:
	GameManager.sg_coin_update.connect(on_coin_update);
	
func on_coin_update(coin:int):
	lb_coin_count.text = str(coin);
