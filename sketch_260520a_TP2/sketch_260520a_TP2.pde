int pantalla = 0;
int tiempoCambio;
PImage img1, img2, img3, img4, img5;
float textoY;

void setup() {
size(640, 480);

 img1 = loadImage("foto1.jpg");
 img2 = loadImage("foto2.jpg");
 img3 = loadImage("foto3.jpg");
 img4 = loadImage("foto4.jpg");
 img5 = loadImage("foto5.jpg");

  tiempoCambio = millis();
  textSize(12);
  fill(255);
  textoY = height + 40; 
}

void draw() {
background(0);

 if (millis() - tiempoCambio > 8000) {
    pantalla++;
    tiempoCambio = millis();
    textoY = height + 50; 
  }


 if (pantalla > 4) {
    mostrarBoton();
    return;
  }

  
 if (pantalla == 0) {
    mostrarPantalla(img1, "The Last of us comienza con Joel perdiendo a su hija por un brote que transforma a las personas");
  } else if (pantalla == 1) {
    mostrarPantalla(img2, "Pasan los años y vemos como este mundo se ve destruido por todo lo succedido y como Joel esta perdido en la vida");
  } else if (pantalla == 2) {
    mostrarPantalla(img3, "Su amiga que pertenece a un grupo de sobrevivientes le pide que lleve a Ellie a otra zona sin darle muchos detalles");
  } else if (pantalla == 3) {
    mostrarPantalla(img4, "Joel y Ellie empiezan a tener una relacion más de padre e hija y el descubre que ella es inmune al virus");
  } else if (pantalla == 4) {
    mostrarPantalla(img5, "Llegan con el grupo y descubre que para salvar al mundo deben sacrificar a Ellie y tiene que decidir si salvarla o no");
  }
}

void mostrarPantalla(PImage img, String mensaje) {
  if (img != null) {
    image(img, 0, 0, width, height);
  } 
    
animarTexto(mensaje);
} 

void animarTexto(String mensaje) {
  if (textoY > height/2) {
    textoY -= 4; 
  }
  text(mensaje, width/2 - textWidth(mensaje)/2, textoY);
}

void mostrarBoton() {
  fill(200, 0, 0);
  rect(width/2 - 50, height/2 - 25, 100, 50);
  fill(255);
  textSize(20);
  text("Reiniciar", width/2 - 40, height/2 + 5);
}


void mousePressed() {
  if (pantalla > 4) {
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 &&
        mouseY > height/2 - 25 && mouseY < height/2 + 25) {
      pantalla = 0;
      tiempoCambio = millis();
      textoY = height + 50; 
    }
  }
}
