package kurs;

public class Punkt3D extends Punkt2D{
       private int z;
       
//       utworzenie konstruktora
       public Punkt3D(int x, int y, int z){
           super(x, y);
           this.z = z;
       }
//       utworzenie set i get
       public void setZ(int z){
           this.z = z;
       }
       public int getZ(int z){
           return this.z;
       }
       
       
       
       public String wyswietl(){
           return super.wyswietl()+", z = "+this.z;
       }
       
}

