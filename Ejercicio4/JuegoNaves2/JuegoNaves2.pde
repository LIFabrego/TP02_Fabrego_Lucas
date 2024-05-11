private Nave nave;
private Asteroide rocaEspacial;


public void setup(){
  size(800,800);
  nave = new Nave(); 
  rocaEspacial = new Asteroide(new PVector(random(0,width),0),new PVector(0,10));

  
}

public void draw(){
  background(0);
  nave.display();
  nave.move();
  rocaEspacial.display();
  rocaEspacial.move();

}
