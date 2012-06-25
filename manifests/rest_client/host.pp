class opsview::rest_client::host (
  $hostgroup
){
  include opsview::rest_client::host::hostgroups
  
  opsview_monitored { $::hostname:
    ensure         => 'present',
    ip             => $::fqdn,
    require        => [ Class['opsview::rest_client'], Opsview_hostgroup[$opsview::rest_client::host::hostgroup] ],
    hostgroup      => $opsview::rest_client::host::hostgroup,
    # ACHTUNG: hosttemplates überschreiben bisherige config!!!
    #    hosttemplates  => ['Application - Opsview Client','Network - Base','OS - Unix Base',],
    reload_opsview => true,
  }
}
