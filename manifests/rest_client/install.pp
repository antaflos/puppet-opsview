class opsview::rest_client::install {
  include 'rubygems'

  package { 'libjson-ruby':
    ensure => 'latest',
  }

  package { 'rest-client':
    ensure   => 'present',
    provider => 'gem',
  }

  Class['rubygems']
  -> Package['rest-client']
}
