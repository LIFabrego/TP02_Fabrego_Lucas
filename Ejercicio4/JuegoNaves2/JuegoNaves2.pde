private Nave nave;
private Asteroide rocaEspacial;
private Enemigo enemigo;
private Bala bala;

public void setup(){
  size(800,800);
  nave = new Nave(); 
  rocaEspacial = new Asteroide(new PVector(random(0,width),0),new PVector(0,10));
  enemigo= new Enemigo(new PVector(0,random(0,height/2)),new PVector(5,0));
  //bala = new Bala();
}

public void draw(){
  background(0);
  nave.display();
  nave.move();
  rocaEspacial.display();
  rocaEspacial.move();
  enemigo.display();
  enemigo.move();
  for (int i=nave.balas.size()-1;i>=0;i--){
    bala= nave.balas.get(i);
    bala.move();
    bala.display();
  }
}
