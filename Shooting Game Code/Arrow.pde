class Arrow{
  float ax, ay, mx, my, angle, angle2;
  Arrow(float x, float y){
    this.ax = x;
    this.ay = y;
  }


void update(){
  drawbow();
}

void drawbow(){
  pushMatrix();
  translate(725, 650);
  rotate(0.15);
  if (mousePressed){
  fill(#671227);
  arc(30, 0, 225, 450, PI/2, PI*3/2);
  fill(#08A719);
  arc(30, 0, 175, 400, PI/2, PI*3/2);
  strokeWeight(2);
  line(30, -215, 30, 215);
  strokeWeight(1);//draws drawn bow
  } else{
  fill(#671227);
  arc(0, 0, 200, 500, PI/2, PI*3/2);
  fill(#08A719);
  arc(0, 0, 150, 450, PI/2, PI*3/2);
  strokeWeight(2);
  line(0, -230, 0, 230);
  strokeWeight(1);
  }
  popMatrix();//draws undrawn bow
}
void drawarrow(){
  translate(ax, ay);
  angle = atan((ay - mouseY)/(ax - mouseX));
  pushMatrix();
  rotate(angle);
  strokeWeight(8);
  line(0, 0, -175, 0);
  strokeWeight(1);
  popMatrix();
}


void release(){
    angle = atan((ay - my)/(ax - mx));
    ax -= cos(angle);
    ay -= sin(angle);
    pushMatrix();
    translate(ax, ay);
    rotate(angle);
    strokeWeight(8);
    line(0, 0, -175, 0);
    strokeWeight(1);
    popMatrix();
}
}
