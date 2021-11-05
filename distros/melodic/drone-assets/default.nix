
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-drone-assets";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_assets/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "78de68ca2619e7015c587d3e930b31883ad12eb22d840960e36681fb5e25b77d";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
