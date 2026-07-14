Feature: Obtener usuario

Scenario: Consultar un usuario

Given url baseUrl
And path 'users', 1

When method GET

Then status 200
And match response.id == 1
And match response.username == 'Bret'
