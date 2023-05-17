String [] meses ={"Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", //<>// //<>//
  "Set", "Out", "Nov", "Dez"};
int [] Ano = new int [10];
float [] mediaAnos = new float [10];
float [][] vendasMes = new float  [10][12];
float x_anterior;
float y_anterior;
int t=30;
int  vendas, vendasAux=0;
float media;
float y, x;
int contador;

void setup() {
  size(700, 430);

  for (int i =0; i<Ano.length; i++) {
    Ano[i]=i+2013;
  }

  meses();
}



void draw() {
  background(200, 200, 250);
  grafico();
  d();
  for (int ano =0; ano<10; ano++) {
  }
}



void d() {
  for (int ano =0; ano<10; ano++) {
    for (int mes=1; mes<=12; mes++) {
    }

    x=ano*60+70;
    y=height-mediaAnos[ano]*t-50;
    fill(mediaAnos[ano]*35);
    rect(x, y, 40, mediaAnos[ano]*t);
    fill(0);
    textSize(20);
    text(Ano[ano], x+1, height-25);

    if (mouseX>=x && mouseX <=x+40 && mouseY>=y &&mouseY<=y+mediaAnos[ano]*t) {
      fill(0);
      rect(x, y-30, 50, 20);
      fill(255);
      text(nf(mediaAnos[ano]*10, 0, 2), x+2, y-15);
    }
  }
}


int teste;

void meses() {
  for (int ano =0; ano<10; ano++) {
    vendasAux=0;
    println(" ");
    for (int mes=1; mes<=12; mes++) {
      vendas=int(random(10, 100));
      vendasAux += vendas;
      println(Ano[ano] + " -  MES - " + meses[mes-1]+" - VENDAS - " + " " +vendas);
      vendasMes[ano][mes-1]=vendas;
    }
    //println(vendasAux);
    media=vendasAux/120.;

    mediaAnos[ano]=media;
    println("A média produtos vendidos durante o Ano de "+Ano[ano]+": "+nf(media*10, 0, 2));
  }
}



void grafico() {
  textSize(15);

  for ( int vendas=0; vendas<=10; vendas++) {
    int y=height-vendas*30-50;
    fill(0);
    text(vendas*10, 20, y);
    line(0, y, width, y);
  }
  textSize(15);
  text("Anos:", 15, height-27);
  text("Produtos ", 10, 30);
  text("Vendidos:", 10, 50);
}
