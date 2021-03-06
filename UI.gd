extends CanvasLayer


onready var n_score_text = $ScoreBox/HBoxContainer/Score


onready var n_score_text_player = $KidSprite/ScoreFrame/Score
onready var n_score_text_cpu = $GrannySprite/ScoreFrame/Score


onready var n_rock_text = $CounterBox/VBoxContainer/RockContainer/RockCounter
onready var n_paper_text = $CounterBox/VBoxContainer/PaperContainer/PaperCounter
onready var n_scissors_text = $CounterBox/VBoxContainer/ScissorsContainer/ScissorsCounter


func _ready():
	clear_score()
	clear_counter()
	

func update_score(player_score, cpu_score):
	n_score_text.text = str(player_score) + "-" + str(cpu_score)
	n_score_text_player.text = str(player_score)
	n_score_text_cpu.text = str(cpu_score)

	if (player_score>cpu_score):
		$KidSprite.play("Happy")
	elif (player_score<cpu_score):
		$KidSprite.play("Sad")
	else:
		$KidSprite.play("Idle")


func clear_score():
	n_score_text.text = ""
	n_score_text_player.text = ""
	n_score_text_cpu.text = ""



#TODO ANIMATE going up!
func update_counter(n_list):
	n_rock_text.text = " x " + str(n_list[0])
	n_paper_text.text = " x " + str(n_list[1])
	n_scissors_text.text = " x " + str(n_list[2])

func clear_counter():
	n_rock_text.text = ""
	n_paper_text.text = ""
	n_scissors_text.text = ""
