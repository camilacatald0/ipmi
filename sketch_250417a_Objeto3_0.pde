PImage objeto;

void setup(){
size(800, 400);

objeto= loadImage("Objeto.jpg");
}

void draw(){
background(255);
image(objeto, 0, 0, 400, 400);
print( mouseX + " / " + mouseY);
noStroke();
fill(#0F0001);
ellipse(600, 100, 130, 75);
fill(#DDF016);
triangle(530,80, 555, 25, 630,80);
triangle(550,80, 630,25, 670, 100);
triangle(600,60, 680, 40, 675,85);
triangle(650, 60, 710, 80, 650, 130);
triangle(560,60,500,50, 520,120);
triangle(540,70,480,105,540,120);
triangle(520,105,520, 150,575, 135);
triangle(570,165,550,130,610,140);
triangle(590,140,640,165,650,130);
triangle(620,130,680,145,680,105);
fill(#085510);
ellipse(600,230, 40,50);
triangle(585,244,540,185,610,210);
fill(#0F0001);
ellipse(600,100,150,75);
stroke(8,85,16);
strokeWeight(8);
line(400,0,400,400);
//fill(#085510);
line(600,140,600,400);

}

void mouseMoved(){
strokeWeight( 2);
line( mouseX, 0, mouseX, 400);
line(0, mouseX, 800, mouseX);
}
