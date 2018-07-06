package ex.aaronfae.service;

import ex.aaronfae.util.Pagination;

import java.util.List;
import java.util.Map;

public interface ListService {

    List<Map<String, Object>> list();

    Pagination listWithPaging(int page);
}
