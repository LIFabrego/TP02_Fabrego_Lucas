class Obstaculo{
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  private int n;
  //constructor
  public Obstaculo(){
    imagen = loadImage("tortuga.png");
  }
  public Obstaculo(int n){
      switch (n){
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
     case 5:{
       imagen= loadImage("tronco.png");
     }
  }
  }
  public Obstaculo(PVector posicion){
    this.posicion=posicion;
  }
  // metodo de clase
  public void display(){
    //for (int i=1;i<7;i++){
      //this.n=i;
      vehiculo();
      image(imagen,this.posicion.x,this.posicion.y*80,200,150);
    //}
  }
  public void mover(){
      if(this.posicion.x<=width){
          this.posicion.x+=this.velocidad.x;
      } else if(this.posicion.x!=0){
          this.posicion.x-=this.velocidad.x;

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
     case 5:{
       imagen= loadImage("tronco.png");
     }
     //case 6:{
     //  imagen = loadImage("tortuga.png");
     //}
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
  public PVector getVelocidad(){
    return this.velocidad;
  }
  public void setVelocidad (PVector velocidad){
    this.velocidad=velocidad;
  }
}
