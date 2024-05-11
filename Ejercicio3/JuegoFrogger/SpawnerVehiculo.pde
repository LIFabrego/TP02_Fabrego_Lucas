class SpawnerVehiculo extends Obstaculo{
    private Obstaculo[] obs;
    private int tipo;

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
      } else if (this.tipo==0){
        for(Obstaculo o:obs){
            o.displayTierra();
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
