class opsview::server::host (
  $hostgroup,
  $hosttemplates = undef,
  $servicechecks = undef,
){
  @@opsview_monitored { $::hostname:
    ensure         => 'present',
    ip             => $::fqdn,
    hostgroup      => $hostgroup,
    hosttemplates  => $hosttemplates,
    servicechecks  => $servicechecks,
    reload_opsview => true,
  }
}
