define opsview::hosttemplate (
  $servicechecks,
  $ensure         = 'present',
  $description    = '',
  $managementurls = undef,
){

  opsview_hosttemplate { $title:
    ensure         => $ensure,
    hosttemplate   => $title,
    description    => $description,
    servicechecks  => $servicechecks,
    managementurls => $managementurls,
    reload_opsview => true,
  }
}
