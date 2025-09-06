extends Node

@export var coin:int = 0;
signal sg_coin_update(coin:int);

func add_coin():
	coin += 1;
	sg_coin_update.emit(coin);

func reset_data():
	coin == 0 ;
	sg_coin_update.emit(coin);
