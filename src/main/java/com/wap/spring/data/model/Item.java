package com.wap.spring.data.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "item")
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "photo")
    private String link;
//    @ManyToMany
//    @JoinTable(name = "item_relation",
//            joinColumns = @JoinColumn(name = "id_clothes_list"),
//            inverseJoinColumns = @JoinColumn(name = "id_clothes_category"))
//    private Set<Item> itemCategories = new HashSet<>();
//    @ManyToMany
//    @JoinTable(name = "item_relation",
//            joinColumns = @JoinColumn(name = "id_clothes_list"))
//    private Set<Item> insideWardrobe = new HashSet<>();
//
//    private String type;
//    private String type_weather;
}
