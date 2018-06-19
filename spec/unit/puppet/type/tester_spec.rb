require 'spec_helper'
require 'puppet/type/tester'

RSpec.describe 'the tester type' do
  it 'loads' do
    expect(Puppet::Type.type(:tester)).not_to be_nil
  end
end
