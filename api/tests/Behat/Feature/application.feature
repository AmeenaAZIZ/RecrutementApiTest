Feature: _Application_
  Background:
    Given the following fixtures files are loaded:
      | application    |
      | user    |
      | offer    |



  Scenario: test get application

    Given I request "GET /applications"
    When the response status code should be 200
    Then print last response


    Given I have the payload
    """
      {
        "applicant": "/users/2"
      }
    """
    Given I request "POST /applications"
    When the response status code should be 201
    Then print last response



    Given I have the payload
    """
      {
        "applicant": "rrr"
      }
    """
    Given I request "POST /applications"
    When the response status code should be 400
    Then print last response



    Given I request "GET /applications/3"
    When the response status code should be 200
    Then print last response



    Given I have the payload
    """
      {
        "applicant": "/users/2"
      }
    """
    Given I request "PUT /applications/3"
    When the response status code should be 200
    Then print last response


    Given I request "DELETE /applications/5"
    When the response status code should be 204
    Then print last response



