#language: en
Feature: I as user want to find a pet previously added

  Background:
    * url api.baseUrl
    * path "/pet/" + data.idPet
    * json headersRequest = read("../headers/generalHeaders.json")
    @step2
  Scenario: Find pet by id
    Given headers headersRequest
    When method GET
    Then status 200
    And match $.id == data.idPet
    And match $.name == data.name
    And match $.category.name == data.category
    * def responseFindPet = response
