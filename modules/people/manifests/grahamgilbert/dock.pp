class people::grahamgilbert::dock (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	include dockutil
	
	dockutil::item { 'add chrome':
		item => "/Applications/Google Chrome.app",
		label	=> "Google Chrome",
		position => 1,
		action => "add",
	}
	
	dockutil::item { 'Add iTerm':
		item => "/Applications/iTerm.app",
		label	=> "iTerm",
		action => "add",
		position => 2,
	}
	
	dockutil::item { 'Chocolat':
		item => "/Applications/Chocolat.app",
		label	=> "Chocolat",
		position => 3,
		action => "add",
	}
	
	dockutil::item { 'Colloquy':
		item => "/Applications/Colloquy.app",
		label	=> "Colloquy",
		position => 4,
		action => "add",
	}
	
	dockutil::item { 'VMWare Fusion':
		item => "/Applications/VMWare Fusion.app",
		label	=> "VMWare Fusion",
		position => 5,
		action => "add",
	}
	
	dockutil::item { 'GitHub':
		item => "/Applications/GitHub.app",
		label	=> "GitHub",
		position => 6,
		action => "add",
	}
	
	## Remove the default crap	
	dockutil::item { 'Remove Launchpad':
		item => "/Applications/Launchpad.app",
		label	=> "Launchpad",
		action => "remove",
	}
	
	dockutil::item { 'Remove Mission Control':
		item => "/Applications/Mission Control.app",
		label	=> "Mission Control",
		action => "remove",
	}
	
	dockutil::item { 'Remove Safari':
		item => "/Applications/Safari.app",
		label	=> "Safari",
		action => "remove",
	}
	
	dockutil::item { 'Remove Mail':
		item => "/Applications/Mail.app",
		label	=> "Mail",
		action => "remove",
	}
	
	dockutil::item { 'Remove Contacts':
		item => "/Applications/Contacts.app",
		label	=> "Contacts",
		action => "remove",
	}
	
	dockutil::item { 'Remove Calendar':
		item => "/Applications/Calendar.app",
		label	=> "Calendar",
		action => "remove",
	}
	
	dockutil::item { 'Remove Reminders':
		item => "/Applications/Reminders.app",
		label	=> "Reminders",
		action => "remove",
	}
	
	dockutil::item { 'Remove Notes':
		item => "/Applications/Notes.app",
		label	=> "Notes",
		action => "remove",
	}
	
	dockutil::item { 'Remove Messages':
		item => "/Applications/Messages.app",
		label	=> "Messages",
		action => "remove",
	}
	
	dockutil::item { 'Remove FaceTime':
		item => "/Applications/FaceTime.app",
		label	=> "FaceTime",
		action => "remove",
	}
	
	dockutil::item { 'Remove Photo Booth':
		item => "/Applications/Photo Booth.app",
		label	=> "Photo Booth",
		action => "remove",
	}
	
	dockutil::item { 'Remove iTunes':
		item => "/Applications/iTunes.app",
		label	=> "iTunes",
		action => "remove",
	}
	
	dockutil::item { 'Remove App Store':
		item => "/Applications/App Store.app",
		label	=> "App Store",
		action => "remove",
	}
	
	dockutil::item { 'Remove System Preferences':
		item => "/Applications/System Preferences.app",
		label	=> "System Preferences",
		action => "remove",
	}
	
	
	
}