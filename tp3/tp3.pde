https://youtu.be/MXj6mm4QVDQ


PImage miFoto;
color negro, gris1, gris2, gris3, gris4, blanco;
float angulo = 0;

void setup () {
  size (800, 400);
  miFoto = loadImage("FotoDelTP3.jpg");
  reiniciar();
}

void reiniciar() {

  negro = color(0);
  gris1 = color(130);
  gris2 = color(170);
  gris3 = color (110);
  gris4 = color (150);
  blanco = color(255);

  tam = 14;
  angulo = 0;
}

int calcularPosicion(int numero) {
  return numero * 18;
}

void draw () {
  background(199, 175, 133);
  image (miFoto, 0, 0, 400, 400);
  hacerGrilla();

  ////Cordenadas del Mouse
  //fill(255);
  //textSize(24);
  //text(mouseX + " / " + mouseY, mouseX, mouseY);
}

// evento del teclado
void keyPressed() {

  if (key == 'a' || key == 'A') {
    coloresRandom();
  }
  if (key == 'r' || key == 'R') {
    reiniciar();
  }
  if (key == 'q' || key == 'Q') {
    angulo -= 15;
  }
  if (key == 'e' || key == 'E') {
    angulo += 15;
  }
}
