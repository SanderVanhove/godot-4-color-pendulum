extends Node2D


@onready var sub_viewport: SubViewport = $SubViewportContainer/SubViewport
@onready var color_rect: ColorRect = $SubViewportContainer/SubViewport/ColorRect


func _ready() -> void:
	sub_viewport.render_target_clear_mode = SubViewport.CLEAR_MODE_NEVER

	var tween: Tween = create_tween().set_loops()
	tween.tween_property(color_rect, "modulate:a", 0.0, 5)
	tween.tween_property(color_rect, "modulate:a", 1.0, 5)
