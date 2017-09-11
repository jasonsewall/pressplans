include <press-params.scad>

module rack()
{
translate([-outer_width/2, -frame_width/2, 0])
difference()
{
    cube([outer_width,frame_width,outer_height]);
    translate([(outer_width-inner_width)/2,-0.5, (outer_height-inner_height)*0.5])
    cube([inner_width,frame_width+1,inner_height]);
}

translate([0,0,jack_top-jack_height])
cylinder(r=0.5*jack_diameter,h=jack_height);
}