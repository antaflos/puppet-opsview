class opsview::rest_client::host_group_and_template (
  $hostgroup
){
  include opsview::rest_client::host::hostgroups

  $unixBaseTemplate = $::processorcount ? {
	1 => 'OS - Unix Base',
	2 => 'OS - Unix Base 2CPU',
	4 => 'OS - Unix Base 4CPU',
	8 => 'OS - Unix Base 8CPU',
	16 => 'OS - Unix Base 16CPU',
	24 => 'OS - Unix Base 24CPU',
	default => undef,
  }

  $hosttemplates = ['Application - Opsview Client','Network - Base',$unixBaseTemplate]

  if $::manufacturer == 'HP' {
	$hosttemplates += ['Server Hardware - HP Proliant']
  }
  elsif $::manufacturer == 'Dell Inc.' {
	$hosttemplates += ['Server Hardware - Dell']
  }

  opsview_monitored { $::hostname:
    ensure         => 'present',
    ip             => $::fqdn,
    require        => [ Class['opsview::rest_client'], Opsview_hostgroup[$opsview::rest_client::host::hostgroup] ],
    hostgroup      => $opsview::rest_client::host::hostgroup,
    hosttemplates  => $hosttemplates,
    reload_opsview => true,
  }
}
