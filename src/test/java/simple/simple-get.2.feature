Feature: Simple GET request that uses a url scope in Background and reused in Scenarios

Background:
    * url 'https://api.iextrading.com/1.0'

Scenario: Get Apple stock quote
    Given def q = 'aapl'
    Given path 'stock', q, 'quote'
    When method GET
    Then status 200
    And match response['symbol'] == 'AAPL'

Scenario: Get Microsoft stock quote
    Given def q = 'msft'
    Given path 'stock', q, 'quote'
    When method GET
    Then status 200
    And match response['symbol'] == 'MSFT'

Scenario: Get a stock quote with an invalid ticker returning a 404 status
    Given def q = 'abcxyz'
    Given path 'stock', q, 'quote'
    When method GET
    Then status 404
    And print response
