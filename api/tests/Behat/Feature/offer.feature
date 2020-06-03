Feature: _Offer_
  Background:
    Given the following fixtures files are loaded:
      | parameters     |
      | offers         |




  Scenario: test post offer
    Given I have the payload
    """
   {
      "name": "string",
      "companyDetails": "string",
      "description": "string",
      "startAt": "2020-06-02T20:43:43.443Z",
      "contratType": "string",
      "workplace": "string",
      "author": "string"
    }
    """
    Given I request "POST /offers"
    When the response status code should be 201
    Then print last response





  Scenario: test get offer
    Given I request "GET /offers"
    When the response status code should be 201
    Then print last response





  Scenario: test GET offer by id
    Given I request "GET /offers/id"
    When the response status code should be 201
    Then print last response



  Scenario: test PUT offer by id
    Given I request "PUT /offers/id"
    When the response status code should be 201
    Then print last response



  Scenario: test DELETE offer by id
    Given I request "DELETE /offers/id"
    When the response status code should be 201
    Then print last response



  Scenario: test PATCH offer by id
    Given I request "PATCH /offers/id"
    When the response status code should be 201
    Then print last response





