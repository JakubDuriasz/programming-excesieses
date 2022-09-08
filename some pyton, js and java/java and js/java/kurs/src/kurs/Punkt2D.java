package kurs;

public class Punkt2D {
    private int x;
    private int y;
    
//    utworzenie konstruktora dla samego x oraz dla x i y
    public Punkt2D(int x){
        this.x = x;
    }
    public Punkt2D(int x, int y){
        this.x = x;
        this.y = y;
    }
    
//    utworzenie get i set
    public void setX(int x){
        this.x = x;
    }
    public void setY (int y){
        this.y = y;
    }
    public int getX(){
        return this.x;
    }
    public int getY(){
        return this.y;
    }
    
    
    
    public String wyswietl(){
        return ("x = "+this.x+", y = "+this.y);
    
    }
}
