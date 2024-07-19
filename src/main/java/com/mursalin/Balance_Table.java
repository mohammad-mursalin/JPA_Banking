package com.mursalin;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Balance_Table {

    @Id
    private long account_num;
    private String password;
    private String balance;


    public Balance_Table() {
    }

    public Balance_Table(long account_num, String password, String balance) {
        this.account_num = account_num;
        this.password = password;
        this.balance = balance;

    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public long getAccount_num() {
        return account_num;
    }

    public void setAccount_num(long account_num) {
        this.account_num = account_num;
    }
}
