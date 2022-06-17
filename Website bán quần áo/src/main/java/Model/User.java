/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hai Trieu
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String phonenum;
    private String date;
    private String accessright;
    private String username;
    private String password;
    
    
    //CONSTRUCTOR

    public User(int id, String name, String email, String phonenum, String date, String accessright, String username, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phonenum = phonenum;
        this.date = date;
        this.accessright = accessright;
        this.username = username;
        this.password = password;
    }

    

    public User() {
    }
    
    ///GETTER AND SETTER
    
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


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAccessRight() {
        return accessright;
    }

    public void setAccessRight(String accessright) {
        this.accessright = accessright;
    }

    public String getAccessright() {
        return accessright;
    }

    public void setAccessright(String accessright) {
        this.accessright = accessright;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}
