class tank {
  int xpos;
  int ypos;
  int xvelocity = -5;
  int yvelocity = -5;
  int direction = 0;
  PImage topLeft, topRight, bottomLeft, bottomRight;  

  tank(int x, int y) {
    this.xpos = x;
    this.ypos = y;
    this.topLeft = loadImage("tank1.png"); //set a naem for each image
    this.topRight = loadImage("tank2.png");
    this.bottomLeft = loadImage("tank4.png");
    this.bottomRight = loadImage("tank3.png");
  }
  void render() {
    switch(direction) { // render correct image based on direction
    case 0:
      image(topLeft, xpos, ypos);
      break;
    case 1:
      image(topRight, xpos, ypos);
      break;
    case 2:
      image(bottomLeft, xpos, ypos);
      break;
    case 3:
      image(bottomRight, xpos, ypos);
      break;
    }
  }
  void move() {
    xpos += xvelocity; //moves instance based off velocity
    ypos += yvelocity;
  }
  void setDirection() { //uses valeocity to work out direction for render
    if (yvelocity > 0) {
      if (xvelocity > 0) {
        direction = 3;
      } else {
        direction = 2;
      }
    } else {
      if (xvelocity > 0) {
        direction = 1;
      } else {
        direction = 0;
      }
    }
  }
    void checkCollisions() { 
    if (xpos >= 475 ) { //checks for collision off of edges
      xpos -= 7; //moves away to prevent getting stuck
      yvelocity -= 1;
      xvelocity = -xvelocity;//swaps direction
    }
    if(xpos <= 0){
      yvelocity += 1;
      xpos += 7; 
      xvelocity = -xvelocity;
    }
    if (ypos >= 475 || ypos <= 0 ) { //checks for bouncing off of top and bottom
      xvelocity += 1;
      yvelocity = -yvelocity;
    }
    }
   // if(ypos >= 0){
   //   ypos -= 7;
   //   yvelocity = -yvelocity;
   //}

  void update() {
    checkCollisions();
    setDirection();
    move();
    render();
  }

}
