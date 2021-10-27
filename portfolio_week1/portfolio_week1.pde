//depth keeps vertical distance between dumbells
int depth=20;
//left margin keeps horizontal discant between dumbells
int leftMargin = 55;
//number of columns created
int columns = 3;
//maximum number of rows
int maxdepth = 10;
//size of window
size(250, 250);
//loops untill dumbells reach bottom of screen
while(depth <= maxdepth*20){ 
  //creates a dumbell for each collumn on a row
 for(int i = 0; i<columns; i++){
   //iterates horizontal distance
   int x=i+1;
   //first ellipse
   ellipse(leftMargin*x-30, depth, 12, 12);
   //second ellipse
   ellipse(leftMargin*x-10, depth, 12, 12);
   //line conencting ellipses
   line(leftMargin*x-30, depth, leftMargin*x-10, depth);  
 }
 //iterates vertical distance
 depth += 20;
}
