class Carro {

  int xCima, xBaixo, yCima, yBaixo, xspeedCima, xspeedBaixo, wid, hei;
  int cor=color(0,0,0);
  Carro(int ycarro, int xspeed) {
    xCima=1050;
    xBaixo=36;
    yCima=125+ycarro*65;
    yBaixo=450+ycarro*65;

    xspeedCima=xspeed;
    xspeedBaixo=xspeed;
    wid=100;
    hei=40;
  }

  void mostrarCarroCima() {
    fill(cor);
    rect(xCima, yCima, wid, hei);
  }
  void mostrarCarroBaixo() {
    fill(cor);
    rect(xBaixo, yBaixo, wid, hei);
  }
   

  void powerCima(int corPower) {
    strokeWeight(1);
    noStroke();
    fill(corPower,100,100);
    rect(xCima+wid+50, yCima, 30, hei);
    strokeWeight(3);
    stroke(0);
    line(xCima+wid-50, yCima+hei-38, xCima+wid+30, yCima+hei-38);
    
    if(player.x+player.tam>=xCima+wid+50 && player.x<=xCima+wid+80){
      if(player.y+player.tam>=yCima && player.y<=yCima+hei){
        
        if(corPower==200)
        ativaColisaoPlayer=true;
        if(corPower==0)
        ativaColisaoCarro=true;
      }
    }
    
  }
 
  void powerBaixo(int corPower) {
    strokeWeight(1);
    noStroke();
    fill(corPower,100,100);
    rect(xBaixo-170, yBaixo, 30, hei);
    strokeWeight(3);
    stroke(0);
    line(xBaixo, yBaixo+hei-38, xBaixo-150, yBaixo+hei-38);
     
     if(player.x+player.tam>=xBaixo-170 && player.x<=xBaixo-140){
      if(player.y+player.tam>=yBaixo && player.y<=yBaixo+hei){
        if(corPower==200)
        ativaColisaoPlayer=true;
        if(corPower==0)
        ativaColisaoCarro=true;
      }
    }
  }

  void updateCima() {
    strokeWeight(1);
    xCima+=xspeedCima;
    if (xCima<=0-wid/2) {
      xCima=width;
      xspeedCima=int(random(-10, -3));
    }
  }

  void updateBaixo() {
    xBaixo+=xspeedBaixo;
    if (xBaixo>=width+wid/2) {
      xBaixo=0;
      xspeedBaixo=int(random(3, 10));
    }
  }
}
