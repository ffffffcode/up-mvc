package ex.aaronfae.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class UploadDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public UploadDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void upload(String uper, String fileName) {
        jdbcTemplate.update("INSERT INTO up VALUES (null,?,?)", uper, fileName);
    }

    public List<Map<String, Object>> list() {
        return jdbcTemplate.queryForList("SELECT * FROM up");
    }
}
