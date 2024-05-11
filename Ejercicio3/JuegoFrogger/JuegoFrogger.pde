private Obstaculo obstaculo;
private Frogger personaje;
private SpawnerVehiculo[] lineas;
////private HUD hud;
//private float distancia=100;
private int tierra = 0;
private int auto = 1;
private int tronco = 2;
private int distancia=100;

public void setup(){
    size(1200,1000);
    personaje = new Frogger(new PVector(width/2-distancia,height-distancia));
    obstaculo = new Obstaculo(new PVector(width/2,height/2),new PVector (5,10));
    
    // tipo,cantidad,posicion,velocidad
    int totalLineas = height/100;
    lineas = new SpawnerVehiculo[totalLineas];
    lineas[0]=new SpawnerVehiculo(tierra,new PVector(0,0),color(51,204,51));
    lineas[1]=new SpawnerVehiculo(tronco,3,new PVector(0,1*distancia),new PVector(2,0),color(51,153,255));
    lineas[2]=new SpawnerVehiculo(tronco,2,new PVector(0,2*distancia),new PVector(-2,0),color(51,153,255));
    lineas[3]=new SpawnerVehiculo(tronco,4,new PVector(0,3*distancia),new PVector(2,0),color(51,153,255));
    lineas[4]=new SpawnerVehiculo(tierra,new PVector(0,4*distancia),color(51,204,51));
    lineas[5]=new SpawnerVehiculo(auto,3,new PVector(0,5*distancia),new PVector(-2,0),color(100));
    lineas[6]=new SpawnerVehiculo(auto,3,new PVector(0,6*distancia),new PVector(2,0),color(100));
    lineas[7]=new SpawnerVehiculo(auto,2,new PVector(0,7*distancia),new PVector(-2,0),color(100));
    lineas[8]=new SpawnerVehiculo(auto,4,new PVector(0,8*distancia),new PVector(2,0),color(100));
    lineas[9]=new SpawnerVehiculo(tierra,new PVector(0,9*distancia),color(51,204,51));
}
public void draw(){
  background(#290D9D);
  personaje.display();
  for(SpawnerVehiculo linea: lineas){
    linea.display();
  }
}
