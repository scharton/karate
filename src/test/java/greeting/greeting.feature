Feature: api stock test

Background:
# This is a mess

Scenario: get default greeting
    Given url 'https://api.iextrading.com/1.0/stock/aapl'
    Given path 'quote'
    When method get
    Then status 200
    And print response
    # And match response == { id: '#number', content: 'Hello World!' }
