class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 11;
      xCorners = new int[]{20,14,0,-10,-18,-12,-12,-18,-10,0,14};
      yCorners = new int[]{0,-8,-8,-14,-14,-8,8,14,14,8,8};
      myColor = #FF6AB5;
      myXspeed = myYspeed = myPointDirection = 0;
      myCenterX = myCenterY = 400;
    }
    public void hyperspace(){
      myXspeed = myYspeed = 0;
      myPointDirection = (int)(Math.random()*181);
      myCenterX = (Math.random()*801);
      myCenterY = (Math.random()*801);
    }
}
