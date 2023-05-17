
final int DIREITA=0;
final int CENTRODIREITA=1;
final int ESQUERDA=2;
final int CENTROESQUERDA=3;

int g, gDireita;
int tempo=0;
int estadoGangorra=CENTROESQUERDA;
PImage imgCentro, imgDireita, imgEsquerda, goombaDireita, goombaEsquerda, goombaCentroDireita, goombaCentroEsquerda, goombaAmassadoDireita, goombaAmassadoEsquerda;
PImage auxDireita, auxEsquerda;
void MEF() {
  g=int(random(60, 120));


  if (bonus) {
    if (estadoGangorra==DIREITA) {
      tempo++;
      bonus(true);
      if (tempo>=240) {
        tempo=0;
        bonus=false;
        estadoGangorra=CENTRODIREITA;
      }
    }
  }
  if (!bonus) {
    if (estadoGangorra==DIREITA) {
      tempo++;
      if (tempo>=g) {
        tempo=0;
        estadoGangorra=CENTRODIREITA;
      }
    }
  }

  if (estadoGangorra==CENTRODIREITA) {
    tempo++;
    pontoBonus=0;

    if (tempo>=g) {
      tempo=0;
      estadoGangorra=ESQUERDA;
    }
  }
  if (bonusNPC) {
    if (estadoGangorra==ESQUERDA) {
      tempo++;
      bonus(false);
      if (tempo>=240) {
        tempo=0;
        bonusNPC=false;
        estadoGangorra=CENTROESQUERDA;
      }
    }
  }
  if (!bonusNPC) {
    if (estadoGangorra==ESQUERDA) {
      tempo++;
      if (tempo>=g) {
        tempo=0;
        estadoGangorra=CENTROESQUERDA;
      }
    }
  }

  if (estadoGangorra==CENTROESQUERDA) {
    tempo++;
    pontoBonus=0;
    pontoBonusNPC=0;
    if (tempo>=g) {
      tempo=0;
      estadoGangorra=DIREITA;
    }
  }
}

void mostraGangorra(int estado) {
  if (estado==DIREITA) {
    image(auxDireita, 0, 0);
    image(imgDireita, 0, 0);
  }
  if (estado==CENTRODIREITA) {
    image(goombaCentroDireita, 0, 0);
    image(imgCentro, 0, 0);
  }
  if (estado==ESQUERDA) {
    image(auxEsquerda, 0, 0);
    image(imgEsquerda, 0, 0);
  }
  if (estado==CENTROESQUERDA) {
    image(goombaCentroEsquerda, 0, 0);
    image(imgCentro, 0, 0);
  }
}

void bonus(boolean x) {
  textAlign(CENTER);
  if (x) {
    text("BÔNUS!!!", width/2, height/5);
    text("VOCÊ TEM 4 SEGUNDOS PARA PONTUAR MAIS!", width/2, height/4);
  }
  if (!x) {
    text("BÔNUS!!!", width/2, height/5);
    text("SEU OPONENTE TEM 4 SEGUNDOS PARA PONTUAR MAIS!", width/2, height/4);
  }
}
void textos() {
  textAlign(CENTER);
  text(pontosNPC, 249, 60);
  text(pontos, 553, 60);
  text("VS",400,60);
}
