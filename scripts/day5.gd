extends Panel

@onready var advent_of_code_2023 = $".."
@onready var result = $"../Label/Result"

var is_debug = true;
var test_input = ""
var day = "5"

#region Setup
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_day_1_part_1_pressed():
	if is_debug:
		solve_part1(test_input)
	else:
		advent_of_code_2023.get_input(day, self.part1)

func _on_day_1_part_2_pressed():
	if is_debug:
		solve_part2(test_input)
	else:
		advent_of_code_2023.get_input(day, self.part2)
	
func part1(result, response_code, headers, body):
	var input = body.get_string_from_utf8()
	solve_part1(input)

func part2(result, response_code, headers, body):
	var input = body.get_string_from_utf8()
	solve_part2(input)
#endregion

### Advent of code 2023 || Day 1 - Part 1 ###
func solve_part1(input):
	pass
	
### Advent of code 2023 || Day 1 - Part 2 ###
func solve_part2(input):
	pass

