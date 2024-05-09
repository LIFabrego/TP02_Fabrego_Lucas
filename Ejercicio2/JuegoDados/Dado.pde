class Dado extends GameObject{
  private PVector posicion;
  private float ancho;
  private float aux1;
  private int n;
  //constructor
  public Dado(){
  }
  
  public Dado(PVector posicion,int n){
    this.ancho=250;
    this.posicion=posicion;
    this.n=n;
    fill(#FFFCFC);
    fill(#B76309);
    strokeWeight(10);
    rect(this.posicion.x,this.posicion.y,this.ancho,this.ancho);
    fill(0);    
    dibujarNumero();
  }
  
  //metodo de clase
  public void display(){
    fill(#FFFCFC);
    fill(#B76309);
    strokeWeight(10);
    rect(this.posicion.x,this.posicion.y,this.ancho,this.ancho);
    fill(0);
    dibujarNumero();
  }
  
  public void dibujarNumero(){
    aux1=this.ancho/6;
      switch(this.n){
      case 1:{
        circle(this.posicion.x+this.ancho/2,this.posicion.y+this.ancho/2,aux1);
        break;
      }
      case 2:{
        circle(this.posicion.x+aux1,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1*5,aux1);
        break;
      }
      case 3:{
        circle(this.posicion.x+this.ancho/2,this.posicion.y+this.ancho/2,aux1);
        circle(this.posicion.x+aux1,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1*5,aux1);
        break;
      }
      case 4:{
        circle(this.posicion.x+aux1,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1*5,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1,this.posicion.y+aux1*5,aux1);
        break;
      }
      case 5:{
        circle(this.posicion.x+aux1,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1*5,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1,this.posicion.y+aux1*5,aux1);
        circle(this.posicion.x+this.ancho/2,this.posicion.y+this.ancho/2,aux1);
        break;
      }
      case 6:{
        circle(this.posicion.x+aux1,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1*5,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1,aux1);
        circle(this.posicion.x+aux1,this.posicion.y+aux1*5,aux1);
        circle(this.posicion.x+aux1,this.posicion.y+aux1*3,aux1);
        circle(this.posicion.x+aux1*5,this.posicion.y+aux1*3,aux1);
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
  
  public float getAncho(){
     return this.ancho;
  }
  public void setAncho(float ancho){
    this.ancho=ancho;
  }
  public int getN (){
    return this.n;
  }
  public void setN(int n){
    this.n=n;
  }
}
