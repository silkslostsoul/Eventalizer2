// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.eventalizer.domain;

import de.eventalizer.domain.Benutzer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Benutzer_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Benutzer.entityManager;
    
    public static final EntityManager Benutzer.entityManager() {
        EntityManager em = new Benutzer().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Benutzer.countBenutzers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Benutzer o", Long.class).getSingleResult();
    }
    
    public static List<Benutzer> Benutzer.findAllBenutzers() {
        return entityManager().createQuery("SELECT o FROM Benutzer o", Benutzer.class).getResultList();
    }
    
    public static Benutzer Benutzer.findBenutzer(Long id) {
        if (id == null) return null;
        return entityManager().find(Benutzer.class, id);
    }
    
    public static List<Benutzer> Benutzer.findBenutzerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Benutzer o", Benutzer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Benutzer.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Benutzer.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Benutzer attached = Benutzer.findBenutzer(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Benutzer.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Benutzer.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Benutzer Benutzer.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Benutzer merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
