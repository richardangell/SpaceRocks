/// @description Camera follow target
// You can write your code in this editor

if(instance_exists(target)){
	cameraX = target.x - (cameraWidth/2);
	cameraY = target.y - (cameraHeight/2);
	
	cameraX = clamp(cameraX, 0, room_width - cameraWidth);
	cameraY = clamp(cameraY, 0, room_height - cameraHeight);
}

camera_set_view_pos(view_camera[0], cameraX, cameraY);