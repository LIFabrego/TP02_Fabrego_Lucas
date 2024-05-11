//private Obstaculo obstaculo;
private Frogger personaje;
private SpawnerVehiculo[] linea;
//private HUD hud;
private float distancia=100;
int tierra = 0;
int auto = 1;
int tronco = 2;

public void setup(){
  size(1200,900);
  background(#290D9D);
  personaje = new Frogger(new PVector(width/2-distancia,height-distancia));
  int indice=int(height/distancia);
  linea = new SpawnerVehiculo[2];
  
  linea[0] = new SpawnerVehiculo();
  linea[1] = new SpawnerVehiculo(1,2);
  for (SpawnerVehiculo spaw: linea){
      spaw.movimiento();
  }
  //obstaculo = new Obstaculo(new PVector(0,distancia));
  //obstaculo.setPosicion(new PVector(30,30));
  //obstaculo.display();
  //obstaculo.setVelocidad(new PVector(10,10));
  //obstaculo.mover();
  
}
public void draw(){
}
