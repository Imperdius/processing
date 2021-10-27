tank tank1;
tank tank2;
tank tank3;

void setup(){
 size(625, 625);
 tank1 = new tank(100, 200);
 tank2 = new tank(250, 250);
 tank3 = new tank(400, 320);
}

void draw(){
 background(128);
 tank1.update();
 tank2.update();
 tank3.update();
 println(tank1.ypos);
 int collision = testCollision(tank1, tank2, tank3);
 switch(collision){
    case 0:
      break;
    case 1:
      tank1.yvelocity = -tank1.yvelocity;
      tank1.xvelocity = -tank1.xvelocity;
      tank2.yvelocity = -tank2.yvelocity;
      tank2.xvelocity = -tank2.xvelocity;
      break;
    case 2:   
      tank1.yvelocity = -tank1.yvelocity;
      tank1.xvelocity = -tank1.xvelocity;
      tank3.yvelocity = -tank3.yvelocity;
      tank3.xvelocity = -tank3.xvelocity;
      break;
    case 3:   
      tank2.yvelocity = -tank2.yvelocity;
      tank2.xvelocity = -tank2.xvelocity;
      tank3.yvelocity = -tank3.yvelocity;
      tank3.xvelocity = -tank3.xvelocity;
      break;
 }
}

int testCollision(tank tank1, tank tank2, tank tank3){
  if(abs(tank1.ypos-tank2.ypos)< 55 && abs(tank1.xpos-tank2.xpos) < 55){
    return 1;
  }else if(abs(tank1.ypos-tank3.ypos)< 55 && abs(tank1.xpos-tank3.xpos) < 55){
    return 2;
  }else if(abs(tank3.ypos-tank2.ypos)< 55 && abs(tank3.xpos-tank2.xpos) < 55){
    return 3;
  }else{
    return 0;
  }
}
