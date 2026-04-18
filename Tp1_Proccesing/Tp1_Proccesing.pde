PImage MiImagen;
 
void setup (){
  MiImagen = loadImage("elreloj.jpg");
  size (800,400);
  noStroke();
}

void draw (){
  background(170, 210, 245);
  image(MiImagen, 0, 0, 400, 400);
  
// pasto y piso

  fill (56, 185, 87);
  rect (400,362,798,400);
  
  fill (234,156,83);
  rect (480, 362, 60, 60);
  rect (700, 362, 60, 60);
  
  fill (137, 134, 134);
  rect (400,362,80,60);
  rect (760,362,40,40);
  
// faroles

  fill(120, 90, 40);
  rect(720, 300, 5, 62);

  fill(255, 230, 150);
  circle(722, 300, 20);
  
  fill(120, 90, 40);
  rect(500, 300, 5, 62);

  fill(255, 230, 150);
  circle(502, 300, 20);
  
// torre

  fill (255);
  rect (570,300,80,62);
  
  fill (206,98,81);
  rect (575,157,72,143);

// torre punta

  stroke(167,227,183);
  strokeWeight(7);
  line(612, 50, 612, 80);
  strokeWeight(2);
  noStroke();
  
  fill (167,227,183);
  circle (612,90,44);
 
// torre parte 2
 
  fill (255);
  rect (580,110,64,47);
  rect (585,99,55,13);  
  rect (590,87,44,13);
  

//reloj y agujas

  fill (188, 180, 180);
  stroke (0);
  circle (612,134,40);
  
  strokeWeight(2);
  line(612,134,612,120); 
  line(612,134,625,134); 
  
  noStroke();
  
//ventana y puerta
  
  fill (188, 180, 180);
  rect (603,166,20,20);
  rect (603,200,20,20);
  rect (603,236,20,20);
  rect (603,270,20,20);
  
  rect (590,322,40,40);
  
}
