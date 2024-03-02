module toy_robot

fn test_turn_left() {
	mut direction := Direction.north
	direction = direction.turn_left()
	assert direction == .west
	direction = direction.turn_left()
	assert direction == .south
	direction = direction.turn_left()
	assert direction == .east
	direction = direction.turn_left()
	assert direction == .north
}

fn test_turn_right() {
	mut direction := Direction.north
	direction = direction.turn_right()
	assert direction == .east
	direction = direction.turn_right()
	assert direction == .south
	direction = direction.turn_right()
	assert direction == .west
	direction = direction.turn_right()
	assert direction == .north
}