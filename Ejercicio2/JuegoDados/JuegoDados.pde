private Dado cara;

public void setup(){
  size(600,600);
  //cara = new Dado(width/4,width/4,int(random(1,7)));
}

public void  draw(){
}

public void keyPressed(){
  cara = new Dado(width/4,width/4,int(random(1,7)));
}
