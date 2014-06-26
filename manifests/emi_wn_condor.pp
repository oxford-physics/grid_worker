class grid_worker::emi_wn_condor {
  include grid_worker::emi_wn
  include grid_worker::glexec
  include grid_worker::hep_oslibs
  include grid_worker::cvmfs_public_keys
 
  file { '/usr/etc/globus-user-env.sh' :
        ensure => 'file',
        source => "puppet:///modules/grid_worker/globus-user-env.sh",
        owner  => 'root',
        group  => 'root',
        mode   => '755',
  }
  
  file { ['/etc/arc', '/etc/arc/runtime', '/etc/arc/runtime/ENV']:
        ensure  => directory,   
  }  
  
  file { '/etc/arc/runtime/ENV/GLITE' :
        ensure => file,
        source => "puppet:///modules/grid_worker/GLITE",
        owner  => 'root',
        group  => 'root',
        mode   => '755',
        require => File['/etc/arc/runtime/ENV']
  }

   # Create empty ATLAS-SITE-LCG  for ATLAS prd jobs

  file { [ '/etc/arc/runtime/APPS',
           '/etc/arc/runtime/APPS/HEP',] :
         ensure => directory,
         require => File['/etc/arc/runtime'],
       }

  file { '/etc/arc/runtime/APPS/HEP/ATLAS-SITE-LCG':
      ensure  => present,
      source  => "puppet:///modules/${module_name}/ATLAS-SITE-LCG",
      owner  => 'root',
      group  => 'root',
      mode   => '755',
      require => File['/etc/arc/runtime/APPS/HEP'],
    }

  
  file { '/etc/arc/runtime/ENV/PROXY' :
        ensure => file,
        source => "puppet:///modules/grid_worker/PROXY",
        owner  => 'root',
        group  => 'root',
        mode   => '755',
        require => File['/etc/arc/runtime/ENV']
  }
  

  file { '/etc/profile.d/grid-vo-env.sh' :
        ensure => file,
        source => "puppet:///modules/grid_worker/grid-vo-env.sh",
        owner  => 'root',
        group  => 'root',
        mode   => '755',
        
  }


}
