
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-light, cob-script-server, python3Packages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-behavior";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_behavior/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "7e12701b80dc9c19685009dea621ab59ad9b38afd5f1530bea4d9da09b727edc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-light cob-script-server rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The cob_default_robot_behavior package provides helper scripts for standard robot behaviors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
