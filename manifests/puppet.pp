class opsview::puppet (
  $hostgroup
){
  include 'opsview::puppet::install', 'opsview::puppet::config'
}
