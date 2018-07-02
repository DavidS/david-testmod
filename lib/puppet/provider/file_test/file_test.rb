require 'puppet/resource_api/simple_provider'

# Implementation for the file_test type using the Resource API.

module Puppet::Provider::FileTest; end
class Puppet::Provider::FileTest::FileTest < Puppet::ResourceApi::SimpleProvider
  def get(_context)
    # can't load from unknown files
    []
  end

  def create(context, name, should)
    context.notice("Creating '#{name}' with #{should.inspect}")
  end

  def update(context, name, should)
    context.notice("Updating '#{name}' with #{should.inspect}")
  end

  def delete(context, name)
    context.notice("Deleting '#{name}'")
  end
end
