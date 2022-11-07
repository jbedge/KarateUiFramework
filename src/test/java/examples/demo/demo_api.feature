Feature: API Demo

  Scenario: Demo Get API
    Given url 'https://gorest.co.in/public/v2/users'
#    path paramters are added using below line
    And path '3'
    When method GET
#    asserting status code
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
#    json response . something like attribute from the json body
    * def actname = jsonResponse.name
    * print actname
    * match actname == 'Atreyee Achari'

  Scenario: Demo Get API with query parameters
    * def query = {status:'active'}
#    * def query = {status:'active',gender='male'}
    Given url 'https://gorest.co.in/public/v2/users'
#    keyword to add query parameters
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: Get API with headers
    * def header_data = {Accept: 'application/json', Content-Type:'application/json',Authorization:'Bearer 16339c6152898def25bfbfadf7618db1d8a27e547fd8b39f5f9c87d73e6ffe73'}
    Given url 'https://gorest.co.in/public/v2/users'
    Given headers header_data
    When method GET
    Then status 200
    * print response

