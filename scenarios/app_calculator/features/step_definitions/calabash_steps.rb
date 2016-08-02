require 'calabash-android/calabash_steps'
require 'socket'

Then(/^I begin$/) do
	sock = TCPSocket.new("127.0.0.1", 8888)
	sock.send("BEGINNING!", 0)
	sock.flush
	sock.close
end

## Swipe the screen
Then(/^I drag right$/) do
	perform_action('drag', 75, 25, 50, 50, 5)
	sleep 0.5
end

Then(/^I drag left$/) do
	perform_action('drag', 25, 75, 50, 50, 5)
	sleep 0.5
end

Then(/^I drag up$/) do
	perform_action('drag', 50, 50, 25, 75, 10)
	sleep 0.5
end

Then(/^I drag down$/) do
	perform_action('drag', 50, 50, 75, 25, 10)
	sleep 0.5
end

Then(/^I touch ([^\"]*)$/) do |button|
	touch("Button marked:'#{button}'")
end

Then(/^add$/) do
	touch("Button id:'op_add'")
end

Then(/^minus$/) do
	touch("Button id:'op_sub'")
end

Then(/^mul$/) do
	touch("Button id:'op_mul'")
end

Then(/^div$/) do
	touch("Button id:'op_div'")
end

Then(/^I del$/) do
	touch("Button id:'del'")
end

Then(/^I clear$/) do
	touch("Button id:'clr'")
	sleep 0.5
end

Then(/^I want to see the result$/) do
	touch("EqualsImageButton")
end

Then(/^I develop the submenu$/) do
	touch("FloatingActionButton id:'fab'")
	sleep 0.5
end

Then(/^I look advanced buttons$/) do
	touch("ImageButton id:'btn_advanced'")
	sleep 0.5
end

Then(/^I look hexadecimal buttons$/) do
	touch("ImageButton id:'btn_hex'")
	sleep 0.5
end

Then(/^I close the submenu$/) do
	touch("ImageButton id:'btn_close'")
	sleep 0.5
end

Then(/^I look after the first older result$/) do
	touch("TextView marked:'0+1×42÷1'")
end

Then(/^I select dec$/) do
	touch("Button id:'dec'")
end

Then(/^I select hex$/) do
	touch("Button id:'hex'")
end

Then(/^I select bin$/) do
	touch("Button id:'bin'")
end
