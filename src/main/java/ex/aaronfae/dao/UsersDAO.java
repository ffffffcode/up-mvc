package ex.aaronfae.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class UsersDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public UsersDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int register(String username, String password) {
        return jdbcTemplate.update("INSERT INTO users VALUES (null,?,?)", username, password);
    }

    public List<Map<String, Object>> findByUsername(String username) {
        return jdbcTemplate.queryForList("SELECT username FROM users WHERE username = ?", username);
    }
}
