function scr_player_state(){
}







#region //STATE MACHINE\\
function gf_player_udpate()
{
	//if(//player state  == free 
		//&& attack key pressed () )  player state= attacking)
	switch (lv_player_state)
	{
		case GE_PLAYER_STATE.FREE: gf_player_state_free()
		
			break;
		//case playerstate attakcing ()? funccao 
		//break;
	}	
	
	gf_player_spr_update()
}



function gf_player_spr_update()
{
	lv_player_sprite_id.x = x;
	lv_player_sprite_id.y = y;
	
	if(fv_facing_side == GE_FACING.LEFT)          lv_player_sprite_id.image_index = 0;
	if(fv_facing_side == GE_FACING.RIGHT)         lv_player_sprite_id.image_index = 1;
	if(fv_facing_side == GE_FACING.UP)			  lv_player_sprite_id.image_index = 2;
	if(fv_facing_side == GE_FACING.DOWN)          lv_player_sprite_id.image_index = 3;
}




function gf_player_state_free()
{
	fv_speed= fv_speed 
	
	var tv_move_x = gf_get_key_right_state() - gf_get_key_left_state()
	var tv_move_y = gf_get_key_down_state() - gf_get_key_up_state()
	
	tv_move_x = tv_move_x * fv_speed;
	tv_move_y = tv_move_y * fv_speed;
	
	
	move_and_collide(tv_move_x,tv_move_y,obj_wall_collider,10,0,0,fv_speed,fv_speed)
	
	
	if(sign(tv_move_x) == -1 )
	{
		fv_facing_side = GE_FACING.LEFT;
	}
	else if(sign(tv_move_x) == 1 )
	{
		fv_facing_side = GE_FACING.RIGHT;
	}	
	else if(sign(tv_move_y) == -1 )
	{
		fv_facing_side = GE_FACING.UP;
	}
	else if(sign(tv_move_y) == 1 )
	{
		fv_facing_side = GE_FACING.DOWN;
	}
	
}


#endregion

