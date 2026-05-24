//* Alumno = Lujan Ailin Samudio
// Comision = C2
//Trabajo Practico N2
      
      //Variebles //

PImage fondo, fondo2, fondo3, fondo4,fondo5, lapida,lapidafin, shaggy, daphne, fred, velma, objeto1, objeto2, objeto3, objeto4, fantasma, perro1, perro2, perro3,velma2,daphne2,bus;
int pantalla2, opacidad, opacidadRect, opacidad2;
float tiempo,tiempo2, Xperro = -200, Ytitulo = -100, ycuadrado = 480, xshaggy = -200, xvelma = 700, xdaphne = 700, xfred = 700, Xvelma = -300, Xdaphne = 700;
PFont fuentemiedo,fuente_texto;


 void setup(){
  size(640,480);
  background (100);
  
// Imagenes 
  fondo = loadImage("castillofondo.png");
  lapida = loadImage ("Comenzar.png");
  perro1 = loadImage ("Scooby1.png");
  fondo2 = loadImage ("castillo2.png");
  shaggy = loadImage("Shaggymiedo.png");
  daphne = loadImage ("daphne.png");
  fred = loadImage ("fred.png");
  velma = loadImage ("velma.png");
  fondo3 = loadImage ("pantalla3.png");
  objeto1 = loadImage ("Objeto1.png");
  objeto2 = loadImage ("Objeto2.png");
  objeto3 = loadImage ("Objeto3.png");
  objeto4 = loadImage ("Objeto4.png");
  fantasma = loadImage ("fantasma.png");
  perro2 = loadImage ("Scooby5.png");
  perro3 = loadImage ("Scooby2.png");
  fondo4 = loadImage ("Fondo4.png");
  velma2 = loadImage ("finalvelma.png");
  daphne2 = loadImage ("finaldaphne.png");
  fondo5 = loadImage ("Fondo5.png");
  bus = loadImage ("bustodos.png");
  lapidafin = loadImage ("lapida2.png");
  
  pantalla2 = 0;
  opacidad = 0;
  opacidadRect = 150;
  opacidad2 = 0;
  
  
// Fuentes
  fuente_texto = createFont ("SpookyMother.otf",40);
  fuentemiedo = createFont ("RW-creepsville.ttf",40);
}

 void draw() {
 
// PRIMERA PANTALLA //

 image (fondo, 0, 0, 640, 480);
 image (lapida, 480, 370, 120,120);
 
  // Scooby en movimiento
 image (perro1, Xperro ,280,200,200);
   if (Xperro < 50){
     Xperro = Xperro +10;
   }
   
   //Titulo con animacion
 textFont(fuentemiedo);
 text("Scooby-Doo y el \nCastillo Tenebroso", 40, Ytitulo);
   if (Ytitulo < 70){
     Ytitulo = Ytitulo +8;
   }
 

// SEGUNDA PANTALLA //

  if (pantalla2 == 1){
    image (fondo2, 0, 0, 640, 480);
   
 
   // rectangulo con movimiento
   noStroke();
    fill (0,0,0, opacidadRect);
    rect (90, ycuadrado , 480, 200);
      if (ycuadrado > 370){
        ycuadrado = ycuadrado - 8;
    }
    
    // desaparece 
    if (millis() - tiempo >= 13000){
     if (opacidadRect > 0){
     opacidadRect = opacidadRect -5;
     } 
    }

  // TEXTO 
  
   //fuente
 textFont (fuente_texto);
 fill (255, opacidad);
 textSize (20);
 text("Scooby-Doo y el Castillo Espeluznante es un juego de\napuntar y hacer clic en línea. En la historia, Fred, Daphne\ny Velma fueron secuestrados por el fantasma de un rey\ndentro de un castillo embrujado.\nScooby se ofrece a rescatarlos mientras Shaggy se queda\nafuera cuidando la Máquina del Misterio.",100,390); 
  
   //animacion del texto
   
      //aparecer
   if ( millis() - tiempo < 1000){
    if (opacidad < 255){
     opacidad = opacidad + 10;
    }
   }
     //desaparecer
  if (millis() - tiempo >=  13000){
   if (opacidad > 0){
     opacidad = opacidad - 10;
    } 
   }
  
 
  // Imagenes de los personajes con movimiento
  
  tint(255, opacidad);
  image (shaggy,xshaggy,100,200,290);
  noTint();
    if (xshaggy < 60){
     xshaggy = xshaggy + 10;
    }
 tint(255, opacidad);  
 image (velma,xvelma,150,100,200);
    if (xvelma > 540){
     xvelma = xvelma - 8;
   }
 image(daphne,xdaphne,140,120,180);
   if (xdaphne > 420){
    xdaphne = xdaphne - 8 ; 
   }
 image (fred,xfred,150,150,260);
   if (xfred > 460){
    xfred = xfred - 8; 
   }
 noTint();
 
 if (opacidadRect <= 0){
  pantalla2 = 2;
  opacidad = 0;
  tiempo2 = millis();
  
 }
}
 
 // TERCERA PANTALLA // 
 
   if (pantalla2 == 2){
    image(fondo3, 0, 0, 640, 480);
    
   //Objetos
  image (objeto1,40,400,100,100);
  image (objeto2,170,400,90,90);
  image (objeto3, 280,410,80,80);
  image (objeto4, 400, 420, 70, 70);
  
  // Scooby en movimiento 
  image (perro2,Xperro,130,200,200);
      if (Xperro < 700){
      Xperro = Xperro + 2;
      }
    
    //Primer texto
    textFont (fuente_texto);
    fill (255,opacidad);
    textSize(20);
    text ("El jugador debe ayudar a Scooby a avanzar por el castillo\nrecolectando objetos y utilizándolos para bloquear al\nfantasma o superar distintos obstáculos, como agujeros y\ntrampas. También habrá objetos del entorno con los que se\npodrá interactuar para curarse.", 70,350);
   
    // aparece 1er el texto 
    if ( millis() - tiempo2 < 1000){
     if (opacidad < 255){
     opacidad = opacidad + 10;
     }
    }
    
    //desaparece el 1er texto 
     if (millis() - tiempo2 >=  14000){
      if (opacidad > 0) {
      opacidad = opacidad - 10;
      } 
     }
   
   // segundo texto
   fill (255, opacidad2);
   textSize (20);
   text ("Scooby cuenta con tres vidas y un medidor de miedo. Cada vez\nque se asusta, el medidor aumenta, si llega al máximo, Scooby\nsaldrá corriendo del castillo y el jugador perderá una vida.", 70, 370);
  
   //aparece el 1er texto 
   if (millis() - tiempo2 >= 15000 && millis() - tiempo2 < 25000){
     if (opacidad2 < 255){
     opacidad2 = opacidad2 + 10;
     }
   }
   
    //desaparece 2do 
     if (millis() - tiempo2 >= 18000){
      if (opacidad2 > 0) {
        opacidad2 = opacidad2 - 10;
      } 
     }
     
   // Images perro y fantasma
    tint (255, opacidad2); 
    image (perro3, 150, 150, 180, 180);
    image (fantasma,350,120,200,200);
    noTint();
     
   //flecha
    stroke(255,opacidad2);
    strokeWeight(5);

    // linea 
  line(80, 270, 120, 270);
    // punta 
  line(80, 270, 95,255);
  line(80, 270, 95,285);
  
    //cruz  
  line(100, 10, 140, 60);
  line(100, 60, 140, 10);

 if(millis () - tiempo2 >= 22000 && opacidad2 <= 0){
  pantalla2 = 3; 
  ycuadrado = 480;
  opacidadRect = 150;
  opacidad = 0;
  tiempo2 = millis ();
 }
}

  // ANTEULTIMA PANTALLA//
  
  if (pantalla2 == 3){
   image(fondo4, 0, 0, 640, 480);
   
   // velma y daphne
   image (velma2,Xvelma,220,250,250);
   image(daphne2, Xdaphne, 200, 220, 200);
   
  // entrada
   if (millis() - tiempo2 < 10000){

   // Velma 
   if (Xvelma < 90){
      Xvelma = Xvelma +5;
   }
   // Daphne 
   if (Xdaphne > 300){
      Xdaphne = Xdaphne -5;
   }
}
  // salida
  if (millis() - tiempo2 >= 13000){
   Xvelma = Xvelma - 5;
   Xdaphne = Xdaphne + 5;
}
   //rectangulo 
    noStroke();
    fill (0,0,0, opacidadRect);
    rect (40, ycuadrado , 480, 200);
      if (ycuadrado > 390){
        ycuadrado = ycuadrado - 8;
      }
     if (millis() - tiempo2 >= 15000){
      if (opacidadRect > 0){
      opacidadRect = opacidadRect - 10;
     } 
    }
   
   //Texto y fuente
     fill (255,opacidad);
     textFont (fuente_texto);
     textSize (20);
     text ("El juego cuenta con 3 niveles. En los primeros dos, el\njugador debe rescatar a Velma y Daphne. Al llegar al último\nnivel, donde debe rescatar a Fred, Scooby logra capturar\nal fantasma, poniendo fin al juego.", 45,410);
      if (millis () - tiempo2 < 1000){
        if (opacidad < 255){
         opacidad = opacidad + 10;
        }
      }
      if (millis () - tiempo2 >= 13000){
       if (opacidad > 0) {
        opacidad = opacidad  - 10; 
       }
      }
    if (millis() - tiempo2 >= 18000){
       pantalla2 = 4;
      }
  }
  // ULTIMA PANTALLA //
  if (pantalla2==4){
   image (fondo5,0,0,640,480);
   fill (255);
   textFont(fuentemiedo);
   textSize(40);
   text("FIN DEL JUEGO",180,240);
   image(bus,100,300,200,200);
   
   image (lapidafin,480,370,120,120);
   
  }
}

 void mousePressed(){ 
    
  // BOTON COMENZAR
  if (pantalla2 == 0 && mouseX > 490 && mouseX < 590 && mouseY > 370 && mouseY < 480){
    pantalla2 = 1;
    tiempo = millis();
  }

  // BOTON REINTENTAR
  if (pantalla2 == 4 && mouseX > 480 && mouseX < 600 && mouseY > 370 && mouseY < 480){
    
    // volver al inicio
    pantalla2 = 0;
    // reiniciar tiempos
    tiempo = 0;
    tiempo2 = 0;

    // reiniciar opacidades
    opacidad = 0;
    opacidad2 = 0;
    opacidadRect = 150;

    // reiniciar posiciones
    Xperro = -200;
    Ytitulo = -100;
    xshaggy = -200;
    xvelma = 700;
    xdaphne = 700;
    xfred = 700;
    Xvelma = -300;
    Xdaphne = 700;
    ycuadrado = 480;
  }
}
 
  
