Feature: _Offer_
  Background:
    Given the following fixtures files are loaded:
      | application    |
      | user    |
      | offer    |





  Scenario: Crée une Offre
    Given I have the payload
    """
      {
        "name": "offreName",
        "companyDetails": " test offre company detail",
        "description": "tes offre desc",
        "startAt": "2020-06-04 11:45:12.938Z",
        "contratType": "cdd",
        "workplace": "Paris",
        "author": "/users/<user_2.id>"
      }
    """
    Given I request "POST /offers"
    When the response status code should be 201
    Then print last response


    Given I request "GET /offers/offer_2.id"
    When the response status code should be 200
    Then print last response



  Scenario: test PUT offer by id
    """
      {
        "workplace": "Sarcelle"
      }
    """
    Given I request "PUT /offers/offer_2.id"
    When the response status code should be 200
    Then print last response



  Scenario: test DELETE offer by id
    Given I request "DELETE /offers/offer_3.id"
    When the response status code should be 204
    Then print last response








