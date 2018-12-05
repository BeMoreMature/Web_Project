
package mbs;

import java.io.Serializable;

public class prBean extends Object implements Serializable {

    private int productid;
    private String name;
    private int inventory;
    private double price;
    private String type;

    public prBean() {
        productid=0;
        name = new String();
        inventory=0;
        price=0;
        type=new String();
    }

    public String getType() {return type;}
    public void setType(String value) {type = value;}

    public int getId() {return productid;}
    public void setId(int value) {productid = value;}
    
    public int getInventory() {return inventory;}
    public void setInventory(int value) {inventory = value;}
    
    public double getPrice(){return price;}
    public void setPrice(double value){price=value;}

    public String getName() {return name;}
    public void setName(String value) {name = value;}

}
