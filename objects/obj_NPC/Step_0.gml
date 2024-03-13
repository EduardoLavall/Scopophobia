var _s = id
if distance_to_object(obj_player_hitbox)<= 20
{
	instance_create_depth(x,y - 40, depth, obj_E);
	if global.gv_key_action_pressed
	with (instance_create_depth(0, 0, depth, obj_textbox))
	{
		gf_game_dialogues(_s.lv_text_id)
	}	
}
else { instance_destroy(obj_textbox) }
