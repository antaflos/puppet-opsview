class opsview::agent::install::repos {
  apt::source { 'opsview_agent':
    location   => 'http://downloads.opsera.com/opsview-community/latest/apt',
    release    => 'lucid',
    repos      => 'main',
    key        => '77CB2CF6',
    key_server => 'subkeys.pgp.net'
  }
}
