

  Feature: Articles

    Background: Define URL
      Given url apiUrl

    Scenario: Create a new article
      Given path 'articles'
      And request {"article":{"title":"Article title karate kiddd","description":"bla bla bla 7","body":"body karate 6","tagList":[]}}
      When method Post
      Then status 201
      And match response.article.title == 'Article title karate kiddd'

    Scenario: Create and delete article
      Given path 'articles'
      And request {"article":{"title":"Delete article","description":"bla bla bla 7","body":"body karate 6","tagList":[]}}
      When method Post
      Then status 201
      * def articleId = response.article.slug

      Given params { limit: 10, offset: 0}
      Given path 'articles'
      When method Get
      Then status 200
      #And match response.articles[0].title == 'Delete article'

      Given path 'articles',articleId
      When method Delete
      Then status 204

      Given params { limit: 10, offset: 0}
      Given path 'articles'
      When method Get
      Then status 200
      And match response.articles[0].title != 'Delete article'