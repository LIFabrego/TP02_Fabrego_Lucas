private Dado cara;
private HUD hud;
private int num;
public void setup(){
  size(700,700);
  hud = new HUD();
  //cara = new Dado(width/4,width/4,int(random(1,7)));
  cara=new Dado();
  cara.setAncho(300);
}

public void  draw(){
  
}

public void keyPressed(){
  num=int(random(1,7));
  cara = new Dado(width/10,width/3,num);
  hud.display(num);
}
