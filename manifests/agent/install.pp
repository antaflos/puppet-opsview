class opsview::agent::install {
  include 'opsview::agent::install::repos'

  package { 'opsview-agent':
    ensure  => 'latest',
    require => Class['opsview::agent::install::repos'],
    notify  => Class['opsview::agent::service'],
  }
}