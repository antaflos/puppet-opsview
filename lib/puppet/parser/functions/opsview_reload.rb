#
#  opsview_reload.rb
#
require File.dirname(__FILE__) + '/../../provider/opsview'

module Puppet::Parser::Functions
  newfunction(:opsview_reload, :type => :statement, :doc => <<-'EOS'
    Reloads the internal Opsview Configuration by calling the REST API
    Takes no intput, returns true or false.
    EOS
  ) do |arguments|

    raise(Puppet::ParseError, "opsview_reload(): Wrong number of arguments " +
      "given (#{arguments.size} for 0)") if arguments.size > 0

    Puppet::Provider::Opsview.do_reload_opsview
  end
end

# vim: set ts=2 sw=2 et :
