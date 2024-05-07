class Shooter{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  // CONSTRUCTOR 
  public Shooter(){
    imagen = loadImage("shooter.png");
  }
  
  public void display(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }
  /**
  * Mueve la posicon hacia izquierda o derecha según lo 
  * que se indique en el atributo velocidad
  * direccion (0:izquierda; 1=derecha; 2 = arriba, 3= abajo)
  */
  public void mover(int direccion){
    switch(direccion){
      case 0: {
        this.posicion.y-=this.velocidad.y;
        break;
      }
      case 1:{
        this.posicion.y+=this.velocidad.y;
        break;
      }
      case 3:{
        this.posicion.x-=this.velocidad.x;
        break;
      }
      case 4:{
        this.posicion.x+=this.velocidad.x;
        break;
      }
    }
  }
  
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
  
}
