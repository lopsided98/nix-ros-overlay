
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rr-rover-zero-driver";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_rover_zero_driver/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "bb847129135a965be1516312b96a08e794e98011335f33db083208bf8559517c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rover_zero_driver package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
