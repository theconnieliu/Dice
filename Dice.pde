Die diedie;

void setup()
{
  background(0);
  size(500, 650);
	noLoop();
}
void draw()
{
  int totalDots = 0;
	for(int y = 0; y <= 500; y = y + 50)
  {
    for(int x = 0; x <= 500; x = x + 50)
    {
      diedie = new Die(x, y);
      diedie.show();
      diedie.roll(); 
      totalDots = totalDots + diedie.numDots;
    }
  }
  fill(0);
  rect(190, 590, 130, 30);
  fill(255, 255, 255);
  textSize(30);
  text("Roll: " + totalDots, 190, 615);
  System.out.println(totalDots);
}
void mousePressed()
{ 
	redraw();
}
class Die 
{
	int myX, myY, numDots;
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	void roll()
	{
		numDots = (int)(random(1, 7));
    noStroke();
    fill(random(255));
    if(numDots == 1)
    {
      ellipse(myX + 25, myY + 25, 10, 10);
      
    }
    else if(numDots == 2)
    {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else if(numDots == 3)
    {
      ellipse(myX + 12, myY + 12, 10, 10);
      ellipse(myX + 38, myY + 38, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else if(numDots == 4)
    {
      ellipse(myX + 12, myY + 12, 10, 10);
      ellipse(myX + 38, myY + 12, 10, 10);
      ellipse(myX + 38, myY + 38, 10, 10);
      ellipse(myX + 12, myY + 38, 10, 10);
    }
    else if(numDots == 5)
    {
      ellipse(myX + 12, myY + 12, 10, 10);
      ellipse(myX + 38, myY + 12, 10, 10);
      ellipse(myX + 38, myY + 38, 10, 10);
      ellipse(myX + 12, myY + 38, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else
    {
      ellipse(myX + 15, myY + 12, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 38, 10, 10);
      ellipse(myX + 35, myY + 12, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 38, 10, 10);
    }
    
	}
	void show()
	{
    fill((int)(random(100, 255)));
    stroke(0.05);
		rect(myX, myY, 50, 50,  10);
	}
   
}