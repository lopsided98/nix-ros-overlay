
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joint-state-publisher";
  version = "1.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/kinetic/joint_state_publisher/1.12.15-1.tar.gz";
    name = "1.12.15-1.tar.gz";
    sha256 = "14d612952ea45f7f1910f77a96707066862953d83f3c35a6841cb2a635a80a0b";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
