class Arrow{
  float ax, ay, mx, my, angle;
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
  strokeWeight(1);
  } else{
  fill(#671227);
  arc(0, 0, 200, 500, PI/2, PI*3/2);
  fill(#08A719);
  arc(0, 0, 150, 450, PI/2, PI*3/2);
  strokeWeight(2);
  line(0, -230, 0, 230);
  strokeWeight(1);
  }
  popMatrix();
}
void drawarrow(){
  strokeWeight(8);
  line(ax, ay, ax+175, ay);
  strokeWeight(1);
}


void release(){
    mx = mouseX;
    my = mouseY;
    angle = atan2((ay - mx),(ax - my));
    ax -= cos(angle)/10;
    ay -= sin(angle)/10;
    pushMatrix();
    translate(ax, ay);
    rotate(angle);
    drawarrow();
    popMatrix();
}
}
