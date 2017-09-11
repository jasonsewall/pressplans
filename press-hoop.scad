include <press-params.scad>

module hoop()
{
    color([0.5,0.5,0.5])
    difference()
    {
rotate_extrude()
translate([barrel_outer_diameter/2-hoop_thickness/2,0,0])
square(size=[hoop_thickness,hoop_height],center=true);
    screwholes();
        }   
}

module screwholes()
{
for(a = [0:nstaves-1])
{
    phase = a*360/(nstaves-1);

    translate([stave_inner_diameter/2*cos(phase),stave_inner_diameter/2*sin(phase),0])    
    rotate([0,0,phase])
    translate([stave_thickness/2,0,0])
    rotate([0,90,00])
    cylinder(r=screw_bore, h=1);    
}
    
}