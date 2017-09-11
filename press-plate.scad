include <press-params.scad>

module plate()
{
    cylinder(r=press_diameter/2,h=0.25, center=true);
}