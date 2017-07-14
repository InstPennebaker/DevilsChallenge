/// @desc Movement
move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_left = keyboard_check(vk_left);
move_right = keyboard_check(vk_right);

xx = move_right - move_left;
yy = move_down - move_up;

hspd = xx*spd;
vspd = yy*spd;

if(place_meeting(x+hspd,y,objWallCloudBot)){
	while(!place_meeting(x+sign(hspd),y,objWallCloudBot)) {
		x+=sign(hspd);
	}
	hspd = 0;
}
x += hspd;

if(place_meeting(x,y+vspd,objWallCloudBot)){
	while(!place_meeting(x,y+sign(vspd),objWallCloudBot)) {
		y+=sign(vspd);
	}
	vspd = 0;
}
y += vspd;

if(place_meeting(x+hspd,y,objWallCloudMid)){
	while(!place_meeting(x+sign(hspd),y,objWallCloudMid)) {
		x+=sign(hspd);
	}
	hspd = 0;
}

if(place_meeting(x,y+vspd,objWallCloudMid)){
	while(!place_meeting(x,y+sign(vspd),objWallCloudMid)) {
		y+=sign(vspd);
	}
	vspd = 0;
}