
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-light, cob-script-server, python3Packages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-behavior";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_behavior/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "879a26c1f54c4777ae57ce4ce505d150d80482b37342b34de93fd32bf5fb997f";
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
