define opsview::server::addservicegroup {
  require 'opsview::rest_client'

  opsview_servicegroup { $title:
    ensure         => 'present',
    servicegroup   => $title,
    reload_opsview => true,
  }
}
