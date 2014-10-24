
exec { "update": 
  command => "/usr/bin/apt-get -qy update",
}

package { "flex":
  ensure => latest,
  require  => Exec['update'],
}

package { "bison":
  ensure => latest,
  require  => Exec['update'],
}

package { "llvm":
  ensure => latest,
  require  => Exec['update'],
}

package { "g++":
  ensure => latest,
  require  => Exec['update'],
}

package { "make":
  ensure => latest,
  require  => Exec['update'],
}
