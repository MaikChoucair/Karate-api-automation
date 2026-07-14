Feature: Flujo dinámico

Scenario: Crear, actualizar y eliminar

# Crear
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
And match response.name == 'Maikol'

* def userId = response.id
* match userId != null
* print 'ID creado:', userId

# Actualizar un usuario existente
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
And match response.name == 'Maikol Actualizado'

# Eliminar un usuario existente
Given url baseUrl
And path 'users', 1

When method DELETE

Then status 200