extends Node
var player: AudioStreamPlayer
var sfx_player: AudioStreamPlayer
const TIME_FOR_ADVENTURE = "res://assets/music/time_for_adventure.mp3";
const COIN_SFX = "res://assets/sounds/coin.wav";

func _ready():
	player = AudioStreamPlayer.new()
	add_child(player)
	player.bus = "Music"  # 可以指定音频通道
	player.autoplay = false
	
	sfx_player = AudioStreamPlayer.new()
	sfx_player.bus = "SFX"  # 可以单独控制音量
	add_child(sfx_player)
	

func play_bgm(path: String = TIME_FOR_ADVENTURE):
	var music = load(path)
	if music and music is AudioStream:
		music.loop = true   # ✅ 开启循环
		player.stream = music
		player.play()
		
func play_coin_sfx(path: String = COIN_SFX):
	var sfx = load(path)
	if sfx:
		sfx_player.stream = sfx
		sfx_player.play()
		
