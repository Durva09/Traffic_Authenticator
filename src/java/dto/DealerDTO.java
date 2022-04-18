/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Admin
 */
public class DealerDTO {

    String name,issue_date,license_no,contact,address,nearby_rto,email,userid,newpass,password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNewpass() {
        return newpass;
    }

    public void setNewpass(String newpass) {
        this.newpass = newpass;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIssue_Date() {
        return issue_date;
    }

    public void setIssue_Date(String issue_date) {
        this.issue_date = issue_date;
    }

    public String getLicense_No() {
        return license_no;
    }

    public void setLicense_No(String license_no) {
        this.license_no = license_no;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNearby_Rto() {
        return nearby_rto;
    }

    public void setNearby_Rto(String nearby_rto) {
        this.nearby_rto = nearby_rto;
    }
    
}
