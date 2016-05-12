require 'calabash-android/calabash_steps'
require 'socket'

Then(/^I send information about ([^\"]*)$/) do |message|
	sock = TCPSocket.new("127.0.0.1", 8888)
	sock.send("#{message}\000", 0)
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
	perform_action('drag', 50, 50, 25, 75, 5)
end

Then(/^I drag down$/) do
	perform_action('drag', 50, 50, 75, 25, 5)
end

##

## Switch
Then(/^I switch ([^\"]*)$/) do |switch|
	## Playlist Filters (by ID)
	# slidebar_show_continues --> Auto Start Next (playlist filtre)
	# slidebar_show_downloaded --> Only downloaded (playlist filtre)
	# slidebar_show_listened --> Show Listned (playlist filtre)

	## Settings (Floating button)(by ID)
	# feed_description_switch --> Show episode description
	# feed_add_to_playlist_switch --> Add new episodes to the playlist
	# feed_auto_download_switch --> Downloadd new episode
	# feed_auto_delete_switch --> Delete when listened
	# feed_oldest_first_switch --> List oldest episode

	case
	# playlist filtre
	when switch == "auto"
		touch("SwitchCompat id:'slidebar_show_continues'")
	when switch == "only dl"
		touch("SwitchCompat id:'slidebar_show_downloaded'")
	when switch == "show listned"
		touch("SwitchCompat id:'slidebar_show_listened'")
	# Discovers-settings (floating button)
	when switch == "show episode"
		touch("SwitchCompat id:'feed_description_switch'")
	when switch == "add new ep"
		touch("SwitchCompat id:'feed_add_to_playlist_switch'")
	when switch == "dl new episode"
		touch("SwitchCompat id:'feed_auto_download_switch'")
	when switch == "delete"
		touch("SwitchCompat id:'feed_auto_delete_switch'")
	when switch == "list oldest"
		touch("SwitchCompat id:'feed_oldest_first_switch'")
	end

	sleep 1
end
##

## CheckBox
Then(/^I check ([^\"]*)$/) do |check|
	## Subscription (by ID)
	# checkBox_cloud --> Enable cloud support
	# checkBox_usage --> Send anonymous reports
	case
	when check == "cloud"
		touch("AppCompatCheckBox id:'checkBox_cloud'")
	when check == "usage"
		touch("AppCompatCheckBox id:'checkBox_usage'")
	end
end
##

## RadioButton
Then(/^I radio check ([^\"]*)$/) do |radio|
	## Playlist Filters (by text)
	# Custom selection | All subscriptions | Do not populate

	## Playlist
	# Recent episodes | Queue episodes manually

	## Playlist(Bulk download)
	# Published this Month | Published this Week | Top 10 episodes in the playlist | Published within the last 24 hours

	## Subscription(Import OMPL File)
	# Import OPML file | Export subscriptions to OPML

	case
	# playlist filters
	when radio == "custom"
		touch("AppCompatRadioButton marked:'Custom selection'")
	when radio == "all"
		touch("AppCompatRadioButton marked:'All subscriptions'")
	when radio == "not populate"
		touch("AppCompatRadioButton marked:'Do not populate'")
	# playlist
	when radio == "recent"
		touch("AppCompatRadioButton marked:'Recent episodes'")
	when radio == "queue"
		touch("AppCompatRadioButton marked:'Queue episodes manually'")
	# Playlist
	when radio == "month"
		touch("AppCompatRadioButton marked:'Published this Month'")
	when radio == "week"
		touch("AppCompatRadioButton marked:'Published this Week'")
	when radio == "top 10"
		touch("AppCompatRadioButton marked:'Top 10 episodes in the playlist'")
	when radio == "24h"
		touch("AppCompatRadioButton marked:'Published within the last 24 hours'")
	# subscription(import OPML)
	when radio == "import"
		touch("AppCompatRadioButton marked:'Import OPML file'")
	when radio == "export"
		touch("AppCompatRadioButton marked:'Export subscriptions to OPML'")
	end

	sleep 1
end
##

## Search engine icone
Then(/^I touch engine icone$/) do
	touch("ImageButton id:'discovery_searchIcon'")
end

Then(/^I choose on gpodder/) do
	touch("AppCompatTextView marked:'gPodder'")
end

Then(/^I choose on itunes/) do
	touch("AppCompatTextView marked:'iTunes'")
end
##

## Discover

# Switch
Then(/^I subscribe to harry/) do
	touch("SwitchCompat id:'result_subscribe_switch'")
end

Then(/^I choose on harry/) do
	# You must wait after this action
	touch("AppCompatTextView marked:'Harry Potter and the Methods of Rationality'")
	sleep 2
end

# Harry
Then(/^I clic on floating button/) do
	touch("FloatingActionButton id:'feedview_fap_button'")
end
##

## Menu buttons
# Open menu
Then(/^I touch options menu$/) do
  touch("OverflowMenuButton contentDescription:'More options'")
  sleep 1
end

Then(/^I touch on add podcast$/) do
	touch("AppCompatTextView marked:'Add podcast'")
end
## url test
Then(/^I enter an url$/) do
	touch("AppCompatEditText id:'podcast_url'")
	enter_text("AppCompatEditText id:'podcast_url'", "www.test.fr")
	sleep 1
end


Then(/^I touch on settings$/) do
	touch("AppCompatTextView marked:'Settings'")
end

Then(/^I touch on refresh$/) do
	touch("AppCompatTextView marked:'Refresh'")
end

Then(/^I touch on bulk$/) do # Only on Playlist
	touch("AppCompatTextView marked:'Bulk download'")
end

Then(/^I touch on reset$/) do # Only on Playlist
	touch("AppCompatTextView marked:'Reset playlist'")
end

Then(/^I touch on import$/) do
	touch("AppCompatTextView marked:'Import/export OPML'")
end

# Submenu (PlayList)
Then(/^I touch on playlist filtre$/) do
	touch("ActionMenuItemView id:'action_filter_playlist'")
end

Then(/^I clic on apply filters$/) do
	touch("AppCompatButton id:'button1'")
end

Then(/^I clic on sort by$/) do
	touch("AppCompatTextView id:'text1'")
end

Then(/^I choose sort by ([^\"]*)$/) do |choice|
	# Sort by: Oldest or Sort by: Most recent
	case
	when choice == "old"
		touch("AppCompatCheckedTextView marked:'Sort by: Oldest'")
	when choice == "recent"
		touch("AppCompatCheckedTextView marked:'Sort by: Most recent'")
	end
end

# Rightmenu
Then(/^I clic on feedback$/) do
	touch("NavigationMenuItemView marked:'Feedback'")
end

Then(/^I clic on reset playlist$/) do
	touch("NavigationMenuItemView marked:'Reset playlist'")
end

Then(/^I clic on download manager$/) do
	touch("NavigationMenuItemView marked:'Download Manager'")
end
##

## Settings
Then(/^I touch help$/) do
	touch("AppCompatTextView marked:'Help out'")
end

Then(/^I touch user interface$/) do
	touch("AppCompatTextView marked:'User interface'")
end

Then(/^I touch player$/) do
	touch("AppCompatTextView marked:'Player'")
end

Then(/^I touch network$/) do
	touch("AppCompatTextView marked:'Network & storage'")
end

Then(/^I touch cloud$/) do
	touch("AppCompatTextView marked:'Cloud support'")
end

Then(/^I touch advanced$/) do
	touch("AppCompatTextView marked:'Advanced'")
end

Then(/^I touch about$/) do
	touch("AppCompatTextView marked:'About'")
end

# User interface
Then(/^I touch subscription columns$/) do
	touch("AppCompatTextView marked:'Subscription columns'")
end

Then(/^I select dark theme$/) do
	touch("AppCompatTextView marked:'Dark theme'")
end

Then(/^I select a list$/) do
	touch("AppCompatCheckedTextView marked:'A list'")
	sleep 1
end

Then(/^I select ([^\"]*) columns$/) do |nb_col|
	# 2, 3 or 4
	touch("AppCompatCheckedTextView marked:'#{nb_col} columns'")
	sleep 1
end

# Player
Then(/^I select fast forward$/) do
	touch("AppCompatTextView marked:'Fast forward'")
	sleep 1
end

Then(/^I select rewind$/) do
	touch("AppCompatTextView marked:'Rewind'")
	sleep 1
end

Then(/^I select continuous playback$/) do
	touch("AppCompatTextView marked:'Continuous playback'")
end

Then(/^I select open video/) do
	touch("AppCompatTextView marked:'Open videos in an external player'")
end

Then(/^I select ([^\"]*) sec$/) do |nb_sec|
	# 5, 10, 20, or 30
	touch("AppCompatCheckedTextView marked:'#{nb_sec} seconds'")
end

Then(/^I select 1 minute$/) do
	touch("AppCompatCheckedTextView marked:'1 minute'")
end

# Network & storage
Then(/^I select automatic$/) do
	touch("AppCompatTextView marked:'Automatic download'")
end

Then(/^I select wifi only$/) do
	touch("AppCompatTextView marked:'Wi-Fi only downloading'")
	sleep 1
end

Then(/^I select delete$/) do
	touch("AppCompatTextView marked:'Delete after playback'")
	sleep 1
end

Then(/^I select download and straming$/) do
	touch("AppCompatTextView marked:'Download while streaming'")
	sleep 1
end

Then(/^I select download limit$/) do
	touch("AppCompatTextView marked:'Podcast download limit'")
	sleep 1
end

Then(/^I select unlimited$/) do
	touch("AppCompatTextView marked:'Unlimited'")
	sleep 1
end

Then(/^I select ([^\"]*) gb$/) do |nb_sec|
	# 1, 2, 3, or 5
	touch("AppCompatCheckedTextView marked:'#{nb_sec} GB'")
	sleep 1
end

Then(/^I select 100 mb$/) do |nb_sec|
	# 1, 2, 3, or 5
	touch("AppCompatCheckedTextView marked:'100 MB'")
	sleep 1
end

# Cloud
Then(/^I select enable cloud$/) do
	touch("AppCompatTextView marked:'Enable cloud support'")
	sleep 1
end

Then(/^I touch gpodder$/) do
	touch("AppCompatTextView marked:'GPodder'")
	sleep 1
end

Then(/^I enter an user and pass$/) do
	touch("AppCompatEditText id:'gpodder_username'")
	enter_text("AppCompatEditText id:'gpodder_username'", "user1")
	sleep 1
	press_back_button
	sleep 1
	touch("AppCompatEditText id:'gpodder_password'")
	enter_text("AppCompatEditText id:'gpodder_password'", "pass1")
	sleep 1
	press_back_button
	sleep 1
end

Then(/^I press on test credentials$/) do
	touch("AppCompatButton marked:'Test credentials'")
	sleep 1
end

# Advanced
Then(/^I select enable rotation$/) do
	touch("AppCompatTextView marked:'Enable screen rotation'")
end

Then(/^I select send reports$/) do
	touch("AppCompatTextView marked:'Send anonymous reports'")
end
##


## Others
Then(/^I back settings$/) do
	sleep 1
	touch("ImageButton")
	sleep 1
end

Then(/^I back$/) do
	touch("ImageButton contentDescription:'Navigate up'")
end

Then(/^I press ok$/) do
	touch("AppCompatButton marked:'OK'")
end

Then(/^I press cancel$/) do
	touch("AppCompatButton marked:'Cancel'")
end
##
