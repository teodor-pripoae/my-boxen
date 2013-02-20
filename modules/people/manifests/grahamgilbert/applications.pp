class people::grahamgilbert::applications {
	include istatmenus3
	include chrome
	include onepassword
	include dropbox
	include iterm2::stable
	include chocolat
	include virtualbox
	include colloquy
	include caffeine

	package{ 'zsh': }
	#package{ 'rbenv': }
	package{ 'htop-osx': }
	#package{ 'nano': }

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
}
