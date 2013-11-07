class grid_worker::hep_oslibs {
$package_list = [ 'HEP_OSlibs_SL6', 'libXpm-devel', 'libXft-devel' ]
  package { $package_list:
    ensure => installed,
  }

}
