Spaceship ship = new Spaceship();
Star[]night = new Star[100];
public void setup() 
{
  size(800,800);
  for(int i = 0; i < 100; i++){
    night[i]= new Star();
  }
}
public void draw() 
{
   noStroke();
  background(0);
  for(int i = 0; i < 100; i++){
    night[i].show();
  }
  ship.show();
}
public void keyPressed(){
  if(key=='h'){
    ship.hyperspace();
  }
}
