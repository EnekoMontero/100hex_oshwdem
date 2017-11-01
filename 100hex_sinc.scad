union(){
    difference(){
        cylinder(h=2,r=60,$fn=6);
        cylinder(h=2,r=60-4,$fn=6);
    }
translate([-57,-0.4,0])
    cube ([114,0.8,2]);
y = 50;
translate([0,-0.4,0])
    cube([0.8,y,2]);
for(i=[-18:18]){
    y = 2500*sin(17*3.14*i)/(17*3.14*i);
    translate([3.14*i,y,0])
        cylinder(2,r=1,$fn=100);
    if(y>0)
        translate([3.14*i-0.4,0,0])
            cube([0.8,y,2]);
    else
        translate([3.14*i-0.4,y,0])
            cube([0.8,-y,2]);
    
}
}
    