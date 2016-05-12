Feature: Multi IGS features

  @App
  Scenario: App (init & destroy)
    Then I wait for 10 seconds
    Then I go back

  @Windows
  Scenario: Creation of 5 windows, and destruction
    Then I want to create 5 windows from the main view
    Then I wait for a second
    Then I want to list windows from main view
    Then I want to destroy 5 windows from the main view

  @Wakelock
  Scenario: Take wakelock
    Then I touch options menu
    Then I take wakelock
    Then I wait for 10 seconds
    Then I touch options menu
    Then I drop wakelock
    Then I go back

  @Wifilock
  Scenario: Take wifilock
    Then I touch options menu
    Then I take wifilock
    Then I wait for 10 seconds
    Then I touch options menu
    Then I drop wifilock
    Then I go back

  @BasicList
  Scenario: List files and directories
    Then I want to list files and directories
    Then I wait for a second
    Then I want to go to the directory mnt
    Then I wait for a second
    Then I want to list files and directories
    Then I go back

  @CustomList
  Scenario: Change font size and font color
    Then I touch options menu
    Then I want to go to the preferences menu
    Then I want to change the font size to 24
    Then I want to change the font color to "Solarized Dark"
    Then I go back
    Then I wait for 5 seconds
    Then I want to list files and directories
    Then I wait for a second
    Then I want to go to the directory mnt
    Then I wait for a second
    Then I want to list files and directories
    Then I go back

  @ScrollSpecialKeys
  Scenario: Scroll special keys
    Then I touch options menu
    Then I want to see special keys
    Then I wait for 5 seconds

  @ScrollPreferencesMenu
  Scenario: Scroll preferences menu
    Then I touch options menu
    Then I want to go to the preferences menu
    Then I wait for a second
    Then I scroll down
    Then I wait for a second
    Then I scroll down
    Then I wait for a second
    Then I scroll up
    Then I wait for 5 seconds
    Then I go back

  @Toggle
  Scenario: Toggle keyboard
    Then I want to toggle soft keyboard 4 times
    Then I wait for 5 seconds
    Then I go back

