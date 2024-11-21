class Star //note that this class does NOT extend Floater
{
 private int starX;
  private int starY;
  public Star(){
    starX = (int)(Math.random()*801);
    starY = (int)(Math.random()*801);
  }
  public void show(){
    fill(255);
    ellipse(starX,starY,2,2);
  }
}
