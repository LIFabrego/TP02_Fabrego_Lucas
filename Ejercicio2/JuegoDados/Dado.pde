class Dado{
  // atributos
  private float ancho;
  private float alto;
  private float aux1;
  //constructor
  public Dado(){
  }
  
  public Dado(float x,float y){
    rect(x,y,width/2,width/2);
  }
  
  public Dado(float x,float y,int n){
    fill(#FFFCFC);
    ancho=width/2;
    alto=width/2;
    rect(x,y,ancho,alto);
    fill(0);
    aux1=ancho/6;
      switch(n){
      case 1:{
        circle(x+ancho/2,y+alto/2,40);
        break;
      }
      case 2:{
        aux1=ancho/6;
        circle(x+aux1,y+aux1,40);
        circle(x+aux1*5,y+aux1*5,40);
        break;
      }
      case 3:{
        aux1=ancho/6;
        circle(x+ancho/2,y+alto/2,40);
        circle(x+aux1,y+aux1,40);
        circle(x+aux1*5,y+aux1*5,40);
        break;
      }
      case 4:{
        aux1=ancho/6;
        circle(x+aux1,y+aux1,40);
        circle(x+aux1*5,y+aux1*5,40);
        circle(x+aux1*5,y+aux1,40);
        circle(x+aux1,y+aux1*5,40);
        break;
      }
      case 5:{
        aux1=ancho/6;
        circle(x+aux1,y+aux1,40);
        circle(x+aux1*5,y+aux1*5,40);
        circle(x+aux1*5,y+aux1,40);
        circle(x+aux1,y+aux1*5,40);
        circle(x+ancho/2,y+alto/2,40);
        break;
      }
      case 6:{
        aux1=ancho/6;
        circle(x+aux1,y+aux1,40);
        circle(x+aux1*5,y+aux1*5,40);
        circle(x+aux1*5,y+aux1,40);
        circle(x+aux1,y+aux1*5,40);
        circle(x+aux1,y+aux1*3,40);
        circle(x+aux1*5,y+aux1*3,40);
        break;
      }

    }
  }
  //metodos de clase
 
  //get and set
}
