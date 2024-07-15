package com.mursalin;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerProvider {

    public void getEntityManager() {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");

        EntityManager em = emf.createEntityManager();
    }
}
