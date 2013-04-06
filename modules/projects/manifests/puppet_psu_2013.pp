class projects::psu_puppet_demo (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	boxen::project { 'psu_puppet_2013':
		dir		=>	"${my_sourcedir}/Mine/psu_puppet_2013",
		source	=>	'grahamgilbert/psu_puppet_2013',
	}
}