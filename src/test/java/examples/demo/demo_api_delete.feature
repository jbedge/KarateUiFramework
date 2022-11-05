Feature: API Demo put


  Background:

    * url 'https://gorest.co.in'

  Scenario: Delete Api examples
    Given path '/public/v2/users/4530'
    * def header_data = {Accept: 'application/json', Content-Type:'application/json',Authorization:'Bearer 16339c6152898def25bfbfadf7618db1d8a27e547fd8b39f5f9c87d73e6ffe73'}
    And headers header_data
    When method DELETE
    * print response
    Then status 204
