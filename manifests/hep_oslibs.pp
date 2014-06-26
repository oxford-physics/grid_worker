class grid_worker::hep_oslibs {
$package_list = [ 'HEP_OSlibs_SL6', 'libXpm-devel', 'libXft-devel' ]
  package { $package_list:
    ensure => installed,
  }
## Temporary fudge for cvmfs
  file { '/usr/libexec/grid-env.sh' :
       ensure => 'file',
       source => "puppet:///modules/grid_worker/grid-env.sh",
       owner  => 'root',
       group  => 'root',
       mode   => '0644',
  }
}
