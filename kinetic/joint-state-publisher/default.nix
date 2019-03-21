
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rostest, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-joint-state-publisher";
  version = "1.12.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/joint_state_publisher-release/archive/release/kinetic/joint_state_publisher/1.12.13-0.tar.gz;
    sha256 = "cd9d0b495a0c98a0fc9f354a1d8c1895c04cfc3e33427e28b4b1c031c1ce1d71";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    #license = lib.licenses.BSD;
  };
}
