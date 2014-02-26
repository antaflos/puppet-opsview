class opsview::agent {
  include 'account::virtual'
  include 'opsview::agent::install', 'opsview::agent::service', 'opsview::agent::config'
  realize(Account::Systemgroup['nagios'], Account::Systemuser['nagios'])
}
