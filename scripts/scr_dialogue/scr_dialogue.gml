
///@parm text
function gf_text(_text)
{
	lv_text[lv_page_number] = _text
	
	lv_page_number++
}

function gf_game_dialogues(_text_id)
{
	
	switch(_text_id)
	{
		case "npc 1":
			gf_text("Sou o NPC 1")
			gf_text("Estou aqui para te ajudar")
			gf_text("Voce gosta de peitos?")
			
			gf_dialogue_options("Obvio porra" , "npc 1 - Uhum");
			gf_dialogue_options("Prefiro bunda" , "npc 1 - Nha");			
				break;
				case "npc 1 - Uhum":
				gf_text("Concordo peitos sao adoraveis");
					break;
				case "npc 1 - Nha":
				gf_text("Ai sim porra tu e dos meus");
					break;
				
		case "npc 2":
		gf_text("Sou o NPC 2")
		gf_text("Sou gay ")
		gf_text("Dou o cu 1 vez por mes")
		
				break;
	}
}
///@pram text_id
function gf_create_textbox(_text_id)
{
	with (instance_create_depth(0, 0, -9999, obj_textbox))
		{
			 gf_game_dialogues(_text_id)
		}	
}

///@pram option
function gf_dialogue_options(_option, _link_id)
{
	lv_option[lv_option_number] = _option;
	lv_option_link_id[lv_option_number] = _link_id
}











