class opsview::puppet::config::hostgroups {

  opsview_hostgroup { 'Monitoring Server':
    ensure         => 'present',
    hostgroup      => 'Monitoring Server',
    reload_opsview => true,
    require        => Class['opsview::puppet::install']
  }

  opsview_hostgroup { 'pbx Server':
    ensure         => 'present',
    hostgroup      => 'pbx Server',
    reload_opsview => true,
    require        => Class['opsview::puppet::install']
  }
  
  opsview_hostgroup { 'Mgmt Server':
    ensure         => 'present',
    hostgroup      => 'Mgmt Server',
    reload_opsview => true,
    require        => Class['opsview::puppet::install']
  }
}
