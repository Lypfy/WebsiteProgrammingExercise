package com.example.test;

import java.io.Serializable;

public class Survey implements Serializable {
    private User user;
    private String source;
    private String offers;
    private String news;
    private String contactMethod;

    public Survey() {
        this.user = new User();
        this.source = "";
        this.offers = "";
        this.news = "";
        this.contactMethod = "";
    }

    public Survey(User user, String source, String offers, String news, String contactMethod) {
        this.user = user;
        this.source = source;
        this.offers = offers;
        this.news = news;
        this.contactMethod = contactMethod;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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
