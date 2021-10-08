
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-drone-circuit-assets";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/drone_circuit_assets/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "1265679acee200442cbded215e33fc9b9e72734af75cd3b6b605becbf5eb8dc6";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The JdeRobot Behavior Metrics drone assets package'';
    license = with lib.licenses; [ mit ];
  };
}
