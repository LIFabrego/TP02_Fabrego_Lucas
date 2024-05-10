class Frogger{
  private PImage imagen;
  private PVector posicion;
  
  //constructor
  public Frogger(){
  }
  public Frogger(PVector posicion){
    this.posicion=posicion;
    imagen= loadImage("rana.png");
    image(imagen,this.posicion.x,this.posicion.y,50,50);
  }
  //metodo de clase
  public void display(){
  }
  // get and set
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion (PVector posicion){
    this.posicion=posicion;
  }
}
