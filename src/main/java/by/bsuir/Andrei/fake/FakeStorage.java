package by.bsuir.Andrei.fake;

import by.bsuir.Andrei.models.User;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class FakeStorage {
    private static final FakeStorage storage;

    static {
        storage = new FakeStorage();
    }

    private List<User> users;

    private FakeStorage() {
        this.users = new ArrayList<>();
        User user = new User("Andrei", "1234", LocalDate.parse("2000-07-14"));
        User user1 = new User("Andrei1", "1234", LocalDate.parse("2001-07-14"));
        User user2 = new User("Andrei2", "1234", LocalDate.parse("2002-07-14"));

        users.add(user);
        users.add(user1);
        users.add(user2);
    }

    public static FakeStorage storage() {
        return storage;
    }

    public List<User> users() {
        return users;
    }
}
