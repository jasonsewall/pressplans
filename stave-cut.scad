L=3.5;
T=0.64;
A=1.077-1/16.0;

Kerf=0.07;

alpha = 23.0;//0.406*180.0/PI;
//alpha=38.39;

B = A-2*T*tan(alpha);
eff_kerf = Kerf/cos(alpha);

module cut()
{
    translate([-Kerf,0,-12])
    cube([Kerf,24,24]);
}

difference()
{
cube([L,24,T]);

rotate([0.0,alpha,0])
translate([0,0,0])
cut();

translate([A+1*eff_kerf,0,0])
rotate([0.0,-alpha,0])
cut();

translate([A+B+2*eff_kerf,0,0])
rotate([0.0,alpha,0])
cut();

translate([2*A+B+3*eff_kerf,0,0])
rotate([0.0,-alpha,0])
cut();

translate([2*A+2*B+4*eff_kerf,0,0])
rotate([0.0,alpha,0])
cut();

translate([3*A+2*B+5*eff_kerf,0,0])
rotate([0.0,-alpha,0])
cut();

}

echo("A", A);
echo("B", B);
echo("eff_kerf", eff_kerf);
echo("Angle", alpha);
echo("tan(angle)", tan(alpha));