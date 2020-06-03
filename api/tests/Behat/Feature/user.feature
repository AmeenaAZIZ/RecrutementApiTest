Feature: _User_
  Background:
    Given the following fixtures files are loaded:
      | users

  Scenario: test post user
    Given I have the payload
    """
    {
        "email": "test@test.com",
        "roles": [
          "ROLE_USER"
        ],
        "password": "$argon2id$v=19$m=65536,t=4,p=1$cMH2swfacaqZCwGA5JWOPA$J09JznitkqUp0uGDsslacn63HhhNEikbhjbZtuYm4ns"
        "firstname": "Paul",
        "lastname": "JEAN",
        "gender": "male",
        "address": "233 AVENUE DE PARIS",
        "isValide": true
    }
    """
    Given I request "POST /users"
    When the response status code should be 201
    Then print last response

  Scenario: test get user
    Given I request "GET /users"
    When the response status code should be 201
    Then print last response

  Scenario: test get user by id
    Given I request "GET /users/id"
    When the response status code should be 201
    Then print last response

  Scenario: test post user
    Given I have the payload
    """
    {
        "email": "test@test.com",
        "roles": [
          "ROLE_USER"
        ],
        "password": "$argon2id$v=19$m=65536,t=4,p=1$cMH2swfacaqZCwGA5JWOPA$J09JznitkqUp0uGDsslacn63HhhNEikbhjbZtuYm4ns"
        "firstname": "Paul",
        "lastname": "JEAN",
        "gender": "male",
        "address": "233 AVENUE DE PARIS",
    }
    """
    Given I request "POST /users/{token}/activate"
    When the response status code should be 201
    Then print last response

