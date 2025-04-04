
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-light, cob-script-server, python3Packages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-behavior";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_behavior/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "6b6dbe96750e89f81ebf55b583b14053c061d01a3670d100810e5cae9a63c124";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-light cob-script-server rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "The cob_default_robot_behavior package provides helper scripts for standard robot behaviors.";
    license = with lib.licenses; [ asl20 ];
  };
}
