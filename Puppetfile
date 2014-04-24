# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.5.0"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "onepassword", "1.1.0"
github "dnsmasq",     "1.0.1"
github "emacs", "1.1.0"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"
github "git",         "2.2.2"
github "go",          "1.1.0"
github "homebrew",    "1.6.1"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.1.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.2.4"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",	"2.2.2"
github "autodmg",	"0.0.1",	:repo => "grahamgilbert/puppet-autodmg"
github "iterm2", "1.0.4"
github "chrome", "1.1.2"
github "dropbox", "1.2.0"
github "chocolat", "1.0.2"
github "googledrive", "1.0.2"
github "dockutil",	"0.1.3",	:repo => "grahamgilbert/puppet-dockutil"
github "caffeine", "1.0.0"
github "firefox", "1.1.9"
github "alfred", "1.1.8"
github "macdefaults", "0.0.1",  :repo => "pebbleit/puppet-macdefaults"
github "vagrant", "3.0.7"
github "textmate", "1.1.0"
github "handbrake", "1.0.1"
github "textwrangler", "1.0.2"
github "openssl", "1.0.0"
github "appcleaner", "1.0.0", :repo => "kevinSuttle/puppet-appcleaner"
github "teamviewer", "1.0.1"
github "vlc", "1.0.5"
github "fluid", "1.1.1", :repo => "grahamgilbert/puppet-fluid"
github "screenflow", "1.0.0", :repo => "redguava/puppet-screenflow"
github "adium", "1.3.0"
github "postgresapp", "1.0.0"
github "mongodb", "2.6.0"
github "redis", "3.0.3"
github "virtualbox", "1.0.11"
github "textual", "4.1.3"
github "mongohub", "1.0.0", :repo => "jhubert/puppet-mongohub"
github "evernote", "2.0.3", :repo => "jasonamyers/puppet-evernote"
