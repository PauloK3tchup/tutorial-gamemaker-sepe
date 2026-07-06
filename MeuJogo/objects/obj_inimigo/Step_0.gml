if place_meeting(x,y,obj_tiro) {
    var _tiro = instance_place(x,y,obj_tiro)
    scr_dano(_tiro.dano,id)
    instance_destroy(_tiro)
}
if vida <= 0 instance_destroy()