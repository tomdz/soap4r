=begin
SOAP4R - Standalone Server
Copyright (c) 2001 by Michael Neumann and NAKAMURA, Hiroshi

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PRATICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 675 Mass
Ave, Cambridge, MA 02139, USA.
=end

require 'soap/rpc/standaloneServer'


module SOAP


class StandaloneServer < RPC::StandaloneServer
  def initialize(*arg)
    super
    methodDef if respond_to?('methodDef')
  end

  alias addServant add_servant
  alias addMethod add_method
  alias addMethodAs add_method_as
end


end
