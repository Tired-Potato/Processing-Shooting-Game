void setup(){
  size(800, 800);
}
boolean newpress = false;
Arrow a = new Arrow(400, 400);
Target t = new Target(400, 400);
void draw(){
  scene();
  a.update();
  t.update();
}

void scene(){
  fill(#1699D8);
  rect(0, 0, 800, 400);
  fill(#08A719);
  rect(0, 400, 800, 800);
}
void mousePressed(){
  if((mousePressed)&&(newpress==true)){
    a.release();
    newpress = false;
  }
  if((a.ay<=0) || (a.ax==t.tx)){
    newpress = true;
  }
  
}
