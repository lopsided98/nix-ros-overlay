
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, loki-description, catkin, loki-base-node }:
buildRosPackage {
  pname = "ros-kinetic-loki-bringup";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_bringup/0.0.2-0.tar.gz;
    sha256 = "e5095765ab71f988aeac03fc308b794a0e23a779d5513ff31fec66817d3ef826";
  };

  propagatedBuildInputs = [ loki-description loki-base-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The loki_bringup package'';
    #license = lib.licenses.BSD;
  };
}
