Feature: Actualizar usuario

Scenario: Actualizar un usuario

Given url baseUrl
And path 'users', 1

And request
"""
{
  "id": 1,
  "name": "Maikol Actualizado",
  "username": "maikol23",
  "email": "maikol@test.com"
}
"""

When method PUT

Then status 200
And match response.id == 1
And match response.name == "Maikol Actualizado"