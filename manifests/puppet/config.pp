class opsview::puppet::config {
  include opsview::puppet::config::hostgroups

  file { '/etc/puppet/':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { 'opsview.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    path    => '/etc/puppet/opsview.conf',
    source  => 'puppet:///modules/opsview/puppet/opsview.conf',
  }

  opsview_monitored { $::hostname:
    ensure         => 'present',
    ip             => $::fqdn,
    require        => [ Class['opsview::puppet::install'], Opsview_hostgroup[$opsview::puppet::hostgroup] ],
    hostgroup      => $opsview::puppet::hostgroup,
    # ACHTUNG: hosttemplates überschreiben bisherige config!!!
    #    hosttemplates  => ['Application - Opsview Client','Network - Base','OS - Unix Base',],
    reload_opsview => true,
  }
}
