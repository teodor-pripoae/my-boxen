class people::grahamgilbert::applications {
	include istatmenus3
	include chrome
	include onepassword
	include dropbox
	include iterm2::stable
	include chocolat
	package{ 'zsh': }
	#package{ 'rbenv': }
	package{ 'htop-osx': }
#	package{ 'nano': }
}
