package karate.utils;
import com.intuit.karate.junit5.Karate;

public class TestParallel {
    @Karate.Test
    public Karate testAll() {
        return Karate.run("classpath:karate/apis/add_pet.feature","classpath:karate/apis/find_pet_by_id.feature","classpath:karate/apis/update_pet.feature","classpath:karate/apis/find_pet_by_status.feature");
    }
}
