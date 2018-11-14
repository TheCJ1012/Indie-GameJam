/// @description Collide

if (inv = 0) {
	hp -= 1;
} else if (inv = 1) {
	score += 5;
	instance_destroy(other);
}

// GameOver
if (hp <= 0) {
	room_restart();
}