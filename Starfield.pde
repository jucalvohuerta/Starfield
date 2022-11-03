Particle [] boomBoom = new Particle[500];
Oddball [] kaplow = new Oddball[250];

class Particle {
  public int myRad, couleur;
  public double myX, myY, myAngle, mySpeed;

  Particle(int x, int y) {
    myX = x;
    myY = y;
    couleur = (int)(Math.random()*255);
    myRad = 10;
    myAngle = (Math.random()*(2*PI));
    mySpeed = Math.random()*4;
  }

  Particle() {
    myX = mouseX;
    myY = mouseY;
    couleur = (int)(Math.random()*255);
    myRad = 10;
    myAngle = (Math.random()*(2*PI));
    mySpeed = Math.random()*4;
  }

  public void show() {
    fill(couleur, 0, 30);
    ellipse((float)myX, (float)myY, myRad, myRad);
  }

  public void move() {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }

  /*  public void reset(){
   myX = mouseX;
   myY = mouseY;
   couleur = (int)(Math.random()*255);
   myRad = 10;
   myAngle = (Math.random()*(2*PI));
   mySpeed = Math.random()*4;
   }
   
   */
}

class Oddball extends Particle {
  private Oddball() {
    myX = 250;
    myY = 250;
    couleur = (int)(Math.random()*255);
    myRad = 5;
    myAngle = (Math.random()*(2*PI));
    mySpeed = Math.random()*100;
  }

  public void show() {
    fill(255);
    ellipse((float)myX, (float)myY, myRad, myRad);
  }
  public void move() {
    myX += (int)(Math.random()*30)-15;
    myY += (int)(Math.random()*30)-15;
  }
}

void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < boomBoom.length; i++)
    boomBoom[i] = new Particle(250, 250);
  for (int i = 0; i < kaplow.length; i++)
    kaplow[i] = new Oddball();
}

void draw() {
  background(0);
  for (int i = 0; i < boomBoom.length; i++) {
    boomBoom[i].show();
    boomBoom[i].move();
  }
  for (int i = 0; i < kaplow.length; i++) {
    kaplow[i].show();
    kaplow[i].move();
  }
}
