require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  #include dnsmasq
  include git
  include hub
  include java
  include ruby
  include phantomjs
  include osx::global::disable_key_press_and_hold
  include osx::global::disable_autocorrect
  include iterm2::stable
  include chrome
  include firefox
  include caffeine
  include appcleaner
  include googledrive
  include dropbox
  include alfred
  include teamviewer
  include virtualbox
  include vagrant
  include textmate
  include emacs_for_mac
  include postgresapp
  # include mongodb
  include redis
  include mysql
  include zsh
  include ohmyzsh
  include skype
  include transmission

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  # include nodejs::v0_6
  # include nodejs::v0_8
  include nodejs::v0_10

  # default ruby versions
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  # ruby::version { '2.1.0': }
  ruby::version { '2.1.1': }

  ruby::version { 'jruby-1.7.9': }

  # common, useful packages
  package {
    [
     'ack',
     'findutils',
     'gnu-tar',
     'the_silver_searcher',
     'mongodb',
     'memcached'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }

  git::config::global { 'user.email':
    value => 'teodor.pripoae@gmail.com'
  }

  git::config::global { 'user.name':
    value => 'Teodor Pripoae'
  }

  #Generate Github ssh key if not present
  $ssh_rsa_key = "/Users/toni/.ssh/id_rsa"
  exec {'Generate SSH key for Github':
    command => "ssh-keygen -f ${ssh_rsa_key} -t rsa -N ''",
    unless  => "test -e #{ssh_rsa_key}"
  }

  $home_path = "/Users/toni"
  $emacs_dir = "${home_path}/.emacs.d"
  $dotfiles_dir = "${home_path}/.dotfiles"

  repository { '.emacs.d':
    source => 'https://github.com/teodor-pripoae/dotemacs.git',
    path => $emacs_dir,
    provider => 'git'
  }

  repository { '.dotfiles':
    source => "https://github.com/teodor-pripoae/dotfiles.git",
    path => $dotfiles_dir,
    provider => 'git'
  }

  repository { 'scmbreeze':
    source => 'https://github.com/ndbroadbent/scm_breeze.git',
    path   => "${home_path}/.scm_breeze",
    provider => 'git'
  }

  exec { 'install scmbreeze':
    command => "${home_path}/.scm_breeze/install.sh",
    creates => "${home_path}/.scmbrc",
    refreshonly => true,
    subscribe => Repository['scmbreeze']
  }

  exec { 'copy zshrc':
    command => "ln -s ${home_path}/.dotfiles/zsh/zshrc ${home_path}/.zshrc",
    creates => "${home_path}/.zshrc",
    subscribe => Repository['.dotfiles']
  }

  exec { 'copy theme':
    command => "ln -s ${home_path}/.dotfiles/zsh/ersoft.zsh-theme ${home_path}/.oh-my-zsh/themes/ersoft.zsh-theme",
    creates => "${home_path}/.oh-my-zsh/themes/ersoft.zsh-theme",
    subscribe => Repository['.dotfiles']
  }

  file { "${home_path}/.zshrc":
    ensure => "link",
    target => "${home_path}/.dotfiles/zsh/zshrc",
    require => [Repository["robbyrussell_oh-my-zsh"],
                Repository[".dotfiles"]]
  }

  file { "${home_path}/.oh-my-zsh/themes/ersoft.zsh-theme":
    ensure => "link",
    target => "${home_path}/.dotfiles/zsh/ersoft.zsh-theme",
    require => [Repository["robbyrussell_oh-my-zsh"],
                Repository[".dotfiles"]]
  }

  file { "${home_path}/.aliases.sh":
    ensure => "link",
    target => "${home_path}/.dotfiles/zsh/aliases.sh",
    require => Repository[".dotfiles"]
  }

  # Erlang /Elixir

  repository {
    "exenv":
      source => "https://github.com/mururu/exenv.git",
      path => "${home_path}/.exenv",
      provider => "git";
    "exenv-build":
      source => "https://github.com/mururu/elixir-build.git",
      path => "${home_path}/.exenv/plugins/elixir-build",
      provider => "git"
  }
}
