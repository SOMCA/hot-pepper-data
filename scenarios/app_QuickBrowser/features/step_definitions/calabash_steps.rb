require 'calabash-android/calabash_steps'

Then(/^I press the search box button$/) do
  touch("RelativeLayout id:'UrlBarLayout'")
end
