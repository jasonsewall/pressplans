include <press-params.scad>

module plate()
{
    cylinder(r=plate_diameter/2,h=plate_thickness, center=true);
}