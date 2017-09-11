outer_width=20;
outer_height=72;
inner_width=16.5;
inner_height=48;
frame_width=4;

jack_top=outer_height-(outer_height-inner_height)/2;
jack_height=10;
jack_diameter=6;

barrel_outer_diameter=16;
barrel_height=24;
barrel_outer_circumference=barrel_outer_diameter*PI;
hoop_thickness=0.125;
hoop_height=1;
hoop_inner_diameter=barrel_outer_diameter-hoop_thickness*2;
hoop_inner_circumference=hoop_inner_diameter*PI;

stave_thickness=0.5;
stave_height=barrel_height;

stave_width0=1.0;

stave_gap = 1/16.0;

echo(hoop_inner_circumference);
nstaves = floor(hoop_inner_circumference/(stave_width0 + stave_gap));
stave_width1 = hoop_inner_circumference/nstaves - stave_gap;
echo(stave_width1);
echo(nstaves);

stave_inner_diameter=hoop_inner_diameter-stave_thickness*2;

press_diameter=stave_inner_diameter-1/8*2.0;

screw_bore=.13;