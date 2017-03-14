Feature: Create voting

  As a user I want to create new votings. Each voting is given default vote  options.
  The user should be able to set custom vote options.

  Scenario: Default voting options
    When I create new voting
    Then voting title should be "Do you like Mondays?"
    And voting should have options
      | yes |
      | no  |

  Scenario: Custom voting options
    When I create new voting "What is your favorite color?"
    And voting options are "green:red:blue"
    Then voting title should be "What is your favorite color?"
    And voting should have options
      | green |
      | red   |
      | blue  |