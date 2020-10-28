package by.bsuir.Andrei.repositories;

import by.bsuir.Andrei.models.User;

import java.util.List;

public interface UsersRepository {
    List<User> findAll();

    void save(User user);

    boolean isExist(String name, String password);
}
