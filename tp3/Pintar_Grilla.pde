int tam = 14;

//funcion que no retorna valor
void pintar(int posx, int posy, int cuadrante) {
  noStroke();
  
//recorre la fila y columna
  for (int fila = 0; fila < 11; fila++) { // Hacer La Grilla For Anidado
    for (int columna = 0; columna < 11; columna++) {

      
      int posX = posx + calcularPosicion(columna);
      int posY = posy + calcularPosicion(fila);

      float tamMouse = tam;
      
     //agrando los quads
      if (mousePressed) {
        float distancia = dist(mouseX, mouseY, posX, posY);
        tamMouse = map(distancia, 0, 250, tam + 6, tam);
      }



      // colores

      if (cuadrante == 1) {

        if (fila >= 9 && columna >= 9) {
          fill(negro);
        } else if ((fila >= 8 && fila <= 10) && (columna >= 8 && columna <= 10)) {
          fill(gris1);
        } else if ((fila >= 7 && fila <= 10) && (columna >= 7 && columna <= 10)) {
          fill(gris2);
        } else if (fila < 2 || columna < 2) {
          fill(negro);
        } else if (fila == 2 || columna == 2) {
          fill(gris3);
        } else if (fila == 3 || columna == 3) {
          fill(gris4);
        } else {
          fill(blanco);
        }
      } else if (cuadrante == 2) {

        if (fila >= 9 && columna <= 1) {
          fill(negro);
        } else if ((fila >= 8 && fila <= 10) && (columna >= 0 && columna <= 2)) {
          fill(gris1);
        } else if ((fila >= 7 && fila <= 10) && (columna >= 0 && columna <= 3)) {
          fill(gris2);
        } else if (fila < 2 || columna > 8) {
          fill(negro);
        } else if (fila == 2 || columna == 8) {
          fill(gris3);
        } else if (fila == 3 || columna == 7) {
          fill(gris4);
        } else {
          fill(blanco);
        }
      } else if (cuadrante == 3) {

        if (fila <= 1 && columna >= 9) {
          fill(negro);
        } else if ((fila >= 0 && fila <= 2) && (columna >= 8 && columna <= 10)) {
          fill(gris1);
        } else if ((fila >= 0 && fila <= 3) && (columna >= 7 && columna <= 10)) {
          fill(gris2);
        } else if (fila > 8 || columna < 2) {
          fill(negro);
        } else if (fila == 8 || columna == 2) {
          fill(gris3);
        } else if (fila == 7 || columna == 3) {
          fill(gris4);
        } else {
          fill(blanco);
        }
      } else if (cuadrante == 4) {

        if (fila <= 1 && columna <= 1) {
          fill(negro);
        } else if ((fila >= 0 && fila <= 2) && (columna >= 0 && columna <= 2)) {
          fill(gris1);
        } else if ((fila >= 0 && fila <= 3) && (columna >= 0 && columna <= 3)) {
          fill(gris2);
        } else if (fila > 8 || columna > 8) {
          fill(negro);
        } else if (fila == 8 || columna == 8) {
          fill(gris3);
        } else if (fila == 7 || columna == 7) {
          fill(gris4);
        } else {
          fill(blanco);
        }
      }


      //Quads de la grilla por cuadrantesa

      if (cuadrante == 1) { //Cuadrante Superior Izquierdo

        quad(
          posX, posY,
          posX + tamMouse, posY + 1,
          posX + tamMouse + 4, posY + tamMouse,
          posX + 5, posY + tamMouse - 1
          );
      } else if (cuadrante == 2) { //Cuadrante Superior Derecho

        quad(
          posX + 5, posY,
          posX + tamMouse + 4, posY + 1,
          posX + tamMouse, posY + tamMouse - 1,
          posX, posY + tamMouse
          );
      } else if (cuadrante == 3) { //Cuadrante Inferior Izquierdo

        quad(
          posX + 5, posY,
          posX + tamMouse + 4, posY + 1,
          posX + tamMouse, posY + tamMouse,
          posX, posY + tamMouse - 1
          );
      } else if (cuadrante == 4) { //Cuadrante Inferior Derecho

        quad(
          posX, posY,
          posX + tamMouse, posY + 1,
          posX + tamMouse + 4, posY + tamMouse,
          posX + 5, posY + tamMouse - 1
          );
      }
    }
  }
}
