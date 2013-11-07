# Class: grid_worker
#
# This module manages grid_worker
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class grid_worker {
  include grid_worker::emi_wn
  include grid_worker::glexec
  include grid_worker::hep_oslibs
  include grid_worker::disable_yaim_torque_client
}
