class opsview::agent::service {
  include 'nagios::config'
  service { 'opsview-agent':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => Class['nagios::config'],
  }
}
