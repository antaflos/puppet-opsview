class opsview::server::host (
  $hostgroup,
  $hosttemplates,
){
  @@opsview_monitored { $::hostname:
    ensure         => 'present',
    ip             => $::fqdn,
    hostgroup      => $hostgroup,
    hosttemplates  => $hosttemplates,
    reload_opsview => true,
  }
}
