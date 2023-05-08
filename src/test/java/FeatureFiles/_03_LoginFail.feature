Feature: Login Functionality Negative Test

  Background:
    Given Navigate to parabank

  @SmokeTest
  Scenario Outline: We have to login with
    And User sending the keys in Dialog Content
      | id   | <name> |
      | pass | <pass> |
    And Click on the element in Dialog
      | login |

    Then negative success message is displayed

    Examples:
      | name   | pass          |
      | dasdsa | aaasdwewqweqw |



