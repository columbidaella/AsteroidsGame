Spaceship ship = new Spaceship();
Star[]night = new Star[100];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
public void setup() 
{
  size(800,800);
  for(int i = 0; i < 100; i++){
    night[i]= new Star();
  }
  int x = 0;
  while(x<11){
  {
  rocks.add(new Asteroid());
  x++;
}
}
}
public void draw() 
{
  noStroke();
  background(0);
  for(int i = 0; i < 100; i++){
    night[i].show();
  }
  ship.move();
  ship.show();
  for(int i = 0; i < rocks.size(); i++){
  }
   for(int i = 0; i < pew.size(); i++){
  pew.get(i).move();
  pew.get(i).show();
}
  for(int i = 0; i < rocks.size(); i++){
  rocks.get(i).move();
  rocks.get(i).show();
  for(int n = 0; n < pew.size(); n++){
  float d = dist(pew.get(n).getX(),pew.get(n).getY(),
  rocks.get(i).getX(),rocks.get(i).getY());
  if(d<30){
    rocks.remove(i);
    pew.remove(n);
    i--;
    n--;
    break;
  }
}
}
}
public void keyPressed(){
  if(key=='q'){
    ship.hyperspace();
  }
  if(key=='w'){
    ship.accelerate(0.1);
  }
  if(key=='a'){
    ship.turn(-3);
  }
  if(key=='d'){
    ship.turn(3);
  }
  if(key=='s'){
    ship.accelerate(-0.1);
  }
  if(key==' '){
  pew.add(new Bullet(ship));
  }
}
