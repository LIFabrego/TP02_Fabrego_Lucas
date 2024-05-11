private Nave nave;
private Asteroide rocaEspacial;
private JoyPad joyPad;
private Hud hud;

public void setup(){
  size(800,800);
  hud = new Hud();
  nave = new Nave(); 
  //nave.setPosicion(new PVector(width/2,height/2));
  //nave.setVelocidad(new PVector(10,10));
  //nave.setVida(5);
  joyPad = new JoyPad();
  rocaEspacial = new Asteroide(new PVector(random(0,width),0),new PVector(0,10));

  
}

public void draw(){
  background(0);
  nave.display();
  nave.move();
  rocaEspacial.display();
  rocaEspacial.mover(int(random(0,width)));
  hud.mostrarVidasNave();
  //if (joyPad.isUpPressed()){
  //    nave.mover(0);
  //}
  // if (joyPad.isDownPressed()){
  //    nave.mover(1);
  //}
  // if (joyPad.isLeftPressed()){
  //    nave.mover(3);
  //}
  // if (joyPad.isRightPressed()){
  //    nave.mover(4);
  //}
}

public void keyPressed(){
  if(key=='w' || keyCode==UP){
    joyPad.setUpPressed(true);
  }
  if(key=='s' || keyCode==DOWN){
    joyPad.setDownPressed(true);
  }
    if(key=='a' || keyCode==LEFT){
    joyPad.setLeftPressed(true);
  }
    if(key=='d' || keyCode==RIGHT){
    joyPad.setRightPressed(true);
  }
}
public void keyReleased(){
  if(key=='w' || keyCode==UP){
    joyPad.setUpPressed(false);
  }
  if(key=='s' || keyCode==DOWN){
    joyPad.setDownPressed(false);
  }
    if(key=='a' || keyCode==LEFT){
    joyPad.setLeftPressed(false);
  }
    if(key=='d' || keyCode==RIGHT){
    joyPad.setRightPressed(false);
  }
}
