lv_textbox_x = camera_get_view_x(view_camera[0]) + 65 ;
lv_textbox_y = camera_get_view_y(view_camera[0]) + 256;

//------------setup--------------//
if lv_setup == false
{
	lv_setup = true
	draw_set_font(global.font_main)
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	
	
	for(var p = 0; p < lv_page_number; p++)
	{	
//----------ver quantos caracteres tem no "text_length" array---------//
		lv_text_length[p] = string_length(lv_text[p]);
		
		//pegar a posicao x para a textbox 
		//sem personagem
		lv_text_x_offset[p] = 44;
	}
}

//-------------------escrever o texto-----------------------------//
if lv_draw_char < lv_text_length[lv_page]
{
	lv_draw_char += lv_text_spd;
	lv_draw_char = clamp(lv_draw_char, 0, lv_text_length[lv_page]);
}
	
	
//-------------------passar as paginas-------------------//
if global.gv_key_action_pressed
{
	//saber se o texto ja terminou de ser escrito//
	if lv_draw_char == lv_text_length[lv_page]
	{
		if lv_page < lv_page_number - 1
		{
		lv_page++;
		lv_draw_char = 0
		}
		else 
		{
			instance_destroy();
		}
	}
	
	else 
	{
		lv_draw_char = lv_text_length[lv_page];
	}
	
}




//------------------------desenhar a textbox------------------------//
var lv_txtb_x = lv_textbox_x + lv_text_x_offset[lv_page];
var lv_txtb_y = lv_textbox_y;
lv_txtb_img += lv_txtb_img_spd;
lv_txtb_spr_w = sprite_get_width(lv_txtb_spr);
lv_txtb_spr_h = sprite_get_height(lv_txtb_spr);

//voltar para a textbox
draw_sprite_ext(lv_txtb_spr, lv_txtb_img, lv_txtb_x, lv_txtb_y, lv_textbox_width / lv_txtb_spr_w, lv_textbox_heigth / lv_txtb_spr_h, 0, c_white, 1);


//------------------opcoes-------------------//
if lv_draw_char == lv_text_length[lv_page] && lv_page == lv_page_number -1 
{
	
	//draw as opcoes
	var lv_op_space = 40;
	var lv_op_board = 20;
	for (var op = 0; op < lv_option_number; op++)
	{
		//textbox das opicoes
		var lv_op_width =string_width(lv_option[op]) + lv_op_board*2;
		draw_sprite_ext(lv_txtb_spr, lv_txtb_img, lv_txtb_x + 16, lv_txtb_y - lv_op_space*lv_option_number + lv_op_space*op, lv_op_width/lv_txtb_spr_w, (lv_op_space -1)/lv_txtb_spr_h,0,c_white,1);
		
		//texto da opcao
		draw_text(lv_txtb_x + 16 + lv_op_board, lv_txtb_y - lv_op_space * lv_option_number + lv_op_space * op + 2, lv_option[op])
	}
}

//desenhar texto
var lv_drawtext = string_copy(lv_text[lv_page], 1, lv_draw_char);
draw_text_ext(lv_txtb_x + lv_border, lv_txtb_y + lv_border, lv_drawtext, lv_line_sep,lv_line_width );