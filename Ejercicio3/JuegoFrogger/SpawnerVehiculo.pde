class SpawnerVehiculo extends Obstaculo{
  private Obstaculo[] obs;
  private PImage imagen;
  
  //constructor
  public SpawnerVehiculo(){
    obs=new Obstaculo[0];
  }
  public SpawnerVehiculo(int indice,int tipo){
    obs =new Obstaculo[indice];
    
  }
  //metodo de clase
  public void movimiento(){
    for (Obstaculo o: obs){
      o.display();
      o.mover();
    }
  }  
}
