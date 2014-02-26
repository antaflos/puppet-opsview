define opsview::server::hostgroup (
  $ensure = 'present',
  $parent = undef,
){
  require 'opsview::rest_client'

  opsview_hostgroup { $title:
    ensure         => $ensure,
    hostgroup      => $title,
    parent         => $parent,
    reload_opsview => true,
  }

}
