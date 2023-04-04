class Target {
  float x, y;
  
// ---Class Constructor---
  Target(float x, float y) {
    this.x = x; 
    this.x = x;
  }

// ---Movement---
  void update() {
    
    x = x + 2; // Move target horizontally
    if(x >= 600-62.5 || x <= 62.5) { // If target hits edge of window, reverse direction
      x = x*-1;
    }
    
    if(shot == true) {   // If target is shot, get rid of target
      this.destroy();
    }
    
// ---Target---    
    noStroke(); // Draw target
  fill(#FF3700);
  circle(x,y,125);
  fill(#FFFFFF);
  circle(x,y,100);
  fill(#FF3700);
  circle(x,y,75);
  fill(#FFFFFF);
  circle(x,y,50);
  fill(#FF3700);
  circle(x,y,25);
  }
  
// ---Reset---
  void destroy() { // Get rid of target
     
  }
}
