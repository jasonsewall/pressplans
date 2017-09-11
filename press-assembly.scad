include <press-params.scad>
include <press-rack.scad>
include <press-barrel.scad>
include <press-plate.scad>

color([0.5,0.5,0.7])
translate([0,0,jack_top-jack_height-0.25/2])
plate();

translate([0,0,jack_top-jack_height-barrel_height])
barrel_and_hoops();

color([0.9, 0.1,0.1])
rack();

