package karate.runners;

import com.intuit.karate.junit5.Karate;

public class UpdatePetRunner {
    @Karate.Test
    Karate UpdatePetRunner() {
        return Karate.run("classpath:karate/apis/update_pet.feature");
    }
}
