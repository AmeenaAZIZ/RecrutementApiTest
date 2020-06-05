Feature: _Offer_

  Scenario: offers
    Given I request "GET /offers"
    When the response status code should be 200

    Given I request "GET /offers/3746"
    When the response status code should be 200
    Then print last response

    Given I have the payload
    """
      {
        "name": "offreName",
        "companyDetails": " test offre company detail",
        "description": "tes offre desc",
        "startAt": "2020-06-04 11:45:12.938Z",
        "contratType": "cdd",
        "workplace": "Paris",
        "author": "/users/2515"
      }
    """
    Given I request "POST /offers"
    When the response status code should be 201
    Then print last response

    """
      {
       "name": "offreName",
        "companyDetails": " test offre company detail",
        "description": "tes offre desc",
        "startAt": "2020-06-04 11:45:12.938Z",
        "contratType": "cdd",
        "workplace": "Sarcelle",
        "author": "/users/2503"
      }
    """
    Given I request "PUT /offers/3737"
    When the response status code should be 200
    Then print last response


    Given I request "DELETE /offers/3761"
    When the response status code should be 204
    Then print last response








