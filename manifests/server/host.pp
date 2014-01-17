class opsview::server::host (
  $hostgroup,
  $hosttemplates = undef,
  $servicechecks = undef,
  $parents = undef,
){

  @@opsview_monitored { $::hostname:
    ensure         => 'present',
    ip             => $::fqdn,
    hostgroup      => $hostgroup,
    hosttemplates  => $hosttemplates,
    servicechecks  => $servicechecks,
    parents        => $parents,
    reload_opsview => true,
  }
}
