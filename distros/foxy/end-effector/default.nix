
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gtest, joint-state-publisher, joint-state-publisher-gui, kdl-parser, libyamlcpp, moveit-ros-planning-interface, muparser, pluginlib, rclcpp, rclcpp-action, rclpy, rosee-msg, srdfdom }:
buildRosPackage {
  pname = "ros-foxy-end-effector";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ADVRHumanoids";
        repo = "ROSEndEffector2-release";
        rev = "release/foxy/end_effector/0.0.3-1";
        sha256 = "sha256-ekknhPMZLfKfZOxgAogAE544TJGKzLpaqEWgMr/NZ30=";
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
