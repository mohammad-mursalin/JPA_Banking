package com.mursalin;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Accounts {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long acNumber;
    private String email;
    private String name;
    private String password;
    private double balance = 0;

    public Accounts() {

    }

    public Accounts(String email, String name, String password) {
        this.email = email;
        this.name = name;
        this.password = password;
    }

    public Accounts(long acNumber, String password, double balance) {
        this.balance = balance;
        this.password = password;
        this.acNumber = acNumber;
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

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
}
