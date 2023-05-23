int x=0;
int y=1;
void setup() {
  size(500,500);
  background(3);
  
}
void draw() {
  fill(0, 255, 9);
  textSize(random(5, 30));
 
  text(x, random(0, width), random(0, height));
  text(y, random(0, width), random(0, height));
  filter(BLUR, 0.6);
}
