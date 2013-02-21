class people::grahamgilbert::loginitems (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	osx_login_item { 'Alfred':
		name => 'Alfred',
		path => '/Applications/Alfred.app',
		hidden => true,
		require => Class['alfred'],
		}	
}