// PRUSA Mendel  
// Endstop holder
// Used to attach endstops to 8mm rods
// GNU GPL v3
// Josef Průša
// josefprusa@me.com
// prusadjs.cz
// http://www.reprap.org/wiki/Prusa_Mendel
// http://github.com/prusajr/PrusaMendel

include <configuration.scad>

/**
 * @id endstop-holder
 * @name Endstop holder
 * @category Printed
 * @using 1 m3x20xhex
 * @using 1 m3nut
 * @using 2 m3washer
 */
module endstop(){
outer_diameter = m8_diameter/2+3.3;
screw_hole_spacing = 20;
opening_size = m8_diameter-1.5; //openingsize

difference(){
	union(){


		translate([outer_diameter, outer_diameter, 0]) cylinder(h =16, r = outer_diameter, $fn = 20);
		translate([outer_diameter, 0, 0]) cube([15.5,outer_diameter*2,16]);
		translate([-27, 0, 0]) cube([27 + 15.5, 4, 16]);
		translate([17, 17.5, 8]) rotate([90, 0, 0]) #cylinder(h =5, r = 5.77, $fn = 6);
	}




	translate([9, outer_diameter-opening_size/2, 0]) cube([18,opening_size,20]);
	translate([outer_diameter, outer_diameter, 0]) cylinder(h =20, r = m8_diameter/2, $fn = 18);

	//Securing hole
	translate([17, 17, 8]) rotate([90, 0, 0]) cylinder(h =20, r = m3_diameter/2, $fn = 10);
	translate([17, 19.5, 8]) rotate([90, 0, 0]) #cylinder(h =5, r = m3_nut_diameter_horizontal/2, $fn = 6);

	translate([17, 17, 8]) rotate([90, 0, 0]) #cylinder(h =20, r = m3_diameter/2, $fn = 10);
	
	translate([-27 + 25, 17, 16 - 3]) rotate([90, 0, 0]) cylinder(h =20, r = m3_diameter/2, $fn = 10);
	translate([-27 + 3, 17, 3]) rotate([90, 0, 0]) cylinder(h =20, r = m3_diameter/2, $fn = 10);

}
}
endstop();

