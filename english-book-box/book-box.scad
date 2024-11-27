include <BOSL2/std.scad>;

// box parameters

thick = 5;

a = 127;
b = 92; // 90 + 2
c = 14; // 13 + 1


// regular triangular prism parameters
length = a + thick;
height = b + thick;

module regularTriangularPrism() {
    translate([-length, 0]) {
        polygon(points=[[0, 0], 
        [length, 0], 
        [length/2, length*sqrt(3)/2]]);
    }
}


// box

//difference() {
//    // outer cube
//    cube([a + thick*2, b + thick*2, c + thick*2]);  
//
//    // inner cube    
//    translate([thick,thick,thick])
//    cube([a, b, c]);
//    
//    // regular triangular prism 
//    translate([thick/2, 0, c + thick])
//    rotate([90, 0, 180])
//    difference() {
//        linear_extrude(height) regularTriangularPrism();
//    }
//}


//    translate([28, 35, 3])
//    linear_extrude(3)
//    text( "Rocky", font="Uechi:style=Gothic", size = 30);

////////////////////////////////////////////////////////////

// cover
/*
difference() {
    // regular triangular prism
    translate([0,0,0])
    rotate([90, 0, 180])

    difference() {
        linear_extrude(height) regularTriangularPrism();
    }
    
    // cube  
    translate([0, 0, 5])
    cube([a + thick*2, b + thick, 110]); 
    // h = sqrt(length^2 - (length/4)^2) ≈ 109.31

    // text: English 3500
    color("red", 1.0)
    translate([20, 75, 3])
    linear_extrude(2)
    text( "English 3500", size = 11);
    
    // svg: check symbol
    color("red", 1.0)
    scale(0.08)
    translate([1350, 880, 4])
    linear_extrude(height = 59){
           import("check.svg");
    };
    
    // svg: among us picture
    scale(0.5)
    translate([0, 5, 4])
    linear_extrude(height = 6){
           import("among-us.svg");
    };

    // text: Rocky
    color("blue", 1.0)
    translate([60, 25, 3])
    linear_extrude(2)
    text( "Rocky", font="Blazed", size = 10);
}
*/
////////////////////////////////////////////////////////////


//text

// text: English 3500
color("red", 1.0)
translate([20, 75, 3])
linear_extrude(2)
text( "English 3500", size = 11);

// svg: check symbol
color("red", 1.0)
scale(0.08)
translate([1350, 880, 4])
linear_extrude(height = 59){
       import("check.svg");
};

// svg: among us picture
scale(0.5)
translate([0, 5, 4])
linear_extrude(height = 6){
       import("among-us.svg");
};

// text: Rocky
color("blue", 1.0)
translate([60, 25, 3])
linear_extrude(2)
text( "Rocky", font="Blazed", size = 10);


