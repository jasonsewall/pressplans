// Dimensions in inches

// rack dimensions
outer_width=20;
outer_height=72;
inner_width=16.5;
inner_height=48;
frame_width=4;

//jack position & dimensions
jack_top=outer_height-(outer_height-inner_height)/2;
jack_height=10;
jack_diameter=6;

// barrel dimensions
barrel_outer_diameter=16;
barrel_height=24;
barrel_outer_circumference=barrel_outer_diameter*PI;

echo("barrel_outer_circumference", barrel_outer_circumference);

// hoop dims
hoop_thickness=0.1345; // 10 guage steel
hoop_height=1.5;
screw_bore=.13; // #6 screw

hoop_inner_diameter=barrel_outer_diameter-hoop_thickness*2;
hoop_inner_circumference=hoop_inner_diameter*PI;

// stave dims
stave_thickness=0.5;
stave_height=barrel_height;

stave_width0=1.0; // preference

stave_gap = 1/16.0;

echo("hoop_inner_circumference", hoop_inner_circumference);
nstaves = floor(hoop_inner_circumference/(stave_width0 + stave_gap));
// final wide
stave_width1 = hoop_inner_circumference/nstaves - stave_gap;
echo("Stave width", stave_width1);
echo("Nstaves", nstaves);

echo("Stave spacing", stave_width1+stave_gap);

stave_inner_diameter=hoop_inner_diameter-stave_thickness*2;

echo("stave_inner_diameter", stave_inner_diameter);

barrel_effective_volume=(stave_inner_diameter/2)*(stave_inner_diameter/2)*PI*barrel_height;

echo("barrel_effective_volume in^3", barrel_effective_volume);

echo("barrel_effective_volume gal", barrel_effective_volume*0.004329);

plate_gap=1.0/8;
plate_diameter=stave_inner_diameter-plate_gap*2.0;
plate_thickness=0.25;
echo("press_diameter", plate_diameter);

/*
ECHO: "barrel_outer_circumference", 50.2655
ECHO: "hoop_inner_circumference", 49.4204
ECHO: "Stave width", 1.01186
ECHO: "Nstaves", 46
ECHO: "Stave spacing", 1.07436
ECHO: "stave_inner_diameter", 14.731
ECHO: "barrel_effective_volume in^3", 4090.4
ECHO: "barrel_effective_volume gal", 17.7073
ECHO: "press_diameter", 14.481
*/
