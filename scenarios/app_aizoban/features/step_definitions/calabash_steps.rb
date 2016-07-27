require 'calabash-android/calabash_steps'
require 'socket'

Then(/^I begin$/) do
	sock = TCPSocket.new("127.0.0.1", 8888)
	sock.send("BEGINNING!", 0)
	sock.flush
	sock.close
end

Then(/^I drag up without sleeping$/) do
	perform_action('drag', 50, 50, 25, 75, 10)
end

Then(/^I drag down without sleeping$/) do
	perform_action('drag', 50, 50, 75, 25, 10)
end

Then(/^I drag up$/) do
	perform_action('drag', 50, 50, 25, 75, 10)
	sleep 1
end

Then(/^I drag down$/) do
	perform_action('drag', 50, 50, 75, 25, 10)
	sleep 1
end

Then(/^I drag right$/) do
	perform_action('drag', 75, 25, 50, 50, 5)
	sleep 1
end

Then(/^I drag left$/) do
	perform_action('drag', 25, 75, 50, 50, 5)
	sleep 1
end

Then(/^I put it on favourite$/) do
	touch("FloatingActionButton id:'favouriteButton'")
	sleep 1
end

Then(/^I want to read the 490$/) do
	touch("TextView marked:'Fairy Tail 490.0'")
	sleep 2
end

Then(/^I want to read the 15$/) do
	touch("TextView marked:'Metamo Kiss 15.0'")
	sleep 2
end

Then(/^I go to the next page$/) do
	touch("FloatingActionButton id:'nextButton'")
	sleep 2
end

Then(/^I go back to the previous page$/) do
	touch("FloatingActionButton id:'previousButton'")
	sleep 2
end

Then(/^I want more options$/) do
	touch("OverflowMenuButton marked:'More options'")
	sleep 1
end

Then(/^I select filter$/) do
	touch("TextView marked:'Filter'")
	sleep 1
end

Then(/^I filter by name$/) do
	touch("TintRadioButton marked:'Name'")
	touch("Button text:'Filter'")
end

Then(/^I see the menu$/) do
	touch("ImageButton marked:'Open'")
	sleep 1
end

Then(/^I see my favourite mangas$/) do
	touch("TextView marked:'Favourite Manga'")
end

Then(/^I go in settings$/) do
	touch("TextView marked:'Settings'")
	sleep 1
end

Then(/^I clear favourite mangas$/) do
	touch("TextView marked:'Clear Favourite Manga'")
	sleep 1
end

Then(/^I see the catalogue$/) do
	touch("TextView marked:'Catalogue'")
end
