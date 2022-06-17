/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Dell G7 7590
 */
public class Product {
    private int id;
    private String name;
    private String url;
    private String brand;
    private String size;
    private int CateID;
    private int amount;
    private float price;
    private float sale;

    
    
    public Product(int id, String name, String url, String brand, String size, int CateID, int amount, float price, float sale) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.brand = brand;
        this.size = size;
        this.CateID = CateID;
        this.amount = amount;
        this.price = price;
        this.sale = sale;
    }

    public Product(int id, String name, String url, String brand, String size, Float price, int Cate_id, float sale)
    {
        this.id = id;
        this.name = name;
        this.url = url;
        this.brand = brand;
        this.size = size;
        this.price = price;
        this.CateID = Cate_id;
        this.sale = sale;
    }
    
    public Product(int id, String name, int CateID, String brand, float price)
    {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.CateID = CateID;
        this.price = price;
    }
    
    public Product(String name)
    {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getCateID() {
        return CateID;
    }

    public void setCateID(int CateID) {
        this.CateID = CateID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getSale() {
        return sale;
    }

    public void setSale(float sale) {
        this.sale = sale;
    }
    
    
}
