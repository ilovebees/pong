extends Node2D
@onready var player1_score_label: Label = $Label
@onready var player_2_score_label: Label = $player2_score_label
@onready var score_sound: AudioStreamPlayer = $score_sound



var PLAYER1_SCORE = 0
var PLAYER2_SCORE = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_2_goal_body_entered(body: Node2D) -> void:
	PLAYER1_SCORE += 1
	player1_score_label.text = str(PLAYER1_SCORE)
	score_sound.play()


func _on_player_1_goal_body_entered(body: Node2D) -> void:
	PLAYER2_SCORE += 1
	player_2_score_label.text = str(PLAYER2_SCORE)
	score_sound.play()
