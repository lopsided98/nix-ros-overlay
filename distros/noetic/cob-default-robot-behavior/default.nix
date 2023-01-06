
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-light, cob-script-server, python3Packages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-behavior";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_behavior/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "e8ecfc9ad2070f2f1cdf974cc6592612f1b83dc5e555fe870068c64df1dce2f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-light cob-script-server rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The cob_default_robot_behavior package provides helper scripts for standard robot behaviors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
