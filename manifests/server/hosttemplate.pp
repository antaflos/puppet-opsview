define opsview::server::hosttemplate (
  $ensure = 'present',
  $description = '',
  $servicechecks,
  $managementurls = undef,
){
  require 'opsview::rest_client'

  opsview_hosttemplate { $title:
    ensure         => $ensure,
    hosttemplate   => $title,
    description    => $description,
    servicechecks  => $servicechecks,
    managementurls => $managementurls,
    reload_opsview => true,
  }

}
