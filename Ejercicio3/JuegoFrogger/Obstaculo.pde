class Obstaculo{
  private PVector posicion;
  private PVector velocidad;
  private PImage auto1,auto2,tronco;
//  private int n;
//  //constructor
//  //public Obstaculo(){
//  //  this.imagen = loadImage("tortuga.png");
//  //}
  public Obstaculo(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.tronco=loadImage("tronco.png");
    this.auto1=loadImage("vehiculo1.png");
    this.auto2=loadImage("vehiculo2.png");
  }
  //metodo de clase
    public void displayAuto(){
      image(this.auto1,this.posicion.x+50,this.posicion.y+50,150,100);
      if (this.velocidad.x < 0){
        image(this.auto2,this.posicion.x,this.posicion.y,150,100);
      }
    }
    public void displayTronco(){
      image(this.tronco,this.posicion.x-100,this.posicion.y-100,150,150);
    }
    
    public void mover(){;
      if (this.velocidad.x > 0){
        this.posicion.x += this.velocidad.x;
          if(this.posicion.x>width){
             this.posicion.x=0;}
      } else if (this.velocidad.x<0){
       this.posicion.x += this.velocidad.x;
         if(this.posicion.x<0){
             this.posicion.x=width;}
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
}  
  
  
  
//  //  //this.n=n;
//  //  switch (n){
//  //   case 1:{
//  //     this.imagen=loadImage("vehiculo1.png");
//  //     //this.imagen=imagen;
//  //     break;
//  //   }
//  //   case 2:{
//  //     this.imagen=loadImage("vehiculo2.png");
//  //     //setImagen(imagen);
//  //     break;
//  //   }
//  //   case 3:{
//  //     imagen=loadImage("vehiculo3.png");
//  //     //setImagen(imagen);
//  //     break;
//  //   }
//  //   case 4:{
//  //     imagen=loadImage("vehiculo4.png");
//  //     //setImagen(imagen);
//  //     break;
//  //   }
//  //   case 5:{
//  //     imagen= loadImage("tronco.png");
//  //     //setImagen(imagen);
//  //     break;
//  //   } 
//  //}
//  //}
//  public Obstaculo(PVector posicion){
//    this.posicion=posicion;
//    vehiculo();
//    setImagen(imagen);
//  }
//  // metodo de clase
//  public void display(){
//    for (int i=1;i<7;i++){
//      this.n=i;
//      vehiculo();
//      image(this.imagen,this.posicion.x,this.posicion.y*80,200,150);
//    }
//  }
//  public void mover(){
//      if(this.posicion.x<=width){
//          this.posicion.x+=this.velocidad.x;
//      } else if(this.posicion.x!=0){
//          this.posicion.x-=this.velocidad.x;

//      }    
//  }
//  public void vehiculo(){
//   switch (this.n){
//     case 1:{
//       imagen=loadImage("vehiculo1.png");
//       break;
//     }
//     case 2:{
//       imagen=loadImage("vehiculo2.png");
//       break;
//     }
//     case 3:{
//       imagen=loadImage("vehiculo3.png");
//       break;
//     }
//     case 4:{
//       imagen=loadImage("vehiculo4.png");
//       break;
//     }
//     case 5:{
//       imagen= loadImage("tronco.png");
//     }
//     //case 6:{
//     //  imagen = loadImage("tortuga.png");
//     //}
//   }
//  }

  //public int getN (){
  //  return this.n;
  //}
  //public void setN(int n){
  //  this.n=n;
  //}

  
//}
