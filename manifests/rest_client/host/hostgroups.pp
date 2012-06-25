class opsview::rest_client::host::hostgroups {

  include 'opsview::rest_client'

  opsview_hostgroup { 'Monitoring Server':
    ensure         => 'present',
    hostgroup      => 'Monitoring Server',
    reload_opsview => true,
    require        => Class['opsview::rest_client']
  }

  opsview_hostgroup { 'pbx Server':
    ensure         => 'present',
    hostgroup      => 'pbx Server',
    reload_opsview => true,
    require        => Class['opsview::rest_client']
  }
  
  opsview_hostgroup { 'Mgmt Server':
    ensure         => 'present',
    hostgroup      => 'Mgmt Server',
    reload_opsview => true,
    require        => Class['opsview::rest_client']
  }
}
