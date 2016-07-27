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

Then(/^$/) do

end

# MAIN MENU

Then(/^I go to main menu$/) do
	touch("TextView marked:'Start'")
end

## BASIC SUBMENU

Then(/^I go to basic submenu$/) do
	touch("TextView marked:'Basic'")
end

### AUDIO CUE

Then(/^I change audio cue settings$/) do
	touch("TextView marked:'Audio cue settings'")
end

Then(/^I check default setting$/) do
	touch("CheckedTextView marked:'Default'")
end

Then(/^I check 100m setting$/) do
	touch("CheckedTextView marked:'100m'")
end

### SPORT

Then(/^I change sport settings$/) do
	touch("TextView marked:'Sport'")
end

Then(/^I check running setting$/) do
	touch("CheckedTextView marked:'Running'")
end

Then(/^I check biking setting$/) do
	touch("CheckedTextView marked:'Biking'")
end

Then(/^I check other setting$/) do
	touch("CheckedTextView marked:'Other'")
end

Then(/^I check orienterring setting$/) do
	touch("CheckedTextView marked:'Orienteering'")
end

Then(/^I check walking setting$/) do
	touch("CheckedTextView marked:'Walking'")
end

### TARGET

Then(/^I change target settings$/) do
	touch("TextView marked:'Target'")
end

Then(/^I check None setting$/) do
	touch("CheckedTextView marked:'None'")
end

Then(/^I check Pace setting$/) do
	touch("CheckedTextView marked:'Pace'")
end

## INTERVAL

Then(/^I go to interval submenu$/) do
	touch("TextView marked:'Interval'")
end

### AUDIO CUE IS THE SAME

Then(/^I change interval type setting$/) do
	touch("TextView marked:'Interval type'")
end

Then(/^I check time setting$/) do
	touch("CheckedTextView marked:'Time'")
end

Then(/^I check distance setting$/) do
	touch("CheckedTextView marked:'Distance'")
end

### RESET TYPE

Then(/^I change rest type settings$/) do
	touch("TextView marked:'Rest type'")
end

#### TIME SETTING 
#### DISTANCE SETTING

Then(/^I go to advanced submenu$/) do
	touch("TextView marked:'Advanced'")
end

Then(/^I go to manual submenu$/) do
	touch("TextView marked:'Manual'")
end

Then(/^I go to feed menu$/) do
	touch("TextView marked:'feed'")
end

Then(/^I go to history menu$/) do
	touch("TextView marked:'History'")
end

Then(/^I go to settings menu$/) do
	touch("TextView marked:'Settings'")
end

# SETTINGS MENU

Then(/^I go to accounts submenu$/) do
	touch("TextView marked:'Accounts'")
end

## ACCOUNTS

Then(/^I want to switch format$/) do
	touch("OverflowMenuButton marked:'More options'")
end

Then(/^I switch to table format$/) do
	touch("AppCompatTextView marked:'Table format'")
end

Then(/^I switch to list format$/) do
	touch("AppCompatTextView marked:'Icon list'")
end

## OTHER

Then(/^I go to audio cues submenu$/) do
	touch("TextView marked:'Audio cues'")
end

Then(/^I check headset key$/) do
	touch("TextView marked:'Headset key start/stop'")
end

Then(/^I go to heart rate submenu$/) do
	touch("TextView marked:'Heart Rate Monitor'")
end

Then(/^I check autolap$/) do
	touch("TextView marked:'Autolap'")
end

Then(/^I go to autolap submenu$/) do
	touch("TextView marked:'Autolap (m)'")
end

Then(/^I check autopause$/) do
	touch("TextView marked:'Autopause'")
end

Then(/^I check runner up live$/) do
	touch("TextView marked:'Enable RunnerUpLive'")
end

Then(/^I check headset key$/) do
	touch("TextView marked:'Headset key start/stop'")
end

Then(/^I check activity countdown$/) do
	touch("TextView marked:'Activity countdown'")
end

Then(/^I check headset key$/) do
	touch("TextView marked:'Headset key start/stop'")
end

Then(/^I check unit preference$/) do
	touch("TextView marked:'Unit preference'")
end

Then(/^I check auto start gps$/) do
	touch("TextView marked:'Auto start GPS'")
end

Then(/^I go to about submenu$/) do
	touch("TextView marked:'About RunnerUp'")
end

Then(/^I close the about submenu$/) do
	touch("Button marked:'OK'")
end

Then(/^I go to advanced options submenu$/) do
	touch("TextView marked:'Advanced options'")
end

Then(/^I export data on sdcard$/) do
	touch("TextView marked:'Export'")
end

Then(/^I close the export menu$/) do
	touch("Button marked:'Great!'")
end

Then(/^I check experimental features$/) do
	touch("TextView marked:'Experimental features'")
end

Then(/^I check mock hrm devices$/) do
	touch("TextView marked:'Experimental HRM devices'")
end
