Feature: Register Functionality ParaBank

  @SmokeTest
  Scenario: Register Functionality

    Given Navigate to parabank
    And Click on the element in LeftNav
      | register |
    And User sending the keys in Dialog Content
      | firstname | berkay123   |
      | lastname  | tester123   |
      | address   | icerenkoy   |
      | city      | istanbul    |
      | state     | ist         |
      | zipcode   | 34000       |
      | phone     | 90999999999 |
      | ssn       | 5456456     |
      | username  | berkay1234  |
      | password  | berkay1234  |
      | password2 | berkay1234  |
    And Click on the element in Dialog
      | registerButton |

    Then Succes message should be displayed




