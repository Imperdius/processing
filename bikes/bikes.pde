final color RED = color(255, 0, 0);
final color BLUE = color(0, 0, 255);
final color GREEN = color(0, 255, 0);
Motorbike bike1 = new Motorbike(150, RED);
Motorbike bike2 = new Motorbike(250, BLUE);
Motorbike bike3 = new Motorbike(350, GREEN);
int gameMode = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(125);
  bike1.update();
  bike2.update();
  bike3.update();
  String winner = checkFinished();
  checkEnd(winner);
}

String checkFinished() {
  if (bike1.finished()) {
    if(gameMode == 0){
      bike1.wins += 1;
    } 
    return "bike1";
  } else if (bike2.finished()) {
    if(gameMode == 0){
      bike2.wins += 1;
    } 
    return "bike2";
  } else if (bike3.finished()) {
    if(gameMode == 0){
      bike3.wins += 1;
    } 
    return "bike3";
  } else {
    return null;
  }
}

void checkEnd(String winner) {
  if (winner == null) {
    return;
  } else {
    end(winner);
  }
}

void end(String winner) {
  if (gameMode == 0){
   gameMode = 1;
  }
  if(gameMode == 1){
    textSize(24);
    if (winner == "bike1") {
      text("Bike 1 wins!", 125, 65);
      text("score is: " + str(bike1.wins) + ":" + str(bike2.wins)+ ":" + str(bike3.wins), 125, 90);
    } else if (winner == "bike2") {
      text("Bike 2 wins!", 125, 65);
      text("score is: " + str(bike1.wins) + ":" + str(bike2.wins)+ ":" + str(bike3.wins), 125, 90);
    } else if (winner == "bike3") {
      text("Bike 3 wins!", 125, 65);
      text("score is: " + str(bike1.wins) + ":" + str(bike2.wins)+ ":" + str(bike3.wins), 125, 90);
    }
    if (keyPressed) {
      if (key == ' '){
        bike1.x = 5;
        bike2.x = 5;
        bike3.x = 5;
        gameMode = 0;
      }
    }
}
    
}
