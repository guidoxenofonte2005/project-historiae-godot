extends Node2D

@onready var transition: AnimationPlayer = $Transition
@onready var color_rect: ColorRect = $Transition/ColorRect
@onready var timer: Timer = $Timer
@onready var timer_end: Timer = $TimerEnd

var nextScene : String

func setNextScene(name: String) -> void:
	nextScene = name

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	transition.play('fadeOut')
	timer.start()


func _on_timer_timeout() -> void:
	transition.play('fadeIn')
	timer_end.start()
	if nextScene != 'same':
		get_tree().current_scene.loadScene(nextScene)

func _on_timer_end_timeout() -> void:
	$'.'.queue_free()
