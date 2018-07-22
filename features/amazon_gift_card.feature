Feature: Disney Gift Card
  @tag1
  Scenario:
    Given I access the amazon homepage and navigate to the gift card page
    When I cycle through the different voucher types before deciding on style
    And I enter valid voucher details
    Then I should be able to add this to my basket

  @tag2
  Scenario:
    Given that I have added items to my basket
    When I go my view my basket
    Then I should be able to delete my items and return to the homepage
