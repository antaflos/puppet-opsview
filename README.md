Introduction
=============

The module contains libraries to handle all of the REST
requests to a given Opsview server. You will need to create
/etc/puppet/opsview.conf with the following format on each client that you wish
to connect with an Opsview server:

    url: http://example.com/rest
    username: foobar
    password: foobaz

You can do this by including the following line to the client puppet node config:
    include 'opsview::rest_client::config'

And you have to define the following variables (needed for the template):
    $opsview_url (without the pending /rest)
    $opsview_client
    $opsview_passwd

e.g. in site.pp
    $opsview_url = 'https://my.opsview.server.at'
    $opsview_client = 'opsview-client-name'
    $opsview_passwd = 'opsview-client-passwd'

Prerequisites
=============

* Puppet (of course :))
* rest-client, json.
* when installing opsview::agent or opsview::server the user and group nagios will be created. If
you manage user and groups by yourself be sure that user and group nagios is created before
installing opsview::agent or opsview::server.

Structure of this Module
========================

* opsview::agent
    installs and configures opsview agent

* opsview::rest-client
    configures opsview rest-client

* opsview::server
    tbd: installs and configures opsview server
    * host
    * hostgroup
    * servicecheck
    * servicegroup
    * hosttemplate

Puppet Types in this Module
===========================

* opsview_contact
* opsview_hostgroup
* opsview_hosttemplate
* opsview_keyword
* opsview_monitored
* opsview_role
* opsview_servicecheck
* opsview_servicegroup

List of things to do
====================

1. Separate out a few get/set methods from Puppet::Provider::Opsview - put them
in a utility module instead.

2. Clean up Puppet::Provider::Opsview in general.  Cull any class/instance
methods we don't need (there's lots of duplication.)

3. Add default providers so that Puppet runs don't fail when there's no rest-client / json gems to use.

Authors
=======

* Devon Peters &lt;devon.peters@gmail.com&gt;
* Christian Paredes &lt;christian.paredes@sbri.org&gt;
* Yoyoyo;
