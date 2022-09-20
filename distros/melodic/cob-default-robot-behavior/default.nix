
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-light, cob-script-server, pythonPackages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-cob-default-robot-behavior";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/melodic/cob_default_robot_behavior/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "1c2e20933ba2952e461a7248d7495fb3bdec8e85b58d8db35d37b6e7de2e542f";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ cob-light cob-script-server rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The cob_default_robot_behavior package provides helper scripts for standard robot behaviors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
