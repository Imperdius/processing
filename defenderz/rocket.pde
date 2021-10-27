class rocket {
  int xPos = 100;
  int yPos;
  int xSpeed = 12;
  int cooldown;
  boolean firing;
  color colour;
  int alien1Diff;
  int alien2Diff;
  int alien3Diff;
  int score;

  void render() {
    fill(255, 0, 0);
    rect(xPos, yPos, 30, 15);//draw rocket
  }

  void move() {
    xPos += xSpeed;//move rocket right
  }

  void fire() {
    cooldown = 240;//3 seconds
    firing = true;//a rocket is currently on screen
    xPos = 100;
    yPos = player.yPos;//spawn rocket at player position
  }

  void checkEnd() {
    if (xPos > 800) {
      firing = false;//rocket no longer on screen
    }
  }

  boolean checkCrash() {
    for (int i = 0; i < 15; i++) { //line down front of ship
      //stroke(255, 255, 0);
      //point(xPos + 65, yPos +i);
      //stroke(0);

      colour = get(xPos+32, yPos + i); //compare colour to alien
      if (colour == alien1.alienBody) {
        return true;
      }
    }
    return false;
  }


  void update() {
    if (firing == true) {//checks if rocket is on screen
      render();
      checkEnd();
      move();
      if (checkCrash() == true) {//on hit
        destroyClosestAlien();
        xPos = 800;//moves of screen
        cooldown = 0;//reset cooldown
        score +=1;
      }
    }
    cooldown -= 1;
  }

  void destroyClosestAlien() {//find and destroy closest alien
    alien1Diff = abs(yPos - alien1.yPos);
    alien2Diff = abs(yPos - alien2.yPos);
    alien3Diff = abs(yPos - alien3.yPos);

    if (alien1Diff < alien2Diff) {
      if (alien1Diff < alien3Diff) {
        alien1.xPos += 900;
      } else {
        alien3.xPos += 900;
      }
    } else if (alien2Diff < alien3Diff) {
      alien2.xPos += 900;
    }else{
      alien3.xPos += 900;
    }
  }
}
