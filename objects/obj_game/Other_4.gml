/// @description Insert description here
// You can write your code in this editor


if (room == rm_game) {
	
	if (audio_is_playing(msc_song)) {
		audio_stop_sound(msc_song);	
	}	
	audio_play_sound(msc_song, 2, true);
	
	repeat(10) {
		
		var xx = choose(
			irandom_range(0, room_width * 0.33),
			irandom_range(room_width * 0.66, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height * 0.33),
			irandom_range(room_height * 0.66, room_height)
		);
		
		instance_create_layer(xx, yy, "Instances", obj_asteriod)
	}
	
	alarm[0] = 60;
	
}