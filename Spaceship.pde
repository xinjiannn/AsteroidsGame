class Spaceship extends Floater  
{   
    //your code here
    public Spaceship (){
    	corners = 6;
    	xCorners = new int [] {-10, 25, -10, -7, -2, -7};
    	yCorners = new int [] {15, 0, -15, -6, 0, 6};

    	myColor = color(255,182,193);
    	myCenterX = 300;
    	myCenterY = 300;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    	
    }
    public void setDirectionY (double x){
    	myDirectionY = x;
    }
    public void setDirectionX(double x) {
    	myDirectionX = x;
    }
    public void setCenterX(double x) {
    	myCenterX = x;
  	}
  	public void setCenterY(double x) {
    	myCenterY = x;
  	}
  	public void setPointDirection(double x) {
    	myPointDirection = x;
  	}


}
