class projects::blog (
	$my_homedir   = $people::grahamgilbert::params::my_homedir,
  	$my_sourcedir = $people::grahamgilbert::params::my_sourcedir,
  	$my_username  = $people::grahamgilbert::params::my_username
	){
	
	
	
	boxen::project { 'blog':
		dir		=>	"${my_sourcedir}/Mine/blog",
		source	=>	'grahamgilbert/blog',
		#ruby	=>	'1.9.3-p392',
	}
    
    # boxen::project { 'blog-deploy':
    #     dir        =>    "${my_sourcedir}/Mine/blog/_deploy",
    #     source    =>    'grahamgilbert/grahamgilbert.github.io',
    #     require =>  Boxen::Project['blog'],
    # }
}