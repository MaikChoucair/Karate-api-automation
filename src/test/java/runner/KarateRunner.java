package runner;

import com.intuit.karate.junit5.Karate;

public class KarateRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run(
                "classpath:features/getUser.feature",
                "classpath:features/createUser.feature",
                "classpath:features/updateUser.feature",
                "classpath:features/deleteUser.feature",
                "classpath:features/userFlow.feature"
        );
    }
}
