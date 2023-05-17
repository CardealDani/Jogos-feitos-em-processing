class Carro {

  float xCima, xBaixo, yCima, yBaixo, xspeedCima, xspeedBaixo, wid, hei;

  Carro(int ycarro) {
    xCima=w/1.0342;
    xBaixo=w/30.1666;
    yCima=h/6.712+ycarro*h/12.9076;
    yBaixo=h/1.8644+ycarro*h/12.9076;

    xspeedCima=int(random(-(w/72.4), -(w/217.2)));
    xspeedBaixo=int(random(w/217.2, w/72.4));
    wid=w/10.86;
    hei=h/20.975;
  }

  void mostrarCarroCima() {
    fill(0);
    image(imageAuxCima, xCima-wid/2, yCima-hei/2, wid, hei);
  }
  void mostrarCarroBaixo() {
    fill(0);
    image(imageAuxBaixo, xBaixo-wid/2, yBaixo-hei/2, wid, hei);
  }

  void updateCima() {
    xCima+=xspeedCima;
    if (xCima<=0-wid/2) {
      xCima=width+wid/2;
      xspeedCima=int(random(-(w/72.4), -(w/217.2)));
    }
  }

  void updateBaixo() {
    xBaixo+=xspeedBaixo;
    if (xBaixo>=width+wid/2) {
      xBaixo=0-wid/2;
      xspeedBaixo=int(random(w/217.2, w/72.4));
    }
  }
}
