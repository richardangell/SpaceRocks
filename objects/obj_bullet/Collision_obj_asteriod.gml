/// @description Insert description here
// You can write your code in this editor

instance_destroy();

audio_play_sound(snd_die, 1, false);

score += 10;

with(other){
	instance_destroy();	
	
	if(sprite_index == spr_asteriod_huge){
		repeat(2){
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteriod);
			new_asteroid.sprite_index = spr_asteriod_med;
		}
	} else if (sprite_index == spr_asteriod_med){
		repeat(2){
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteriod);
			new_asteroid.sprite_index = spr_asteriod_small;
		}
	} 
		
	repeat(10){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	
}
