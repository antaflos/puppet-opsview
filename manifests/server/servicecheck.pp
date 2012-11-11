define opsview::server::servicecheck (
  $ensure = 'present',
  $description = '',
  $servicegroup,
  $check_period = '24x7',
  $check_interval = '5',
  $check_attempts = '3',
  $retry_check_interval = '1',
  $plugin,
  $args = ''
) {

  require 'opsview::rest_client'

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
    reload_opsview       => true,
    require              => Opsview::Server::Servicegroup[$servicegroup]
  }

}
