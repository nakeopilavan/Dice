int sum = 0;
void setup()
{
  size(500,500);
	noLoop();
}
void draw()
{
  background(255);
  for(int i = 0;i<300;i+=50){
    for(int j = 0;j<300;j+=50){
      Die yes = new Die(i+100,j+100);
      yes.show();
      yes.roll();
      sum += yes.ran;
    }
  }
  text("Total = " + sum,225,450);
    
}
void mousePressed()
{
	redraw();
  sum = 0;
}
class Die //models one single dice cube
{
	int mX, mY, sizeD, ran;
	
	Die(int x, int y) //constructor
	{
		mX = x;
    mY = y;
    sizeD = 50;
	}
	void roll()
	{
		ran = (int)(Math.random()*6 + 1);
    if(ran == 1){
      fill(0);
      ellipse(mX+25,mY+25,7,7);
    }else if(ran == 2){
      fill(0);
      ellipse(mX+15,mY+15,7,7);
      ellipse(mX+35,mY+35,7,7);
    }else if(ran == 3){
      fill(0);
      ellipse(mX+10,mY+10,7,7);
      ellipse(mX+25,mY+25,7,7);
      ellipse(mX+40,mY+40,7,7);
    }else if(ran == 4){
      fill(0);
      ellipse(mX+15,mY+15,7,7);
      ellipse(mX+35,mY+35,7,7);
      ellipse(mX+15,mY+35,7,7);
      ellipse(mX+35,mY+15,7,7);
    }else if(ran == 5){
      fill(0);
      ellipse(mX+10,mY+10,7,7);
      ellipse(mX+25,mY+25,7,7);
      ellipse(mX+40,mY+40,7,7);
      ellipse(mX+10,mY+40,7,7);
      ellipse(mX+40,mY+10,7,7);
    }else{
      fill(0);
      ellipse(mX+15,mY+10,7,7);
      ellipse(mX+35,mY+25,7,7);
      ellipse(mX+15,mY+25,7,7);
      ellipse(mX+35,mY+10,7,7);
      ellipse(mX+15,mY+40,7,7);
      ellipse(mX+35,mY+40,7,7);
    }
      
	}
	void show()
	{
    fill(255,0,0);
		rect(mX,mY,sizeD,sizeD,15);
	}
}
