module toy_robot

fn test_start_position() {
	robot := Robot{}
	assert robot.position.x == 0
	assert robot.position.y == 0
	assert robot.direction == .north
}

fn test_move_3_spaces_west() {
	mut robot := Robot{
		direction: .west
	}
	for _ in 0 .. 3 {
		robot.move()
	}
	assert robot.position == Position{-3, 0}
}

fn test_move_4_spaces_west() {
	mut robot := Robot{
		direction: .west
	}
	for _ in 0 .. 4 {
		robot.move()
	}
	assert robot.position == Position{-4, 0}
}

fn test_move_3_spaces_east() {
	mut robot := Robot{
		direction: .east
	}
	for _ in 0 .. 3 {
		robot.move()
	}
	assert robot.position == Position{3, 0}
}

fn test_move_4_spaces_east() {
	mut robot := Robot{
		direction: .east
	}
	for _ in 0 .. 4 {
		robot.move()
	}
	assert robot.position == Position{4, 0}
}

fn test_move_3_spaces_north() {
	mut robot := Robot{
		direction: .north
	}
	for _ in 0 .. 3 {
		robot.move()
	}
	assert robot.position == Position{0, 3}
}

fn test_move_4_spaces_north() {
	mut robot := Robot{
		direction: .north
	}
	for _ in 0 .. 4 {
		robot.move()
	}
	assert robot.position == Position{0, 4}
}

fn test_move_3_spaces_south() {
	mut robot := Robot{
		direction: .south
	}
	for _ in 0 .. 3 {
		robot.move()
	}
	assert robot.position == Position{0, -3}
}

fn test_move_4_spaces_south() {
	mut robot := Robot{
		direction: .south
	}
	for _ in 0 .. 4 {
		robot.move()
	}
	assert robot.position == Position{0, -4}
}

fn test_turn_left() {
	mut robot := Robot{
		direction: .north
	}
	robot.turn_left()
	assert robot.direction == .west
	robot.turn_left()
	assert robot.direction == .south
	robot.turn_left()
	assert robot.direction == .east
	robot.turn_left()
	assert robot.direction == .north
}

fn test_turn_right() {
	mut robot := Robot{
		direction: .north
	}
	robot.turn_right()
	assert robot.direction == .east
	robot.turn_right()
	assert robot.direction == .south
	robot.turn_right()
	assert robot.direction == .west
	robot.turn_right()
	assert robot.direction == .north
}

fn test_report() {
	mut robot := Robot{}
	assert robot.report() == {
		'x': '0'
		'y': '0'
		'd': 'north'
	}
}
