extends Node

@onready var scene_transition = "res://scenes/scene_transition.tscn"
@onready var timer : Timer = Timer.new()

var levelInstance : Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#levelInstance = $TitleScreen
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func unloadCurrent() -> void:
	#if is_instance_valid(levelInstance):
		#levelInstance.queue_free()
	#levelInstance = null
#
#func runTransition(sceneName : String) -> void:
	#var transition := load(scene_transition)
	#var node = transition.instantiate()
	#node.setNextScene('gameplay')
	#if transition:
		#$'.'.add_child(node)
#
#
#func loadScene(sceneName : String) -> void:
	#unloadCurrent()
	#var levelPath := "res://scenes/%s.tscn" % sceneName
	#var levelResource := load(levelPath)
	#if levelResource:
		#levelInstance = levelResource.instantiate()
		#$".".add_child(levelInstance)
