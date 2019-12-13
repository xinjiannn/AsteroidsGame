class Asteroids extends Floater {
	public int rotSpeed;
	public Asteroids (){
		rotSpeed = (int)(Math.random()*7) -3;
		corners = 15;


    	xCorners = new int [] {
            0,2,2,3,3,2,2,1,-1,-2,-2,-3,-3,-2,-2};


            //0, 1, 2, 2.5, 3.1, 3.05, 2.75, 3, 3.1, 3.16, 3, 0, 
            //-3, -3.16, -3.1, -3, -2.75, -3.05, -.1, -2.5, -2, -1 };

            //-(int)(Math.random()*6)-20, (int)(Math.random()*6)-6, 
            //(int)(Math.random()*6)-3, -(int)(Math.random()*6)+6, 
            //(int)(Math.random()*6)+20, -(int)(Math.random()*6)+15, 
            //-(int)(Math.random()*6)+0, -(int)(Math.random()*6)-15};
        yCorners = new int [] {
            -3,1,0,0,2,2,4,2,2,4,2,2,0,0,1};

            //3, 2.9, 2.7, 3, 3.25, 2.55, 2.05, 1.5, 0.67, 0, -0.5, -2, 
            //-0.5, 0, 0.67, 1.5, 2.05, 2.55, 3.25, 3, 2.7, 2.9} ;
            //(int)(Math.random()*6)+20, (int)(Math.random()*6)+30, 
            //-(int)(Math.random()*6)+26, -(int)(Math.random()*6)+30, 
            //(int)(Math.random()*6)+20, (int)(Math.random()*6)-6,
            //(int)(Math.random()*6)-16, -(int)(Math.random()*6)-6};
        for (int i = 0; i < yCorners.length; i++){
            yCorners[i] = yCorners[i] *6;
        }
        for (int i = 0; i < xCorners.length; i++){
            xCorners[i] = xCorners[i] *6;
        }

    	noFill();
    	myColor = color(0,0,0);
        myColorOut = color(147,112,219);
    	myCenterX = (int)(Math.random()*600);
    	myCenterY = (int)(Math.random()*600);
    	myDirectionX = (int)(Math.random()*4);
    	myDirectionY = (int)(Math.random()*4);
    	myPointDirection = 0;
	}
	

	public void move (){
		turn(rotSpeed);
   		super.move();

	}
}