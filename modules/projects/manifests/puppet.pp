class projects::puppet (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	boxen::project { 'puppet':
		dir		=>	"${my_sourcedir}/Others/puppet",
		source	=>	'puppetlabs/puppet',
	}
	
	boxen::project { 'facter':
		dir		=>	"${my_sourcedir}/Others/facter",
		source	=>	'puppetlabs/facter',
	}
	
	file { '/bin/envpuppet':
	  ensure  => link,
	  mode    => '0755',
	  target  => "${people::grahamgilbert::params::my_sourcedir}/Others/puppet/ext/envpuppet",
	  require => Boxen::Project["puppet"],
	}
}