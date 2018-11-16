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
if global.pow >= 1 && keyboard_check(vk_space) {
	global.inv = 1;
	sprite_index = spr_attack;
	global.pow -= 1;
	spd = 6;
} else {
	sprite_index = spr_player;
	global.inv = 0;
	global.pow += 1;
	spd = 4;
}

// Limit
if global.pow <= 0 {
	global.pow = 0;	
} else if global.pow >= 100 {
	global.pow = 100;	
}