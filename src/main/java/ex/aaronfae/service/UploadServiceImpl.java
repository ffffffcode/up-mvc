package ex.aaronfae.service;

import ex.aaronfae.dao.UploadDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UploadServiceImpl implements UploadService {

    private final UploadDAO uploadDAO;

    @Autowired
    public UploadServiceImpl(UploadDAO uploadDAO) {
        this.uploadDAO = uploadDAO;
    }

    @Override
    public void upload(String uper, String filename) {
        uploadDAO.upload(uper, filename);
    }

    @Override
    public List<Map<String, Object>> list() {
        return uploadDAO.list();
    }
}
