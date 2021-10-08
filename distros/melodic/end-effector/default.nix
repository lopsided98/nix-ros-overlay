
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, joint-state-publisher-gui, kdl-parser, libyamlcpp, message-runtime, moveit-ros-planning-interface, muparser, roscpp, rosee-msg, rospy, srdfdom }:
buildRosPackage {
  pname = "ros-melodic-end-effector";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/ROSEndEffector-release/archive/release/melodic/end_effector/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "7bfaf2e109b2c7cb6a21eb989e3092513a2a4b94b3a8e9f1f5b945536f28721b";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ joint-state-publisher-gui kdl-parser libyamlcpp message-runtime moveit-ros-planning-interface muparser roscpp rosee-msg rospy srdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''End-Effector package: provides a ROS-based set of standard interfaces to command robotics end-effectors in an agnostic fashion'';
    license = with lib.licenses; [ asl20 ];
  };
}
