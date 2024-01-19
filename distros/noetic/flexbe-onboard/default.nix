
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, flexbe-states, python3Packages, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-flexbe-onboard";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/flexbe_onboard/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "6cfd5a97b5610bc4e2a18a2b6f847732e304751cca9f15c0c12c702e327b5177";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-states rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
