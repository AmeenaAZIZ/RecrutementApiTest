Feature: _User_


  Scenario:  User
    Given I have the payload
    """
     {
        "email": "truc1@gmail.com",
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
        "email": "truc1@gmail.com",
        "password": "test"
    }
    """
    Given I request "POST /authentication_token"
    When the response status code should be 200
    Then print last response

    # User cannot Login with bad credentials
    
    Given I authenticate with user "truc1@gmail.com" and password "test"
    # Then I request "POST /authentication_token"
    Then the response status code should be 200
    Then print last response

    # Given I request "GET /users/user.id"
    # Then the response status code should be 200
    # Then print last response






