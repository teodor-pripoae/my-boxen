class people::grahamgilbert::config (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
		# Changes the default shell to the zsh version we get from Homebrew
		# Uses the osx_chsh type out of boxen/puppet-osx
		osx_chsh { $::luser:
			shell   => '/opt/boxen/homebrew/bin/zsh',
			require => Package['zsh'],
		}
		
		file_line { 'add zsh to /etc/shells':
			path    => '/etc/shells',
			line    => "${boxen::config::homebrewdir}/bin/zsh",
			require => Package['zsh'],
		}
		
		file {"${my_sourcedir}/Mine":
			ensure => directory,
		}
		
		repository { 'Chocolat Truffles':
			source => 'grahamgilbert/chocolat-truffles',
			path   => "${my_sourcedir}/Mine/chocolat-truffles"
		}
		
		file {"/Users/${::luser}/Library/Application Support/Chocolat":
			ensure => present,
		}
		
		file { "/Users/${::luser}/Library/Application Support/Chocolat/Truffles":
			ensure  => link,
			target  => "${my_sourcedir}/Mine/chocolat-truffles",
			require => Repository['Chocolat Truffles']
		}
		
		repository { 'oh-my-zsh':
			source => 'grahamgilbert/oh-my-zsh',
			path   => "/Users/${::boxen_user}/.oh-my-zsh"
		 }
		
		file { "/Users/${::luser}/.zshrc":
			ensure  => link,
			target  => "/Users/${::boxen_user}/.oh-my-zsh/grahams-zshrc",
			require => Repository['oh-my-zsh']
		}
		

		git::config::global { 'user.email':
			value  => 'graham@grahamgilbert.com'
		}
		
		boxen::osx_defaults {
			'Chocolat Theme':
			  ensure => present,
			  domain => 'com.chocolatapp.Chocolat',
			  key    => 'CHActiveTheme',
			  value  => 'Owl',
			  user   => $::boxen_user;
			'Chocolat Font Size':
			  ensure => present,
			  domain => 'com.chocolatapp.Chocolat',
			  key    => 'CHDefaultFontSize',
			  value  => 15,
			  user   => $::boxen_user;
		  }
}