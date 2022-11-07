Feature: API Demo POST


  Background:

    * url 'https://gorest.co.in'
#     triple quote is for multiline string
    * def request_payload =
    """
    {
    "name": "Tenali Ramakrishna",
    "gender": "male",
    "email": "tenali.ramakrishna@25ced.com",
    "status": "active"
    }
    """

  Scenario: PUT Api examples
    Given path '/public/v2/users'
    * def header_data = {Accept: 'application/json', Content-Type:'application/json',Authorization:'Bearer 16339c6152898def25bfbfadf7618db1d8a27e547fd8b39f5f9c87d73e6ffe73'}
    And request request_payload
    And headers header_data
#    requesting payload and header data should be before this line or method
    When method POST
    * print response
    Then status 201
