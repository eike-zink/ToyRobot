module toy_robot

pub struct Position {
mut:
	x int
	y int
}

pub struct Robot {
mut:
	position  Position
	direction Direction
}

pub fn (mut robot Robot) move() {
	match robot.direction {
		.north { robot.move_north() }
		.south { robot.move_south() }
		.west { robot.move_west() }
		.east { robot.move_east() }
	}
}

pub fn (mut robot Robot) turn_left() {
	robot.direction = robot.direction.turn_left()
}

pub fn (mut robot Robot) turn_right() {
	robot.direction = robot.direction.turn_right()
}

pub fn (robot Robot) report() map[string]string {
	report := {
		'x': robot.position.x.str()
		'y': robot.position.y.str()
		'd': robot.direction.str()
	}
	return report
}

fn (mut robot Robot) move_east() {
	robot.position.x += 1
}

fn (mut robot Robot) move_west() {
	robot.position.x -= 1
}

fn (mut robot Robot) move_north() {
	robot.position.y += 1
}

fn (mut robot Robot) move_south() {
	robot.position.y -= 1
}
