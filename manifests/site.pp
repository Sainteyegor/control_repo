node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\nIt\'s all good.",
    owner   => 'root',
    group   => 'vagrant',
    mode    => '0644',
  }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
