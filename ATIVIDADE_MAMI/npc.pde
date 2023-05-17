final int wPARADO=0;
final int wMARTELANDO=1;

PImage wario, warioMartelando;
int estadoWario=wPARADO;
int tempo_w_parado=0;
int tempo_w_martelando=0;
int pontosNPC, pontoBonusNPC;
boolean bonusNPC;


void MEFWARIO() {
  int w=int(random(30));
  int aT=int(random(6, 20));
  println("PONTO bonus NPC:"+pontoBonusNPC);
  println("PONTO bonus :"+pontoBonus);

  if (estadoWario==wMARTELANDO) {
    tempo_w_martelando++;
    auxEsquerda=goombaAmassadoEsquerda;
    if (tempo_w_martelando>=aT) {
      auxEsquerda=goombaEsquerda;
      tempo_w_martelando=0;
      estadoWario=wPARADO;

      pontosNPC++;
      pontoBonusNPC++;
      if (pontoBonusNPC>=5) 
        bonusNPC=true;
    } else {
      bonusNPC=false;
    }
  }



if (estadoGangorra==ESQUERDA) {
  if (estadoWario==wPARADO) {
    tempo_w_parado++;
    if (tempo_w_parado>=w) {
      tempo_w_parado=0;
      estadoWario=wMARTELANDO;
    }
  }
}
}
void mostraWario() {
  if (estadoWario==wPARADO)
    image(wario, 0, 0);
  if (estadoWario==wMARTELANDO)
    image(warioMartelando, 0, 0);
}
