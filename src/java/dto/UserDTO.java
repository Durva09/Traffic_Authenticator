package dto;

import javax.servlet.http.Part;

public class UserDTO 
{
    String userid,password,mode,name,dob,gender,contact,email,aadhar,newpass,address,profession,age,datechecked,timechecked,policeid,locationchecked;
    String user_complainid,complain_date_time,complain_title,complain_description,complain_category,stats;
    byte[] byt;

    public byte[] getByt() {
        return byt;
    }

    public void setByt(byte[] byt) {
        this.byt = byt;
    }

    public String getStats() {
        return stats;
    }

    public void setStats(String stats) {
        this.stats = stats;
    }

    public String getUser_complainid() {
        return user_complainid;
    }

    public void setUser_complainid(String user_complainid) {
        this.user_complainid = user_complainid;
    }

    public String getComplain_date_time() {
        return complain_date_time;
    }

    public void setComplain_date_time(String complain_date_time) {
        this.complain_date_time = complain_date_time;
    }

    public String getComplain_title() {
        return complain_title;
    }

    public void setComplain_title(String complain_title) {
        this.complain_title = complain_title;
    }

    public String getComplain_description() {
        return complain_description;
    }

    public void setComplain_description(String complain_description) {
        this.complain_description = complain_description;
    }

    public String getComplain_category() {
        return complain_category;
    }

    public void setComplain_category(String complain_category) {
        this.complain_category = complain_category;
    }

    public String getDatechecked() {
        return datechecked;
    }

    public void setDatechecked(String datechecked) {
        this.datechecked = datechecked;
    }

    public String getTimechecked() {
        return timechecked;
    }

    public void setTimechecked(String timechecked) {
        this.timechecked = timechecked;
    }

    public String getPoliceid() {
        return policeid;
    }

    public void setPoliceid(String policeid) {
        this.policeid = policeid;
    }

    public String getLocationchecked() {
        return locationchecked;
    }

    public void setLocationchecked(String locationchecked) {
        this.locationchecked = locationchecked;
    }
    Part profile;
    
    
    public Part getProfile() {
        return profile;
    }

    public void setProfile(Part profile) {
        this.profile = profile;
    }
    
    public void setAge(String age) {
        this.age = age;
    }

    public String getAge() {
        return age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getNewpass() {
        return newpass;
    }

    public void setNewpass(String newpass) {
        this.newpass = newpass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAadhar() {
        return aadhar;
    }

    public void setAadhar(String aadhar) {
        this.aadhar = aadhar;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

}
