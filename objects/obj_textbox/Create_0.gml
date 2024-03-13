//Textbox
lv_textbox_width = 460;
lv_textbox_heigth = 115;

lv_border = 8;
lv_line_sep = 12;
lv_line_width = lv_textbox_width - lv_border*2;

lv_txtb_spr = spr_textbox;
lv_txtb_img= 0;
lv_txtb_img_spd = 6/60;

//Texto
lv_page = 0;
lv_page_number = 0;

lv_text[0] = "";
lv_text_length[0] = string_length(lv_text[0]);

lv_draw_char = 0;

lv_text_spd = 1;

//Options
lv_option[0] = "";
lv_option_link_id[0] = -1;
lv_option_pos = 0;
lv_option_number = 0;

lv_setup = false;