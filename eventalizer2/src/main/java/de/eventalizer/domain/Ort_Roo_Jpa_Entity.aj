// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.eventalizer.domain;

import de.eventalizer.domain.Ort;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Ort_Roo_Jpa_Entity {
    
    declare @type: Ort: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Ort.id;
    
    @Version
    @Column(name = "version")
    private Integer Ort.version;
    
    public Long Ort.getId() {
        return this.id;
    }
    
    public void Ort.setId(Long id) {
        this.id = id;
    }
    
    public Integer Ort.getVersion() {
        return this.version;
    }
    
    public void Ort.setVersion(Integer version) {
        this.version = version;
    }
    
}
