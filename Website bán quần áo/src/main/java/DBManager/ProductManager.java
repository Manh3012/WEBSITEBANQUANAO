/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBManager;

import DBUtils.DBUtils;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell G7 7590
 */
public class ProductManager {
    
    public ProductManager(){
        
    }
    
    public List<Product> list(int page){
        ArrayList<Product> list;
        list = new ArrayList<>();
        int pagenum = page;
         
        
       /*list.add(new Student(new Long(1),"Hoang","Van"));
       list.add(new Student(new Long(2),"Hoang","Oanh"));*/
        String sql = "SELECT ID, Pro_Name, Image_Link, Brand, Size, ID_Cate, Amount, Price, Sale FROM Product \n"
                + "ORDER BY Size \n"
                + "OFFSET (?-1)*3 ROWS \n"
                + "FETCH NEXT 3 ROWS ONLY";
        
        try{
            Connection con = DBUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, pagenum);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(new Product(new Integer(rs.getInt("ID")),rs.getString("Pro_Name"),rs.getString("Image_Link"),rs.getString("Brand"),rs.getString("Size"),rs.getInt("ID_Cate"),rs.getInt("Amount"),rs.getFloat("Price"),rs.getFloat("Sale")));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> listCate(int page, String cate){
        ArrayList<Product> list;
        list = new ArrayList<>();
        int pagenum = page;
        String category = cate;
         
        
       
        String sql = "SELECT Product.ID, Product.Pro_Name, Product.Image_Link, Product.Brand, Product.Size, Product.ID_Cate, Product.Amount, Product.Price, Product.Sale FROM Product JOIN category \n"
                + "ON Product.ID_Cate = category.ID_Cate AND category.Name_Cate like ? \n"
                + "ORDER BY Size \n"
                + "OFFSET (?-1)*3 ROWS \n"
                + "FETCH NEXT 3 ROWS ONLY ";
        
        try{
            Connection con = DBUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cate);
            ps.setInt(2, page);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(new Product(rs.getInt("ID"),rs.getString("Pro_Name"),rs.getString("Image_Link"),rs.getString("Brand"),rs.getString("Size"),rs.getInt("ID_Cate"),rs.getInt("Amount"),rs.getFloat("Price"),rs.getFloat("Sale")));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
    /*
    Insert student and return Id
    */    
    public List<Product> insert(Product product){
       
        ArrayList<Product> list;
        list = new ArrayList<Product>();
         
         String sql = "insert into Product (ID, Pro_Name, Image_Link, Brand, Size, ID_Cate, Amount, Price, Sale) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
         
         try {
            Connection con = DBUtils.getConnection();
            PreparedStatement pre = con.prepareStatement(sql);
            
            pre.setInt(1, product.getId());
            pre.setString(2, product.getName());
            pre.setString(3, product.getUrl());
            pre.setString(4, product.getBrand());
            pre.setString(5, product.getSize());
            pre.setInt(6, product.getCateID());
            pre.setInt(7, product.getAmount());
            pre.setFloat(8, product.getPrice());
            pre.setFloat(9, product.getSale());
            
            pre.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
         
        return list;
    }
    
    
    /*
        SEARCH FUNCTION 
    */
    
    public Product search(String name) //thay đổi kiểu dữ liệu hàm từ List qua Product
    {
        Product prod = null;
       
        String sql = "SELECT TOP(1) * FROM Product WHERE Pro_Name LIKE ? OR Brand LIKE ? "; 
        
        try {
                Connection con = DBUtils.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, "%" + name + "%");
                ps.setString(2, "%" + name + "%");
                ResultSet re = ps.executeQuery();
                
                while (re.next()) {
                    prod = new Product(re.getInt("ID"), re.getString("Pro_Name"), re.getString("Image_Link"), re.getString("Brand"),re.getString("Size"), re.getFloat("Price"), re.getInt("ID_Cate"), re.getFloat("Sale"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
                
        return prod;
    }
    
    public List<Product> search_id(int id)
    {
        ArrayList<Product> list = new ArrayList<Product>();
        
        String sql = "SELECT * FROM Product WHERE ID = ? "; 
        
        try {
                Connection con = DBUtils.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1,  id);
                ResultSet re = ps.executeQuery();
                
                while (re.next()) {
                    list.add(new Product(re.getInt("ID"), re.getString("Pro_Name"), re.getString("Image_Link"), re.getString("Brand"), re.getString("Size"), re.getFloat("Price"), re.getInt("ID_Cate"), re.getFloat("Sale")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
                
        return list;
    }
    
    /*
        SORT FUNCTION
    */
    
    
    public List<Product> sort_price()
    {
        ArrayList<Product> list = new ArrayList<Product>();
        
        String sql = "select * from Product order by Price ASC "; // sắp xếp tăng dần
        
        try {
                Connection con = DBUtils.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                
                while(rs.next())
                {
                    list.add(new Product(new Integer(rs.getInt("ID")), rs.getString("Pro_Name"), rs.getInt("ID_Cate"), rs.getString("Brand"), rs.getFloat("Price")));
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> sort_name()
    {
        ArrayList<Product> list = new ArrayList<Product>();
        
        String sql = "select * from Product order by Pro_Name ASC "; // sắp xếp tăng dần
        
        try {
                Connection con = DBUtils.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                
                while(rs.next())
                {
                    list.add(new Product(new Integer(rs.getInt("ID")), rs.getString("Pro_Name"), rs.getInt("ID_Cate"), rs.getString("Brand"), rs.getFloat("Price")));
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> Ramdom_similar_product()
    {
        ArrayList<Product> list = new ArrayList<>();
        
        String sql = "SELECT TOP(1) * FROM Product WHERE ID >= RAND() * (SELECT MAX (ID) FROM Product) ORDER BY Size"; 
        
        try {
                Connection con = DBUtils.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet re = ps.executeQuery();
                
                while (re.next()) {
                    list.add(new Product(re.getInt("ID"), re.getString("Pro_Name"), re.getString("Image_Link"), re.getString("Brand"),re.getString("Size"), re.getFloat("Price"), re.getInt("ID_Cate"), re.getFloat("Sale")));
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
                
        return list;
    }
    
    public Product load(int id){
        Product prod = null;
        String sql = "SELECT * FROM Product WHERE ID = ?";
        try{
            Connection con = DBUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                prod = new Product(rs.getInt("ID"),rs.getString("Pro_Name"),rs.getString("Image_Link"),rs.getString("Brand"),rs.getString("Size"),rs.getInt("ID_Cate"),rs.getInt("Amount"),rs.getFloat("Price"),rs.getFloat("Sale"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return prod;
    }
    
    public int update(Product prod){
        if (prod == null) {
            return -1;
        }
        //Pro_Name, Image_Link, Brand, Size, ID_Cate, Amount, Price, Sale
        String sql = "UPDATE Product \n"
                + "SET Pro_Name = ?, Image_Link = ?, Brand = ?, Size = ?, ID_Cate = ?, Amount = ?, Price = ?, Sale = ? \n"
                + "WHERE id = ?";
        
        try{
            Connection con = DBUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(8, prod.getId());
            ps.setString(1, prod.getName());
            ps.setString(2, prod.getUrl());
            ps.setString(3, prod.getBrand());
            ps.setString(4, prod.getSize());
            ps.setInt(5,prod.getAmount());
            ps.setFloat(6,prod.getPrice());
            ps.setFloat(7, prod.getSale());
            ps.execute();
        }catch(Exception e){
            e.printStackTrace();
        }
        return prod.getId();
    }
}
