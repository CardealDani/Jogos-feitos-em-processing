final int BAIXO=0;
final int CENTROBAIXO=1;
final int TOPO=2;
final int CENTROTOPO=3;

int estado=BAIXO;
int tempo;
PImage elevadorBaixo, elevadorCentroBaixo, elevadorCentroTopo, elevadorTopo;


void MEF_ELEVADOR() {
  if (xP<=w/8.57142 && estadoPersonagem==TOPO) {
    image(caixa, 0, 0, width, height);
    balao=true;
  } else {
    balao=false;
    atari=false;
  }

  if (xP>=w/1.17647 && estadoPersonagem==TOPO){
    cama=true;
  } else {
    cama=false;
    deitado=false;
    camaAux=false;
  }
  if (camaAux)
    image(camaBalao, 0, 0, width, height);
    
  if (estado==BAIXO) {
    tempo++;
    estadoBack=FUNDOBAIXO;
    if (tempo>=31) {
      tempoPersonagem=0;
      tempo=0;
      estado=CENTROBAIXO;
    }
  } else if (estado==CENTROBAIXO) {
    tempo++;
    estadoBack=FUNDOCENTROBAIXO;
    if (tempo>=31) {
      tempoPersonagem=0;
      tempo=0;
      estado=TOPO;
    }
  } else if (estado==TOPO) {
    tempo++;
    estadoBack=FUNDOTOPO;
    if (tempo>=31) {
      tempoPersonagem=0;
      tempo=0;
      estado=CENTROTOPO;
    }
  } else if (estado==CENTROTOPO) {
    tempo++;
    estadoBack=FUNDOCENTROTOPO;
    if (tempo>=31) {
      tempoPersonagem=0;
      tempo=0;
      estado=BAIXO;
    }
  }
}

void estados() {
  imageMode(CORNER);

  if (estadoBack==FUNDOBAIXO)
    image(fundoBaixo, 0, 0, width, height);
  if (estadoBack==FUNDOCENTROBAIXO)
    image(fundoCentroBaixo, 0, 0, width, height);
  if (estadoBack==FUNDOTOPO)
    image(fundoTopo, 0, 0, width, height);
  if (estadoBack==FUNDOCENTROTOPO)
    image(fundoCentroTopo, 0, 0, width, height);
  if (estado==BAIXO)
    image(elevadorBaixo, 0, 0, width, height);
  else if (estado==CENTROBAIXO)
    image(elevadorCentroBaixo, 0, 0, width, height);
  else if (estado==TOPO)
    image(elevadorTopo, 0, 0, width, height);
  else if (estado==CENTROTOPO)
    image(elevadorCentroTopo, 0, 0, width, height);
}
