private Shooter nave;
private Asteroide rocaEspacial;
private JoyPad joyPad;

public void setup(){
  size(800,800);
  nave = new Shooter(); 
  nave.setPosicion(new PVector(width/2,height/2));
  nave.setVelocidad(new PVector(10,10));
  joyPad = new JoyPad();
  rocaEspacial = new Asteroide(new PVector(random(0,width),0),new PVector(0,10));
  
}

public void draw(){
  background(0);
  nave.display();
  rocaEspacial.display();
  rocaEspacial.mover();
  if (joyPad.isUpPressed()){
      nave.mover(0);
  }
   if (joyPad.isDownPressed()){
      nave.mover(1);
  }
   if (joyPad.isLeftPressed()){
      nave.mover(3);
  }
   if (joyPad.isRightPressed()){
      nave.mover(4);
  }
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
