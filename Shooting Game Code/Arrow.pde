class Arrow{
  float ax, ay, ax2, ay2, mx, my, angle;
  Arrow(float x, float y){
    this.ax2 = x;
    this.ay2 = y;
  }


void drawbow(){
  pushMatrix();
  translate(725, 650);
  rotate(0.15);
  if (mousePressed){
  //draws drawn bow
  fill(#671227);
  arc(30, 0, 225, 450, PI/2, PI*3/2);
  fill(#08A719);
  arc(30, 0, 175, 400, PI/2, PI*3/2);
  strokeWeight(2);
  line(30, -215, 30, 215);
  strokeWeight(1);
  } else{
  //draws undrawn bow
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
  //draws the arrow facing in the direction of the mouse
  angle = atan((ax2 - mouseX)/(ay2 - mouseY));
  ax = ax2-sin(angle)*175;
  ay = ay2-cos(angle)*175;
  fill(0);
  strokeWeight(8);
  line(ax2, ay2, ax, ay);
  strokeWeight(1);
}


void release(){
    //moves arrow in the direction of the mouse
    ax -= sin(angle)*5;
    ay -= cos(angle)*5;
    ax2 -= sin(angle)*5;
    ay2 -= cos(angle)*5;
    strokeWeight(8);
    line(ax2, ay2, ax, ay);
    strokeWeight(1);
}
}
