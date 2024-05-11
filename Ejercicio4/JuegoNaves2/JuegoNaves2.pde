private Nave nave;
private Asteroide rocaEspacial;
private Enemigo enemigo;

public void setup(){
  size(800,800);
  nave = new Nave(); 
  rocaEspacial = new Asteroide(new PVector(random(0,width),0),new PVector(0,10));
  enemigo= new Enemigo(new PVector(0,random(0,height/2)),new PVector(5,0));
}

public void draw(){
  background(0);
  nave.display();
  nave.move();
  rocaEspacial.display();
  rocaEspacial.move();
  enemigo.display();
  enemigo.move();

}
