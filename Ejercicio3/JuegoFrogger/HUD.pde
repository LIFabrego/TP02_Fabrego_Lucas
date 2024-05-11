class HUD{
  private String texto,texto2;
  //private int puntaje;
  //private int level;
  public HUD(){
  }
  public void display(){
    texto="RELOJ: --:--";
    fill(#D10D0D);
    text(texto,10,20);
    textSize(30);
    texto2=("PUNTAJE: ----");
    text(texto2,width/2,20);
  }
}
