var hsp = (global.btn_dir - global.btn_esq)*spd
var vsp = (global.btn_baixo - global.btn_cima)*spd

if place_meeting(x + hsp, y, obj_parede) {
  while (!place_meeting(x + sign(hsp),y,obj_parede)) {
    x += sign(hsp)
  }
  hsp = 0
}
x += hsp

if place_meeting(x, y + vsp, obj_parede) {
  while (!place_meeting(x,y + sign(vsp),obj_parede)) {
    y += sign(vsp)
  }
  vsp = 0
}
y += vsp

if delay > 0 delay--

delay = clamp(delay,0,delay_max)

var ang = point_direction(x,y,obj_mira.x,obj_mira.y)

if delay <= 0 && global.btn_tiro {
    delay = delay_max
    var _tiro = instance_create_layer(x,y,"Instances",obj_tiro)
    _tiro.direction = ang
}
