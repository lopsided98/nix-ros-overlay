
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-hand-control";
  version = "2.0.0";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/kinetic/qb_hand_control/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "f4918ffba887e034eed693b84d4c99e7cf9bbcaeadcf7eb29efc7ae9ac1bc998";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
