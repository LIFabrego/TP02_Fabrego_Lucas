class Hud{
  private String texto;
  private Shooter nave;
  private int vid;
  
  public void mostrarVidasNave(){
    vid = 5;
    texto = "cantidad de vidas: -           "; 
    fill(#FFFFFF);
    textSize(30);
    textAlign(RIGHT, TOP);
    text(texto, width, 10);
    text(vid, width, 10);
  }
  
  public Shooter getNave(){
    return this.nave;
  }
  public void setNave(Shooter nave){
    this.nave=nave;
  }
}
