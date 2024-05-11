class Shooter extends GameObject{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private int vida;
  
  // CONSTRUCTOR 
  public Shooter(){
    imagen = loadImage("shooter.png");
  }
  
  public void display(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }

  /**
  * direccion (0:arriba; 1=abajo; 2 = izquierda, 3= derecha)
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
  
  public int getDatos(){
     return this.vida; 
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

  public int getVida(){
    return this.vida;
  }
  
  public void setVida(int vida){
    this.vida=vida;
  }
}
