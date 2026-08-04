var _x_meio = camera_get_view_x(view_camera) + camera_get_view_width(view_camera)/2
var _y_meio = camera_get_view_y(view_camera) + camera_get_view_height(view_camera)/2

draw_set_valign(fa_center)
draw_set_halign(fa_middle)

if obj_player.morto {
    draw_set_alpha(0.8)
    draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
	draw_text_colour(_x_meio,_y_meio,"GAME OVER",c_red,c_red,c_red,c_red,1)
} else {
	var _vida_porcentagem = obj_player.vida / obj_player.vida_max
	var _vida_largura = 100
	var _vida_altura = 10
	var _vida_x = obj_player.x - _vida_largura/2
	var _vida_y = obj_player.y - 40
	
	draw_set_alpha(0.5)
	draw_rectangle_colour(_vida_x,_vida_y,_vida_x+_vida_largura,_vida_y+_vida_altura,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
	draw_rectangle_colour(_vida_x,_vida_y,_vida_x+_vida_largura*_vida_porcentagem,_vida_y+_vida_altura,c_green,c_green,c_green,c_green,false)
}