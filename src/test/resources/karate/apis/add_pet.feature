#language: en
  Feature: I as user want to add a new pet to the shop

    Background:
      * url api.baseUrl
      * path "/pet"
      * json headersRequest = read("../headers/generalHeaders.json")
      @step1
    Scenario: Add pet to
      * def name = data.name
      * def category = data.category
      * def status = data.status
      * json bodyRequest = read("../bodies/addPet.json")
      * set bodyRequest.id = data.idPet
      Given headers headersRequest
      And request bodyRequest
      When method POST
      Then status 200
      And match $.id == data.idPet
      And match $.name == data.name
      And match $.category.name == data.category
      And match $.status == data.status