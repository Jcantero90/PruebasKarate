Feature: Hacer un CRUD usando nuestro Background.

  Background:
    * url "https://reqres.in/api/users/2"
    * request {"name": "morpheus", "job": "leader"}
    * def var = {"name": "morpheus", "job": "leader"}

  Scenario: Nuestro primer Get
#    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200

  Scenario: Nuestro primer POST
#    Given url "https://reqres.in/api/users"
    And request var
    When method post
    Then status 201

  Scenario: Nuestro primer DELETE
#    Given url "https://reqres.in/api/users/2"
    When method delete
    Then status 204

  Scenario: Nuestro primer PUT
#    Given url "https://reqres.in/api/users/2"
#    And request {"name": "morpheus","job": "zion resident"}
    When method put
    Then status 200