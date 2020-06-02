Feature: _Application_
  Background:
    Given the following fixtures files are loaded:
      | users     |
      | tags     |
      | application     |



  Scenario: test get application
    Given I request "GET /application"
    When the response status code should be 201
    Then print last

  Scenario: test post application
    Given I request "POST /application"
    When the response status code should be 201
    Then print last response


  Scenario: test GET offer by id
    Given I request "GET /application/id"
    When the response status code should be 201
    Then print last response



  Scenario: test PUT offer by id
    Given I request "PUT /application/id"
    When the response status code should be 201
    Then print last response



  Scenario: test DELETE offer by id
    Given I request "DELETE /application/id"
    When the response status code should be 201
    Then print last response



  Scenario: test PATCH offer by id
    Given I request "PATCH /application/id"
    When the response status code should be 201
    Then print last response



