class opsview::rest_client (
  $opsview_url = undef,
  $opsview_client = undef,
  $opsview_passwd = undef,
){
  validate_string($opsview_url)
  validate_string($opsview_client)
  validate_string($opsview_passwd)

  include 'opsview::rest_client::config'
}
