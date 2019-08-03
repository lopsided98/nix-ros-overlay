
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rr-control-input-manager, catkin, rr-openrover-driver-msgs, rr-openrover-driver }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-stack";
  version = "0.7.2-r1";

  src = fetchurl {
    url = https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_stack/0.7.2-1.tar.gz;
    sha256 = "9fb9c5b8e7305bdb276c43eb5d041b9ebc238b8b58bde2c1107f78c0f72292bc";
  };

  propagatedBuildInputs = [ rr-control-input-manager rr-openrover-driver rr-openrover-driver-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages related to the operation of Rover Robotics rover hardware.  This includes a client
    for interfacing with the hardware (rr_openrover_driver) and a tool for filtering time stamped
    velocity commands (rr_control_input_manager).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
