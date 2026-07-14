Feature: Eliminar usuario

Scenario: Eliminar un usuario

Given url baseUrl
And path 'users', 1

When method DELETE

Then status 200