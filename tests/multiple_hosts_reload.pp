
opsview_monitored { 'foo.example.com':
  ensure         => 'present',
  ip             => $::fqdn,
  hostgroup      => $hostgroup,
  hosttemplates  => $hosttemplates,
  servicechecks  => $servicechecks,
  parents        => $parents,
  reload_opsview => false,
  notify         => notify_opsview_reload(),
}

opsview_monitored { 'bar.example.com':
  ensure         => 'present',
  ip             => $::fqdn,
  hostgroup      => $hostgroup,
  hosttemplates  => $hosttemplates,
  servicechecks  => $servicechecks,
  parents        => $parents,
  reload_opsview => false,
  notify         => notify_opsview_reload(),
}

opsview_monitored { 'baz.example.com':
  ensure         => 'present',
  ip             => $::fqdn,
  hostgroup      => $hostgroup,
  hosttemplates  => $hosttemplates,
  servicechecks  => $servicechecks,
  parents        => $parents,
  reload_opsview => false,
  notify         => notify_opsview_reload(),
}

