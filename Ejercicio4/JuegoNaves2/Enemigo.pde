class Enemigo extends GameObject implements IDisplayable, IMoveable{
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  //constructor
  public Enemigo(){
    imagen = loadImage("enemy.png");
  }
  public Enemigo(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("enemy.png");
  }
  //metodos de clase
  public void display(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }
  public void move(){
    if(this.posicion.x<=width){
      this.posicion.x+=this.velocidad.x;
    }else{
      this.posicion.x=0;
      this.posicion.y=random(0,height/2);
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
