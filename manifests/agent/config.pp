class opsview::agent::config {

  file { 'opsview_agent.init':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    path    => '/etc/init.d/opsview-agent',
    source  => 'puppet:///modules/opsview/agent/opsview_agent.init',
    require => Class['opsview::agent::install'],
    notify  => Class['opsview::agent::service'],
  }
}

