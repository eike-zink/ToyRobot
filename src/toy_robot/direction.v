module toy_robot

pub enum Direction {
	north
	south
	west
	east
}

fn (direction Direction) turn_left() Direction {
	match direction {
		.north { return .west }
		.west { return .south }
		.south { return .east }
		.east { return .north }
	}
}

fn (direction Direction) turn_right() Direction {
	match direction {
		.north { return .east }
		.east { return .south }
		.south { return .west }
		.west { return .north }
	}
}
