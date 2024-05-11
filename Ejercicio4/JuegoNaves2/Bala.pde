class Bala extends GameObject implements IDisplayable,IMoveable{
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  //constructor
  public Bala(){
    imagen = loadImage("bala.png");
  }
  public Bala(float x, float y){
    imagen = loadImage("bala.png");
    this.posicion= new PVector(x,y);
  }
  //metodos de clase
  public void display(){
      image(imagen,this.posicion.x,this.posicion.y,50,50);
  }
  public void move(){
    this.posicion.y-=5;
  }
  
  
  
  // get and set
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
    public PImage getImagen(){
    return this.imagen;
  }
  
  public void setImagen(PImage imagen){
    this.imagen=imagen;
  }
}
