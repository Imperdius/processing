//declaration
int x=250;
int y=75;
int size=150;
int boxx=295;
int boxy=105;
int edge=75;

//setup
size(500, 500);

//body
line(x, y, x, y+size);
//head
ellipse(x, y, 50, 50);
//left arm
line(x-35, y+115, x, y+40);
//right arm
line(x+25, y+105, x, y+40);
line(x+25, y+105, x+45, y+105);
//left leg
line(x, y+size, x-40, y+size+105);
//right leg
line(x, y+size, x+40, y+size+105);

//eyes
ellipse(x-7, y-10, 15, 9);
ellipse(x+13, y-10, 15, 9);
fill(0, 0, 0);
ellipse(x-9, y-13, 5, 4);
ellipse(x+14, y-13, 5, 5);
fill(255, 255, 255);
line(x-18, y-11, x-7, y-20);
line(x+22, y-11, x+13, y-20);

//grin
line(x-14, y-2, x-12, y+4);
line(x-12, y+4, x+17, y+2);
curve(x-12, y+4, x+17, y+2, x+20, y+5, x+15, y+9);
curve(x+25, y+4, x+20, y+5, x+15, y+8, x+20, y+9);
line(x+15, y+8, x+10, y+13);
line(x+10, y+13, x+9, y+16);
curve(x+11, y, x+9, y+16, x-2, y+16, x-3, y);
line(x-2, y+16, x-6, y+11);

//I hope this face is so awful that im never allowed to draw faces on processing again

//bocks
stroke(32, 192, 255);
line(boxx, boxy, boxx + edge, boxy);
line(boxx + edge, boxy, boxx + edge, boxy + edge);
line(boxx, boxy, boxx, boxy + edge);
line(boxx, boxy + edge, boxx + edge, boxy+edge);
