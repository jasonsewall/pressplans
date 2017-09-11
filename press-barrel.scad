include <press-params.scad>
include <press-hoop.scad>
include <press-stave.scad>

module barrel()
{
for(a = [0:nstaves-1])
{
    phase = a*360/(nstaves-1);

    translate([stave_inner_diameter/2*cos(phase),stave_inner_diameter/2*sin(phase),0])    
    rotate([0,0,phase])
    translate([stave_thickness/2,0,0])
    rotate([0,0,90])
    stave();    
}
}

module barrel_and_hoops()
{
translate([0,0,2+hoop_height/2])
hoop();
translate([0,0,barrel_height/2+hoop_height/2])
hoop();
translate([0,0,barrel_height-2
-hoop_height/2])
hoop();
color([255.0/255.0, 212.0/255.0, 95.0/255.0])
barrel();
}