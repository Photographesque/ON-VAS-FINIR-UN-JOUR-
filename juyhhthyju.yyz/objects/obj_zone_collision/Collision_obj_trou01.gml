/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

image_index = 1
zone_collision_active = true;

if mouse_check_button_pressed(mb_right)
{
	instance_destroy(other);
	with(obj_player) 
	{
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		__dnd_lives += real(+1);
	}
	obj_life_on = 1;


	if obj_life_on = 1
	{	
		instance_create_layer(0, 0, "Instances_pop_up", obj_life);
		alarm[4] = 60;
	}
	with obj_life 
	{
		flashui = 1;
	}

}
