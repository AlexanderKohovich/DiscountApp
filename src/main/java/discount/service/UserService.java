package discount.service;

import discount.entity.User;
import discount.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByUsername(username);
    }

    @Transactional
    public Iterable<User> loadAllUsers(){
        return userRepository.findAll();
    }

    @Transactional
    public User saveUsers(User user){
        return userRepository.save(user);
    }

    @Transactional
    public void deleteUser(User user){
        userRepository.delete(user);
    }

    @Transactional
    public List<User> loadUserByActive(boolean active){
        return  userRepository.findByActive(active);
    }

}
