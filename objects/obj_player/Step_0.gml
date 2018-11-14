/// @description Movements
if keyboard_check(ord("D")) {
	if !place_meeting(x+5,y,obj_solid) x += spd;
}

if keyboard_check(ord("A")) {
	if !place_meeting(x-5,y,obj_solid) x -= spd;
}

if keyboard_check(ord("S")) {
	if !place_meeting(x,y+5,obj_solid) y += spd;
}

if keyboard_check(ord("W")) {
	if !place_meeting(x,y-5,obj_solid) y -= spd;
}

// Player Attack
if pow >= 1 && keyboard_check(vk_space) {
	inv = 1;
	sprite_index = spr_attack;
	pow -= 1;
	spd = 6;
} else {
	sprite_index = spr_player;
	inv = 0;
	pow += 1;
	spd = 4;
}

// Limit
if pow <= 0 {
	pow = 0;	
} else if pow >= 100 {
	pow = 100;	
}