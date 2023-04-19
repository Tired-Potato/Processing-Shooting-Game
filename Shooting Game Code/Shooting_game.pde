void setup(){
  size(800, 800);
}
Arrow a = new Arrow(760, 620);
Target t = new Target(400, 400);
boolean flying = false;
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
  if(flying==false){
    a.release();
    
  }
}
void mousemovement(){
  if(mousePressed){
    a.drawarrow();
  }
}
void boundaries(){
  if((a.ay<=0) || (a.ax==t.tx)){
    flying = false;
  }
}
