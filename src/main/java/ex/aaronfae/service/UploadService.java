package ex.aaronfae.service;

import java.util.List;
import java.util.Map;

public interface UploadService {

    void upload(String uper, String filename);

    List<Map<String, Object>> list();
}
