define opsview::server::addhostgroup (
  $ensure = 'present',
){
  require 'opsview::rest_client'

  opsview_hostgroup { $title:
    ensure         => $ensure,
    hostgroup      => $title,
    reload_opsview => true,
  }

}
