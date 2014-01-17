define opsview::server::servicegroup (
  $ensure = 'present',
){

  opsview_servicegroup { $title:
    ensure         => $ensure,
    servicegroup   => $title,
    reload_opsview => true,
  }
}
