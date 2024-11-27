$fn=100;

difference() {
    union(){
        
        translate([0,0,50])
        sphere(30);
            
        //translate([30,0, 0])
        //cylinder(h=50, r=5);
    //        
    //    translate([0,30, 0])
    //    cylinder(h=50, r=5);
            
        //translate([-30,0, 0])
        //cylinder(h=50, r=5);
            
    //    translate([0,-30, 0])
    //    cylinder(h=50, r=5);

        translate([0,0,0])
        cylinder(h=50, r=30);

        translate([30,0, 25])
        cube(30,center=true);
        

       
    }

    translate([-25,0,35])
    resize([30,50,30])
    sphere(30);
}