float ballX = 500;
float ballY = 50;
float xVelocity = 10;
float yVelocity = 5;
float barX = 400;
float barY = 950;
float barLength = 200;
void setup(){
 size(1000, 1000); 
}

void draw(){
  background(255,255,255);
  ballX = findBallX(ballX, xVelocity);
  ballY = findBallY(ballY, yVelocity);
  int swap = checkBorders(ballX, ballY, barX, barLength);
  updateBall(ballX, ballY);
  updateBar(barX, barY, barLength);
  switch(swap){
    case 0:
      break;
    case 1:
      xVelocity = -xVelocity;
      yVelocity += random( -2, 3);
      break;
    case 2:
      yVelocity = -yVelocity;
      xVelocity += random (-1, 3);
      barLength -= 0.5;
      break;
    case 3:
      xVelocity = -xVelocity;
      yVelocity = -yVelocity;
      break;
  }
  checkFail(ballY);

}

float findBallX(float ballX, float xVelocity){
  ballX += xVelocity;
  return(ballX);
}

float findBallY(float ballY, float yVelocity){
  ballY += yVelocity;
  return(ballY);
}

int checkBorders(float ballX, float ballY, float barX, float barLength){
 if(ballY < 40 || ((935 < ballY && 960 > ballY) && (ballX > barX && ballX < (barX + barLength)))){
   if(ballX > 960 || ballX < 40){
     return(3);
   }else{
     return(2);
   }
 }else if(ballX > 960 || ballX < 40){
   return(1);
 }else{
    return(0);
 }
}

void updateBar(float barX, float barY, float barLength){
  rect(barX, barY, barLength, 10); 
}

void updateBall(float ballX, float ballY){
  ellipse(ballX, ballY, 25, 25);
}

void checkFail(float ballY){
  if(ballY > 965){
     fill(0,0,0);
     textSize(48);
     text("you sux lol", 500, 500);
     fill(255,255,255);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      barX += 65;
    } else if (keyCode == LEFT) {
      barX -= 65;
    }
  }
}
