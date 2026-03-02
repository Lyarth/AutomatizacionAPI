#language: en
Feature: I as user want to modify a pet previously added

  Background:
    * url api.baseUrl
    * path "/pet"
    * json headersRequest = read("../headers/generalHeaders.json")
    * def responseFindPet = call read("find_pet_by_id.feature")
    * json bodyRequest = responseFindPet.response
    @step3
  Scenario: Modify pet
    * set bodyRequest.status = data.statusModified
    Given headers headersRequest
    And request bodyRequest
    When method PUT
    Then status 200
    And match $.status == data.statusModified