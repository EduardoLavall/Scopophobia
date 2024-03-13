
	function gf_get_key_up_state() {return global.gv_key_up}
	function gf_get_key_down_state() {return global.gv_key_down}
	function gf_get_key_left_state() {return global.gv_key_left}
	function gf_get_key_right_state() {return global.gv_key_right}
	
	function gf_get_key_action_state() {return global.gv_key_action}
	function gf_get_key_jump_state() {return global.gv_key_jump}
	function gf_get_key_item_state() {return global.gv_key_item}
	function gf_get_key_pause_single_state() {return global.gv_key_pause_single_pressed}
	////////////////////////////////////////////////
	function gf_get_key_up_pressed_state() {return global.gv_key_up_pressed}
	function gf_get_key_down_pressed_state() {return global.gv_key_down_pressed}
	function gf_get_key_left_pressed_state() {return global.gv_key_left_pressed}
	function gf_get_key_right_pressed_state() {return global.gv_key_right_pressed}
	function gf_get_key_action_pressed_state() {return global.gv_key_action_pressed}
	
function gf_controler(){
	
	
	
	global.gv_key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	global.gv_key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	global.gv_key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	global.gv_key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	

	global.gv_key_action = keyboard_check(ord("X")) || keyboard_check(ord("E"));
	global.gv_key_jump = keyboard_check(ord("Z")) || keyboard_check(vk_space);
	global.gv_key_item = keyboard_check(ord("C")) || keyboard_check(ord("Q")); 
	
	global.gv_key_aouse_single_pressed = keyboard_check_pressed(vk_escape);
	
	
		//////////////
		///key up
if ( global.gv_key_up == 1 && global.gv_key_up_last_detected == 1) 
	{
		global.gv_key_up_pressed=0
		
	}	
	if( global.gv_key_up == 1 && global.gv_key_up_last_detected == 0)
	{
		global.gv_key_up_pressed = 1
		global.gv_key_up_last_detected = 1
		
	} 
	if (global.gv_key_up == 0) 
	{
		global.gv_key_up_pressed = 0
		global.gv_key_up_last_detected = 0
	}
	//////////////
	///key down
	
	if ( global.gv_key_down == 1 && global.gv_key_down_last_detected == 1) 
	{
		global.gv_key_down_pressed=0
		
	}	
	if( global.gv_key_down == 1 && global.gv_key_down_last_detected == 0)
	{
		global.gv_key_down_pressed = 1
		global.gv_key_down_last_detected = 1
		
	} 
	if (global.gv_key_down == 0) 
	{
		global.gv_key_down_pressed = 0
		global.gv_key_down_last_detected = 0				
	}
			
	/////////////////////
	///key left
	
	if ( global.gv_key_left == 1 && global.gv_key_left_last_detected == 1) 
	{
		global.gv_key_left_pressed=0
		
	}	
	if( global.gv_key_left == 1 && global.gv_key_left_last_detected == 0)
	{
		global.gv_key_left_pressed = 1
		global.gv_key_left_last_detected = 1
		
	} 
	if (global.gv_key_left == 0) 
	{
		global.gv_key_left_pressed = 0
		global.gv_key_left_last_detected = 0
	}
	
	///////
			
	/////
	///key right
	if ( global.gv_key_right == 1 && global.gv_key_right_last_detected == 1) 
	{
			global.gv_key_right_pressed=0
		
	}	
	if( global.gv_key_right == 1 &&  global.gv_key_right_last_detected == 0)
	{
		global.gv_key_right_pressed = 1
		global.gv_key_right_last_detected = 1
		
	} 
	if (global.gv_key_right == 0) 
	{
		global.gv_key_right_pressed = 0
		global.gv_key_right_last_detected = 0
	}
	if (global.gv_key_action == 1 && global.gv_key_action_last_detected == 1)
	{
		global.gv_key_action_pressed = 0
	}
	if( global.gv_key_action == 1 &&  global.gv_key_action_last_detected == 0)
	{
		global.gv_key_action_pressed = 1
		global.gv_key_action_last_detected = 1
		
	} 
	if (global.gv_key_action == 0) 
	{
		global.gv_key_action_pressed = 0
		global.gv_key_action_last_detected = 0
	}
	
	
	
}

function gf_global_controler_var_declaration()
{
	
#region variables declaration
	global.gv_key_up = 0
	global.gv_key_down = 0
	global.gv_key_left = 0
	global.gv_key_right = 0
	
	global.gv_key_action = 0
	global.gv_key_jump = 0
	global.gv_key_item = 0
	
	global.gv_key_pause_single_pressed = 0
	
	global.gv_key_up_pressed = 0
	global.gv_key_up_last_detected = 0

	global.gv_key_down_pressed = 0
	global.gv_key_down_last_detected = 0

	global.gv_key_right_pressed = 0
	global.gv_key_right_last_detected = 0

	global.gv_key_left_pressed = 0
	global.gv_key_left_last_detected = 0
	
	global.gv_key_action_pressed = 0
	global.gv_key_action_last_detected = 0

}
