class grid_worker::disable_yaim_torque_client {

 file { '/opt/glite/yaim/functions/local/config_torque_client' :
       ensure => 'file',
       source => "puppet:///modules/grid_worker/config_torque_client",
       owner  => 'root',
       group  => 'root',
       require => Package['emi-torque-client'],
  }


}
