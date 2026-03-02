package karate.runners;

import com.intuit.karate.junit5.Karate;

public class FindPetByIdRunner {
    @Karate.Test
    Karate FindPetByIdRunner() {
        return Karate.run("classpath:karate/apis/find_pet_by_id.feature");
    }
}
