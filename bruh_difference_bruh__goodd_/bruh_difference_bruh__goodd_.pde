void setup(){
  println(distance(50, 50, 100, 100));
}

float distance(float x1, float y1, float x2, float y2){
  float yDiff = y2 - y1;
  float xDiff = x2 - x1;
  return sqrt(pow(yDiff, 2) + pow(xDiff, 2));
}
