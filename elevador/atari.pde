Jogador player;
PFont fonte;
Carro [] carroCima =new Carro[5];
Carro [] carroBaixo =new Carro[5];

final int estado0=0;
final int estado1=1;
final int estado2=2;

int tempoEstados;
PImage back;
PImage[] imageBaixo=new PImage[5];
PImage[] imageCima=new PImage[5];
PImage imageAuxBaixo, imageAuxCima, smd, galinha, galinha2, galinha3;

int pontuacao, h, w;
int estadoGalinha=estado0;
void setupAtari() {
  
  rectMode(CENTER);

  fonte = createFont("data/AtariSmall.ttf", w/30, true);
  textFont(fonte);

  back= loadImage("back.png");
  smd=loadImage("smd.png");
  galinha=loadImage("galinha.png");
  galinha2=loadImage("galinha2.png");
  galinha3=loadImage("galinha3.png");
  player = new Jogador();

  for (int i=0; i<5; i++) {
    carroCima[i] =new Carro(i);
    carroBaixo[i] =new Carro(i);
  }
}
void drawAtari() {
  imageMode(CORNER);
  image(back, 0, 0, width, height);
  image(smd, w/1.1804, h/1.1261, w/7.24, h/5.5933);

  text("Pontos:"+ pontuacao, w/3.62, h/16.4655);

  player.mostraEstado();
  player.reset();
  player.uptade();



  for (int i=0; i<5; i++) {
    imageBaixo[i]=loadImage("carroBaixo"+i+".png");
    imageAuxBaixo=imageBaixo[i];
    imageCima[i]=loadImage("carroCima"+i+".png");
    imageAuxCima=imageCima[i];


    carroCima[i].mostrarCarroCima();
    carroBaixo[i].mostrarCarroBaixo();
    carroCima[i].updateCima();
    carroBaixo[i].updateBaixo();



    player.colisaoCima(carroCima[i]);
    player.colisaoBaixo(carroBaixo[i]);
  }
}
void keyPressedAtari() {
  if (keyCode==UP) {
    player.movimento(-(h/209.75));

    if (estadoGalinha==estado0) {
      tempoEstados++;
      if (tempoEstados>=5) {
        tempoEstados=0;
        estadoGalinha=estado1;
      }
    }
    if (estadoGalinha==estado1) {
      tempoEstados++;
      if (tempoEstados>=5) {
        tempoEstados=0;
        estadoGalinha=estado2;
      }
    }
    if (estadoGalinha==estado2) {
      tempoEstados++;
      if (tempoEstados>=5) {
        tempoEstados=0;
        estadoGalinha=estado0;
      }
    }
  } else if (keyCode==DOWN) {
    player.movimento(h/209.75);
    if (estadoGalinha==estado0) {
      tempoEstados++;
      if (tempoEstados>=5) {
        tempoEstados=0;
        estadoGalinha=estado1;
      }
    }
    if (estadoGalinha==estado1) {
      tempoEstados++;
      if (tempoEstados>=5) {
        tempoEstados=0;
        estadoGalinha=estado2;
      }
    }
    if (estadoGalinha==estado2) {
      tempoEstados++;
      if (tempoEstados>=5) {
        tempoEstados=0;
        estadoGalinha=estado0;
      }
    }
  }
}
void keyReleasedAtari() {
  player.movimento(0);
  estadoGalinha=estado0;
}
