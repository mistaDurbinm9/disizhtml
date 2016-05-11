public class Mario{
  
  private PVector loc, vel, acc;
  private PImage marioSprite;
  private PImage[][] smallSprites;
  
  public Mario(){
    loc = new PVector();
    vel = new PVector();
    acc = new PVector(1.3, 1.3);
    marioSprite = loadImage("Sprites/small_players.png");
    smallSprites = new PImage[marioSprite.height/16][marioSprite.width/19];
    loadArray();
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
  
  public void loadArray(){
    PImage player = createImage(19, 16, ARGB);
    for(int i = 0; i < smallSprites.length; i++){
      for(int j = 0; j < smallSprites[i].length; j++){
        smallSprites[i][j] = new PImage();
        println(smallSprites[i][j]);
        smallSprites[i][j] = player.copy(marioSprite, j*19, i*16, 16, 19, 0, 0, 19, 16); 
      }
    }
  }
    
}
