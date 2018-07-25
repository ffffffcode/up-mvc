package ex.aaronfae.service.impl;

import ex.aaronfae.dao.HomeworkDAO;
import ex.aaronfae.service.ListService;
import ex.aaronfae.util.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public class ListServiceImpl implements ListService {

    private final HomeworkDAO homeworkDAO;

    @Autowired
    public ListServiceImpl(HomeworkDAO homeworkDAO) {
        this.homeworkDAO = homeworkDAO;
    }

    @Override
    public List<Map<String, Object>> list() {
        return homeworkDAO.list();
    }

    @Override
    public Pagination listWithPaging(int page) {
        return homeworkDAO.listWithPaging(page);
    }
}
