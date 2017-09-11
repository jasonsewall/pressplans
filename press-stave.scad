include <press-params.scad>

module stave()
{
   translate([-stave_width1/2,-stave_thickness/2,0])
   intersection()
   {     
   cube([stave_width1,stave_thickness,stave_height]); 
   rotate([0,0,-15])
   cube([stave_width1,3*stave_thickness,stave_height]);
   translate([stave_width1,0,0])
   scale([-1,1,1])
   rotate([0,0,-15])
   cube([stave_width1,3*stave_thickness,stave_height]);
   }
}
