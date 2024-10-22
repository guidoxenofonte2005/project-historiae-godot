extends AnimatedSprite2D

@onready var i : float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$'.'.position.y += ((delta * 8) * sin(deg_to_rad(i))) / 3
	i += 1
