void hacerGrilla() {
  pushMatrix();

  // Centro de la grilla de la derecha
  translate(601, 204);
  rotate(radians(angulo));
  translate(-601, -204);

  pintar(402, 5, 1);
  pintar(602, 5, 2);
  pintar(402, 204, 3);
  pintar(602, 204, 4);

  popMatrix();
}

// colores "a"
void coloresRandom() {

  negro = color(random(256), random(256), random(256));
  gris1 = color(random(256), random(256), random(256));
  gris2 = color(random(256), random(256), random(256));
  gris3 = color(random(256), random(256), random(256));
  gris4 = color(random(256), random(256), random(256));
  blanco = color(random(256), random(256), random(256));
}
