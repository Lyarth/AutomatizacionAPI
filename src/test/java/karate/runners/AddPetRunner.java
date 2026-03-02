package karate.runners;

import com.intuit.karate.junit5.Karate;

class AddPetRunner {
    @Karate.Test
    Karate testAddPet() {
        return Karate.run("classpath:karate/apis/add_pet.feature","classpath:karate/apis/find_pet_by_id.feature");
    }
}