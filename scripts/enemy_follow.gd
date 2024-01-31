extends Enemy

func _process(delta):
	var player = get_tree().get_first_node_in_group("player")
	
	if player:
		var player_position = player.global_position
		
		var direction = (player_position - global_position).normalized()
		
		direction.y = 0
		
		global_position += direction * agility * delta
