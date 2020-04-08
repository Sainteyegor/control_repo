class profile::minetest {
  user {'admin':
    ensure => present,
  }
  include profile::ssh_server
}
