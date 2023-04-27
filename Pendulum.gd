extends Node2D


@export var delay: float = 0.0


func _ready() -> void:
	await get_tree().create_timer(delay).timeout

	var tween: Tween = create_tween().set_loops().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "rotation", -PI / 2.0, 2.0)
	tween.tween_property(self, "rotation", PI / 2.0, 2.0)
