require 'spec_helper'
require 'puppet/type/file_test'

RSpec.describe 'the file_test type' do
  it 'loads' do
    expect(Puppet::Type.type(:file_test)).not_to be_nil
  end
end
