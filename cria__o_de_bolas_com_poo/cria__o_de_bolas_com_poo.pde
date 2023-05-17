Bola [] b=new Bola [50];
void setup() {
  size(600, 600);
  noStroke();
  colorMode(HSB,360,100,100);
  for (int i=0; i<b.length; i++) {
    b[i] = new Bola (random(10,25), random(3,10), random(3,10));
  }
}

void draw() {
  fill(80, 0, 100);
  
  rect(0, 0, width, height);
  
  for (int i=0; i<b.length; i++) {
    b[i].update();
    b[i].parede();
    b[i].show();
  }
  
}

class Bola {
  float x, y, r, speedX, speedY, cor1, cor2, cor3;
  Bola(float raio, float vX, float vY) {
    x = width / 2;
    y = height / 2;
    r = raio;
    speedX = vX;
    speedY = vY;
    cor1 = 0;
    cor2 = 0;
    cor3 = 0;
  }

  void update() {
    x += speedX;
    y += speedY;
  }

  void show() {
    fill(cor1, cor2, cor3);
    ellipse(x, y, r * 2, r * 2);
  }
  void parede() {
    if (x > width - r || x < 0 +r) {
      speedX *= -1;
      cor1 = random(360);
      cor2 = random(30,100);
      cor3 = random(30,100);
    }
    if (y > height - r || y < 0 + r) {
      speedY *= -1;
      cor1 = random(360);
      cor2 = random(30,100);
      cor3 = random(30,100);
    }
  }
}
