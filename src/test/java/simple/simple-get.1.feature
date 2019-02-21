Feature: Simple GET request to a public API that validates a property in the response object

Background:
# We won't use for this one to show it's not necessary

Scenario: get apple stock quote - hard coded
    Given url 'https://api.iextrading.com/1.0/stock/aapl/quote'
    When method GET
    Then status 200
    And print response
    And match response['symbol'] == 'AAPL'
