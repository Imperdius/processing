void setup(){
 size(500, 500); 
 house(5, 200, 14, 125);
 house(5, 550, 10, 175);
}

void house(int x, int y, int total, int size){ 
  int width = size;
  int height = int(size*1.2);
  for(int i=0; i < total; i++){
    body(x, y, width, height);
    roof(x, y, height, width);
    x += width + (width/25);
  }

}

void roof(int x, int y, int height, int width){
  int roofHeight = int(height/2.5);
  triangle(x, y, x + (width/2), y - roofHeight, x + width, y);//rooftop
  ellipse(x + (width/2), y- (roofHeight/2), 30, 30);//window
}

void body(int x, int y, int width, int height){
   rect(x, y , width, height);
   rect(x + width/25, y +height/2, width/3.25, height/2);//door
   rect(x + width/2.25, y + height/18, width/2.1, height/3);//top window
   rect(x + width/2.25, y + height/2, width/2.1, height/3.25);//bottom window
}
