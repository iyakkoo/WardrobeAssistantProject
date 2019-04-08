package com.wap.spring.data.repositories;

import com.wap.spring.data.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long> {

}
