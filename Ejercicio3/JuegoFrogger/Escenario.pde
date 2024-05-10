class Escenario{
  private PVector posicion;
  private PImage imagen;
  private PImage imagen2;
  
  public Escenario(){
  }
  public Escenario(PVector posicion){
    this.posicion=posicion;
  }
  public void display(){
    imagen= loadImage("tronco.png");
    imagen2 = loadImage("tortuga.png");
    for (int i = 1;i<5;i++){
      if (i%2==0){
        image(imagen,this.posicion.x,this.posicion.y,200,200);
      } else {
        image(imagen2,this.posicion.x,this.posicion.y,80,80);
      }
      this.posicion.y=this.posicion.y+i*80;
    }
  }
  //get and set
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion (PVector posicion){
    this.posicion=posicion;
  }  
}
