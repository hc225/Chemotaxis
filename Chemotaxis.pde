Bacteria[] colony; 
 void setup()   
 {     
 	size(800,600);
 	colony = new Bacteria[5];
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
 		myX += (int)(Math.random()*20)-10;
 		myY += (int)(Math.random()*20)-10;
 	}
 	void show()
 	{
 		ellipse(myX,myY,25,25);
 	}   
 }    