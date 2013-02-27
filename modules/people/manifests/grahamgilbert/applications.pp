class people::grahamgilbert::applications {
	##need to clone the repo into a puppet module?
	
	#homebrew::tap { 'cowsay':
	#	source => 'puppet://modules/cowsay/tap',
	#}
	#include istatmenus4
	include chrome
	include onepassword
	include dropbox
	include iterm2::dev
	include chocolat
	include crashplan
	include virtualbox
	include colloquy
	include caffeine
	include alfred
	include xquartz

	package{ 'zsh': }
	package{ 'htop-osx': }

	package { 'Github for Mac':
    	source   => 'https://github-central.s3.amazonaws.com/mac%2FGitHub%20for%20Mac%20111.zip',
    	provider => compressed_app
  	}

  	package { 'CoRD':
    	source   => 'http://iweb.dl.sourceforge.net/project/cord/cord/0.5.7/CoRD_0.5.7.zip',
    	provider => compressed_app,
  	}

  	package { 'Transmission':
    	source   => 'http://download.transmissionbt.com/files/Transmission-2.73.dmg',
    	provider => appdmg
  	}
  
  	package { 'Bartender':
  		source  => 'http://www.macbartender.com/Demo/Bartender.zip',
  		provider    => compressed_app,
  	}
  	
  	package { 'Transmit':
  		source      => 'http://www.panic.com/transmit/d/Transmit%204.3.2.zip',
  		provider    => compressed_app,
    }
    
    package { 'Kaleidoscope':
    	 source      => 'http://www.kaleidoscopeapp.com/download',
    	 provider    => compressed_app,
    }  
      
    package { 'iStat Menus 4':
    	 source      => 'http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.04.zip',
    	 provider    => compressed_app,
    }
    package { 'Vagrant': 
    	source => "http://files.vagrantup.com/packages/476b19a9e5f499b5d0b9d4aba5c0b16ebe434311/Vagrant.dmg",
    	provider => pkgdmg,
    }
    
    package { 'VMWare Fusion':
    	source	=> "/Users/${::luser}/Dropbox/Pebble/Software/VMware Fusion/VMware.dmg",
    	provider	=> pkgdmg,
    }
    
    package { 'Remote Desktop':
    	source	=> "/Users/${::luser}/Dropbox/Pebble/Software/Remote Desktop/RemoteDesktop.dmg",
    	provider	=> pkgdmg,
    }
    
}