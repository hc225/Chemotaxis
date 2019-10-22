Bacteria[] colony; 
 void setup()   
 {     
 	size(800,600);
 	frameRate(25);
 	colony = new Bacteria[100];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(); 
 	}

 }   
 void draw()   
 {    
 	background(255);
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}

 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria()
 	{
 		myX = 400;
 		myY = 300;
 	}
 	void move()
 	{
 		if(myX >= 40 && myX <= 760)
 			myX += (int)(Math.random()*21)-10;
 		if(myY >= 40 && myY <= 560)
 			myY += (int)(Math.random()*21)-10;

 		if(myX <= 780 && myX > 760)
 			myX += (int)(Math.random()*11)-21;
 		if(myY <= 580 && myY > 560)
 			myY += (int)(Math.random()*11)-21;

 		if(myX >= 20 && myX < 40)
 			myX += (int)(Math.random()*11);	
  		if(myY >= 20 && myY < 40)
 			myY += (int)(Math.random()*11);		
 	}
 	void show()
 	{
 		fill(0,255,0);
 		ellipse(myX,myY,15,15);
 	}   
 }    