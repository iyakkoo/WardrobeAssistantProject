package com.wap.spring.data.repositories;
import com.wap.spring.data.model.Item;
import com.wap.spring.data.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Set;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
//
//    @Query(nativeQuery = true,
//            value = "SELECT CASE WHEN count(*) >= 1 THEN 'true' ELSE 'false' END " +
//                    "FROM users WHERE login = ?1 AND password = ?2")
//    Boolean checkIfUserExists(String login, String password);
//
//    User getUserByLoginAndPassword(String login, String password);

//    @Query(value = "SELECT s FROM User u JOIN u.ownedItems uks JOIN uks.connectedSkills s WHERE u.id =?1")
//    List<Item> findAllNonDistinctObtainedSkillsForUser(Long id);
//
//    @Query(value = "SELECT s FROM User u JOIN u.knownSources k JOIN k.connectedSkills s")
//    Set<Item> getAllSkillsForUser(Long id);
}
