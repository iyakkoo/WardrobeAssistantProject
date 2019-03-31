package com.wap.spring.dto;

import java.util.Set;

public class AddItemToListDTO {

    private String name;
    private String photo;
    private String connectedItemType;
    private Set<Long> connectedBodypart;

    public Set<Long> getConnectedBodypart() {
        return connectedBodypart;
    }

    public void setConnectedBodypart(Set<Long> connectedBodypart) {
        this.connectedBodypart = connectedBodypart;
    }

    private boolean insideWardrobe = true;

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

    public String getConnectedItemType() {
        return connectedItemType;
    }

    public void setConnectedItemType(String connectedItemType) {
        this.connectedItemType = connectedItemType;
    }

    public boolean isInsideWardrobe() {
        return insideWardrobe;
    }

    public void setInsideWardrobe(boolean insideWardrobe) {
        this.insideWardrobe = insideWardrobe;
    }
}
