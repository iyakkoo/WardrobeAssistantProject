package com.wap.spring.dto;

import java.util.Set;

public class ItemListDTO {

    private Long id;
    private String name;
    private String photo;
    private Set<Long> connectedItemType;
    private boolean insideWardrobe;

    public boolean isInsideWardrobe() {
        return insideWardrobe;
    }

    public void setInsideWardrobe(boolean insideWardrobe) {
        this.insideWardrobe = insideWardrobe;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Set<Long> getConnectedItemType() {
        return connectedItemType;
    }

    public void setConnectedItemType(Set<Long> connectedItemType) {
        this.connectedItemType = connectedItemType;
    }
}
