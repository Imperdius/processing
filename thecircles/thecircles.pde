int x=80;
size(300,300); //set size of canvas screen
for(int i=0;i<5;i=i+1)
{
  x-=10;
  print(" i:"+i+",x:"+x); //display variable value in console window
  ellipse(150,150,x,x);
}
