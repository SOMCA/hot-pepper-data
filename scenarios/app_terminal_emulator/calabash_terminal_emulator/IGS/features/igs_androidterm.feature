Feature: IGS feature

  Scenario: Let's try to make the world a better place
    Then I touch options menu
    Then I take wakelock
    Then I touch options menu
    Then I take wifilock

    Then I want to list files and directories
    Then I wait for a second
    Then I want to go to the directory mnt
    Then I wait for a second
    Then I want to list files and directories

    Then I want to create 5 windows from the main view
    Then I want to list windows from main view
    Then I wait for a second
    Then I want to destroy 2 windows from the main view
    Then I back home from windows list

    Then I touch options menu
    Then I want to go to the preferences menu
    Then I want to change the font size to 24
    Then I want to change the font color to "Solarized Dark"
    Then I go back
    Then I wait for a second
    Then I touch options menu
    Then I want to list windows
    Then I want to destroy a window from the windows list
    Then I wait for a second
    Then I go back
    Then I wait for a second

    Then I touch options menu
    Then I drop wakelock
    Then I touch options menu
    Then I drop wifilock
    Then I touch options menu
    Then I reset config
    Then I go back

    Then I touch options menu
    Then I want to see special keys
    Then I go back

    Then I touch the screen
    Then I want to list files and directories
    Then I wait for a second
    Then I want to go to the directory /
    Then I want to go to the directory mnt
    Then I wait for a second
    Then I want to list files and directories

    Then I want to toggle soft keyboard 4 times
    Then I wait for a second
    Then I go back

    Then I touch options menu
    Then I want to go to the preferences menu
    Then I wait for a second
    Then I scroll down
    Then I wait for a second
    Then I scroll down
    Then I wait for a second
    Then I scroll up
    Then I wait for a second
    Then I go back
