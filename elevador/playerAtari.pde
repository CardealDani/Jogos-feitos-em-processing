
class Jogador {
  float x, y, tamx, tamy;
  float yspeed;
  Jogador() {
    x=w/3.62;
    y=h/1.0995;
    tamx=w/31.02857142857143;
    tamy=h/23.97142857142857;
  }
  void mostraEstado() {
    if (estadoGalinha==estado0)
      image(galinha, x-12.5, y-15, tamx, tamy);
    else if (estadoGalinha==estado1)
      image(galinha2, x-12.5, y-15, tamx, tamy);
    else if (estadoGalinha==estado2)
    image(galinha3, x-12.5, y-15, tamx, tamy);
  }
  void reset() {
    if (y<=h/10.89610) {
      y=h/1.0996;
      pontuacao++;
    }
    if (y>=h/1.0996)
      y=h/1.0996;
  }
  void uptade() {
    y+=yspeed;
  }
  void movimento(float move) {
    yspeed=move;
  }
  void colisaoCima(Carro c) {
    if (y-tamy/2<=c.yCima+c.hei/2 && y+tamy/2>=c.yCima-c.hei/2 ) {
      if (x-tamx/2<= c.xCima+c.wid/2 && x+tamx/2>=c.xCima-c.wid/2) {
        y=h/1.0996;
      }
    }
  }
  void colisaoBaixo(Carro c) {
    if (y-tamy/2<=c.yBaixo+c.hei/2 && y+tamy/2>=c.yBaixo-c.hei/2 ) {
      if (x-tamx/2<= c.xBaixo+c.wid/2 && x+tamx/2>=c.xBaixo-c.wid/2) {
        y=763;
      }
    }
  }
}
