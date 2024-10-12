difference() {
  cube(size = [30, 10, 10]);  // Create a cube
    translate([5.2, 3.5, 0]) {
        scale([0.1, 0.1, 0.1]) {  
            linear_extrude(height=100) {
                import("bh3epq.svg");
            }
        }
    }
}








