package com.mursalin;

import javax.persistence.*;

@Entity
public class Accounts {

    @Id
    private String email;
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long acNumber;

    private String name;
    private String password;

    public Accounts() {
    }

    public Accounts(String email, String name, String password) {
        this.email = email;
        this.name = name;
        this.password = password;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public long getAcNumber() {
        return acNumber;
    }

    public void setAcNumber(long acNumber) {
        this.acNumber = acNumber;
    }


}
