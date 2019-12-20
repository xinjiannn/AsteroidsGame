class Bullet extends Floater (){
  public Bullet(Spaceship c){
    myCenterX = (float)(c.getCenterX());
    myCenterY = (float)(c.getCenterY());
    myPointDirection =(float)(c.PointDirection());
    double dRad = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRad) + (float)(c.getDirectionX());
    myDirectionY = 5*Math.sin(dRad) + (float)(c.getDirectionY());
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
