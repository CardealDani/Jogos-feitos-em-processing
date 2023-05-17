Jogador player;

Carro [] carroCima =new Carro[5];
Carro [] carroBaixo =new Carro[5];

PImage back;
int pontuacao;


void setup() {
  size(1086, 839);
  textSize(30);
  noStroke();
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  back= loadImage("back.png");
  player = new Jogador();

  for (int i=0; i<5; i++) {
    carroCima[i] =new Carro(i, int(random(-10, -3)));
    carroBaixo[i] =new Carro(i, int(random(3, 10)));
  }
}


void draw() {
  image(back, 0, 0, width, height);
  fill(0, 0, 0);
  text("Pontos:"+ pontuacao, 300, 50);


  for (int i=0; i<5; i++) {
    carroCima[i].mostrarCarroCima();
    carroBaixo[i].mostrarCarroBaixo();
    carroCima[i].updateCima();
    carroBaixo[i].updateBaixo();
  }
  player.mostrar();
  player.reset();
  player.uptade();

  powerUp();
  if (!ativaColisaoCarro) {
    for (int i=0; i<5; i++) {
      player.colisaoCima(carroCima[i]);
      player.colisaoBaixo(carroBaixo[i]);
    }
  }  
  if (ativaColisaoPlayer) {
    colisaoP();
  }
  if (ativaColisaoCarro) {
    colisaoCarro();
  }
  if(ativaColisaoPlayer && ativaColisaoCarro)
  player.cor=color(150,100,100);


 
}

void keyPressed() {
  if (!ativaColisaoPlayer) {
    //println("velocidade =3");
    if (keyCode==RIGHT)
      player.movimento(3);
    else if (keyCode==LEFT)
      player.movimento(-3);
    else if (keyCode==UP)
      player.movimento(-3);
    else   if (keyCode==DOWN)
      player.movimento(3);
  } else if (ativaColisaoPlayer) {
    //println("velocidade =6");
    if (keyCode==RIGHT)
      player.movimento(6);
    else if (keyCode==LEFT)
      player.movimento(-6);
    else if (keyCode==UP)
      player.movimento(-6);
    else   if (keyCode==DOWN)
      player.movimento(6);
  }
}
void keyReleased() {
  player.movimento(0);
}

int pCima1, pCima2, pBaixo1, pBaixo2;
boolean powerUp, ativaColisaoPlayer, ativaColisaoCarro;
int tempo=600;
int tempoPowerUpPlayer=600;
int tempoPowerUpCarro=600;


void powerUp() {
  if (!powerUp) {
      println("Tempo para o aparecer o PowerUp:"+tempo/60);
    tempo--;
    if (tempo<=0) {
      tempo=600;

      pCima1=int(random(5));
      pCima2=int(random(5));
      if (pCima1==pCima2) {
        if (pCima2!=0)
          pCima2-=1;
        else if (pCima2==0)
          pCima2+=1;
      }

      pBaixo1=int(random(5));
      pBaixo2=int(random(5));
      if (pBaixo1==pBaixo2) {
        if (pBaixo2!=0)
          pBaixo2-=1;
        else if (pBaixo2==0)
          pBaixo2+=1;
      }
      powerUp=true;
    }
  }
  if (powerUp) {
      println("Tempo para o PowerUp sumir:"+tempo/60);
    tempo--;
    carroCima[pCima1].powerCima(200);
    carroCima[pCima2].powerCima(0);

    carroBaixo[pBaixo1].powerBaixo(200);
    carroBaixo[pBaixo2].powerBaixo(0);
    if (tempo<=0) {
      tempo=600;
      powerUp=false;
    }
  }
}

void colisaoP() {
  tempoPowerUpPlayer--;
    println("Tempo de powerUp:"+tempoPowerUpPlayer/60);
  player.cor=color(200, 100, 100);
  //println(tempoPowerUpPlayer);

  if (tempoPowerUpPlayer<=0) {
    tempoPowerUpPlayer=600;
    tempo=600;
    player.cor=color(0, 0, 100);
    ativaColisaoPlayer=false;
  }
}




void colisaoCarro() {

  tempoPowerUpCarro--;
      println("Tempo de powerUp:"+tempoPowerUpCarro/60);
  player.cor=color(0, 100, 100);
  for (int i=0; i<5; i++) {
    carroCima[i].cor=color(0, 0, 40);
    carroBaixo[i].cor=color(0, 0, 40);
  }

  if (tempoPowerUpCarro<=0) {
    tempoPowerUpCarro=600;
    tempo=600;
    player.cor=color(0, 0, 100);

    for (int i=0; i<5; i++) {
      carroCima[i].cor=color(0, 0, 0);
      carroBaixo[i].cor=color(0, 0, 0);
    }

    ativaColisaoCarro=false;
  }
}
