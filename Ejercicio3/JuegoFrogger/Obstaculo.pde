class Obstaculo{
  private PVector posicion;
  private PVector velocidad;
  private PImage auto1,auto2,tronco,tierra;
// constructor
  //public Obstaculo(PVector posicion){
  //  this.posicion=posicion;
  
  //  //int distancia = 0;
  //}
  public Obstaculo(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.tronco=loadImage("tronco.png");
    this.auto1=loadImage("vehiculo1.png");
    this.auto2=loadImage("vehiculo2.png");
    this.tierra=loadImage("tierra.png");

  }
  //metodo de clase
    public void displayAuto(){
      if (this.velocidad.x>0){
      image(this.auto1,this.posicion.x,this.posicion.y,150,100);
      } else {
        image(this.auto2,this.posicion.x,this.posicion.y,150,100);
      }
    }
    public void displayTronco(){
      image(this.tronco,this.posicion.x,this.posicion.y-50,150,200);
    }
    public void displayTierra(){
      for(float x=this.posicion.x;x<width;x+=100){
              image(this.tierra,this.posicion.x+x,this.posicion.y,150,80);
          }
      }
    
    public void mover(){;
      if (this.velocidad.x > 0){
        this.posicion.x += this.velocidad.x;
          if(this.posicion.x>width){
             this.posicion.x=0;}
      } else if (this.velocidad.x<0){
       this.posicion.x += this.velocidad.x;
         if(this.posicion.x<0){
             this.posicion.x=width;
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
    public PVector getVelocidad(){
    return this.velocidad;
  }
  public void setVelocidad (PVector velocidad){
    this.velocidad=velocidad;
  }
  public PImage getAuto1(){
    return this.tronco;
  }
  public void setAuto1(PImage auto1){
    this.auto1=auto1;
  }
    public PImage getAuto2(){
    return this.tronco;
  }
  public void setAuto2(PImage auto2){
    this.auto2=auto2;
  }
    public PImage getTronco(){
    return this.tronco;
  }
  public void setTronco(PImage tronco){
    this.tronco=tronco;
    }
  public PImage getTierra(){
    return this.tierra;
  }
  public void setTierra(PImage tierra){
    this.tierra=tierra;
  }
}

  
 
