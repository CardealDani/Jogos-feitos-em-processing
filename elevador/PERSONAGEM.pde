final int personagemBaixo=0;
final int personagemCentro=1;
final int personagemTopo=2;




final int rPARADO=0;

final int rANDANDO_D1=1;
final int rANDANDO_D2=2;

final int rANDANDO_E1=3;
final int rANDANDO_E2=4;

final int rCOSTAS=5;

final int rDORMINDO=6;
int estadoAux=rPARADO;
int estadoRoger=rPARADO;
int tempoRoger;


PImage rogerParado, rogerAndandoDireita1, rogerAndandoDireita2, rogerAndandoEsquerda1, rogerAndandoEsquerda2, rogerCostas, rogerDormindo;

int estadoPersonagem=personagemBaixo;

int tempoPersonagem;
boolean teste;
void personagem() {
  if (keyCode==UP) {
    estadoRoger=rCOSTAS;

    if (estado==BAIXO && estadoPersonagem==personagemBaixo) {
      if (xP>=w/2.556 && xP<=w/1.807 && yP>=h/1.29032) {
        tempoPersonagem=tempo;
        teste=true;
        if (tempoPersonagem>=30) {
          tempoPersonagem=0;
          estadoPersonagem=personagemCentro;
        }
      }
    } else if (estado==CENTROBAIXO && estadoPersonagem==personagemCentro) {
      if (xP>=w/2.556 && xP<=w/1.807 && yP>=h/2.395) {
        tempoPersonagem=tempo;

        teste=true;
        if (tempoPersonagem>=30) {
          tempoPersonagem=0;
          estadoPersonagem=personagemTopo;

      }
      }
    } else if (estado==TOPO && estadoPersonagem==personagemTopo) {
      if (xP>=w/2.556 && xP<=w/1.807 && yP>=0) {
        teste=true;
        tempoPersonagem=tempo;
        if (tempoPersonagem>=30) {
          tempoPersonagem=0;
          estadoPersonagem=personagemCentro;
        }
      }
    } else if (estado==CENTROTOPO &&  estadoPersonagem==personagemCentro) {
      if (xP>=w/2.556 && xP<=w/1.807 && yP>=h/2.395) {
        teste=true;

        tempoPersonagem=tempo;
        
        if (tempoPersonagem>=30) {
          tempoPersonagem=0;
          estadoPersonagem=personagemBaixo;

        }
      }
    }
  } else teste=false;
}
void mostraPersonagem() {

  fill(255, 0, 0);
  if (estadoPersonagem==personagemBaixo)
    yP=h/1.059602;
  if (estadoPersonagem==personagemCentro)
    yP=h/1.632653;
  if (estadoPersonagem==personagemTopo) {
    yP=(h/3.2)-hP/2;
  }
  if (teste) {
    yP=yP-h/40;
  }

  if (keyPressed) {
    if (keyCode==RIGHT) {
      estadoRoger=rANDANDO_D1;
      if (estadoRoger==rANDANDO_D1) {
        tempoRoger++;
        if (tempoRoger>=7) {
          tempoRoger=0;
          estadoRoger=rANDANDO_D2;
        }
      }
      if (estadoRoger==rANDANDO_D2) {
        tempoRoger++;
        if (tempoRoger>=7) {
          tempoRoger=0;
          estadoRoger=rANDANDO_D1;
        }
      }
    }
    if (keyCode==LEFT) {
      estadoRoger=rANDANDO_E1;

      if (estadoRoger==rANDANDO_E1) {
        tempoRoger++;
        if (tempoRoger>=7) {
          tempoRoger=0;
          estadoRoger=rANDANDO_E2;
        }
      }
      if (estadoRoger==rANDANDO_E2) {
        tempoRoger++;
        if (tempoRoger>=7) {
          tempoRoger=0;
          estadoRoger=rANDANDO_E1;
        }
      }
    }
  } else estadoRoger=estadoAux;
  if (deitado) {
    image(rogerDormindo, 0, 0, width, height);
    estadoRoger=rDORMINDO;
  }
  imageMode(CENTER);
  if (!deitado) {
    if (estadoRoger==rPARADO)
      image(rogerParado, xP, yP, wP, hP);
    if (estadoRoger==rANDANDO_D1)
      image(rogerAndandoDireita1, xP, yP, wP, hP);
    if (estadoRoger==rANDANDO_D2)
      image(rogerAndandoDireita2, xP, yP, wP, hP);
    if (estadoRoger==rANDANDO_E1)
      image(rogerAndandoEsquerda1, xP, yP, wP, hP);
    if (estadoRoger==rANDANDO_E2)
      image(rogerAndandoEsquerda2, xP, yP, wP, hP);
    if (estadoRoger==rCOSTAS)
      image(rogerCostas, xP, yP, wP, hP);
  }
  if (deitado==true) 
    estadoRoger=rDORMINDO;
  






  if (xP<=0+wP/2)
    xP=wP/2;
  if (xP>=width-wP/2)
    xP=width-wP/2;
}
