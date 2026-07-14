Feature: Crear usuario

Scenario: Crear un usuario

Given url baseUrl
And path 'users'

And request
"""
{
  "name": "Maikol",
  "username": "maikol23",
  "email": "maikol@test.com"
}
"""

When method POST

Then status 201
And match response.name == "Maikol"

* def userId = response.id
* print "ID creado:", userId