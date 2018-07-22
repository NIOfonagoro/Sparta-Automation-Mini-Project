Feature: Disney Registration.

  Scenario Outline: Attempting to register
    Given I access the amazon homepage and then registration page
    When filling in details and a section if left blank <name> <email> <password> <retype_password>
    Then It should show the correct error meesage <error>

    Examples:
    | name | email | password | retype_password | error |
    |  | abc@def.com | testing123 | testing123 |  |
    | nick |  | testing123 | testing123 |  |
    | nick | abc@def.com  |  | testing123 |  |
    | nick | abc@def.com  | testing123 |  |  |
