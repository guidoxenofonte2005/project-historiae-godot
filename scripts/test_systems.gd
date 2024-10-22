extends Node2D

@onready var interactionButton := load("res://scenes/action_button.tscn")

@onready var debug_cat: StaticBody2D = $DebugCat

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	debug_cat.connect('nowInteractable', Callable(self, 'handleInteractivity').bind(debug_cat))
	debug_cat.connect('notInteractable', Callable(self, 'disableButton').bind(debug_cat))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func handleInteractivity(object) -> void:
	var node = interactionButton.instantiate()
	node.position = object.position - Vector2(0, 20)
	if interactionButton:
		get_tree().get_root().get_child(0).get_child(0).add_child(node)

func disableButton(object) -> void:
	if $'ActionButton':
		$'ActionButton'.queue_free()
