require 'calabash-android/calabash_steps'
require 'socket'

Then(/^I begin$/) do
	sock = TCPSocket.new("127.0.0.1", 8888)
	sock.send("BEGINNING!", 0)
	sock.flush
	sock.close
end

Then(/^I save logs$/) do
	`adb logcat -d >> /Users/antonin/Documents/internship/scenarios/app_sound_waves/scrolling_sound_waves/test.txt`
	`adb logcat -c`
end

## Swipe the screen
Then(/^I drag right$/) do
	perform_action('drag', 75, 25, 50, 50, 5)
end

Then(/^I drag left$/) do
	perform_action('drag', 25, 75, 50, 50, 5)
end

Then(/^I drag up$/) do
	perform_action('drag', 50, 50, 25, 75, 10)
end

Then(/^I drag down$/) do
	perform_action('drag', 50, 50, 75, 25, 10)
end

Then(/^I select a library$/) do
	touch("AppCompatButton marked:'Select library'")
end

Then(/^I select a library from ([^\"]*)$/) do |switch|
	touch("AppCompatTextView marked:'#{switch}'")
end

Then(/^I ([^\"]*) the form$/) do |switch|
	case
	when switch == "accept"
		touch("ActionMenuItemView id:'action_accept'")
	when switch == "cancel"
		touch("ActionMenuItemView id:'action_cancel'")
	end
end

Then(/^I want to make a search$/) do
	touch("AppCompatCheckedTextView marked:'Search'")
end

Then(/^I launch the search$/) do
	touch("ActionMenuItemView id:'action_search_go'")
end

Then(/^I touch the screen$/) do
	touch("AppCompatEditText")
end

Then(/^I add this book in my favourite list$/) do
	touch("ActionMenuItemView id:'action_star'")
end

Then(/^I clear the search$/) do
	touch("OverflowMenuButton contentDescription:'More options'")
	touch("AppCompatTextView marked:'clear form'")
end

Then(/^I clear the title$/) do
	enter_text("AppCompatEditText index:1", "")
	clear_text("AppCompatEditText index:1")
end

Then(/^I clear the author$/) do
	enter_text("AppCompatEditText index:2", "")
	clear_text("AppCompatEditText index:2")
end

Then(/^I enter the title of the search: ([^\"]*)$/) do |title|
	enter_text("AppCompatEditText index:1", title)
end

Then(/^I enter the author of the search: ([^\"]*)$/) do |author|
	enter_text("AppCompatEditText index:2", author)
end

Then(/^I consult a CS article$/) do
	touch("AppCompatTextView marked:'Computer science -- theory and applications : First International Computer Science Symposium in Russia, CSR 2006, St. Petersburg, Russia, June 8-12, 2006 : proceedings\nDima Grigoriev, John Harrison, Edward A. Hirsch (eds.).\n\nOnline access'")
end

Then(/^I consult a CS book$/) do
	touch("AppCompatTextView marked:'Computer . --\n\nOnline access'")
end

Then(/^I consult the ([^\"]*) book listed$/) do |index|
	text = ""
	case
	when index == "first"
		text = query("AppCompatTextView", :text)[0]
	when index == "second"
		text = query("AppCompatTextView", :text)[1]
	end
	touch("AppCompatTextView marked:'#{text}'")
end

Then(/^I try a new library$/) do
	sleep 1
	touch("ImageButton contentDescription:'Open navigation'")
	sleep 1
	touch("AppCompatImageView contentDescription:'Select Account'")
	sleep 1
	touch("AppCompatTextView marked:'Add account'")
end

Then(/^I list my favourites$/) do
	sleep 1
	touch("ImageButton contentDescription:'Open navigation'")
	sleep 1
	touch("AppCompatCheckedTextView marked:'Favorites'")
end

Then(/^I switch to ([^\"]*)$/) do |university|
	sleep 1
	touch("ImageButton contentDescription:'Open navigation'")
	sleep 1
	touch("AppCompatImageView contentDescription:'Select Account'")
	sleep 1
	touch("AppCompatTextView marked:'#{university}'")
end

