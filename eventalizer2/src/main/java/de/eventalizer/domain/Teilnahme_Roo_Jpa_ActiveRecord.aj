// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.eventalizer.domain;

import de.eventalizer.domain.Teilnahme;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Teilnahme_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Teilnahme.entityManager;
    
    public static final EntityManager Teilnahme.entityManager() {
        EntityManager em = new Teilnahme().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Teilnahme.countTeilnahmes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Teilnahme o", Long.class).getSingleResult();
    }
    
    public static List<Teilnahme> Teilnahme.findAllTeilnahmes() {
        return entityManager().createQuery("SELECT o FROM Teilnahme o", Teilnahme.class).getResultList();
    }
    
    public static Teilnahme Teilnahme.findTeilnahme(Long id) {
        if (id == null) return null;
        return entityManager().find(Teilnahme.class, id);
    }
    
    public static List<Teilnahme> Teilnahme.findTeilnahmeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Teilnahme o", Teilnahme.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Teilnahme.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Teilnahme.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Teilnahme attached = Teilnahme.findTeilnahme(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Teilnahme.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Teilnahme.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Teilnahme Teilnahme.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Teilnahme merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
