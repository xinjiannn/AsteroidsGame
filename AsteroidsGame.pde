//your variable declarations here
	Spaceship boba = new Spaceship();
	Star [] blink = new Star [100];
public void setup() 
{
  //your code here
  size(600,600);
  background(255, 255, 245);
  for (int i = 0; i < blink.length; i++){
  	blink[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  boba.show();
  boba.move();
  for (int i = 0; i < blink.length; i++){
  	blink[i].show();
  }

}

public void keyPressed(){
	if (key == 'd'){
		boba.turn(6);
	}
	if (key == 's'){
		boba.turn(-6);
	}
	if (key == 'a'){
		boba.accelerate(0.4);
	}
	if (key == 'w'){
		boba.setCenterX(Math.random()*600);
    	boba.setCenterY(Math.random()*600);
    	boba.setDirectionX(0);
    	boba.setDirectionY(0);
    	boba.setPointDirection(Math.random()*360);
	}
}
