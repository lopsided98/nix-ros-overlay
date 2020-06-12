
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rr-control-input-manager, rr-openrover-description, rr-openrover-driver, rr-openrover-driver-msgs, rr-openrover-simulation, rr-rover-zero-driver }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-stack";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_stack/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "984a5f86e45762f6ac53e710cbb726b41acaf1cc8965b988facb5bfa66e84db1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rr-control-input-manager rr-openrover-description rr-openrover-driver rr-openrover-driver-msgs rr-openrover-simulation rr-rover-zero-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages related to the operation of Rover Robotics rover hardware.  This includes a client
    for interfacing with the hardware (rr_openrover_driver) and a tool for filtering time stamped
    velocity commands (rr_control_input_manager).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
