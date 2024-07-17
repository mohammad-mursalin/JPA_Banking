package com.mursalin;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerProvider {

    public static EntityManagerFactory emf;
    public static EntityManager em;

    public static EntityManager getEntityManager() {

        if(em == null) {
            emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
            em = emf.createEntityManager();
        }
        return em;
    }

    public static void closeEntityManager() {

        if (em != null && em.isOpen()){
            em.close();
            emf.close();
        }

    }
}
