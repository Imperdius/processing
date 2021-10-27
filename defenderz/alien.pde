class alien {
  int xPos;
  int yPos;
  color alienHead = color(0, 255, 0);
  color alienBody = color(50, 100, 0);
  int count = 0;
  int colXLeft;
  int colXRight;
  int colYTop;
  int colYBot;

  alien(int x, int y) {
    this.xPos = x;
    this.yPos = y;
  }

  void render() {
    fill(alienBody);
    ellipse(xPos, yPos, 30, 30); //render body
    fill(alienHead);
    ellipse(xPos, yPos, 50, 15); //render head
  }

  void move() {
    xPos -= 3; // move left
    count += 1;
    if (count % 2 == 0) { // every other frame
      int r = int(random(-10, 10)); 
      yPos += r; //move randomly up to 10 pixels up/down
    }
  }

  void checkEdge() {
    if (xPos < 1) {
      xPos = 800; //loop aliens back to right side of screen
    }
    if (yPos < 0) {
      yPos += 20;//bump alien down if it reaches top
    } else if (yPos > 400) {
      yPos -= 20;//bump alien up if it reaches bottom
    }
  }

  void checkCollision() {
    //update hitbox
    colXLeft = xPos - 25;
    colXRight = xPos + 25;
    colYTop = yPos - 15;
    colYBot = yPos + 15;
    if (player.colX > colXLeft && player.colX < colXRight) {
      if ((player.colYTop < colYBot && player.colYTop > colYTop) || (player.colYBot < colYBot && player.colYBot > colYTop)){
        player.crash();
      }
    }
  }

  void update() {
    if (player.crashed == false) {
      move();
      checkEdge();
      //checkCollision();
    }
    render();
  }
}
