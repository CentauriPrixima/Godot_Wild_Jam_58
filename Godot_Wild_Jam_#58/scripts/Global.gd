extends Node

var player_dead = false
var foot_switch = true
var phealth = 3
var ptrigger = false
var lastknownx:float 
var lastknowny:float
var hurting = false
var gemcount:int
var torigate:bool
var tori_present:bool
var tori_spawnx:float
var tori_spawny:float
<<<<<<< HEAD
=======
var Player_Respawn:bool = false
var wipe:bool
var dead:bool
>>>>>>> Kyveri-Art
func _ready():
	pass


func win():
	print("u one")

	
func _physics_process(delta):
	pass

func die():
	print("u dead")
	if phealth> 0:
		phealth = phealth - 1
	player_dead = true
	if phealth <= 0:
		print("Game_Over")
		

func _Health_Loss():
	if phealth>0:
		phealth = phealth - 1
		
	

