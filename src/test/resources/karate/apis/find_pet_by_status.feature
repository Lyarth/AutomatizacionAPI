#language: en
Feature: I as user want to find a pet by status

  Background:
    * url api.baseUrl
    * path "/pet/findByStatus"
    * json headersRequest = read("../headers/generalHeaders.json")
    @step4
  Scenario: Find pet by status
    Given headers headersRequest
    And param status = data.statusModified
    When method GET
    Then status 200
    * def id = data.idPet
    * def name = data.name
    * def status = data.statusModified
    And match response contains deep { id: #(id), name: '#(name)', status: '#(status)' }
