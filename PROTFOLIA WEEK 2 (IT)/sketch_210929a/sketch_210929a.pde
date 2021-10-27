void setup(){
 size(500, 500);
 for(int i=0; i < 10; i++){//creates correct number of cars
   car(50, 5, 75, i);//x pos, ypos, number, size
 }
}

void car(int x, int y, int size, int i){ 
    x += 2*(i+1)*size + i*(size/5);//iterates horizontal distance
    rectangle(x, y, size, size);//top
    rectangle(x-(size/2), y+size, size*2, size);//bottom
    wheel(x - size/5, y +size*2, int(size/1.5));//left wheel
    wheel(x + 6*(size/5), y+size*2, int(size/1.5));//right wheel
    
  }


void rectangle(int x, int y, int width, int height){
  fill(128, 128, 128);//dark grey
  rect(x, y, width, height);//creates rectangle
  fill(255, 255, 255);//resets fill
}

void wheel(int x, int y, int size){
  fill(0, 0, 0);//black
  ellipse(x, y, size, size);//tyer
  fill(192, 192, 192);//light grey
  ellipse(x, y, size/2, size/2);//wheel
  fill(255, 255, 255);//reset colour
}
