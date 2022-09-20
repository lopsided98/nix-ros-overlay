
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rr-control-input-manager, rr-openrover-description, rr-openrover-driver, rr-openrover-driver-msgs, rr-openrover-simulation, rr-rover-zero-driver }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-stack";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_stack/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "b8c6b289d8b66c77cd4d55ce405038ea9ee68c772aca5d35d1f90eae916b5b38";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rr-control-input-manager rr-openrover-description rr-openrover-driver rr-openrover-driver-msgs rr-openrover-simulation rr-rover-zero-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages related to the operation of Rover Robotics rover hardware.  This includes a client
    for interfacing with the hardware (rr_openrover_driver) and a tool for filtering time stamped
    velocity commands (rr_control_input_manager).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
