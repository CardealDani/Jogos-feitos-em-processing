

PImage back;
PFont  fonte;
boolean jogar;
void setup() {
  size(800, 600);
  fonte = createFont("ARCADE.ttf", 30, true);
  textFont(fonte);
  back=loadImage("back.png");
  imgCentro=loadImage("gCentro.png");
  imgDireita=loadImage("gDireita.png");
  imgEsquerda=loadImage("gEsquerda.png");
  imgParado=loadImage("mario.png");
  imgMartelando=loadImage("marioMartelando.png");
  goombaCentroDireita=loadImage("goombaCentroDireita.png");
  goombaCentroEsquerda=loadImage("goombaCentroEsquerda.png");
  goombaDireita=loadImage("goombaDireita.png");
  goombaEsquerda=loadImage("goombaEsquerda.png");
  goombaAmassadoDireita=loadImage("goombaAmassadoDireita.png");
  goombaAmassadoEsquerda=loadImage("goombaAmassadoEsquerda.png");
  auxDireita=loadImage("goombaDireita.png");
  auxEsquerda=loadImage("goombaEsquerda.png");
  wario=loadImage("wario.png");
  warioMartelando=loadImage("warioMartelando.png");
}

void draw() {
  image(back, 0, 0);
  if (jogar) {

    mostraGangorra(estadoGangorra);
    mostraMario(estadoMario);
    MEF();
    MEFMARIO();
    MEFWARIO();
    mostraWario();
    textos();
  } else
    inicio();
}
void inicio() {
  textAlign(CENTER);
  text("MARIO GANG", width/2, height/5);
  text("PRESSIONE 'ESPAÇO' PARA MARTELAR", width/2, height/3.5);
  text("SE VOCÊ OU O NPC ACERTAR 5 SEGUIDAS", width/2, height/2.5);
  text("GANHARÁ UM BONUS DE 4 SEGUNDOS", width/2, height/2.2);
  text("PRESSIONE 'ENTER' PARA CONTINUAR", width/2, height/1.8);
  if (keyCode==ENTER) {
    jogar=true;
  }
}
