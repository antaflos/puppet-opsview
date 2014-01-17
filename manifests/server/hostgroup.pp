define opsview::server::hostgroup (
  $ensure = 'present',
  $parent = undef,
){

  opsview_hostgroup { $title:
    ensure         => $ensure,
    hostgroup      => $title,
    parent         => $parent,
    reload_opsview => true,
  }
}
