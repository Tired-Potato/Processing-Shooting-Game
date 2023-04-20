// ---Class Attributes---
class Target {
  float tx, ty;
  float xvel = 2;
  
// ---Class Constructor---
  Target(float x, float y) {
    this.tx = x;
    this.ty = y;
  }

// ---Movement---
  void update() {
    
    tx = tx + xvel; // Move target horizontally
    if(tx >= 675 || tx <= 125) { // If target hits edge of window, reverse direction
      xvel = -xvel;
    }
    
    //if(shot == true) {   // If target is shot, get rid of target
   //   this.destroy();
  //  }
    
// ---Target---    
  noStroke(); // Draw target
  fill(#FF3700);
  circle(tx,ty,250);
  fill(#FFFFFF);
  circle(tx,ty,200);
  fill(#FF3700);
  circle(tx,ty,150);
  fill(#FFFFFF);
  circle(tx,ty,100);
  fill(#FF3700);
  circle(tx,ty,50);
  fill(#F4F539);
  circle(tx,ty,20);
  }
  
// ---Reset---
  void destroy() { // Get rid of target
     
  }
}
