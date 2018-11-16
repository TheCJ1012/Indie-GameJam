/// @description Collide

if (global.inv = 0) {
	global.hp -= 1;
} else if (global.inv = 1) {
	score += 5;
	instance_destroy(other);
}

// GameOver
if (global.hp <= 0) {
	room_restart();
}