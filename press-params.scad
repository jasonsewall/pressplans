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

echo(hoop_inner_circumference);
nstaves = floor(hoop_inner_circumference/(stave_width0 + stave_gap));
// final wide
stave_width1 = hoop_inner_circumference/nstaves - stave_gap;
echo(stave_width1);
echo(nstaves);

stave_inner_diameter=hoop_inner_diameter-stave_thickness*2;

press_gap=1.0/8;
press_diameter=stave_inner_diameter-press_gap*2.0;
