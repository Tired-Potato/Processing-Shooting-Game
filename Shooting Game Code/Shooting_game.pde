void setup(){
  size(800, 800);
}
Arrow a = new Arrow(760, 620);
Target t = new Target(400, 400);
boolean flying = false;
boolean hold = false;
boolean held = false;
void draw(){
  scene();
  a.update();
  t.update();
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
  if(flying == false){
  flying = true;
  a.my = mouseY;
  a.mx=mouseX;
  }
  
  //if (mousePressed){
  //  hold = true;
  //  held = true;
  //} else{
  //hold = false;
  //}
  //if ((hold==false)&&(held==true)){
  //  a.mx = mouseX;
  //  a.my = mouseY;
  //  flying = true;
  //}
}
void mousemovement(){
  if((mousePressed)&&(flying==false)){
    a.drawarrow();
  }
}
void boundaries(){
  //if((a.ay<=0) || (a.ax==t.tx)){
  //  flying = false;
  //  held = false;
  //}
}

  
