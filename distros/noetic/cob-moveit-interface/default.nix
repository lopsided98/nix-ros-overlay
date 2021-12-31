
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, python3Packages, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-interface";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_moveit_interface/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "0bb73dcafe3ef02ce0678a7d883b6f38e794d6541bbc32b3abd5050615567e7f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander python3Packages.six rospy tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
