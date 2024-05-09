private Dado cara;
private HUD hud;
private int num,counter;
private Dado[] dado;

public void setup(){
  background(#096AB7);
  size(1200,700);
  num=int(random(1,7));
  hud = new HUD(num);
  cara=new Dado(new PVector (width/2-100,height/2-100),num);
  cara.setPosicion(new PVector (width/2-100,height/2-100));
  dado = new Dado[9];
  dado[0]=new Dado(new PVector (width/2-100,height/2-100),num);
}

public void  draw(){

}

public void keyPressed(){
  background(#096AB7);
  if (key == ENTER || keyCode == RETURN){
      mostrarArreglo();
  }else{
  num=int(random(1,7));
  hud.setNum(num);
  cara.setN(num);
  cara.display();
  hud.display();
  counter = counter +1;
  dado = (Dado[])expand(dado,counter+1);
    //if (counter<dado.length){
        dado[counter]=new Dado(new PVector (width/2-100,height/2-100),num);
    //}
  }
}

public void mostrarArreglo(){
  background(#096AB7);
  int reco = 0;
  float posX=50;
  float posY=50;
  for( int i = 0;i<dado.length;i++){
    if (reco<4){
      dado[i].setAncho(150);
      dado[i].setPosicion(new PVector(posX,posY)); 
      dado[i].display();
      posX=posX+200;
      reco=reco+1;
      } else{
        posX=50;
        posY=posY+200;
        reco=0;
      }
  }
 }
