PImage Imagen;
int tam;
int cant = 20; // cantidad total de celdas por columnas y filas;
int ancho, alto;

void setup() {
  size(800, 400);
   ancho = width;
  alto = height;
   Imagen = loadImage ("18.jpg");
}

void draw() {
  background(199, 175, 133);
  image(Imagen, 0, 0, 400, 400);
  tam = (width/2) /cant+1; 
  
  for (int i = 0; i < alto; i += tam) {
    for (int j = 400; j < ancho; j += tam) {

      noStroke();

      float dx = abs(j - 600);
      float dy = abs(i - 200);

      float dCuadrada = max(dx, dy);

      float reduccion = map(dCuadrada, 0, 200, 7, 3);

      if (dCuadrada < 30) {
        fill(0);       // Centro negro   
      } else if (dCuadrada >= 10 && dCuadrada < 40) {
        fill(80);
      }else if (dCuadrada >= 30 && dCuadrada < 70) {
        fill(150);     
      } else if (dCuadrada >= 60 && dCuadrada < 120) {
        fill(255);     
        } else if (dCuadrada >= 10 && dCuadrada < 140) {
        fill(180); 
      } else if (dCuadrada >= 100 && dCuadrada < 170) {
        fill(150);   
      } else {
        fill(20);      
      }

      // 
      float tamañoFinal = tam - reduccion;
      rect(j, i, tamañoFinal, tamañoFinal);
    }
  }
    //Cordenadas Del Mousse
  fill(58,178,0);
  textSize(24);
  text(mouseX + " / " + mouseY, mouseX, mouseY);
}
void keyPressed(){  
  //Evento para reiniciar la obra
  if(key == 'r' || key == 'R'){
   cant= 20;
   tam = (width/2) /cant+1;  }
  
  if (key == 'a' || key == 'A'){
    cant= cant+2;
    tam++;}
    if (key == 'd' || key == 'D'){
    cant= cant-2;
    tam--;}
}
