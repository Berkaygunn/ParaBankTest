Feature: Login Functionality Test

  Background:
    Given Navigate to parabank

  @SmokeTest
  Scenario Outline: We have to login with
    And User sending the keys in Dialog Content
      | id   | <name> |
      | pass | <pass> |
    And Click on the element in Dialog
      | login |

    Then if you see logout then successlogin

    Examples:
      | name       | pass       |
      | berkay1234 | berkay1234 |

