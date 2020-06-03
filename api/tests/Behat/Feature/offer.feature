Feature: _Offer_
  Background:
    Given the following fixtures files are loaded:
      | offer      |




  Scenario: test post offer
    Given I have the payload
    """
   {
      "name": "jean",
      "companyDetails": "azertyuiopdfghj dfghj",
      "description": "defnerjfn fhefb",
      "startAt": "2020-06-02T20:43:43.443Z",
      "contratType": "cdd",
      "workplace": "Paris",
      "author": "32"
    }
    """
    Given I request "POST /offer"
    When the response status code should be 201
    Then print last response





  Scenario: test get offer
    Given I request "GET /offer"
    When the response status code should be 201
    Then print last response






