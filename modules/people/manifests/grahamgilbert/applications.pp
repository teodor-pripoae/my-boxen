class people::grahamgilbert::applications {
	##need to clone the repo into a puppet module?
	
	#homebrew::tap { 'cowsay':
	#	source => 'puppet://modules/cowsay/tap',
	#}
	#include istatmenus4
	include chrome
	include appcleaner
    include autodmg
	include dropbox
	include iterm2::dev
	include fluid
    include googledrive
    include google_notifier
	include crashplan
    include handbrake
	include virtualbox
	include caffeine
	include alfred
    include firefox
    include osxfuse
	include xquartz
	include vmware_fusion
	include textmate::textmate2::release
    include textwrangler
    include sequel_pro
    include steam
    include vlc
    include vagrant

	package{ 'zsh': }
	package{ 'htop-osx': }
	package{ 'tree': }
    package{ 'graphviz': }
    package{ 'ext4fuse':
        require => Class['osxfuse'],
        ensure  => latest,
    }
        
    # homebrew::tap { 'homebrew/binary': }
    
    package {'packer':
        ensure  => latest,
        require => Homebrew::Tap['homebrew/binary'],
    }
    
    package {'brew-pkg':
        ensure  => latest,
        require => Homebrew::Tap['timsutton/formulae'],
    }
	
	vagrant::plugin { 'vagrant-vmware-fusion':
	  license => "/Users/${::luser}/Dropbox/Config/Vagrant/fusion-6-license.lic",
	}
	
	vagrant::plugin { 'vagrant-hostmanager': }

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
    
    package { 'Pacifist':
        source   => 'http://www.charlessoft.com/pacifist_download/Pacifist_3.0.10.dmg',
        provider => appdmg,
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
    if ($::hostname == "Loki") or ($::hostname == "Yoda") or ($::hostname == "Artoo"){
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
    
    package { 'lingonx':
        source   => "http://www.peterborgapps.com/downloads/LingonX.zip",
        provider => compressed_app,
    }
	
    package { 'Grand Perspective':
    	source	 => "http://downloads.sourceforge.net/project/grandperspectiv/grandperspective/1.5.1/GrandPerspective-1_5_1.dmg",
    	provider => appdmg,
    }
    
    package { 'SuperDuper!':
        source   => 'http://www.shirt-pocket.com/mint/pepper/orderedlist/downloads/download.php?file=http%3A//www.shirt-pocket.com/downloads/SuperDuper%21.dmg',
        provider => appdmg_eula,
    }
        
    package { 'Filewave Lightning':
        source   => 'http://downloads.filewave.com/lightning/FileWave_Lightning-1.1.dmg',
        provider => appdmg,
    }
    
    package {'Omnigraffle':
        provider => appdmg_eula,
        source   => 'http://www.omnigroup.com/ftp/pub/software/MacOSX/10.6/OmniGraffle-5.4.4.dmg',
    }
	
	package {'Xmarks':
		provider => 'pkgdmg',
		source   => 'https://rodan.lastpass.com/dev/xmarks_for_safari_1.5.6.dmg'
	}
	
	package {'Adobe Flash':
		provider => 'pkgdmg',
		source   => 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_12_osx_pkg.dmg',
	}
    
    package { 'Google Voice and Video':
        provider => 'pkgdmg',
        source   => 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg',
    }
    
    package { 'MunkiAdmin':
        provider => 'appdmg',
        source   => 'https://github.com/hjuutilainen/munkiadmin/releases/download/v0.3.0/MunkiAdmin-0.3.0.dmg',
    }
    
    package { 'sshfs':
        provider => 'pkgdmg',
        source   => 'https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-2.5.0/sshfs-2.5.0.pkg',
        require  => Class['osxfuse'],
    }
}