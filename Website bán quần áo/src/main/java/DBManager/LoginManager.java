/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBManager;

import DBUtils.DBUtils;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class LoginManager {
    public User login (String username, String password){
        User us = new User();
        
        String sql = "SELECT * FROM Accounts WHERE Name_Users = ? AND Password_Users = ?"; //CHỉnh lajiu db tùy theo máy
        try{
            Connection con = DBUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,username);   //TÙY THEO DÒNG MÁY MÀ ĐỂ VỊ TRÍ 0 HOẶC 1 
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                us.setId(rs.getInt("ID_Users"));
                us.setName(rs.getString("Name_Users"));
                us.setAccessRight(rs.getString("AccessRight"));
                
                return us;
            }else{
                return null;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public User register(String username, String password, String email, String phone)
    {
       User us = new User();
        
        String sql = "Insert into Accounts values (?, ?, ?, ?, getdate() ,'customer')"; //CHỉnh lajiu db tùy theo máy
        try{
            Connection con = DBUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phone);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                us.setName("Name_Users");
                us.setPassword("Password_Users");
                us.setEmail("Email");
                us.setPhonenum("Phone_Num");
                return us;
            }else{
                return null;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
