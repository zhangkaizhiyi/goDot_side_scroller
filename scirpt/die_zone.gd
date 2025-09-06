extends Area2D


func _on_body_entered(body: Node2D) -> void:
	var player = get_tree().get_first_node_in_group("player");
	var collsion_shape = player.get_node("CollisionShape2D");
	collsion_shape.queue_free();
	
	await get_tree().create_timer(1.0).timeout;
	GameManager.reset_data();
	get_tree().reload_current_scene();
