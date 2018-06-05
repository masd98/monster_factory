PImage i_inicio ;
PImage i_menu ;
PImage i_bosque ;
PImage i_bosque2 ;
PImage i_lab ;
PImage instrucciones;
int transparencia=100;
int transparencia2=100;
int state = 2;

float i;
int contador=0;
PVector vector = new PVector(250, 200);
int value=0;
int tecla=0;
boolean estado=false;
int color_sel=0;
int imgs=1;
color col;
PImage img;

float incr1=0.023;
float incr2;

Cuerpo monst= new Cuerpo();

void setup()
{
  size(800, 600);
  i_inicio= loadImage("backgrounds/inicio2.png");
  i_menu = loadImage("backgrounds/menu.png");
  i_bosque= loadImage("backgrounds/bosque1.png");
  i_bosque2 = loadImage("backgrounds/bosque2.png");  
  i_lab = loadImage("backgrounds/lab1.png");
  instrucciones = loadImage("intrucciones.png");
} 
void draw() 
{ 
  background(255);
  fill(0);
  stroke(0);
  textSize(22);


  switch(state) {

  case 1:
    drawForStateMenu();
    break; 
  case 2:
    drawForInicio();
    break; 
  case 3:
    drawForStateHelp();
    break; 
  case 4:
    drawForForest();
    break;
  case 5:
    drawForLab();
    break;

  default:

    break;
  }
} 

void mousePressed() {  
  switch(state) {
  case 0:
    break;
  case 1:
    if (mouseX>50&&mouseX<450&&mouseY>150&&mouseY<300) {
      state = 5;
    } else if (mouseX>50&&mouseX<450&&mouseY>500&&mouseY<650) {
      state = 4;
    }
    break; 
  case 5:
    if (value==0) {
    vector.x=mouseX;
    vector.y=mouseY;
    //println(v1.x, v1.y);
  }
    break;
  }
}

void keyPressed() {
  // states: 
  switch(state) {
  case 4:

    if (keyCode==java.awt.event.KeyEvent.VK_F1) {
      // F1
      state =  3;
    } // if 
    else if (key == 'r') {
      state = 2;
    } else {
      //
    }
    break;
  case 2:
    // next state 
    state = 1;
    break; 
  case 3:
    // back to game 
    state = 4;
    break;  
  case 1:
    switch (key) {
    case '1' :
      state = 0;
      break;
    case '2' :
      state = 0;
      break;
    case 'x':
      exit();
      break;
    default :
      println ("unknown input");
      break;
    }
    break; 
  case 5:
    if (value == 0&& key=='b') {
      value = 1;
    } else {
      value = 0;
    }

    if (key==ENTER) {    
      estado=true;
    }

    if (key=='e'&&estado) {    
      tecla = tecla+1;
      contador=0;
      i=0;
      estado=false;
    }

    if (key=='+') {
      contador=contador+1;
    }  
    if (key=='-') {
      state=1;
    } 

    if (key == CODED) {
      if (keyCode == UP) {
        imgs=imgs+1;
        if (imgs>4)
          imgs=1;
        println(imgs);
      }
      if (keyCode == DOWN) {
        if (color_sel==3) {
          color_sel=0;
        } else {
          color_sel=color_sel+1;
        }
      }
    }
    break; 
  default:

    break;
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  i=i+(e*0.1);
  //println(i);
}



void selcol() {
  switch(color_sel) {
  case 0 :
    col=color(34, 177, 76);
    break;
  case 1 :
    col=color(255, 174, 201);
    break;
  case 2 :
    col=color(136, 0, 21);
    break;
  case 3 :
    col=color(0, 162, 232);
    break;
  }
}
