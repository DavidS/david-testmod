require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'file_test',
  docs: <<-EOS,
      This type provides Puppet with the capabilities to manage ...
    EOS
  features: [],
  title_patterns: [
    {
      pattern: %r{^(?<target>.*)#(?<key>[^#]*)$},
      desc: 'Provide the target and the key in one piece, separated with a hash (`#`). For example: `/etc/puppet/puppet.conf#noop` ',
    },
  ],
  attributes:   {
    ensure:      {
      type:    'Enum[present, absent]',
      desc:    'Whether this resource should be present or absent on the target system.',
      default: 'present',
    },
    target:        {
      type:      'String',
      desc:      'The file containing the record.',
      behaviour: :namevar,
    },
    key:        {
      type:      'String',
      desc:      'The key of the record.',
      behaviour: :namevar,
    },
    value:        {
      type:      'String',
      desc:      'The value of the record.',
    },
  },
)
