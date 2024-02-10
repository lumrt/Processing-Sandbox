
 
PVector location;  
PVector velocity;
PVector gravity;

void setup() 
{
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.1);
}

void draw() 
{
  background(0);

  location.add(velocity);
  velocity.add(gravity);
  
  if ((location.x + 25 > width) || (location.x - 25 < 0)) 
  {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) 
  {
    velocity.y = velocity.y * -0.98; 
    location.y = height;
  }
  stroke(255);
  strokeWeight(2);
  fill(255, 0, 0);
  ellipse(location.x,location.y,50,50);
}
