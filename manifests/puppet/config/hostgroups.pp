class opsview::puppet::config::hostgroups {

  opsview_hostgroup { 'Monitoring Servers':
    ensure         => 'present',
    hostgroup      => 'Monitoring Servers',
    reload_opsview => true,
    require        => Class['opsview::puppet::install']
  }

  opsview_hostgroup { 'pbx Servers':
    ensure         => 'present',
    hostgroup      => 'pbx Servers',
    reload_opsview => true,
    require        => Class['opsview::puppet::install']
  }
}
