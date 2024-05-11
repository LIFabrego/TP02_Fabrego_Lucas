class Asteroide extends GameObject implements IDisplayable,IMoveable{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  //constructores
  public Asteroide(){
    imagen = loadImage("asteroide.png");
  }
  
  public Asteroide(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("asteroide.png");
  }
  // metodo de clases
  public void display(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }
  
  public void move(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
      this.posicion.x=random(0,width);
    }
    
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
