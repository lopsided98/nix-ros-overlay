
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rr-control-input-manager, rr-openrover-description, rr-openrover-driver, rr-openrover-driver-msgs, rr-openrover-simulation, rr-rover-zero-driver }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-stack";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_stack/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "a4bca04c9788a72c7cfe9301ee214a0eeeab18e97c383e41ad37727f8bbdfdb8";
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
