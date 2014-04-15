class opsview::agent {
  include 'opsview::agent::install'
  include 'opsview::agent::config'
  include 'opsview::agent::service'

  Class['opsview::agent::install'] ->
  Class['opsview::agent::config'] ~>
  Class['opsview::agent::service']
}
