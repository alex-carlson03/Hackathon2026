// Step Event
timer += 1;
show_debug_message(timer);
if (timer >= movement_delay) {
	
	var myspeed = 15; // Adjust speed as needed
	var mydirection = choose(0, 90, 180, 270); // Only up, down, left, right
	var x_move = lengthdir_x(myspeed, mydirection);
	var y_move = lengthdir_y(myspeed, mydirection);

	x += x_move;
	y += y_move;

	x = clamp(x, 0, room_width);
	y = clamp(y, 0, room_height);

    timer = 0; // Reset timer
}