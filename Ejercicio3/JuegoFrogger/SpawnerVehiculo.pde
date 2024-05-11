class SpawnerVehiculo extends Obstaculo{
    Obstaculo[] obs;
    int tipo;
    
    // constructor
    public SpawnerVehiculo(int t,int n, PVector pos,PVector vel){
     super(pos,vel);
      this.tipo = t;
      obs = new Obstaculo[n];
      for (int i=0;i<n;i++){
        obs[i]= new Obstaculo(pos,vel);
      }
    }
    

    //metodos de clases
    public void display(){
      if (this.tipo==1){
        for(Obstaculo o: obs){
        o.displayAuto();
        o.mover();
        }
      } else if (this.tipo==2){
        for (Obstaculo o: obs){
          o.displayTronco();
          o.mover();
        }
      }
    }

// get and set
  public int getTipo(){
    return this.tipo;
  }
  public void setTipo(int tipo){
    this.tipo=tipo;
  }
}
//  private Obstaculo[] obs;
//  //private PImage imagen;
  
//  //constructor
//  public SpawnerVehiculo(){
//    //obs[0]=new Obstaculo();
//  }
//  public SpawnerVehiculo(int indice,int tipo,PVector posicion, PVector velocidad){
//    //obs = new Obstaculo[indice];
//    obs[indice] = new Obstaculo(tipo,posicion,velocidad);
    
//  }
//  //metodo de clase
//  public void movimiento(){
//    for (Obstaculo o: obs){
//      o.display();
//      o.mover();
//    }
//  }  
//}
