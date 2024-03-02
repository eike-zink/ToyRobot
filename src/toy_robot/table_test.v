module toy_robot

fn test_table() {
	table := Table{}
	assert table.width == 5 && table.height == 5
}

fn test_valid_position() {
	table := Table{}
	assert table.is_valid_position(x: 0, y: 0) == true
	assert table.is_valid_position(x: 4, y: 4) == true
	assert table.is_valid_position(x: 5, y: 5) == false
	assert table.is_valid_position(x: -1, y: -1) == false
}
