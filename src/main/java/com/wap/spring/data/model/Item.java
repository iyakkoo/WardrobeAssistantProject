package com.wap.spring.data.model;

import javax.persistence.*;

@Entity
@Table(name = "clothes_list")
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "photo")
    private String link;
    private boolean inside;
    private String type;
    private String type_weather;
}
