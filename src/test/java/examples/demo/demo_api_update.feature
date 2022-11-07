Feature: API Demo update

  Scenario: Demo Get API
    * def jsonbdy =
    """
    {
    "name": "Allasani Peddana",
    "email": "allasani.peddana@15ce.com",
    "status": "active"
    }
    """
    * def header_data = {Accept: 'application/json', Content-Type:'application/json',Authorization:'Bearer 16339c6152898def25bfbfadf7618db1d8a27e547fd8b39f5f9c87d73e6ffe73'}
    Given url 'https://gorest.co.in/public/v2/users'
#    path paramters are added using below line
    And path '23'
    And headers header_data
    And request jsonbdy
    When method PATCH
#    asserting status code
    Then status 200
    * def jsonResponse = response
    * def idToAssert = jsonResponse.id
    * match idToAssert == 23






