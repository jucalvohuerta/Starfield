Particle [] boomBoom = new Particle[1000];

class Particle {
  int myRad, couleur;
  double myX, myY, myAngle, mySpeed;

  Particle() {
    myX = 250;
    myY = 250;
    couleur = (int)(Math.random()*255);
    myRad = 10;
    myAngle = (Math.random()*(2*PI));
    mySpeed = Math.random()*4;
  }

  void show() {
    fill(couleur, 0, 30);
    ellipse((float)myX, (float)myY, myRad, myRad);
  }

  void move() {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
}

class Oddball extends Particle {
  Oddball() {
    myX = 250;
    myY = 250;
    couleur = (int)(Math.random()*255);
    myRad = 15;
    myAngle = (Math.random()*(2*PI));
    mySpeed = Math.random()*100;
  }

  void show() {
    fill(255);
    ellipse((float)myX, (float)myY, myRad, myRad);
  }
  void move() {
    myX += (int)(Math.random()*30)-15;
    myY += (int)(Math.random()*30)-15;
  }
}

void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < boomBoom.length; i++)
    boomBoom[i] = new Particle();
  for (int j = 0; j < 50; j++)
    boomBoom[j] = new Oddball();
}

void draw() {
  background(0);
  for (int i = 0; i < boomBoom.length; i++) {
    boomBoom[i].show();
    boomBoom[i].move();
  }
}
