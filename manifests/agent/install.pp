class opsview::agent::install {
  include 'opsview::agent::install::repos'

  package { 'opsview-agent':
    ensure  => 'installed',
    require => Class['opsview::agent::install::repos'],
    notify  => Class['opsview::agent::service'],
  }

  Account::Systemuser['nagios'] -> Package['opsview-agent']
}
