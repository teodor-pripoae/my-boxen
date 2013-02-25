class people::grahamgilbert{
    include people::grahamgilbert::applications
    include people::grahamgilbert::params
    include people::grahamgilbert::config
    include people::grahamgilbert::dock
    include people::grahamgilbert::loginitems
    #include projects::blog
    #include projects::crypt
    #include projects::crypt_server
    include projects::all
    
    if !defined(File["/Users/${::luser}/src/Mine"]){
        file {"/Users/${::luser}/src/Mine":
            ensure => directory,
        }
    }
    
    if !defined(File["/Users/${::luser}/src/Others"]){
        file {"/Users/${::luser}/src/Others":
            ensure => directory,
        }
    }
    
    if !defined(File["/Users/${::luser}/src/Work"]){
        file {"/Users/${::luser}/src/Work":
            ensure => directory,
        }
    }
    
    file {"/Users/${::luser}/src":
        owner   =>  $::luser,
        mode    =>  0700,
    }
}
