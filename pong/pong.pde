float xBastao=560;
float yBastao=275;
float xBastao2=5;
float yBastao2=300;
float xBola= 300;
float yBola=300;
float xSpeed=7;
float ySpeed=5;
float r=10;
float hR=100;
float wR=30;
float dCima, dBaixo, dCima2, dBaixo2;


void setup() {
  size(600, 600);
  noStroke();
  xSpeed=random(5, 7);
  ySpeed=random(5, 7);
}
void draw() {
  background(0);
  colisoes();
  elementos_graficos();
  update();
  if (keyPressed) {
    if (keyCode==DOWN) {
      yBastao+=7;
    } else if (keyCode==UP) {
      yBastao-=7;
    }
  }
  if (keyPressed) {
    if (key=='W'||key=='w') {
      yBastao2-=7;
    } else if (key=='S'||key=='s') {
      yBastao2+=7;
    }
  }
}
void elementos_graficos() {
  rect(xBastao, yBastao, wR, hR);
  rect(xBastao2, yBastao2, wR, hR);
  circle(xBola, yBola, r*2);
}
void update() {
  xBola+=xSpeed;
  yBola+=ySpeed;
}
void reset() {
  xBola=300;
  yBola=random(100, 400);
  xSpeed=random(5, 7);
  ySpeed=random(5, 7);
  if (random(1)<0.5) 
    ySpeed*=-1;
  if (random(1)<0.5) 
    xSpeed*=-1;
}
void colisoes() {
  //LIMITE TELA COM BASTÕES
  if (yBastao>=500) yBastao=500;
  if (yBastao<=0) yBastao=0;
  if (yBastao2>=500) yBastao2=500;
  if (yBastao2<=0) yBastao2=0;

  //COLISÃO BOLA COM TELA DIREITA
  if (xBola>=width+r) {
    reset();
  }
  //COLISÃO BOLA COM TELA ESQUERDA
  if (xBola<=0-r) {
    reset();
  }
  //COLISÃO BOLA COM BAIXO DA TELA
  if (yBola>=height-r)
    ySpeed=-abs(ySpeed);
  //COLISÃO BOLA COM CIMA DA TELA
  if (yBola<=0+r)
    ySpeed=abs(ySpeed);
  //COLISÃO FRONTAL COM BASTAO DIREITO 
  if (xBola+r>=xBastao && xBola-r<=xBastao &&  yBola-r>=yBastao && yBola+r<=yBastao+hR) {
    xSpeed=-abs(xSpeed);
  }
  // COLISÃO FRONTAL COM BASTAO ESQUERDO
  if (xBola-r<=xBastao2+wR && xBola+r>=xBastao2+wR &&  yBola-r>=yBastao2 && yBola+r<=yBastao2+hR) {
    xSpeed=abs(xSpeed);
  }
  //COLISÃO EMBAIXO BASTAO DIREITO
  if (xBola-r>=xBastao && xBola+r<=xBastao+wR && yBola-r<=yBastao+hR && yBola+r>=yBastao+hR ) {
    ySpeed=abs(ySpeed);
  }
  //COLISAO CIMA BASTAO DIREITO
  if (xBola-r>=xBastao && xBola+r<=xBastao+wR && yBola+r>=yBastao && yBola-r<=yBastao) {
    ySpeed=-abs(ySpeed);
  }
  //COLISAO BAIXO BASTAO ESQUERDO
  if (xBola-r>=xBastao2 && xBola+r<=xBastao2+wR && yBola-r<=yBastao2+hR && yBola+r>=yBastao2+hR ) {
    ySpeed=abs(ySpeed);
  }
  //COLISAO CIMA BASTAO ESQUERDO
  if (xBola-r>=xBastao2 && xBola+r<=xBastao2+wR && yBola+r>=yBastao2 && yBola-r<=yBastao2) {
    ySpeed=-abs(ySpeed);
  }
  //CODIGO PARA NAO BUGAR COM A PAREDE DIREITA 
  if (xBola-r<=xBastao+wR && xBola+r>=xBastao+wR && yBola-r> yBastao && yBola+r<yBastao+hR) {
    reset();
  }
  //CODIGO PARA NAO BUGAR COM A PAREDE ESQUERDA 
  if (xBola-r>=xBastao2 && xBola+r<=xBastao2 && yBola-r> yBastao2 && yBola+r<yBastao2+hR) {
    reset();
  }
  //VARIAVEIS PARA TESTAR SE HOUVE COLISÃO COM AS QUINAS DOS BASTOES
  dCima=dist(xBola, yBola, xBastao, yBastao);
  dBaixo=dist(xBola, yBola, xBastao, yBastao+hR);
  dCima2=dist(xBola, yBola, xBastao2+wR, yBastao2);
  dBaixo2=dist(xBola, yBola, xBastao2+wR, yBastao2+hR);
  // TESTE BASTAO DIREITO
  if (dCima<=r) {
    xSpeed=-abs(xSpeed);
    ySpeed=-abs(ySpeed);
  } else if (dBaixo<=r) {
    xSpeed=-abs(xSpeed);
    ySpeed=abs(ySpeed);
  }
  //TESTE BASTAO ESQUERDO
  if (dCima2<=r) {
    xSpeed=abs(xSpeed);
    ySpeed=-abs(ySpeed);
    println("bug");
  } else if (dBaixo2<=r) {
    xSpeed=abs(xSpeed);
    ySpeed=abs(ySpeed);
  }
}
