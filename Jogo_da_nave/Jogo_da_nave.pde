//LEMBRETE-CRIAR IMAGEM PARA O RESET , COLOCAR ELA DENTRO DE UMA FUNÇÃO E FAZER ELE APARECER SOMENTE QUANDO O USUARIO PERDER.--- reset e voltar-só quando o usuário perder ou pausar;= se perder aparecem na tela , caso seja por pausa ele só aparece lá.
void intro() {
  rectMode(CORNER);
  fill(255);
  rect(0, 0, width, height);
  image(intro, 0, 0, w, h);
  fill(0);
  textAlign(CENTER);
  textSize(w/20);
  text("Boas vindas ao", width/2, height/6);
  text("Bomb-Shield", width/2, height/4.285);
  image(escolha, 0, 0, w, h);
  //classico
  if (mouseX>=w/3.076 && mouseX<=(w/3.076)+(w/6) && mouseY>=h/1.6 && mouseY<=(h/1.6)+(h/8))
    image(classicoG, 0, 0, w, h);
  //naruto
  else if (mouseX>=w/1.967 && mouseX<=(w/1.967)+(w/6) && mouseY>=h/1.6 && mouseY<=(h/1.6)+(h/8))
    image(narutoG, 0, 0, w, h);
  //goku
  else if (mouseX>=w/4.285 && mouseX<=(w/4.285)+(w/6) && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8))
    image(gokuG,0,0,w,h);
 else if (mouseX>=w/2.4 && mouseX<=(w/2.4)+(w/6) && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8))
    image(megamenG,0,0,w,h);
  else if(mouseX>=w/1.6666 && mouseX<=w/1.3043 && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8)){
    image(provaG,0,0,w,h);
  }
  
  introB=true;
}
void classico() {
  rectMode(CORNER);
  image(auxClassico, 0, 0, w, h);
  image(bombaClassico, 0, b1Y, w, h);
  image(bombaClassico, w/6.45, b2Y, w, h);
  image(bombaClassico, w/2.4, b3Y, w, h);
  image(bombaClassico, w/1.7, b4Y, w, h);
  image(escudoClassico, eX, eY, w, h);
  image(naveClassico, 0, 0, w, h);
  strokeWeight(3);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  stroke(1);
  textAlign(CORNER);
  fill(255);
  textSize(w/25);
  text("PONTUAÇÃO="+pontos, 0, h/9);
  text("ESCUDO="+e, 0, h/1.37);
}

void naruto() {
  rectMode(CORNER);
  image(auxNaruto, 0, 0, w, h);
  image(bombaNaruto, 0, b1Y, w, h);
  image(bombaNaruto, w/6.45, b2Y, w, h);
  image(bombaNaruto, w/2.4, b3Y, w, h);
  image(bombaNaruto, w/1.7, b4Y, w, h);
  image(escudoNaruto, eX, eY, w, h);
  strokeWeight(3);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  stroke(1);
  textAlign(CORNER);
  fill(255);
  textSize(w/25);
  text("PONTUAÇÃO="+pontos, 0, h/9);
  text("ESCUDO="+e, 0, h/1.37);
}
void goku() {
  rectMode(CORNER);
  image(auxGoku, 0, 0, w, h);
  image(bombaGoku, 0, b1Y, w, h);
  image(bombaGoku, w/6.45, b2Y, w, h);
  image(bombaGoku, w/2.4, b3Y, w, h);
  image(bombaGoku, w/1.7, b4Y, w, h);
  image(escudoGoku, eX, eY, w, h);
  image(naveGoku, 0, 0, w, h);
  strokeWeight(3);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  stroke(1);
  textAlign(CORNER);
  fill(255);
  textSize(w/25);
  text("PONTUAÇÃO="+pontos, 0, h/9);
  text("ESCUDO="+e, 0, h/1.37);
}
void megamen() {
  rectMode(CORNER);
  image(auxMegamen, 0, 0, w, h);
  image(bombaMegamen, 0, b1Y, w, h);
  image(bombaMegamen, w/6.45, b2Y, w, h);
  image(bombaMegamen, w/2.4, b3Y, w, h);
  image(bombaMegamen, w/1.7, b4Y, w, h);
  image(escudoMegamen, eX, eY, w, h);
  image(naveMegamen, 0, 0, w, h);
  strokeWeight(3);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  stroke(1);
  textAlign(CORNER);
  fill(255);
  textSize(w/25);
  text("PONTUAÇÃO="+pontos, 0, h/9);
  text("ESCUDO="+e, 0, h/1.37);
}
void prova() {
  colorMode(HSB,360,100,100);
  background(254, 43, 39);
  fill(14, 80, 60);
  triangle(w2, 0.05*h, 0.95*w, 0.075*h, 0.05*w, 0.075*h);
  rectMode(CORNERS);
  rect(0.05*w, 0.075*h, 0.95*w, 0.0916*h);
  arc(w2, 0.091*h, 0.9*w, 0.075*h, radians(0), radians(180));
  rectMode(CORNER);
  fill(134, 43, 39);
  rect(0, 0.925*h, w, h);
  rect(0, 0.9083*h, 0.125*w, 0.083*h);
  rect(0.875*w, 0.9083*h, 0.125*w, 0.083*h);
  rectMode(CENTER);
  rect(w2, 0.9166*h, 0.125*w, 0.075*h);
  rect(w2, 0.933*h, 0.2*w, 0.083*h);
  rect(w2, 0.95*h, 0.2758*w, 0.083*h);
  rectMode(CORNER);
  rect(0.0625*w, 0.8583*h, 0.0365*w, h);
  rect(0.9*w, 0.8583*h, 0.0365*w, h);
  triangle(0.08*w, 0.833*h, 0.0625*w, 0.8583*h, 0.1*w, 0.8583*h);
  triangle(0.9175*w, 0.833*h, 0.9375*w, 0.8583*h, 0.9*w, 0.8583*h);
  stroke(255, 0, 100);
  noFill();
  arc(w2, 0.875*h, 0.125*w, 0.05*h, radians(180), radians(360));
  fill(0);
  noStroke();
  ellipse(0.075*w, b1Y, 0.0625*w, 0.041666*h);
  ellipse(0.3375*w, b2Y, 0.0625*w, 0.041666*h);
  ellipse(0.66*w, b3Y, 0.0625*w, 0.041666*h);
  ellipse(0.9375*w, b4Y, 0.0625*w, 0.041666*h);
   colorMode(RGB);
   textAlign(CORNER);
   fill(255);
  text("PONTUAÇÃO="+pontos, 0, h/6);
  text("ESCUDO="+e, 0, h/1.37);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  fill(255);
  textAlign(CENTER);
  text(auxProva,w2,h2);
}
float b1Y, b2Y, b3Y, b4Y, eY;
float eX, j, jE;

int h;
int w;
int w2;
int h2;

//Classico
PImage classicoG;
PImage auxClassicoG;
PImage naveClassico;
PImage escudoClassico;
PImage bombaClassico;
PImage cidadeClassico;
PImage cidadeClassicoDestruida;
PImage auxClassico;
//
//Naruto
PImage narutoG;
PImage auxNarutoG;
PImage cidadeNaruto;
PImage cidadeNarutoDestruida;
PImage escudoNaruto;
PImage bombaNaruto;
PImage auxNaruto;
//
//Goku
PImage gokuG;
PImage auxGokuG;
PImage naveGoku;
PImage escudoGoku;
PImage bombaGoku;
PImage cidadeGoku;
PImage cidadeGokuDestruida;
PImage auxGoku;
//
//Megamen
PImage megamenG;
PImage auxMegamenG;
PImage naveMegamen;
PImage escudoMegamen;
PImage bombaMegamen;
PImage cidadeMegamen;
PImage cidadeMegamenDestruida;
PImage auxMegamen;
PImage menuPausa;
//
//prova
PImage provaG;


PImage comSom;
PImage semSom;
PImage intro;
PImage escolha;
int pontos;
int e;
int corE=0;
boolean start, classico, naruto, megamen, goku,prova, Bprova, Bclassico, Bmegamen, Bgoku, Bnaruto, introB, reset, bGa, bCa, bNa, bMa,bPa;
boolean end, testeBugAltura;
boolean auxStart ;
int auxR;
boolean menuPause, BmenuPause, auxReset;
int auxSom;
float ampSom;
String auxProva;

import processing.sound.*;
SoundFile som;
SoundFile somEscudo;
SoundFile somVidaEscudo;
//SoundFile gameOver;

void setup() {
  
  size(600, 800);
  noStroke();
  h=height;
  w=width;
  h2=height/2;
  w2=width/2;
  intro=loadImage("telaInicial.png");
  escolha=loadImage("escolha.png");
  menuPausa=loadImage("menuPausa.png");
  comSom=loadImage("som.png");
  semSom=loadImage("semSom.png");
  ampSom=0.1;

  somEscudo=new SoundFile(this, "somEscudo.mp3");
  somVidaEscudo = new SoundFile(this, "somVidaEscudo.mp3");
  som = new SoundFile(this, "fundo.mp3");
  som.amp(ampSom);
  som.loop();
  somEscudo.amp(ampSom);
  somVidaEscudo.amp(ampSom);
  //CLASSICO
  classicoG=loadImage("classicoG.png");
  naveClassico=loadImage("naveClassico.png");
  bombaClassico=loadImage("bombaClassico.png");
  escudoClassico=loadImage("escudoClassico.png");
  cidadeClassico=loadImage("cidadeClassico.png");
  cidadeClassicoDestruida=loadImage("cidadeClassicoDestruida.png");
  auxClassico=cidadeClassico;
  //
  //NARUTO
  narutoG=loadImage("narutoG.png");
  cidadeNaruto=loadImage("cidadeNaruto.png");
  cidadeNarutoDestruida=loadImage("cidadenarutoDestruido.png");
  bombaNaruto=loadImage("bombaNaruto.png");
  auxNaruto=cidadeNaruto;
  escudoNaruto=loadImage("escudoNaruto.png");
  //GOKU
  gokuG=loadImage("gokuG.png");
  naveGoku=loadImage("naveGoku.png");
  bombaGoku=loadImage("bombaGoku.png");
  escudoGoku=loadImage("escudoGoku.png");
  cidadeGoku=loadImage("cidadeGoku.jpg");
  cidadeGokuDestruida=loadImage("cidadeGokuDestruida.png");
  auxGoku=cidadeGoku;
  //
  //MEGAMEN
  megamenG=loadImage("megamenG.png");
  naveMegamen=loadImage("naveMegamen.png");
  bombaMegamen=loadImage("bombaMegamen.png");
  escudoMegamen=loadImage("escudoMegamen.png");
  cidadeMegamen=loadImage("cidadeMegamen.png");
  cidadeMegamenDestruida=loadImage("cidadeMegamenDestruida.png");
  auxMegamen=cidadeMegamen;
  //
  //prova
  provaG=loadImage("provaG.png");

  pontos=0;
  e=20;
  eX=w/2;
  intro();
  end=false;
  auxSom=0;
}

void draw() {
  println(ampSom);
  introB=false;
  if (auxStart) {
    if (start) {
      logica();
    }

    if (classico) {
      classico();
    } else if (naruto) {
      naruto();
    } else if (goku) {
      goku();
    } else if (megamen) {
      megamen();
    }
    else if(prova){
      prova();
    }
  } else {
    intro();
    if (introB) {
      Bmegamen=true;
      Bgoku=true;
      Bclassico=true;
      Bnaruto=true;
      Bprova=true;
      reset=false;
      BmenuPause=false;
      bGa=true;
      bNa=true;
      bCa=true;
      bMa=true;
      bPa=true;
    } else {
      Bmegamen=false;
      Bgoku=false;
      Bclassico=false;
      Bnaruto=false;
      Bprova=false;
      bGa=false;
      bNa=false;
      bCa=false;
      bMa=false;
      bPa=false;
    }
    reset();
  }


  //if (mouseButton==LEFT) {
  //  //classico
  //  //som.amp(0.09);
}
void mousePressed() {
  if (reset==true && menuPause==true) {

    //home
    if (mouseX>=w/3.5294 && mouseX<=w/2.0689 && mouseY>=h/2 && mouseY <=h/1.5384) {
      auxStart=false;
    }
    //resetar pontuação
    if (mouseX>=w/1.93548 && mouseX<=w/1.39534 && mouseY>=h/2 && mouseY <=h/1.5384) {
      reset();
      antiReset();
    }
    //som
    if (mouseX<=w/5.94059 && mouseY>=h/1.40350 && mouseY<=h/1.19225) {
      if (mouseButton==LEFT) {
        auxSom++;
        
      }
      if (auxSom%2==0) {
        som.play();
        image(comSom, 0, 0, w, h);
      } else {
        som.stop();
        image(semSom, 0, 0, w, h);
      }
    }
  }
  if (Bclassico) {
    if (mouseX>=w/3.076 && mouseX<=(w/3.076)+(w/6) && mouseY>=h/1.6 && mouseY<=(h/1.6)+(h/8)) {
      start=true;
      auxStart=true;
      classico=true;
      megamen=false;
      goku=false;
      naruto=false;
      Bmegamen=false;
      prova=false;
      Bprova=false;
      Bgoku=false;
      Bnaruto=false;
      reset=true;
      BmenuPause=true;
      bGa=false;
      bNa=false;
      bCa=true;
      bMa=false;
      bPa=false;
      Bclassico=false;
    }
  }

  if (Bnaruto) {
    if (mouseX>=w/1.967 && mouseX<=(w/1.967)+(w/6) && mouseY>=h/1.6 && mouseY<=(h/1.6)+(h/8)) {
      start=true;
      auxStart=true;
      classico=false;
      naruto=true;
      megamen=false;
      goku=false;
      Bmegamen=false;
      Bgoku=false;
      Bclassico=false;
      reset=true;
      BmenuPause=true;
      prova=false;
      Bprova=false;
      bNa=true;
      bGa=false;
      bCa=false;
      bMa=false;
      bPa=false;
      Bnaruto=false;
    }
  }
  //goku
  if (Bgoku) {
    if (mouseX>=w/4.285 && mouseX<=(w/4.285)+(w/6) && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8)) {
      start=true;
      auxStart=true;
      goku=true;
      megamen=false;
      classico=false;
      naruto=false;
      Bmegamen=false;
      Bclassico=false;
      Bnaruto=false;
      reset=true;
      BmenuPause=true;
      prova=false;
      Bprova=false;
      bGa=true;
      bNa=false;
      bCa=false;
      bMa=false;
      bPa=false;
      Bgoku=false;
    }
  }
  //megamen
  if (Bmegamen) {
    if (mouseX>=w/2.4 && mouseX<=(w/2.4)+(w/6) && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8)) {
      start=true;
      auxStart=true;
      megamen=true;
      goku=false;
      classico=false;
      naruto=false;
      prova=false;
      Bprova=false;
      Bclassico=false;
      Bnaruto=false;
      Bgoku=false;
      reset=true;
      BmenuPause=true;
      bGa=false;
      bNa=false;
      bCa=false;
      bMa=true;
      bPa=false;
      Bmegamen=false;
    }
  }
  if(bPa==true && !(mouseY>=h/1.6 && mouseY<=h/1.333)){
  e+=2;
  }
  if(mouseY>=h/1.6 && mouseY<=h/1.333){
    if (b1Y>=h/1.775 && b1Y<=h/1.403) {
      b1Y=0;
      pontos++;
    }

    if (b2Y>=h/1.775 && b2Y<=h/1.403) {
      b2Y=0;
      pontos++;
    }
    if ( b3Y>=h/1.775 && b3Y<=h/1.403) {
      b3Y=0;
      pontos++;
    }
    if (b4Y>=h/1.775 && b4Y<=h/1.403) {
      b4Y=0;
      pontos++;
    }
  }
  //prova
  if(Bprova){
    if(mouseX>=w/1.6666 && mouseX<=w/1.3043 && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8)){
  start=true;
      auxStart=true;
      megamen=false;
      goku=false;
      classico=false;
      naruto=false;
      Bnaruto=false;
      Bgoku=false;
      Bclassico=false;
      Bprova=false;
      prova=true;
      reset=true;
      BmenuPause=true;
      bGa=false;
      bNa=false;
      bCa=false;
      bMa=false;
      bPa=true;
      Bmegamen=false;
  }
}
}
void keyPressed() {
  logicaBotoes();
  if (keyCode==32 && BmenuPause==true) {//espaço pausa
    menuPause=!(menuPause);
    if (menuPause) {
      start=false;
      if (bGa) {
        goku=false;
      } else if (bCa) {
        classico=false;
      } else if (bMa) {
        megamen=false;
      } else if (bNa) {
        naruto=false;
      }
      else if(bPa){
        prova=false;
      }
      menuPausa();
    } else {
      antiReset();
    }
  }

 
}
void menuPausa() {
  image(menuPausa, 0, 0, w, h);
}
void logicaBotoes() {
  if(keyCode==LEFT){
    ampSom-=0.0001;
  }
  if(keyCode==RIGHT){
    ampSom+=0.001;
  }
  if (keyCode==ENTER) {
    start=true;
    somEscudo.play();
    e--;
    if (e<=15) {
      corE=100;
    }
    if (e<=10) {
      corE=150;
    }
    if (e<=5) {
      corE=200;
    }
    if (e<=2) {
      corE=255;
    }

    if (e<=0) {
      b1Y=h;
      b2Y=h;
      b3Y=h;
      b4Y=h;
      eY=h;
      e++;
      end=true;
    }
    if (b1Y>=h/1.775 && b1Y<=h/1.403) {
      b1Y=0;
      pontos++;
    }

    if (b2Y>=h/1.775 && b2Y<=h/1.403) {
      b2Y=0;
      pontos++;
    }
    if ( b3Y>=h/1.775 && b3Y<=h/1.403) {
      b3Y=0;
      pontos++;
    }
    if (b4Y>=h/1.775 && b4Y<=h/1.403) {
      b4Y=0;
      pontos++;
    }
    if (eY>=h/1.775 && eY<=h/1.403) {
      eY=0;
      e+=10;
      corE=0;
      somVidaEscudo.play();
    }
  }
  if (pontos>=30) {
    j+=h/20000;
    jE+=h/40000;
  }
}
void logica() {
  b1Y+=(random(0, h/100))+j;
  b2Y+=(random(0, h/133.33))+j;
  b3Y+=(random(0, h/88.88))+j;
  b4Y+=(random(0, h/114.28))+j;
  eY+=(random(0, h/400))+jE;

  if (b1Y>=h) {
    b2Y=h;
    b3Y=h;
    b4Y=h;
    eY=h;
    e=0;
    end=true;
  }
  if (b2Y>=h) {
    b2Y=h;
    b3Y=h;
    b4Y=h;
    eY=h;
    e=0;
    end=true;
  }
  if (b3Y>=h) {
    b1Y=h;
    b2Y=h;
    b4Y=h;
    eY=h;
    e=0;
    end=true;
  }
  if (b4Y>=h) {
    b1Y=h;
    b2Y=h;
    b3Y=h;
    eY=h;
    e=0;
    end=true;
  }
  println(e);
  if (end) {
    auxClassico=cidadeClassicoDestruida;
    auxGoku=cidadeGokuDestruida;
    auxMegamen=cidadeMegamenDestruida;
    auxNaruto=cidadeNarutoDestruida;
    auxProva="BOOOOOOoooooOOOOoooMMmmmmm";
    //gameOver=new SoundFile(this, "gameOver.mp3");
    //gameOver.play();
  } else {
    auxClassico=cidadeClassico;
    auxGoku=cidadeGoku;
    auxMegamen=cidadeMegamen;
    auxNaruto=cidadeNaruto;
    auxProva="";
  }
}

void reset() {
  menuPause=false;
  b1Y= 0;
  b2Y= 0;
  b3Y= 0;
  b4Y= 0;
  eY = 0;
  e=20;
  corE=100;
  end=false;
  pontos=0;
}
void antiReset() {
if (bGa) {
        goku=true;
      } else if (bCa) {
        classico=true;
      } else if (bMa) {
        megamen=true;
      } else if (bNa) {
        naruto=true;
      }
      else if(bPa){
        prova=true;
      }
      start=true;
}
