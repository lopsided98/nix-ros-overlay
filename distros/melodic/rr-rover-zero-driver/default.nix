
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rr-rover-zero-driver";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_rover_zero_driver/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "0e65f093ae110e078bdcca4b8e958006b8ce4aea30f38101dd427d7f1ac1e81e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rover_zero_driver package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
