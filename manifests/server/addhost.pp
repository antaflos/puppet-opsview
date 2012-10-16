class opsview::server::addhost (
  $hostgroup
){
  require 'opsview::rest_client'
  
  @@opsview_monitored { $::hostname:
    ensure         => 'present',
    ip             => $::fqdn,
    require        => Opsview_hostgroup[$opsview::server::addhost::hostgroup],
    hostgroup      => $opsview::server::addhost::hostgroup,
    # ACHTUNG: hosttemplates überschreiben bisherige config!!!
    #    hosttemplates  => ['Application - Opsview Client','Network - Base','OS - Unix Base',],
    reload_opsview => true,
  }
}
