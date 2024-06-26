class Asteroide extends GameObject{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public Asteroide(){
    imagen = loadImage("asteroide.png");
  }
  
  public Asteroide(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("asteroide.png");
  }
  
  public void display(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }
  
  public void mover(int posicion){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
      this.posicion.x=random(0,width);
    }
    
  }
}
