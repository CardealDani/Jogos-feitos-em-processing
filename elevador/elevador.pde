final int FUNDOBAIXO=0;
final int FUNDOCENTROBAIXO=1;
final int FUNDOTOPO=2;
final int FUNDOCENTROTOPO=3;
PImage fundo, fundoBaixo, fundoCentroBaixo, fundoTopo, fundoCentroTopo, caixa, camaBalao, skip;
int estadoBack=FUNDOBAIXO;
float xP, yP, wP, hP;
boolean atari, balao, cama, deitado, camaAux, inicio;

void setup() {
  size(500, 500);
  w=width;
  h=height;
  xP=w/12;
  hP=h/11.42857;
  yP=height-hP/2;
  wP=w/15;


  skip=loadImage("img/skip.png");
  fundo=loadImage("img/fundo.png");
  elevadorBaixo=loadImage("img/elevadorBaixo.png");
  elevadorCentroBaixo=loadImage("img/elevadorCentroBaixo.png");
  elevadorCentroTopo=loadImage("img/elevadorCentroTopo.png");
  elevadorTopo=loadImage("img/elevadorTopo.png");
  caixa=loadImage("img/caixa.png");
  camaBalao=loadImage("img/camaBalao.png");

  fundoBaixo=loadImage("img/fundoBaixo.png");
  fundoCentroBaixo=loadImage("img/fundoCentroBaixo.png");
  fundoTopo=loadImage("img/fundoTopo.png");
  fundoCentroTopo=loadImage("img/fundoCentroTopo.png");

  rogerParado=loadImage("img/rogerParado.png");
  rogerAndandoDireita1=loadImage("img/rogerAndandoDireita1.png");
  rogerAndandoDireita2=loadImage("img/rogerAndandoDireita2.png");
  rogerAndandoEsquerda1=loadImage("img/rogerAndandoEsquerda1.png");
  rogerAndandoEsquerda2=loadImage("img/rogerAndandoEsquerda2.png");
  rogerCostas=loadImage("img/rogerCostas.png");
  rogerDormindo=loadImage("img/DORMINDO.png");
  setupAtari();
}
int f=300;
void draw() {
  //animação começo
  if (!inicio) {
    imageMode(CORNER);
    image(fundo, 0, 0, width, height);
    image(skip, 0, 0, width, height);
    rectMode(CORNERS);
    fill(0, f);
    rect(0, 0, width, height);
    f-=3;
    println(f);
    if (keyPressed)
      f=0;
    if (f<=0) {
      f=0;
      inicio=true;
    }
  } 
  if (inicio) {
    if (!atari) {
      imageMode(CORNER);
      image(fundo, 0, 0, width, height);
      MEF_ELEVADOR();
      estados();
      mostraPersonagem();
      personagem();

      if (keyPressed) {
        if (keyCode==LEFT)
          xP-=w/60;
        if (keyCode==RIGHT)
          xP+=w/60;
      }
    }
  }

  if (atari) {
    drawAtari();  
  }
}

int contador;
void keyPressed() {

  if ( balao) {
    if (keyCode==ENTER)
      contador++;

    if (contador%2==0)
      atari=false;

    else if (contador%2==1)
      atari=true;
    if (atari)
      keyPressedAtari();
  }
  if (cama) {
    camaAux=true;
    if (keyCode==ENTER) {
      contador++;
      if (contador%2==0) {
        deitado=false;
      } else if (contador%2==1) {
        deitado=true;
        cama=false;
        camaAux=false;
      }
    }
  }
}
void keyReleased() {
  if (atari)
    keyReleasedAtari();
}
