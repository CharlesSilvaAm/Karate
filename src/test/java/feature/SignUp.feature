
  Feature: Sign up new user

    Background: Preconditions
      Given url apiUrl

      Scenario: New user Sing Up
        Given path 'users'
        And request {"user":{"email":"KarateUser11@test.com","password":"123Karate","username":"KarateUser123"}}
        When method Post
        Then status 200