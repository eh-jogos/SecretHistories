class_name TinyItem
extends PickableItem


@export var item_data : Resource
@export var amount : int = 1


func _ready():
	if $MeshInstance3D:
		if get_parent().owner:
			if get_parent().owner is GunItem:
				print("The Parent is: ", get_parent().owner)
				if get_parent().owner.owner_character.is_in_group("PLAYER"):
					$MeshInstance3D.layers = 1 | 2
