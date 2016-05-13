public class Mario {

  private PVector loc, vel, acc, grav;
  private PImage marioSprite;
  private PImage[][] smallSprites;

  public Mario() {
    loc = new PVector(0, 0);
    vel = new PVector(0, 0);
    acc = new PVector(1.3, 1.3);
    grav = new PVector(0, 0.3);
    marioSprite = loadImage("Sprites/smallPlayers.png");
    smallSprites = new PImage[marioSprite.height/16][marioSprite.width/19];
    runMario();
    println("x: " + loc.x + " y: " + loc.y);
  }

  public void runMario() {
    loadArray();
    display(loc.x, loc.y);
  }

  private boolean isMoving() {
    if (vel.x != 0 || vel.y != 0)
      return true;

    return false;
  } 

  public void handleKeys() {
    if (key == CODED) {
      if (key == UP) {
        //jump();
      }
      if (key == DOWN) {
        //crouch();
      }
      if (key == LEFT) {
        walk("left");
      }
      if (key == RIGHT) {
        walk("right");
        println("lol");
      }
    }
  }



  public void walk(String direction) {
    if (direction.equals("right")) {
      vel.x += acc.x;
      vel.limit(3);
      for (int i = 0; i < 3; i++) {
        display(0, i);
      }
    }
  }

  public void loadArray() {

    for (int i = 0; i < smallSprites.length; i++) {
      for (int j = 0; j < smallSprites[i].length; j++) {
        PImage player = createImage(19, 16, ARGB);
        smallSprites[i][j] = new PImage();
        player.copy(marioSprite, j*19, i*16, 19, 16, 0, 0, 19, 16);
        smallSprites[i][j] = player;
      }
    }
  }

  public void display(int r, int c) {
    handleKeys();
    image(smallSprites[r][c], 0, 0);
  }

  public void update() {
    vel.y += grav.y;
    vel.add(acc);
    loc.add(vel);
  }
}

