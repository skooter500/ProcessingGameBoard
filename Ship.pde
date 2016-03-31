// The class name starts with uppercase
class Ship extends GameObject
{
  PVector force;
  PVector acceleration;
  float mass;
  float timeDelta = 1.0f / 60.0f;
  
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {
    super();    
  }
  
  Ship(float x, float y)
  {
    super(x, y);
    force = new PVector();
    acceleration = new PVector();
    mass = 1.0f;
  }
  
  int toPass = 60 / 5; // How many frames must pass
  int ellapsed = toPass;
 
  void update()
  {
    if (keys[UP])
    {
      pos.y --;            
    }
    if (keys[DOWN])
    {
      pos.y ++;            
    }
    if (keys[LEFT])
    {
      pos.x --;            
    }
    if (keys[RIGHT])
    {
      pos.x ++;
    }
  }
  
  void render()
  {
    stroke(255);
    fill(255, 0, 0);
    ellipse(pos.x, pos.y, 10, 10);
  }   
}