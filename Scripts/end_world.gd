extends Area2D

const FILE_START = "res://Scenes/world_"

func _on_body_entered(body):
	if body.is_in_group("Player"):
		var current_secne_file = get_tree().current_scene.scene_file_path
		var next_world_number = current_secne_file.to_int() + 1
		
		var next_world_path = FILE_START + str(next_world_number) + ".tscn"
		get_tree().change_scene_to_file(next_world_path)
		
