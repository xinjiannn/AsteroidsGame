class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myCol;
  private int mySize;
  private int myYi;
  private int myXi;

  Star(){
  	myCol = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*20)+235);
  	mySize = (int)(Math.random()*6) + 1;
  	myYi = (int)(Math.random()*600);
  	myXi = (int)(Math.random()*600);
  }

  public void show(){
  	fill(myCol);
  	noStroke();
  	ellipse(myXi, myYi, mySize, mySize);
  }
}
