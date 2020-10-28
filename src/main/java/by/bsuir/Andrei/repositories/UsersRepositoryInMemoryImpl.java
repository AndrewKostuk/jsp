package by.bsuir.Andrei.repositories;

import by.bsuir.Andrei.fake.FakeStorage;
import by.bsuir.Andrei.models.User;

import java.util.List;

public class UsersRepositoryInMemoryImpl implements UsersRepository {

    public List<User> findAll() {
        return FakeStorage.storage().users();
    }

    @Override
    public void save(User user) {
        FakeStorage.storage().users().add(user);
    }

    @Override
    public boolean isExist(String name, String password) {
        for (User user : FakeStorage.storage().users()) {
            if (user.getName().equals(name) && user.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }
}
