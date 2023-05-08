Feature: Bill Pay Functionality

  Background:
    Given Navigate to parabank
    And User sending the keys in Dialog Content
      | id   | berkay1234 |
      | pass | berkay1234 |
    And Click on the element in Dialog
      | login |

  @SmokeTest
  Scenario Outline:
    And Click on the element in Dialog
      | bill |
    And User sending the keys in Dialog Content
      | payeeName      | <payeeName>    |
      | billaddres    | <billaddres>    |
      | billcity      | <billcity>      |
      | billstate     | <billstate>     |
      | billZip       | <billZip>       |
      | billgsm       | <billgsm>       |
      | accountNumber | <accountNumber> |
      | verifyAccount | <verifyAccount> |
      | amount        | <amount>        |

    And Click on the element in Dialog
    | sendPayment|

    Then Succes payment bill
    Examples:
      | payeeName | billaddres | billcity | billstate | billZip | billgsm    | accountNumber | verifyAccount | amount |
      | merts     | america    | techno   | study     | 1234    | +920321231 | 10000         | 10000         | 85     |
      | korcans   | aydin      | techno   | study     | 1235    | +45648948  | 5000          | 5000          | 45     |
      | ahmets    | bodrum     | techno   | study     | 1236    | +8978915   | 7000          | 7000          | 120    |