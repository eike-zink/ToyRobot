module toy_robot

pub struct Table {
	width  int = 5
	height int = 5
}

pub fn (table Table) is_valid_position(position Position) bool {
	return 0 <= position.x && position.x < table.width && 0 <= position.y && position.y < table.height
}
