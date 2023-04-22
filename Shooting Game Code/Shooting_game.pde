void setup(){
  size(800, 800);
}
Arrow a = new Arrow(760, 620);
Target t = new Target(400, 200);
boolean flying = false;
int hits = 0;
void draw(){
  scene();
  a.drawbow();
  hit();
  t.update();
  fill(#F50C2B);
  textSize(50);
  text(("Number of Hits:" + hits), 50, 750);
  mousemovement();
  boundaries();
  if(flying==true){
    a.release();
  }


}

void scene(){
  fill(#1699D8);
  rect(0, 0, 800, 400);
  fill(#08A719);
  rect(0, 400, 800, 800);
}
void mouseReleased(){
  //switches flying to true, causing the arrow to "release"
  //saves the position of the mouse
  if(flying == false){
  flying = true;
  a.my = mouseY;
  a.mx=mouseX;
  }
}
void mousemovement(){
  //draws a new arrow if the mouse is being pressed and an arrow isn't currently flying
  if((mousePressed)&&(flying==false)){
    a.drawarrow();
  }
}
void boundaries(){
  //arrow stops flying when going off the screen
  if((a.ay<=0) || (a.ay>=800) || (a.ax<=0) || (a.ax>=800)){
    flying = false;
    a.ax = 800;
    a.ay = 800;
    a.ax2 = 760;
    a.ay2 = 620;
  }
}

void hit(){
  //checks for if the arrow hit the target and resets it
  if(t.hit==true){
    flying = false;
    a.ax = 800;
    a.ay = 800;
    a.ax2 = 760;
    a.ay2 = 620;
    hits = hits + 1;
  }
}

  
