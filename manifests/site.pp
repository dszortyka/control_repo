node default {
  file {'/root/README':  
    ensure  => file,
    content => 'This is a readme file. Used during Puppet training.',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
