require 'calabash-android/calabash_steps'

Then(/^I touch the screen$/) do
  touch("TermViewFlipper id:'view_flipper'")
end

#Steps to interact with the terminal view
Then(/^I want to list files and directories$/) do
  touch("TermViewFlipper id:'view_flipper'")
  enter_text("TermViewFlipper id:'view_flipper'", "ls")
  sleep 1
  perform_action('send_key_enter')
end

Then(/^I want to go to the directory ([^\"]*)$/) do |new_dir|
  touch("TermViewFlipper id:'view_flipper'")
  enter_text("TermViewFlipper id:'view_flipper'", "cd #{new_dir}")
  sleep 1
  perform_action('send_key_enter')
end

Then(/^I touch options menu$/) do
  touch("OverflowMenuButton contentDescription:'More options'")
  sleep 1
end

Then(/^I want to see special keys$/) do
  touch("TextView marked:'Special keys'")
  sleep 1
  scroll_down
  sleep 1
  scroll_up
  sleep 1
end

Then(/^I want to create a window from the main view$/) do
  touch("ActionMenuItemView id:'menu_new_window'")
  sleep 1
end

Then(/^I want to create (\d+) windows from the main view$/) do |nb_windows|
  for _ in 0..(nb_windows.to_i - 1)
    touch("ActionMenuItemView id:'menu_new_window'")
    sleep 1
  end
end

Then(/^I want to destroy a window from main view$/) do
  touch("CloseButton id:'window_list_close'")
end

Then(/^I want to destroy (\d+) windows from the main view$/) do |nb_windows|
  for _ in 0..(nb_windows.to_i - 1)
    touch("CloseButton id:'window_list_close'")
    sleep 1
  end
end

Then(/^I want to list windows from main view$/) do
  touch("TextView {text BEGINSWITH 'Window'}")
end

### Steps to interact with the "More options" menu

## Close a window
Then(/^I want to close a window$/) do
  touch("TextView marked:'Close window'")
  sleep 1
  touch("Button marked:'OK'")
  sleep 1
end

## List all windows
Then(/^I want to list windows$/) do
  touch("TextView marked:'Windows'")
  sleep 1
end

# Create a new window from the windows list
Then(/^I want to create a window from the windows list$/) do
  touch("TextView marked:'New window'")
  sleep 1
end

# Destroy a window from the windows list
Then(/^I want to destroy a window from the windows list$/) do
  touch("CloseButton id:'window_list_close'")
  sleep 1
end

Then(/^I want to destroy (\d+) windows from the windows list$/) do |nb_windows|
  for _ in 0..(nb_windows.to_i - 1)
    touch("CloseButton id:'window_list_close'")
    sleep 1
  end
end

# Back to home from the windows list
Then(/^I back home from windows list$/) do
  press_back_button
  sleep 1
end

Then(/^I want to toggle soft keyboard (\d+) times$/) do |nb_times|
  for _ in 0..(nb_times.to_i - 1)
    touch("OverflowMenuButton contentDescription:'More options'")
    sleep 1
    touch("TextView marked:'Toggle soft keyboard'")
    sleep 1
  end
end

## Go to preferences
Then(/^I want to go to the preferences menu$/) do
  touch("TextView marked:'Preferences'")
  sleep 1
end

# Change font size
Then(/^I want to change the font size to (\d+)$/) do |new_font|
  touch("TextView marked:'Font size'")
  sleep 1
  touch("CheckedTextView marked:'#{new_font} pt'")
end

# Back to home from the windows list
Then(/^I back home from preferences menu$/) do
  press_back_button
  sleep 1
  press_back_button
  sleep 1
end

# Change font color
Then(/^I want to change the font color to "([^\"]*)"$/) do |new_color|
  touch("TextView marked:'Choose text color.'")
  sleep 1
  touch("CheckedTextView marked:'#{new_color}'")
  sleep 1
end

Then(/^I check UTF-8 font$/) do
  touch("TextView marked:'Default to UTF-8'")
  sleep 1
end

Then(/^I take wakelock$/) do
  touch("TextView marked:'Take WakeLock'")
  sleep 1
end

Then(/^I drop wakelock$/) do
  touch("TextView marked:'Drop WakeLock'")
  sleep 1
end

Then(/^I take wifilock$/) do
  touch("TextView marked:'Take WifiLock'")
  sleep 1
end

Then(/^I drop wifilock$/) do
  touch("TextView marked:'Drop WifiLock'")
  sleep 1
end

Then(/^I reset config$/) do
  touch("TextView marked:'Reset term'")
  sleep 1
end
