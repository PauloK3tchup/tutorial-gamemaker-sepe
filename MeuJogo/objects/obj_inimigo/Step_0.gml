if place_meeting(x,y,obj_tiro) {
    var _tiro = instance_place(x,y,obj_tiro)
    scr_dano(_tiro.dano,id)
    instance_destroy(_tiro)
}
if vida <= 0 instance_destroy()

if delay > 0 delay--
delay = clamp(delay,0,delay_max)

var ang = point_direction(x,y,obj_player.x,obj_player.y)

if delay <= 0 && distance_to_object(obj_player) < 200 {
    delay = delay_max
    var _tiro = instance_create_layer(x,y,"Instances",obj_tiro_inimigo)
    _tiro.direction = ang
	_tiro.dano = dano
}
