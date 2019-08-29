# Set up regular Puppet runs

file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet 1>/dev/null 2>&1',
  hour    => '*',
  minute  => '*/15',
}
