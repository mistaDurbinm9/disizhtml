Mario m;
public void setup() {
  frameRate(30);
  size(500, 480);
  background(#5E92FF);
}

public void draw() {
  background(#5E92FF);
  m = new Mario();
}

public void keyPressed() {
  if(key == CODED){
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
    println("k");
    m.walk("right");
  }
  
}

