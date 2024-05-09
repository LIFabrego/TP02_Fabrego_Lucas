private Dado cara;
private HUD hud;
private int num;

public void setup(){
  background(#096AB7);
  size(1200,700);
  num=int(random(1,7));
  hud = new HUD(num);;
  cara=new Dado(new PVector (width/2-100,height/2-100),num);
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
