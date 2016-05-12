Feature: Sound MIM Multi

  @Initialization
  Scenario:
	Then I wait for a second
	Then I drag right
	Then I drag right
	Then I drag left
	Then I wait for 10 seconds
	Then I go back

  @CheckboxSubscription
  Scenario:
	Then I drag right
	Then I check usage
	Then I wait for a second
	Then I check cloud
	Then I wait for a second
	Then I check cloud
	Then I touch options menu
	Then I wait for a second
	Then I touch on import
	Then I wait for a second
	Then I radio check export
	Then I press ok
	Then I wait for a second
	Then I touch options menu
	Then I touch on add podcast
	Then I enter an url
	Then I wait for a second
	Then I press cancel
	Then I wait for a second
	Then I go back

  @Playlist
  Scenario:
	Then I drag left
	Then I radio check recent
	Then I wait for a second
	Then I radio check queue
	Then I radio check recent
	Then I touch options menu
	Then I touch on bulk
	Then I radio check top 10
	Then I wait for a second
	Then I radio check week
	Then I wait for a second
	Then I press ok
	Then I touch on playlist filtre
	Then I clic on sort by
	Then I wait for a second
	Then I choose sort by old
	Then I radio check custom
	Then I radio check all
	Then I wait for a second
	Then I switch show listned
	Then I wait for a second
	Then I switch auto
	Then I wait for a second
	Then I switch auto
	Then I switch show listned
	Then I clic on apply filters
	Then I wait for a second
	Then I go back

  @Discover
  Scenario:
	Then I drag right
	Then I drag right
	Then I choose on harry
	Then I wait for 6 seconds
	Then I wait for a second
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag down
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I drag up
	Then I go back

  @Settings
  Scenario:
	Then I touch options menu
	Then I touch on settings
	Then I wait for a second
	Then I touch help
	Then I wait for a second
	Then I back settings
	Then I touch user interface
	Then I touch subscription columns
	Then I wait for a second
	Then I select a list
	Then I back settings
	Then I touch player
	Then I select fast forward
	Then I select 1 minute
	Then I wait for a second
	Then I select rewind
	Then I select 30 sec
	Then I wait for a second
	Then I select continuous playback
	Then I select open video
	Then I wait for a second
	Then I select open video
	Then I back settings
	Then I touch network
	Then I wait for a second
	Then I select wifi only
	Then I select delete
	Then I select download and straming
	Then I select download limit
	Then I select 5 gb
	Then I back settings
	Then I touch cloud
	Then I select enable cloud
	Then I touch gpodder
	Then I enter an user and pass
	Then I press ok
	Then I touch gpodder
	Then I press on test credentials
	Then I wait for 2 seconds
	Then I press ok
	Then I back settings
	Then I touch advanced
	Then I wait for a second
	Then I select enable rotation
	Then I wait for a second
	Then I select send reports
	Then I back settings
	Then I touch about
	Then I wait for a second
	Then I back settings
	Then I wait for a second
	Then I back settings
	Then I go back
