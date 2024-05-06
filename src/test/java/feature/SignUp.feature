
  Feature: Sign up new user

    Background: Preconditions
      Given url apiUrl

      Scenario: New user Sing Up
        Given def userData = {"email":"KarateUser14@test.com","username":"KarateUser1238"}

        Given path 'users'
        And request {"user":{"email": #('userData.email),"password":"1238Karate","username":#('userData.username)}}
        When method Post
        Then status 201