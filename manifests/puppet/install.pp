class opsview::puppet::install {

  package { 'libjson-ruby':
    ensure => 'latest',
  }
  
  #package { 'librestclient-ruby':
  #  ensure => 'latest',
  #}

  package { 'rubygems':
    ensure => 'latest',
  }
  
  package { 'rest-client':
    ensure   => 'present',
    provider => 'gem',
  }

  Package['rubygems'] -> Package['rest-client']
}
