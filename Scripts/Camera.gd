# camera script:
# responsible for moving the camera at certain points in the game
extends Camera2D

var cam_speed = 500
var moving = false

onready var CamMovement = $CameraMovement


func _process(delta):
	if moving:
		# increases x position of the camera
		position.x += cam_speed * delta
	elif moving == false:
		# stay still
		position.x = position.x


func _on_move_cam(anim_name):
	# checks for the right string being passed and plays animations/starts moving the camera
	if anim_name == "offset_right":
		CamMovement.play("offset_right")
	elif anim_name == "move_right":
		moving = true
	elif anim_name == "stop_moving":
		moving = false

