int[][]mTeste=new int [5][5];

int[][]guardaMatrix=new int[5][5];
int[][]virarMatrix=new int[5][5];

int cont;
int [][] matrix(int n, int v) {
  int[][] M= new int [n][n];
  for (int i=0; i<M.length; i++) {
    println();
    for (int j=0; j<M[0].length; j++) {
      M[i][j]=int(random(0, v));
      textSize(30);
      fill(0);
      text(M[j][i], i*100+40, j*100+50);
    }
  }
  println();
  return M;
}


void setup() {
  size(500, 500);
  desenho();
  mTeste=matrix(5, 13);
  println("BOAS VINDAS AO JOGO DO 21");
   println("CRIADO POR: DANIEL CARDEAL");
  println("SEU OBJETIVO É SORTEAR NA TELA AS CARTAS E ATINGIR 21");
  println("SE ULTRAPASSAR 21, VOCÊ PERDE, SE BATER 21, VOCÊ VENCE");
  println("BOAS SORTE");
}

void desenho() {
  for (int i=0; i<5; i++) {
    for (int j=0; j<5; j++) {

      virarMatrix[i][j]=1;
      fill(0);
      stroke(255);
      rect(i*100, j*100, 100, 100);
    }
  }
}

void draw() {
}

void mousePressed() {
  int mX=mouseX/100;
  int mY=mouseY/100;
  guardaMatrix=mTeste;

  println();
  virarMatrix[mX][mY]=0;
  if (virarMatrix[mX][mY]==0) {

    fill(255);
    stroke(0);
    rect(mX*100, mY*100, 100, 100);
    fill(0);
    text(guardaMatrix[mX][mY], mX*100+40, mY*100+50);
  }



  cont+=mTeste[mX][mY];
  println("Numero escolhido:"+guardaMatrix[mX][mY]);

  println("Pontuação="+cont);
  if (cont>21) {
    println("Perdeu, sua pontuação ultrapassou o limite");
  } else if (cont==21)
    println("PARABÉNS, sua pontuação atingiu o limite");
}
