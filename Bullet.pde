class Bullet extends Floater (){
  public Bullet(Spaceship c){
    myCenterX = (float)(c.getCenterX());
    myCenterY = (float)(c.getCenterY());
    myDirectionX = (float)(c.getDirectionX());
    myDirectionY = (float)(c.getDirectionY());
    myPointDirection =(float)(c.PointDirection());
  }
  
  public void show (){
    fill(255,255,255);
    ellipse( (float)(getCenterX()), (float)(getCenterY()), (float) 5, (float) 5);
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  
  public void move(){
    //change the position of the bullets
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    
    if (myCenterX > width || myCenterX < 0) {
      bub.remove(this);
    } else if (myCenterY > height || myCenterY < 0) {
      bub.remove(this);
    }
  }
}
