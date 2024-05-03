

  Feature: Articles

    Background: Define URL
      Given url 'https://conduit-api.bondaracademy.com/api/'
      Given path 'users/login'
      And request { "user": { "email": "karate10@test.com", "password": "1234karate" }}
      When method Post
      Then status 200
      * def token = response.user.token

    Scenario: Create a new article
      Given header Authorization = 'Token ' + token
      Given path 'articles'
      And request {"article":{"title":"Article title karate kiddd","description":"bla bla bla 7","body":"body karate 6","tagList":[]}}
      When method Post
      Then status 201
      And match response.article.title == 'Article title karate kiddd'

      