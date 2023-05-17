class Jogador {
  int x, y, tam;
  int cor = color(0,0,100);
  float yspeed, xspeed;
  Jogador() {
    x=300;
    y=763;
    tam=35;
  }
  void mostrar() {
    fill(cor);
    rect(x, y, tam, tam);
    
    if(x-45<=0) x=0+45;
    else if(x+tam>=width) x=width-tam;
    
  }
  void reset() {
    if (y<=77) {
      y=763;
      pontuacao++;
    }

    if (y>=763) y=763;
  }
  void uptade() {
    x+=xspeed;
    y+=yspeed;
  }
  void movimento(float move) {
    if (keyCode==RIGHT||keyCode==LEFT)
      xspeed=move;
    else if (keyCode==UP||keyCode==DOWN)
      yspeed=move;
  }
  void colisaoCima(Carro c) {
    if (y-tam/2<=c.yCima+c.hei/2 && y+tam/2>=c.yCima-c.hei/2 ) {
      if (x-tam/2<= c.xCima+c.wid/2 && x+tam/2>=c.xCima-c.wid/2) {
        y=763;
      }
    }
  }
  void colisaoBaixo(Carro c) {
    if (y-tam/2<=c.yBaixo+c.hei/2 && y+tam/2>=c.yBaixo-c.hei/2 ) {
      if (x-tam/2<= c.xBaixo+c.wid/2 && x+tam/2>=c.xBaixo-c.wid/2) {
        y=763;
      }
    }
  }
}
