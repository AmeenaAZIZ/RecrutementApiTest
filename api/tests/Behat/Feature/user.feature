Feature: _User_


  Scenario:  User
    Given I have the payload
    """
     {
        "email": "ameenaA@gmail.com",
        "roles": [
          "ROLE_RECRUITER"
        ],
        "password": "test",
        "firstname": "Paul",
        "lastname": "JEAN",
        "gender": "M",
        "address": "233 AVENUE DE PARIS"
    }
    """
    Given I request "POST /users"
    When the response status code should be 201
    Then print last response



    Given I have the payload
    """
     {
        "email": "ameenaA@gmail.com",
        "password": "test"
    }
    """
    Given I request "POST /authentication_token"
    When the response status code should be 200
    Then print last response










