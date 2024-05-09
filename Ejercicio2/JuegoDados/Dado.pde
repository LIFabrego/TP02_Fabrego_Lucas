class Dado extends GameObject{
  // atributos
  private PVector posicion;
  private float ancho;
  private float aux1;
  //constructor
  public Dado(){
  }
  
  public Dado(float x,float y){
    rect(x,y,width/2,width/2);
  }
  
  public Dado(float x,float y,int n){
    fill(#FFFCFC);
    ancho=300;
    aux1=ancho/6;
    rect(x,y,ancho,ancho);
    fill(0);
    
      switch(n){
      case 1:{
        circle(x+ancho/2,y+ancho/2,aux1);
        break;
      }
      case 2:{
        circle(x+aux1,y+aux1,aux1);
        circle(x+aux1*5,y+aux1*5,aux1);
        break;
      }
      case 3:{
        circle(x+ancho/2,y+ancho/2,aux1);
        circle(x+aux1,y+aux1,aux1);
        circle(x+aux1*5,y+aux1*5,aux1);
        break;
      }
      case 4:{
        circle(x+aux1,y+aux1,aux1);
        circle(x+aux1*5,y+aux1*5,aux1);
        circle(x+aux1*5,y+aux1,aux1);
        circle(x+aux1,y+aux1*5,aux1);
        break;
      }
      case 5:{
        circle(x+aux1,y+aux1,aux1);
        circle(x+aux1*5,y+aux1*5,aux1);
        circle(x+aux1*5,y+aux1,aux1);
        circle(x+aux1,y+aux1*5,aux1);
        circle(x+ancho/2,y+ancho/2,aux1);
        break;
      }
      case 6:{
        circle(x+aux1,y+aux1,aux1);
        circle(x+aux1*5,y+aux1*5,aux1);
        circle(x+aux1*5,y+aux1,aux1);
        circle(x+aux1,y+aux1*5,aux1);
        circle(x+aux1,y+aux1*3,aux1);
        circle(x+aux1*5,y+aux1*3,aux1);
        break;
      }
    }
  }
  //metodos de clase
    public void display(){
    }
  //get and set
  public PVector posicion(){
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
  
  public float getAux1(){
    return this.aux1;
  }
  
  public void setAux1(float ancho){
    this.aux1=ancho/6;
  }
}
