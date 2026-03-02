package karate.runners;

import com.intuit.karate.junit5.Karate;

public class FindPetByStatusRunner {
    @Karate.Test
    Karate FindPetByStatusRunner() {
        return Karate.run("classpath:karate/apis/find_pet_by_status.feature");
    }
}
