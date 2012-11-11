define opsview::server::servicegroup (
  $ensure = 'present',
){
  require 'opsview::rest_client'

  opsview_servicegroup { $title:
    ensure         => $ensure,
    servicegroup   => $title,
    reload_opsview => true,
  }
}
