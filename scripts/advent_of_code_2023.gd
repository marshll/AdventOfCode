extends Control

@onready var http_request = $HTTPRequest

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func get_session_cookie():
	var file = FileAccess.open("user://cookie.txt", FileAccess.READ)
	var content = file.get_as_text()
	return content

func get_input(day, function):
	var headers = ["Content-Type: text/plain", "Cookie: " + get_session_cookie()]
	http_request.request_completed.connect(function)
	http_request.request("https://adventofcode.com/2023/day/" + day + "/input", headers)
