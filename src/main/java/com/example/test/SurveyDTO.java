package com.example.test;

import java.io.Serializable;

public class SurveyDTO implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    
    private String source;
    private String offers;
    private String news;
    private String contactMethod;

    public SurveyDTO() {
        this.firstName = "";
        this.lastName = "";
        this.email = "";
        this.dob = "";
        this.source = "";
        this.offers = "";
        this.news = "";
        this.contactMethod = "";
    }

    public SurveyDTO(String firstName, String lastName, String email, String dob, 
                     String source, String offers, String news, String contactMethod) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.source = source;
        this.offers = offers;
        this.news = news;
        this.contactMethod = contactMethod;
    }

    public User toUser() {
        User user = new User();
        user.setFirstName(this.firstName);
        user.setLastName(this.lastName);
        user.setEmail(this.email);
        user.setDob(this.dob);
        return user;
    }

    public Survey toSurvey() {
        User user = this.toUser();
        return new Survey(user, this.source, this.offers, this.news, this.contactMethod);
    }

    public Survey toSurvey(User user) {
        return new Survey(user, this.source, this.offers, this.news, this.contactMethod);
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getOffers() {
        return offers;
    }

    public void setOffers(String offers) {
        this.offers = offers;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getContactMethod() {
        return contactMethod;
    }

    public void setContactMethod(String contactMethod) {
        this.contactMethod = contactMethod;
    }
}
