class people::grahamgilbert {
include people::grahamgilbert::applications
notify { 'class people::grahamgilbert declared': }
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

	repository { 'oh-my-zsh':
    source => 'grahamgilbert/oh-my-zsh',
    path   => "/Users/${::boxen_user}/.oh-my-zsh"
  }

  file { "/Users/${::luser}/.zshrc":
    ensure  => link,
    target  => "/Users/${::boxen_user}/.oh-my-zsh/grahams-zshrc",
    require => Repository['oh-my-zsh']
  }
}
