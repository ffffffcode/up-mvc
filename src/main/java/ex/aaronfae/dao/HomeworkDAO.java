package ex.aaronfae.dao;

import ex.aaronfae.util.PageParam;
import ex.aaronfae.util.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class HomeworkDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public HomeworkDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void upload(String uper, String fileName) {
        jdbcTemplate.update("INSERT INTO up VALUES (null,?,?)", uper, fileName);
    }

    public List<Map<String, Object>> list() {
        return jdbcTemplate.queryForList("SELECT id, uper, filename FROM up");
    }

    public Pagination listWithPaging(int page) {
        String sql = "SELECT id, uper, filename FROM up";
        PageParam pageParam = new PageParam();
        pageParam.setPage(page);
        Pagination pagination = new Pagination(sql, null, pageParam, jdbcTemplate);
        return pagination;
    }
}
