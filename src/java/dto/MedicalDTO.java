
package dto;

import javax.servlet.http.Part;

public class MedicalDTO {
    String document_title,userid,age,gender,bloodgroup,specially_abled,ability_desc,weight,height,diabetes,blood_pressure,any_medication,medication_desc,med_allergy,allergy_desc,other_illness[],tobacco,smoking,alcohol,comment;

    public String getDocument_title() {
        return document_title;
    }

    public void setDocument_title(String document_title) {
        this.document_title = document_title;
    }

    public Part getDocument() {
        return document;
    }

    public void setDocument(Part document) {
        this.document = document;
    }
    Part document;
    public String getUserid() {
        return userid;
    }

    public String getAge() {
        return age;
    }

    public String getGender() {
        return gender;
    }

    public String getBloodgroup() {
        return bloodgroup;
    }

    public String getSpecially_abled() {
        return specially_abled;
    }

    public String getAbility_desc() {
        return ability_desc;
    }

    public String getWeight() {
        return weight;
    }

    public String getHeight() {
        return height;
    }

    public String getDiabetes() {
        return diabetes;
    }

    public String getBlood_pressure() {
        return blood_pressure;
    }

    public String getAny_medication() {
        return any_medication;
    }

    public String getMedication_desc() {
        return medication_desc;
    }

    public String getMed_allergy() {
        return med_allergy;
    }

    public String getAllergy_desc() {
        return allergy_desc;
    }

    public String[] getOther_illness() {
        return other_illness;
    }

    public String getTobacco() {
        return tobacco;
    }

    public String getSmoking() {
        return smoking;
    }

    public String getAlcohol() {
        return alcohol;
    }

    public String getComment() {
        return comment;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }

    public void setSpecially_abled(String specially_abled) {
        this.specially_abled = specially_abled;
    }

    public void setAbility_desc(String ability_desc) {
        this.ability_desc = ability_desc;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public void setDiabetes(String diabetes) {
        this.diabetes = diabetes;
    }

    public void setBlood_pressure(String blood_pressure) {
        this.blood_pressure = blood_pressure;
    }

    public void setAny_medication(String any_medication) {
        this.any_medication = any_medication;
    }

    public void setMedication_desc(String medication_desc) {
        this.medication_desc = medication_desc;
    }

    public void setMed_allergy(String med_allergy) {
        this.med_allergy = med_allergy;
    }

    public void setAllergy_desc(String allergy_desc) {
        this.allergy_desc = allergy_desc;
    }

    public void setOther_illness(String[] other_illness) {
        this.other_illness = other_illness;
    }

    public void setTobacco(String tobacco) {
        this.tobacco = tobacco;
    }

    public void setSmoking(String smoking) {
        this.smoking = smoking;
    }

    public void setAlcohol(String alcohol) {
        this.alcohol = alcohol;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
    
    
}
