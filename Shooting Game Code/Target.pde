class Target {
  float tx, ty;
  
// ---Class Constructor---
  Target(float ty) {
    this.ty = ty;
  }

// ---Movement---
  void update() {
    
    tx = tx + 2; // Move target horizontally
    if(tx >= 800-62.5 || tx <= 62.5) { // If target hits edge of window, reverse direction
      tx = tx*-1;
    }
    
    //if(shot == true) {   // If target is shot, get rid of target
   //   this.destroy();
  //  }
    
// ---Target---    
  noStroke(); // Draw target
  fill(#FF3700);
  circle(tx,ty,125);
  fill(#FFFFFF);
  circle(tx,ty,100);
  fill(#FF3700);
  circle(tx,ty,75);
  fill(#FFFFFF);
  circle(tx,ty,50);
  fill(#FF3700);
  circle(tx,ty,25);
  }
  
// ---Reset---
  void destroy() { // Get rid of target
     
  }
}
