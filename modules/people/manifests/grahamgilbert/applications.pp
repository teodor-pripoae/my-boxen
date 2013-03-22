class people::grahamgilbert::applications {
	##need to clone the repo into a puppet module?
	
	#homebrew::tap { 'cowsay':
	#	source => 'puppet://modules/cowsay/tap',
	#}
	#include istatmenus4
	include chrome
	include appcleaner
	include onepassword
	include dropbox
	include iterm2::dev
	include chocolat
	include crashplan
	include virtualbox
	#include colloquy
	include caffeine
	include alfred
	include xquartz
	include vmware_fusion

	package{ 'zsh': }
	package{ 'htop-osx': }
	package{ 'tree': }
	include vagrant
	
	vagrant::plugin { 'vagrant-vmware-fusion':
	  license => '/Users/${::luser}/Dropbox/Software/Vagrant/fusion-license.lic',
	}

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
    	 source      => 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.1-114.zip',
    	 provider    => compressed_app,
    }  
      
    package { 'iStat Menus 4':
    	 source      => 'http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.04.zip',
    	 provider    => compressed_app,
    }
  
    package { 'Remote Desktop':
    	source	 => "/Users/${::luser}/Dropbox/Software/Remote Desktop/RemoteDesktop.dmg",
    	provider => pkgdmg,
    }
    
    ##install Meraki Systems Manager on the home machine
    if ($::hostname == "Loki"){
        package { 'Meraki Systems Manager':
            source   =>  "/Users/${::luser}/Dropbox/Software/Home Meraki/MerakiSM-Agent-systems-manager.dmg",
            provider => pkgdmg,
        }
    }
    
    package { 'Kiwi':
        source   => "http://s3.amazonaws.com/Kiwi/Kiwi_3.0.1_1125.zip",
        provider => compressed_app,
    }
    
    package { 'unetbooin':
    	source	 => "http://unetbootin.sourceforge.net/unetbootin-mac-latest.zip",
    	provider => compressed_app,
    }
    
    #package { 'puppet-lint': 
    #    provider => 'gem',
    #}
    
}