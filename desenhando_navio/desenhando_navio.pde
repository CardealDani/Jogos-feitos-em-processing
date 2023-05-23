
void ceu(){
  fill(#151515);
  rect(0,0,width,520);
}
void sombra_agua(){
 noStroke();
  fill(50,70,193);
  rect(25,610,450,75);
  rect(50,650,425,75);
}
void sombra_barco(){
  fill(0,0,0,200);
  rect(25,610,25,10);
  rect(40,620,10,30);
  rect(40,650,435,10);
}

void barco() {
  strokeWeight(5);
  fill(200,200,200);
  beginShape();
  vertex(25,540);
  vertex(25, 610);
  vertex(50,610);
  vertex(50,650);
  vertex(475,650);
  vertex(475,575);
  vertex(450,575);
  vertex(450,540);
  vertex(425,540);
  //colocar uma vela
  vertex(425,500);
  vertex(375,500);
  //
  vertex(375,525);
  vertex(320,525);
  vertex(320,500);
  vertex(275,500);
  vertex(275,450);
  vertex(250,450);
  vertex(250,410);
  vertex(200,410);
  vertex(200,455);
  vertex(175,455);
  vertex(175,500);
  vertex(100,500);
  vertex(100,540);
  vertex(25,540);
  endShape();
}
void bandeira(){
  //x na bandeira
  noFill();
  strokeWeight(2);
  stroke(0,255,0);
  bezier(400,430,412.5,450,437.5,450,450,470);
  bezier(400,470,412.5,470,437.5,430,450,430);
  //bandeira
  strokeWeight(3);
  stroke(255);
  line(400,497,400,460);
  stroke(255,0,0);
  line(400,430,400,470);
  line(450,430,450,470);
  noFill();
  bezier(400,430,412.5,450,437.5,410,450,430);
  bezier(400,470,412.5,490,437.5,455,450,470);
}
void star(){
  strokeWeight(5);
  stroke(255);
  point(random(0,width),random(0,520));
}
void lua(){
  fill(255);
  noStroke();
  ellipse(450,150,200,200);
}  
void setup() {
  size(600, 800);
  background(30,50,255);
  ceu();
  for( int i =0; i<200 ;i++){
  star();
  }
  
  sombra_agua();
  sombra_barco();
  barco();
  bandeira();
  lua();
}
