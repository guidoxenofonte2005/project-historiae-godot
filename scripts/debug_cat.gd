extends StaticBody2D

signal nowInteractable
signal notInteractable

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name.to_lower() == 'player':
		emit_signal('nowInteractable')


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name.to_lower() == 'player':
		emit_signal('notInteractable')
