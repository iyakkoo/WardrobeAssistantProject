package com.wap.spring.core.services;

import com.wap.spring.data.model.Item;
import com.wap.spring.data.model.User;
import com.wap.spring.data.repositories.ItemRepository;
import com.wap.spring.data.repositories.UserRepository;
import com.wap.spring.dto.ItemListDTO;
import com.wap.spring.dto.LoggedUserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class UserService {

    private final ItemRepository itemRepository;
    private UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository, ItemRepository itemRepository) {
        this.userRepository = userRepository;
        this.itemRepository = itemRepository;
    }


//    public List<ItemListDTO> getItemsForUser(LoggedUserDTO user) {
//        // TODO Uzupełnij implementację z wykorzystaniem Spring Data
//        return userRepository.getAllItemsForUser(user.getId())
//                .stream()
//                .map(this::buildItemDTO)
//                .collect(Collectors.toList());
//        return userRepository.findAllNonDistinctObtainedSkillsForUser(user.getId())
//                .stream()
//                .filter(skill -> skill != null)
//                .map(skill -> {
//                    SkillDTO skillDTO = new SkillDTO();
//                    skill.setId(skill.getId());
//                    skillDTO.setName(skill.getName());
//                    skillDTO.setCategory(skill.getCategory());
//                    return skillDTO;
//                })
//                .collect(Collectors.toList());
//        User userEntity = userRepository.findById(user.getId()).orElse(null);
//        if(userEntity == null) {
//            return Collections.emptyList();
//        }
//
//        List<SkillDTO> skills = new LinkedList<>();
//        for (KnowledgeSource source: userEntity.getKnownSources()){
//            for (Skill skillEntity : source.getConnectedSkills() ) {
//                SkillDTO skillDTO = new SkillDTO();
//                skillDTO.setId(skillEntity.getId());
//                skillDTO.setName(skillEntity.getName());
//                skillDTO.setCategory(skillEntity.getCategory());
//                skills.add(skillDTO);
//            }
//        }
//        return skills;
//    }
//
//    public void addNewSource(LoggedUserDTO user, ItemListDTO source) {
//        // TODO Uzupełnij implementację z wykorzystaniem Spring Data
//        User userEntity = userRepository.findById(user.getId()).orElseThrow(RuntimeException::new);
//        Item item = itemRepository.findById(source.getId()).orElseThrow(RuntimeException::new);
//        if (!item.getActive()){
//            throw new IllegalArgumentException("Nie można potwierdzić nieaktywnego źródła wiedzy!");
//        }
//        if (!userEntity.getKnownSources().contains(item)){
//            userEntity.getKnownSources().add(item);
//        }
//    }

    public boolean checkCredentials(String login, String password) {
        // TODO Uzupełnij implementację z wykorzystaniem Spring Data
        boolean existsUser = userRepository.checkIfUserExists(login, password);

        return existsUser;
    }
//
//    public LoggedUserDTO getUser(String login, String password) {
//        // TODO Uzupełnij implementację z wykorzystaniem Spring Data
//
//        LoggedUserDTO loggedUserDTO = null;
//        User user = userRepository.getUserByLoginAndPassword(login, password);
//
//        if(user!=null){
//            loggedUserDTO = new LoggedUserDTO();
//            loggedUserDTO.setId(user.getId());
//            loggedUserDTO.setLogin(user.getLogin());
//            loggedUserDTO.setFirstName(user.getFirstName());
//            loggedUserDTO.setLastName(user.getLastName());
//        }
//        return loggedUserDTO;
//    }
//
//    public LoggedUserDTO getUser(String login) {
//        return TestDataGenerator.getLoggedUserDTO(login);
//    }
//
//    public SkillDTO buildSkillDTO(Skill skill) {
//        SkillDTO skillDTO = new SkillDTO();
//        skillDTO.setId(skill.getId());
//        skillDTO.setName(skill.getName());
//        skillDTO.setCategory(skill.getCategory());
//
//        return skillDTO;
//    }
}
