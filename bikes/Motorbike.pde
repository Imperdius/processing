

class Motorbike
{
  int x = 5;  //members
  int ypos;
  int speed=2;
  int size=30;
  color colour;
  int wins;

  Motorbike(int y, int c) {
    this.ypos = y;
    this.colour = c;
  }
  //methods, procedures an object of this type can perform
  void render()
  {
    float wheelHeight = size/3;
    fill(colour);
    triangle(x, ypos, x+size, ypos, x+size/2, ypos-size/2);  //built-in triangle routine
    drawWheel(x, ypos, wheelHeight);
    drawWheel(x+size, ypos, wheelHeight);
  }
  void move() {
    if (gameMode == 0){
      x=x+speed;
    }
    speed = (int)random(5.0);  //a random step [0..5]
  }
  boolean finished(){
    return x>(width - 10);   
  }
  
  void update() {
    if (finished() == false){
      move();
    }
    render();
  }

  void drawWheel(int x, int y, float size)
  {
    float inner = size*2/3;
    fill(0);
    ellipse(x, y, size, size);
    fill(255);
    ellipse(x, y, inner, inner);
  }
} //end of class description
