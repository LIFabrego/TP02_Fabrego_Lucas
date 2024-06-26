class Nave extends GameObject implements IDisplayable,IMoveable,IController{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  ArrayList<Bala> balas;
  
  public Nave(){
    imagen = loadImage("shooter.png");
    this.posicion= new PVector(width/2,height-100);
    this.velocidad= new PVector(10,3);
    balas = new ArrayList<Bala>();
  }
  
  //metodos de clase
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,150,150);
    for (Bala bala : balas) {
             bala.display();
    }
  }
  public void move(){
      if (keyPressed) {
        if (key == 'a' || key == 'A') { // Mover a la izquierda
           if (this.posicion.x<0){
              this.posicion.x-=this.velocidad.x*0;
            } else{
             this.posicion.x -= this.velocidad.x; 
            }
          } else if (key == 'd' || key == 'D') { // Mover a la derecha
              if (this.posicion.x>width){
                this.posicion.x-=this.velocidad.x*0;
              } else{
              this.posicion.x += this.velocidad.x;
              }
          }
          if (key==' '){
            disparar();
          }
      }
  }
  public void disparar(){
    bala = new Bala (this.posicion.x,this.posicion.y);
    balas.add(bala);
  }
  public void readCommand(){
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
