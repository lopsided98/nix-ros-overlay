
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gtest, joint-state-publisher, joint-state-publisher-gui, kdl-parser, libyamlcpp, moveit-ros-planning-interface, muparser, pluginlib, rclcpp, rclcpp-action, rclpy, rosee-msg, srdfdom }:
buildRosPackage {
  pname = "ros-foxy-end-effector";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/ROSEndEffector2-release/archive/release/foxy/end_effector/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "6bca16099516adc976ece34a9d22593f355f43a3ad8f63601bc89db299555658";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui kdl-parser libyamlcpp moveit-ros-planning-interface muparser pluginlib rclcpp rclcpp-action rclpy rosee-msg srdfdom ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''End-Effector2 package: provides a ROS2-based set of standard interfaces to command robotics end-effectors in an agnostic fashion'';
    license = with lib.licenses; [ asl20 ];
  };
}
