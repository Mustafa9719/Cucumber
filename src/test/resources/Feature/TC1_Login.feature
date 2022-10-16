@login
Feature: Validate the login functionality of Adactin Hotel Application

  Scenario Outline: Verifying Adactin login with valid
    Given User should navigate to the Adactin login page using url
    When User should login by entering "<username>", "<password>"
    Then User should verify successful login with message "Hello MohamedMustafa97!"

    Examples: 
      | username         | password  |
      | MohamedMustafa97 | Mustafa97 |

  Scenario Outline: Verifying Adactin login with valid by Enter Key
    Given User should navigate to the Adactin login page using url
    When User should login by entering "<username>", "<password>" by Enter Key
    Then User should verify successful login with message "Hello MohamedMustafa97!"

    Examples: 
      | username         | password  |
      | MohamedMustafa97 | Mustafa97 |

  Scenario Outline: Verifying Adactin login with invalid data
    Given User should navigate to the Adactin login page using url
    When User should login by entering "<username>", "<password>"
    Then User should verify unsuccessful login with message contains "Invalid Login details"

    Examples: 
      | username         | password |
      | MohamedMustafa97 | Mustafa  |
