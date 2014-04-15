class opsview::agent::install {
  include 'opsview::agent::install::repos'

  package { 'opsview-agent':
    ensure  => 'latest',
  }
}
