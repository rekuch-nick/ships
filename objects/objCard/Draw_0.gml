draw_self();
if(acting){
	draw_sprite_stretched(imgRoomActive, 0, x, y, sprite_width, sprite_height);
}


var c = c_grey;
draw_text_color(x + 32, y + 160, atk, c, c, c, c, 1);

//c = def < defMax ? c_blue : c_aqua;
draw_text_color(x + 128 + 32, y + 160, def, c, c, c, c, 1);

//draw_text(x + 64, y + 64, slot);