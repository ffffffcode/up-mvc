package ex.aaronfae.service.impl;

import ex.aaronfae.dao.UsersDAO;
import ex.aaronfae.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService {

    private final UsersDAO usersDAO;

    @Autowired
    public RegisterServiceImpl(UsersDAO usersDAO) {
        this.usersDAO = usersDAO;
    }

    @Override
    public Boolean register(String username, String password) {
        return usersDAO.register(username, password) == 1;
    }

    @Override
    public boolean registered(String username) {
        return usersDAO.findByUsername(username).size() != 0;
    }
}
