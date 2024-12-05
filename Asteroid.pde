class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{10,20,20,10,-10,-20,-20,-10};
    yCorners = new int[]{20,10,-10,-20,-20,-10,10,20};
    myColor = #ADA0A0;
    myXspeed = (Math.random()*5)-2.5;
    myYspeed = (Math.random()*5)-2.5;
    myPointDirection = Math.random()*180;
    myCenterX = (int)(Math.random()*401);
    myCenterY = (int)(Math.random()*401);
    rotSpeed = Math.random()*4-2;
  }
  public void move(){
    turn(rotSpeed);
     super.move();   
  }
}
