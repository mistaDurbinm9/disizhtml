public class Mario {

  private PVector loc, vel, grav, acc;
  private PImage marioSprite;
  private PImage[][] smallSprites;

  public Mario() {
    loc = new PVector(0, 0);
    vel = new PVector(0, 0);
    grav = new PVector(0, 0);
    acc = new PVector(1.3, 1.3);
    marioSprite = loadImage("Sprites/smallPlayers.png");
    smallSprites = new PImage[marioSprite.height/16][marioSprite.width/19];
    runMario();
  }

  public void runMario() {
    loadArray();
    display((int)loc.x, (int)loc.y);
    update();
  }

  public void handleKeys() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == UP) {
          //m.jump();
        }
        if (keyCode == DOWN) {
          //m.crouch();
        }
        if (keyCode == LEFT) {
          m.walk("left");
        }
        if (keyCode == RIGHT) {
          m.walk("right");
        }
      }
    }
  }

  public void walk(String direction) {
    if (direction.equals("right")) {
      vel.x *= acc.x;
      display(0, 0);
      /*for (int i = 0; i < 3; i++) {
       display(0, i);
       }*/
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
    image(smallSprites[r][c], loc.x, loc.y);
  }

  public void update() {
    vel.add(acc);
    loc.add(vel);
    vel.limit(3);
  }

  private boolean isMoving() {
    if (vel.x != 0 || vel.y != 0)
      return true;

    return false;
  }
}
