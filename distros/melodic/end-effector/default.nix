
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, joint-state-publisher-gui, kdl-parser, libyamlcpp, message-runtime, moveit-ros-planning-interface, muparser, roscpp, rosee-msg, rospy, srdfdom }:
buildRosPackage {
  pname = "ros-melodic-end-effector";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/ROSEndEffector-release/archive/release/melodic/end_effector/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "57ec26ad6d42a58f7db0b640a0a0cf690ac56536b59fce65848b7f83f33b135e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ joint-state-publisher-gui kdl-parser libyamlcpp message-runtime moveit-ros-planning-interface muparser roscpp rosee-msg rospy srdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''End-Effector package: provides a ROS-based set of standard interfaces to command robotics end-effectors in an agnostic fashion'';
    license = with lib.licenses; [ asl20 ];
  };
}
