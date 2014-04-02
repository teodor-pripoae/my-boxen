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

github "boxen",      "3.5.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.1"
github "gcc",        "2.0.1"
github "git",        "2.2.2"
github "homebrew",   "1.6.2"
github "hub",        "1.3.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.3"
github "nodejs",     "3.7.0"
github "openssl",    "1.0.0"
github "repository", "2.0.2"
github "ruby",       "7.2.4"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.1"
github "module-data",     "0.0.3", :repo => "ripienaar/puppet-module-data"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",	"2.2.2"
github "autodmg",	"0.0.1",	:repo => "grahamgilbert/puppet-autodmg"
github "iterm2", "1.0.4"
github "chrome", "1.1.2"
github "dropbox", "1.2.0"
github "chocolat", "1.0.2"
github "google_notifier", "1.0.1"
github "dockutil",	"0.1.3",	:repo => "grahamgilbert/puppet-dockutil"
github "caffeine", "1.0.0"
github "firefox", "1.1.8"
github "alfred", "1.1.8"
github "macdefaults", "0.0.1",  :repo => "pebbleit/puppet-macdefaults"
github "istatmenus4", "1.1.0"
github "crashplan", "1.0.1"
github "vagrant", "3.0.7"
github "textmate", "1.1.0"
github "vmware_fusion", "1.1.0"
github "handbrake", "1.0.1"
github "textwrangler", "1.0.2"
github "openssl", "1.0.0"
github "omnigraffle", "1.2.0"
github "appcleaner", "1.0.0", :repo => "kevinSuttle/puppet-appcleaner"
#mod "pathfinder", :git => "https://github.com/bradhouse/puppet-pathfinder.git"
github "sequel_pro", "1.0.0"
github "steam", "1.0.1"
github "teamviewer", "1.0.1"
github "vlc", "1.0.5"
github "fluid", "1.1.1", :repo => "grahamgilbert/puppet-fluid"
github "osxfuse", "1.2.0", :repo => "grahamgilbert/puppet-osxfuse"