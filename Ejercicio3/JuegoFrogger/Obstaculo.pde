class Obstaculo{
  private PVector posicion;
  private PImage imagen;
  private int n;
  //constructor
  public Obstaculo(){
  }

  // metodo de clase
  public void display(){
    for (int i=1;i<5;i++){
      this.n=i;
      vehiculo();
      image(imagen,this.posicion.x,this.posicion.y+i*100,80,50);
    }
  }
  public void vehiculo(){
   switch (this.n){
     case 1:{
       imagen=loadImage("vehiculo1.png");
       break;
     }
     case 2:{
       imagen=loadImage("vehiculo2.png");
       break;
     }
     case 3:{
       imagen=loadImage("vehiculo3.png");
       break;
     }
     case 4:{
       imagen=loadImage("vehiculo4.png");
       break;
     }
   }
  }
  // get and set
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion (PVector posicion){
    this.posicion=posicion;
  }
  public int getN (){
    return this.n;
  }
  public void setN(int n){
    this.n=n;
  }
}
