private Escenario escenario;
private Obstaculo obstaculo;
private Frogger personaje;
private HUD hud;

public void setup(){
  size(800,650);
  background(#290D9D);
  personaje = new Frogger(new PVector(width-70,height-70));
  obstaculo = new Obstaculo();
  obstaculo.setPosicion(new PVector(30,30));
  obstaculo.display();
}
public void draw(){
}
