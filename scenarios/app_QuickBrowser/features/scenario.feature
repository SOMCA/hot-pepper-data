Feature: To visit a website
  A feature to visit a website

  Scenario:
    Given I wait for 3 seconds
    Then I click on screen 95% from the left and 2% from the top
    Then I wait for 5 seconds
    Then I press the search box button
    Then I enter text "mywebsite.fr" into field with id "UrlBarUrlEdit"
    Then I press the enter button
    Then I wait for 15 seconds
    Then I go back
    Then I go back
