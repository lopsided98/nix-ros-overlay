
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-control";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_control/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "7ab829a41e48f5b04f5f7c8a37115be45e46ab520d1c573edf13972b36a6985c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
