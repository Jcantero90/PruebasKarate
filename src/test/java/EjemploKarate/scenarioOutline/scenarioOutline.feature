Feature: Pruebas de Login.

  Scenario Outline: vamos a realizar un CRUD con Scenario Outline.
    Given url <urlMethod>
    And request { "name": "#(name)", "job": "#(job)"}
    When method <Method>
    Then status <statusCode>

  Examples:
    |urlMethod|Method|name|job|statusCode|
    |"https://reqres.in/api/users/2"|get|"example1"|"Example2"|200|
    |"https://reqres.in/api/users/2"|delete|"example1"|"Example2"|204|
    |"https://reqres.in/api/users/2"|put|"example1"|"Example2"|200|
    |"https://reqres.in/api/users/"|post|"example1"|"Example2"|201|