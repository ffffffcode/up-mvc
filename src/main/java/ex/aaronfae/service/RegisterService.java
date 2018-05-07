package ex.aaronfae.service;

public interface RegisterService {

    Boolean register(String username, String password);

    boolean registered(String username);
}
