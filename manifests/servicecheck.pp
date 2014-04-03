define opsview::servicecheck (
  $plugin,
  $servicegroup,
  $ensure               = 'present',
  $description          = '',
  $check_period         = '24x7',
  $check_interval       = '5',
  $check_attempts       = '3',
  $retry_check_interval = '1',
  $args                 = '',
  $keywords             = undef,
  $notification_options = 'w,c,r,u,f',
) {

  opsview_servicecheck { $title:
    ensure               => $ensure,
    description          => $description,
    servicegroup         => $servicegroup,
    check_period         => $check_period,
    check_interval       => $check_interval,
    check_attempts       => $check_attempts,
    retry_check_interval => $retry_check_interval,
    plugin               => $plugin,
    args                 => $args,
    keywords             => $keywords,
    notification_options => $notification_options,
    reload_opsview       => true,
  }
}
