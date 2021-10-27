void setup(){
 size(400,400);
 img1 = loadImage("walk1.gif"); //loads from .pde source code directory
}

void draw(){
  int x=50,y=50;
  image(img1,x,y);
}
