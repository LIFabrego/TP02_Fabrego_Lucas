abstract class GameObject {
  protected PVector posicion;
  protected PImage imagen;
  protected PVector velocidad;
  /*protected int direccion;*/
  
  public abstract void display();
  public abstract void move();
}
