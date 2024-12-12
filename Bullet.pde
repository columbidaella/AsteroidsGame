class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXs();
    myYspeed = theShip.getYs();
    myPointDirection = theShip.getPointDirection();
    accelerate(4);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
}
