# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.3.5"
github "homebrew",   "1.4.1"
github "hub",        "1.1.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.5.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",	"2.0.0"
github "repository", "2.2.0"
github "iterm2", "1.0.2"
github "chrome", "1.1.0"
github "dropbox", "1.1.2"
github "chocolat", "1.0.2"
github "dockutil",	"0.1.2",	:repo => "grahamgilbert/puppet-dockutil"
github "virtualbox", "1.0.2"
github "caffeine", "1.0.0"
github "googledrive", "1.0.2"
github "alfred", "1.1.7"
github "macdefaults", "0.0.1",  :repo => "pebbleit/puppet-macdefaults"
github "istatmenus4", "1.0.0"
#github "python", "1.2.0"
github "xquartz", "1.1.0"
github "crashplan", "1.0.1"
github "vagrant", "3.0.0"
github "textmate", "1.1.0"
github "vmware_fusion", "1.0.0"
github "textwrangler", "1.0.2"
github "openssl", "1.0.0"
github "omnigraffle", "1.2.0"
github "appcleaner", "1.0.0", :repo => "kevinSuttle/puppet-appcleaner"
#mod "pathfinder", :git => "https://github.com/bradhouse/puppet-pathfinder.git"
github "sequel_pro", "1.0.0"
github "packer", "1.0.2"
github "steam", "1.0.1"
github "vlc", "1.0.5"