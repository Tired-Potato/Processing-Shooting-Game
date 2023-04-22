// ---Class Attributes---
class Target {
  float tx, ty;
  float xvel = 2;
  double distance;
  boolean hit;
// ---Class Constructor---
  Target(float x, float y) {
    this.tx = x;
    this.ty = y;
  }

// ---Movement---
  void update() {
    hit = movebrokentarget();
    tx = tx + xvel; // Move target horizontally
    if(tx >= 725 || tx <= 75) { // If target hits edge of window, reverse direction
      xvel = -xvel;
    }
    
 
    
// ---Target---  
// Draw target
  fill(#FF3700);
  circle(tx,ty,150);
  fill(#FFFFFF);
  circle(tx,ty,100);
  fill(#FF3700);
  circle(tx,ty,50);
  fill(#F4F539);
  circle(tx,ty,20);
  strokeWeight(1);
  }
  
// ---Reset---
  double distance(float ax, float ay, float tx, float ty) { // Get rid of target
     distance = dist(ax, ay, tx, ty);
     return distance;
  }
  boolean movebrokentarget(){
    double distance = distance(a.ax, a.ay, tx, ty);
    if(distance<75){
      
      tx = random(100, 700);
      return true;
    } else return false;
  }
}
