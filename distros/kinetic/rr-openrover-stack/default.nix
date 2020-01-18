
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rr-control-input-manager, rr-openrover-driver, rr-openrover-driver-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-stack";
  version = "0.7.3-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_stack/0.7.3-2.tar.gz";
    name = "0.7.3-2.tar.gz";
    sha256 = "6505d3323fdba14cdc6caf56d06a3e02ddb5ff43662d6eff70a14c9bbb3966a8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rr-control-input-manager rr-openrover-driver rr-openrover-driver-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages related to the operation of Rover Robotics rover hardware.  This includes a client
    for interfacing with the hardware (rr_openrover_driver) and a tool for filtering time stamped
    velocity commands (rr_control_input_manager).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
