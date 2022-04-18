package dto;

import javax.servlet.http.Part;

public class VehicleDTO {
   
String soldby,name,fname,dealerid,datechecked,status,timechecked,policeid,locationchecked,purchaseDate,dob,address,showroom_address,state,city,pincode,contact1,contact2,email,aadhar,license,vehicleno,engineno,chassis,rcno,enginetype,vehiclecompany,modelno,rtoname,yearofmanufacture,vehiclecolor,registrationvalidity,vehicletype;
String vehicle_complainid,complain_date_time,complain_title,complain_description,complain_category,statuschecked;
byte[] byt;

    public byte[] getByt() {
        return byt;
    }

    public void setByt(byte[] byt) {
        this.byt = byt;
    }

    public String getStatuschecked() {
        return statuschecked;
    }

    public void setStatuschecked(String statuschecked) {
        this.statuschecked = statuschecked;
    }

    public String getVehicle_complainid() {
        return vehicle_complainid;
    }

    public void setVehicle_complainid(String vehicle_complainid) {
        this.vehicle_complainid = vehicle_complainid;
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
    public String getLocationchecked() {
        return locationchecked;
    }

    public void setLocationchecked(String locationchecked) {
        this.locationchecked = locationchecked;
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

    public String getDatechecked() {
        return datechecked;
    }

    public void setDatechecked(String datechecked) {
        this.datechecked = datechecked;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(String purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public String getDealerid() {
        return dealerid;
    }

    public void setDealerid(String dealerid) {
        this.dealerid = dealerid;
    }
Part vehicleimage;

    public String getShowroom_address() {
        return showroom_address;
    }

    public void setShowroom_address(String showroom_address) {
        this.showroom_address = showroom_address;
    }

    public String getSoldby() {
        return soldby;
    }

    public void setSoldby(String soldby) {
        this.soldby = soldby;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getContact1() {
        return contact1;
    }

    public void setContact1(String contact1) {
        this.contact1 = contact1;
    }

    public String getContact2() {
        return contact2;
    }

    public void setContact2(String contact2) {
        this.contact2 = contact2;
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

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public String getVehicleno() {
        return vehicleno;
    }

    public void setVehicleno(String vehicleno) {
        this.vehicleno = vehicleno;
    }

    public String getEngineno() {
        return engineno;
    }

    public void setEngineno(String engineno) {
        this.engineno = engineno;
    }

    public String getChassis() {
        return chassis;
    }

    public void setChassis(String chassis) {
        this.chassis = chassis;
    }

    public String getRcno() {
        return rcno;
    }

    public void setRcno(String rcno) {
        this.rcno = rcno;
    }

    public String getEnginetype() {
        return enginetype;
    }

    public void setEnginetype(String enginetype) {
        this.enginetype = enginetype;
    }

    public String getVehiclecompany() {
        return vehiclecompany;
    }

    public void setVehiclecompany(String vehiclecompany) {
        this.vehiclecompany = vehiclecompany;
    }

    public String getModelno() {
        return modelno;
    }

    public void setModelno(String modelno) {
        this.modelno = modelno;
    }

    public String getRtoname() {
        return rtoname;
    }

    public void setRtoname(String rtoname) {
        this.rtoname = rtoname;
    }

    public String getYearofmanufacture() {
        return yearofmanufacture;
    }

    public void setYearofmanufacture(String yearofmanufacture) {
        this.yearofmanufacture = yearofmanufacture;
    }

    public String getVehiclecolor() {
        return vehiclecolor;
    }

    public void setVehiclecolor(String vehiclecolor) {
        this.vehiclecolor = vehiclecolor;
    }

    public String getRegistrationvalidity() {
        return registrationvalidity;
    }

    public void setRegistrationvalidity(String registrationvalidity) {
        this.registrationvalidity = registrationvalidity;
    }

    public String getVehicletype() {
        return vehicletype;
    }

    public void setVehicletype(String vehicletype) {
        this.vehicletype = vehicletype;
    }

    public Part getVehicleimage() {
        return vehicleimage;
    }

    public void setVehicleimage(Part vehicleimage) {
        this.vehicleimage = vehicleimage;
    }


}
