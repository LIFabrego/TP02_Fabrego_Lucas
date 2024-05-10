class Dado extends GameObject{
  private PVector posicion;
  private PImage imagen;
  //private float aux1;
  private int n;
  //constructor
  public Dado(){
  }
  
  public Dado(PVector posicion,int n){
    this.posicion=posicion;
    this.n=n;    
    dibujarNumero();
    image(imagen,this.posicion.x,this.posicion.y,200,200);
  }
  
  //metodo de clase
  public void display(){
    dibujarNumero();
    image(imagen,this.posicion.x,this.posicion.y,200,200);
  }
  
  public void dibujarNumero(){
      switch(this.n){
      case 1:{
        imagen = loadImage("num1.png"); 
        
        break;
      }
      case 2:{
        imagen = loadImage("num2.png");
        break;
      }
      case 3:{
        imagen = loadImage("num3.png");
        break;
      }
      case 4:{
        imagen = loadImage("num4.png");
        break;
      }
      case 5:{
        imagen = loadImage("num5.png");
        break;
      }
      case 6:{
        imagen = loadImage("num6.png");
        break;
      }
    }
  }

  //get and set
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  public int getN (){
    return this.n;
  }
  public void setN(int n){
    this.n=n;
  }
}
