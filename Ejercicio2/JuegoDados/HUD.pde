class HUD {
  private String texto;
  private int num;
  
  public HUD(){
  }
  
   public void display(){ 
    fill(0);
    textSize(60);
    textAlign(RIGHT, TOP);

    switch (this.num){
      case 1: {
        texto = "-  UNO  -";
        break;
      }
      case 2: {
        texto = "-  DOS  -";
        break;
      }
      case 3: {
        texto = "-  TRES  -";
        break;
      }
      case 4: {
        texto = "-  CUATRO  -";
        break;
      }
      case 5: {
        texto = "-  CINCO  -";
        break;
      }
      case 6: {
        texto = "-  SEIS  -";
        break;
      }     
  }
    text(texto, width-100, 100);
}
// get and set
  public int getNum(){
    return this.num;
  }
  public void setNum(int num){
    this.num=num;
  }
}
