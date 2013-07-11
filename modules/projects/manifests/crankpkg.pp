class projects::blog (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	
	
	boxen::project { 'crankpkg':
		dir		=>	"${my_sourcedir}/Mine/CrankPkg",
		source	=>	'grahamgilbert/CrankPkg',
		#ruby	=>	'1.9.3-p392',
	}
}