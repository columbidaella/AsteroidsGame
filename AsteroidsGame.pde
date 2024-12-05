Spaceship ship = new Spaceship();
Star[]night = new Star[100];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
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
  rocks.get(i).move();
  rocks.get(i).show();
  float d = dist(ship.getX(),ship.getY(),rocks.get(i).getX(),rocks.get(i).getY());
  if(d<40){
    rocks.remove(i);
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
}
