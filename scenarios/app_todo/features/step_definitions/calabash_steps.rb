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

Then(/^I create a new todo$/) do
	touch("Button marked:'New'")
end

Then(/^I check the todo$/) do
	touch("CheckBox id:'ToDoItemChecked'")
	sleep 0.5
end

Then(/^I name it ([^\"]*)$/) do |todoName|
	enter_text("EditText", todoName)
end

Then(/^I change the priority to ([^\"]*)$/) do |newPriority|
	touch("LinearLayout id:'LinearLayout01'")
	query("EditText id:'DetailEditTextPriority'", setText: newPriority)
	hide_soft_keyboard
end

Then(/^I change the category to ([^\"]*)$/) do |newCategory|
	touch("TextView id:'text1'")
	touch("CheckedTextView marked:'#{newCategory}'")
	sleep 0.5
end

Then(/^I change the due date to ([^\"]*)$/) do |newDate|
	touch("Button id:'DetailButtonDueDate'")
	sleep 0.5
	touch("TextView marked:'#{newDate}'")
	sleep 0.5
end

Then(/^I change hiding text until ([^\"]*)$/) do |hidingDate|
	touch("Button id:'DetailButtonHideUntil'")
	sleep 0.5
	touch("CheckBox id:'HideCheckBox'")
	sleep 0.5
	query("EditText id:'HideEditDaysEarlier'", setText: hidingDate)
	touch("Button id:'HideButtonOK'")
	sleep 1
end

Then(/^I check the alarm$/) do
	touch("Button id:'DetailButtonAlarm'")
	sleep 0.5
	touch("CheckBox id:'AlarmCheckBox'")
	touch("Button id:'AlarmButtonOK'")
end

Then(/^I change repeat thing to ([^\"]*)$/) do |repeatDate|
	hide_soft_keyboard
	touch("Button id:'DetailButtonRepeat'")
	touch("TextView marked:'#{repeatDate}'")
end

Then(/^I click on private$/) do
	touch("CheckBox id:'DetailCheckBoxPrivate'")
	sleep 0.5
end

Then(/^I save the new todo$/) do
	touch("Button id:'DetailButtonOK'")
	sleep 0.5
end

Then(/^I delete the new todo$/) do
	touch("Button id:'DetailButtonDelete'")
	sleep 0.5
end

Then(/^I cancel the new todo$/) do
	touch("Button id:'DetailButtonCancel'")
	sleep 0.5
end

Then(/^I leave the note ([^\"]*)$/) do |newNote|
	touch("ImageButton id:'DetailButtonNote'")
	query("EditText id:'NoteEditText'", setText: newNote)	
	sleep 0.5
	touch("Button marked:'Done'")
	sleep 1
	hide_soft_keyboard
end

Then(/^I save the note$/) do
	touch("Button id:'NoteButtonOK'")
end

Then(/^I delete the node$/) do
	touch("Button id:'NoteButtonDelete'")
end

Then(/^I change category for ([^\"]*)$/) do |newCategory|
	touch("CheckedTextView marked:'#{newCategory}'")
end

Then(/^I touch categories menu$/) do
	touch("TextView id:'text1'")
end

Then(/^I edit categories$/) do
	touch("TextView id:'text1'")
	sleep 0.5
end

Then(/^I create the category ([^\"]*)$/) do |newCategory|
	touch("Button id:'CategoryListButtonNew'")
	query("EditText marked:''", setText: newCategory)
	hide_soft_keyboard
	sleep 0.5
	touch("Button id:'CategoryListButtonNew'")
	sleep 0.5
	touch("Button id:'CategoryListButtonOK'")
	sleep 1
end

Then(/^I cancel my new category$/) do
	touch("Button id:'CategoryListButtonCancel'")
end
