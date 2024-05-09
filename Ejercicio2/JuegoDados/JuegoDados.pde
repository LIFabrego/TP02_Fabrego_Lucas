private Dado cara;
private HUD hud;
private int num;
public void setup(){
  size(1200,700);
  hud = new HUD();;
  cara=new Dado();
}

public void  draw(){

}

public void keyPressed(){
  background(#096AB7);
  num=int(random(1,7));
  hud.setNum(num);
  cara.setN(num);
  cara.setPosicion(new PVector (width/2-100,height/2-100));
  cara.display();
  hud.display();
}
