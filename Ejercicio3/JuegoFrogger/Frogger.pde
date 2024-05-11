class Frogger{
  private PImage imagen;
  private PVector posicion;
  
  //constructor
  public Frogger(){
  }
  
  public Frogger(PVector posicion){
    this.posicion=posicion;
    this.imagen= loadImage("rana.png");
  }
  
  //metodo de clase
  public void display(){
    image(this.imagen,this.posicion.x,this.posicion.y,70,70);
  }
  
  // get and set
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion (PVector posicion){
    this.posicion=posicion;
  }
  public PImage getImagen(){
    return this.imagen;
  }
  public void setImagen(PImage imagen){
    this.imagen=imagen;
  }
  
}
