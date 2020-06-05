Feature: _Application_


  Scenario: test get application

    Given I request "GET /applications"
    When the response status code should be 200
    And the "hydra:member" property should be an array
    Then scope into the "hydra:view" property
    Then print last response




    Given I have the payload
    """
      {
        "applicant": "/users/2515"
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




    Given I request "GET /applications/2497"
    When the response status code should be 200
    Then print last response



    Given I have the payload
    """
      {
        "applicant": "/users/2506"
      }
    """
    Given I request "PUT /applications/2510"
    When the response status code should be 200
    Then print last response


    Given I request "DELETE /applications/2509"
    When the response status code should be 204
    Then print last response



