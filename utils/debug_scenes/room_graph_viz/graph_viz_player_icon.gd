# Write your doc string for this file here
extends Node2D

### Member Variables and Dependencies -------------------------------------------------------------
#--- signals --------------------------------------------------------------------------------------

#--- enums ----------------------------------------------------------------------------------------

#--- constants ------------------------------------------------------------------------------------

const COLOR_PLAYER = Color.BLUE

#--- public variables - order: export > normal var > onready --------------------------------------

var player: Player = null

#--- private variables - order: export > normal var > onready -------------------------------------

### -----------------------------------------------------------------------------------------------


### Built-in Virtual Overrides --------------------------------------------------------------------

func _process(_delta: float) -> void:
	if is_instance_valid(player):
		queue_redraw()


func _draw() -> void:
	if is_instance_valid(player):
		var local_position = to_local(Vector2(
				player.global_position.x,
				player.global_position.z
		)) * owner.distances_scale / WorldData.CELL_SIZE
		draw_circle(local_position, owner.distances_scale / 2.0, COLOR_PLAYER)

### -----------------------------------------------------------------------------------------------


### Public Methods --------------------------------------------------------------------------------

### -----------------------------------------------------------------------------------------------


### Private Methods -------------------------------------------------------------------------------

### -----------------------------------------------------------------------------------------------


### Signal Callbacks ------------------------------------------------------------------------------

### -----------------------------------------------------------------------------------------------
