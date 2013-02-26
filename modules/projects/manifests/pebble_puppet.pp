class projects::pebble_puppet (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	boxen::project { 'pebble_puppet':
		dir		=>	"${my_sourcedir}/Work/puppet",
		source	=>	'pebbleit/puppet',
	}
}