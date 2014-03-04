class opsview::agent::service {

  service { 'opsview-agent':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
