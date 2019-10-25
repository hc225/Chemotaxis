Bacteria[] colony; 
Food piece;
 void setup()   
 {     
 	size(800,600);
 	frameRate(25);
 	noStroke();
 	colony = new Bacteria[100];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(); 
 	}
 	piece = new Food();
 }   
 void draw()   
 {    
 	background(255);
 	piece.move();
 	piece.show();
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
 		if(dist(colony[i].myX,colony[i].myY,piece.myX,piece.myY) < 50)
 		{
 			System.out.println("1");
 		}
 		if(myX >= 40 && myX <= 760)
 			myX += (int)(Math.random()*21)-10;
 		if(myY >= 40 && myY <= 560)
 			myY += (int)(Math.random()*21)-10;

 		if(myX <= 780 && myX > 760)
 			myX += (int)(Math.random()*10)-21;
 		if(myY <= 580 && myY > 560)
 			myY += (int)(Math.random()*10)-21;

 		if(myX >= 20 && myX < 40)
 			myX += (int)(Math.random()*10)+1;	
  		if(myY >= 20 && myY < 40)
 			myY += (int)(Math.random()*10)+1;		
 	}
 	void show()
 	{
 		fill(0,255,0);
 		ellipse(myX,myY,15,15);
 	}   
 }   
 class Food
 {
 	int myX, myY;
 	Food()
 	{
 		myX = 200;
 		myY = 300;
 	}
 	void move()
 	{
  		myX = mouseX;
 		myY = mouseY;		
 	}
 	void show()
 	{
 		fill(255,255,0);
 		ellipse(myX,myY,75,75);
 	}
 } 