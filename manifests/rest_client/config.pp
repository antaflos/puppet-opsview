class opsview::rest_client::config {

  file { 'opsview.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    path    => '/etc/puppet/opsview.conf',
    content => template('opsview/rest_client/opsview.erb'),
  }
}
