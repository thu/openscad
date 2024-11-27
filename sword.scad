

difference(){

translate([0, 0, 50])
cube([20, 20, 100], center = true);

translate([0,0, 50])
cube([16, 16, 100], center = true);
}

// Define base dimensions and height
base_length = 20;
base_width = 20; // Adjust width if needed for a rectangular base
height = 20;


translate([0, 0, 100])
// Create rectangular pyramid
linear_extrude(height = height, scale = 0)
    polygon(points = [[-base_length/2, -base_width/2], [base_length/2, -base_width/2], [base_length/2, base_width/2], [-base_length/2, base_width/2]]);
    
cylinder(height=30, r=20);    


difference() {
 

translate([0,0,-50])
cylinder(h=50, r=10);
    
translate([-30,0, -40])
rotate([0, 90, 0])
cylinder(h=60, r= 3);
}