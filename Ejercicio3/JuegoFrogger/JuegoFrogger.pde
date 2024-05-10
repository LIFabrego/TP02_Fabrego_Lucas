private Escenario escenario;
private Obstaculo obstaculo;
private Frogger personaje;
private HUD hud;

public void setup(){
  size(1200,900);
  background(#290D9D);
  personaje = new Frogger(new PVector(width-70,height-70));
  obstaculo = new Obstaculo(new PVector(0,height/3+100));
  //obstaculo.setPosicion(new PVector(30,30));
  obstaculo.display();
  escenario = new Escenario(new PVector(0,100));
  escenario.display();
}
public void draw(){
}
