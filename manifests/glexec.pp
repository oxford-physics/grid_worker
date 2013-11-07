class grid_worker::glexec {
  
  $package_list = ['glexec-wn', 'yaim-glexec-wn']
  package {$package_list :
  ensure => 'installed',
 }
  
}
