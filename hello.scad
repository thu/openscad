difference () {

    difference () {
        union() {
            // cube([70, 6, 30]);
            cube([75, 6, 45]);
            
            mirror([10, 0, 0])
            translate([-7, 3, 6]) rotate([270, 0, -30])
            cylinder(h=15, r1=5, r2=0);
            
            mirror([10, 0, 0])
            translate([-7, 3, 39]) rotate([270, 0, -30])
            cylinder(h=15, r1=5, r2=0);
            
            mirror([10, 0, 0])
            translate([-68, 3, 39]) rotate([270, 0, 30])
            cylinder(h=15, r1=5, r2=0);
                
            mirror([10, 0, 0])
            translate([-68, 3, 6]) rotate([270, 0, 30])
            cylinder(h=15, r1=5, r2=0);
        };
        translate([-5,13,0]) cube([100, 6, 100]);
    };
    
    translate([0, -1, 0]) cube([75, 6, 45]);
}