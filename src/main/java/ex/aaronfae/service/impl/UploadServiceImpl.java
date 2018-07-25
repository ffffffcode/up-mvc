package ex.aaronfae.service.impl;

import ex.aaronfae.dao.HomeworkDAO;
import ex.aaronfae.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UploadServiceImpl implements UploadService {

    private final HomeworkDAO homeworkDAO;

    @Autowired
    public UploadServiceImpl(HomeworkDAO homeworkDAO) {
        this.homeworkDAO = homeworkDAO;
    }

    @Override
    public void upload(String uper, String filename) {
        homeworkDAO.upload(uper, filename);
    }
}
