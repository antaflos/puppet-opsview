Introduction
=============

The module contains libraries to handle all of the REST
requests to a given Opsview server. You will need to create
/etc/puppet/opsview.conf with the following format on each client that you wish
to connect with an Opsview server:

    url: http://example.com/rest
    username: foobar
    password: foobaz

You can do this via
    include 'opsview::rest_client::config'

and define the variables
    $opsview_url (without the pending /rest)
    $opsview_client
    $opsview_pwd
needed for the template.
    

Prerequisites
=============

* Puppet (of course :))  Tested most recently with puppet 2.7.9
* rest-client, json.

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

Puppet Classes in this Module
=============================

* 


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
