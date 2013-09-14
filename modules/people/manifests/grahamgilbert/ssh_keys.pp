class people::grahamgilbert::ssh_keys (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	file { "/Users/${::luser}/.ssh/ggmbpkey.pem":
		source => "/Users/${::luser}/Dropbox/Config/AWS Keys/Personal/ggmbpkey.pem",
        owner => "${::luser}",
        mode => '0600',
        require => Repository['oh-my-zsh'],
	}
	
}