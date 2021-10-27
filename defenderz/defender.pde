class defender {
  int xPos;
  int yPos;
  boolean crashed;
  color colour;
  int colX;
  int colYTop;
  int colYBot;

  defender(int x, int y) {
    this.xPos = x;
    this.yPos = y;
  }

  void render() {
    fill(0, 0, 200);
    rect(xPos, yPos, 20, 10); //draw top box
    fill(255, 0, 0); //draw rocket
    rect(xPos, yPos+10, 50, 20);
    triangle(xPos+50, yPos+10, xPos+50, yPos+30, xPos+60, yPos+20);
  }

  void move(int m) {
    yPos = yPos + m; // move defender up/down
  }
boolean checkCrash() {
    for (int i = 0; i < 30; i++) { //line down front of ship
      //stroke(255, 255, 0);
      //point(xPos + 65, yPos +i);
      //stroke(0);

      colour = get(xPos+65, yPos + i); //compare colour to alien
        if (colour == alien1.alienBody) {
          return true;
        }
    }
    return false;
  }

  void crash() {
    crashed = true;
  }

  void updateHitbox() {
    colX = xPos + 60;
    colYTop = yPos;
    colYBot = yPos + 30;
  }

  void update() {
    render();
    //println(colour);
    //updateHitbox();
    //checkCrash();
    if(checkCrash()){
      crash();
   
  }
}
}
