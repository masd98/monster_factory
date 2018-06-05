
void drawForInicio() {
  surface.setSize(500, 500);
  image(i_inicio, 0, 0);
}

void drawForStateMenu() {
  surface.setSize(500, 700);
  image(i_menu, 0, 0);  
  pushStyle();
  strokeWeight(10);
  fill(225, 225, 225, transparencia);
  rect(50, 150, 400, 150, 7); 
  fill(225, 225, 225, transparencia2);
  rect(50, 500, 400, 150, 7);
  popStyle();  
  fill(0, 204, 0);
  textSize(50);
  textAlign(CENTER);
  text("LAB", 250, 250);
  text("BOSQUE", 250, 600);

  if (mouseX>50&&mouseX<450&&mouseY>150&&mouseY<300) {
    transparencia=255;
  } else if (mouseX>50&&mouseX<450&&mouseY>500&&mouseY<650) {
    transparencia2=255;
  } else {
    transparencia2=100;
    transparencia=100;
  }
}



void drawForForest() {
  surface.setSize(1000, 500);
  image(i_bosque, 0, 0);
  monst.display();
  image(i_bosque2, 0, 0);
}

void drawForLab() {
  surface.setSize(500, 500);
  image(i_lab, 0, 0);  
  text("h para ayuda.", 250, height-20);

  selcol();
  monst.pos(500);
  if (value==1) {
    monst.display();
  }
  if (keyPressed) {
    if (key == 'h' || key == 'H') {
      pushStyle();
      strokeWeight(10);
      fill(225, 225, 225);
      rect(50, 50, 400, 400, 7); 
      image(instrucciones, 55, 55,390,390);
          
      popStyle();
    }
  }
}

void drawForStateHelp() {
  text("the help...", 200, 100);
}
