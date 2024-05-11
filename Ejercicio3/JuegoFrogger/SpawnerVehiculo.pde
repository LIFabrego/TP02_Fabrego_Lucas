class SpawnerVehiculo extends Obstaculo{
    Obstaculo[] obs;
    private int tipo;
    private int col;
    
    // constructor
    public SpawnerVehiculo(int t,PVector pos,color c){
      super(pos);
      this.tipo=t;
      obs=new Obstaculo[1];
      obs[0]=new Obstaculo(pos);
      this.col = c;
    }
    public SpawnerVehiculo(int t,int n, PVector pos,PVector vel,color c){
      super(pos,vel);
      this.tipo = t;
      obs = new Obstaculo[n];
      for (int i=0;i<n;i++){
        obs[i]= new Obstaculo(pos,vel);
      }
      this.col=c;
    }
    

    //metodos de clases
    public void display(){
      fill(col);
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
  public int getCol(){
    return this.col;
  }
  public void setCol(int col){
    this.col=col;
  }
}
