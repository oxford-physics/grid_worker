class grid_worker::cvmfs_public_keys {
   file { '/etc/cvmfs/keys/gridpp.ac.uk.pub' :
        ensure => file,
        source => "puppet:///modules/grid_worker/gridpp.ac.uk.pub",
        owner  => 'root',
        group  => 'root',
        mode   => '444',
        }
    file { '/etc/cvmfs/keys/desy.de.pub' :
        ensure => file,
        source => "puppet:///modules/grid_worker/desy.de.pub",
        owner  => 'root',
        group  => 'root',
        mode   => '444',
        }


}
