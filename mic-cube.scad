/*
A reporter's microphone cube, with a Hackaday logo if you want.
Jenny List 2026
CC-BY-SA 4.0

If you want the Hackaday logo you'll have to download https://www.thingiverse.com/thing:51236

*/

//Omit this if no Hackday logo required
include <./Hack-A-Day.scad>; // from Thingiverse. https://www.thingiverse.com/thing:51236

$fn=90;
 difference(){
    minkowski(){  //cube
        cube([65,65,58],true);
        cylinder(r=2,h=1);
    }
    translate([0,0,-17]) cylinder(115,11.75,17,true); //hole for mic
    // Here follows the Hackaday logo bits, omit the following six lines if no Hackaday logo required.  
    scale([LogoScaleX, LogoScaleY , 1])
    color(LogoColor)
    translate([0,38.5,0]) rotate([90,0,0]) poly_HackADayLogo(ExtrudeHeight);
    translate([0,-33.5,0]) rotate([90,0,0]) poly_HackADayLogo(ExtrudeHeight);
    translate([33.5,0,0]) rotate([90,0,90]) poly_HackADayLogo(ExtrudeHeight);
    translate([-38.5,0,0]) rotate([90,0,90]) poly_HackADayLogo(ExtrudeHeight);
    
}
