PImage background; 
int bgX=0; //global variable background location
alien alien1;
alien alien2;
alien alien3;
defender player;
rocket rocket;

void setup() {
  size(800, 400);
  background = loadImage("spaceBackground.jpg");
  background.resize(width, height); //set image to be same size as the canvas
  alien1 = new alien(750, 100);
  alien2 = new alien(700, 200);
  alien3 = new alien(650, 300);
  rocket = new rocket();
  player = new defender(100, 200);
}

void draw ()
{
  drawBackground();//renders background image
  alien1.update();
  alien2.update();
  alien3.update();
  player.update();
  rocket.update();
  showScore();
}

void showScore() {
  textSize(24);
  text("Score: " + str(rocket.score), 10, 40); //render score
}

void keyPressed() {
  if (key == CODED) {
    if ( player.crashed == false) {
      if (keyCode == UP) { // test for up movement
        if (player.yPos > 5) { //check of not off top
          player.move(-10);
        }
      } else if (keyCode == DOWN) { // test for down movement
        if (player.yPos < 370) { // check if not off bottom
          player.move(10);
        }
      }
    }
  } else if (key == 'f') {
    if ( player.crashed == false) {//check if game still running
      if (rocket.firing == false) {//check if a raocket is already being fired
        if (rocket.cooldown < 0) {//check if another rocket is read
          rocket.fire();
          //println("firing");
        }
      }
    }
  }
}

void drawBackground() {
  if ( player.crashed == false) { //check if game sitll running
    image(background, bgX, 0);
    image(background, bgX+background.width, 0);    
    bgX = bgX- 4;
    if (bgX == -background.width) //if first image completely off the canvas
    {
      bgX=0; //reset back to initial value background
    }
  }
}
