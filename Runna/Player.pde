public class Mario{
  
  private PVector loc, vel, acc;
  private PImage marioSprites;
  private PImage[] player;
  
  public Mario(){
    loc = new PVector();
    vel = new PVector();
    acc = new PVector(1.3, 1.3);
    marioSprites = loadImage("Sprites/mario.png");
    player = new PImage[82];
  }
  
  public boolean isMoving(){
    if(vel.x != 0 || vel.y != 0)
      return true;
    
    return false;
  }
  
  public void handleKeys(){
    if(key == CODED){
      if(key == UP)
        //jump();
      if(key == DOWN)
        //crouch();
      if(key == LEFT)
        walk("left");
      if(key == RIGHT)
        walk("right");
    }
  }
  
  public void walk(String direction){
    if(direction.equals("left")){
      vel.limit(-3);
      vel.x -= acc.x;
      while(keyPressed){
        for(int i = 0; i < 3; i++){
          
        }
      }
        
    }
  }
  
  public void run(){
    
  }
    
}
