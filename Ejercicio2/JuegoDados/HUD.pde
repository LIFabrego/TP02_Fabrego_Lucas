class HUD{
  private String texto;
  
  public HUD(){
  }
  
   public void display(int num){ 
    fill(0);
    textSize(40);
    textAlign(RIGHT, TOP);

    switch (num){
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
    text(texto, width, 10);
}
}
