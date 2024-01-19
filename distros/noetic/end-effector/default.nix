
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, joint-state-publisher-gui, kdl-parser, message-runtime, moveit-ros-planning-interface, muparser, roscpp, rosee-msg, rospy, srdfdom, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-end-effector";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/ROSEndEffector-release/archive/release/noetic/end_effector/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "c6716d446907ced796b669ebde7b12103cb5c532035c329b40d36f611d9c5edc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ joint-state-publisher-gui kdl-parser message-runtime moveit-ros-planning-interface muparser roscpp rosee-msg rospy srdfdom yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''End-Effector package: provides a ROS-based set of standard interfaces to command robotics end-effectors in an agnostic fashion'';
    license = with lib.licenses; [ asl20 ];
  };
}
