final int PARADO=0;
final int MARTELANDO=1;

boolean pressionado, acertou, bonus, contaBonus;

int tempoParado=0;
int tempoMartelando=0;
int estadoMario=PARADO;
PImage imgParado, imgMartelando;
int pontos, pontoBonus;

void MEFMARIO() {


  if (estadoMario==MARTELANDO) {
    auxDireita=goombaAmassadoDireita;
    tempoMartelando++;
    if (tempoMartelando>=15) {
      auxDireita=goombaDireita;
      tempoMartelando=0;
      estadoMario=PARADO;
    }
  }
  if (pontoBonus>=5) {
    bonus=true;
    contaBonus=false;
  }
}


void mostraMario(int estado) {
  imageMode(CORNER);

  if (estado==PARADO) {
    image(imgParado, 0, 0);
  }
  if (estado==MARTELANDO) {
    image(imgMartelando, 0, 0);
  }
}

void keyPressed() {

  if (key==' ' && estadoMario==PARADO&&(!pressionado)) {
    estadoMario=MARTELANDO;
    pressionado = true;
    acertou = false;

  }
  if (pressionado) {
    if (estadoGangorra == DIREITA)
      acertou = true;
  }
}

void keyReleased() {
  pressionado = false;
  if (!pressionado && acertou) {
    println("tecla solta");
    pontos++;
    pontoBonus++;
    contaBonus=true;
  }
}
