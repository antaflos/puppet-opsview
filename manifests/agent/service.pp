class opsview::agent::service {
  include 'nagios::config'
  include 'nagios::plugins::config'

  service { 'opsview-agent':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => [ Class['nagios::config'], Class['nagios::plugins::config'], ],
  }
}
