private Obstaculo obstaculo;
private Frogger personaje;
//private SpawnerVehiculo[] linea;
////private HUD hud;
//private float distancia=100;
//int tierra = 0;
//int auto = 1;
//int tronco = 2;
private int distancia=100;

public void setup(){
    size(1200,900);
    personaje = new Frogger(new PVector(width/2-distancia,height-distancia));
    obstaculo = new Obstaculo(new PVector(width/2,height/2),new PVector (10,10));
}
public void draw(){
  background(#290D9D);
  personaje.display();
  obstaculo.displayAuto();
  obstaculo.displayTronco();
  obstaculo.mover();
}
    //obstaculo.display();
    //obstaculo.setPosicion(new PVector(30,30));
    //obstaculo.setVelocidad(new PVector(10,10));
    //obstaculo.mover();
//  //int indice=int(height/distancia);
//  linea = new SpawnerVehiculo[2];
  
//  //linea[0] = new SpawnerVehiculo();
//  //linea[0] = new SpawnerVehiculo(1,2,new PVector(0,1*distancia),new PVector(10,10));
//  for (SpawnerVehiculo spaw: linea){
//      spaw.movimiento();
//  }
